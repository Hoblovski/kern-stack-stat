from pprint import pprint
from typing import Dict, List, Tuple, Optional

# Used for global error report
ParseLocation = 0

# Constants
INDIRECT = '<indirect>'

# Configs
INFILE = 'data/arceos-yield.S'
DUMP_CALLS = 'calls.txt'
DUMP_FRAMESZ = 'framesz.txt'
REMOVE_BACKEDGE = True
REPORT_CYCLE = True


def parse_asm(
    infile: str
) -> Tuple[List[str], Dict[str, Optional[int]], Dict[str, List[str]]]:
    with open(infile, 'r') as fin:
        lines = fin.readlines()

    curfn = None
    fns = []
    framesz = {}
    calls = {}

    for lineno, line in enumerate(lines):
        global ParseLocation
        ParseLocation = lineno
        line = line.strip()
        parts = line.split()

        if len(parts) == 0:
            # empty line: end of fn
            curfn = None

        elif parts[-1].endswith('>:'):
            # start of fn
            assert len(parts) == 2
            assert parts[1].startswith('<')
            curfn = parts[1][1:-2]
            fns.append(curfn)
            framesz[curfn] = None
            calls[curfn] = []

        elif len(parts) >= 4 and parts[-2] == parts[-3] == 'sp,' and parts[-4] == 'sub':
            fsz = parts[-1]
            assert fsz.startswith('#')
            fsz = int(fsz[1:])

            if framesz[curfn] is not None:
                # Assume: only the first is framealloc
                pass
            framesz[curfn] = fsz

        elif (
            len(parts) >= 2
            and parts[-2] in {'bl'}
            and ('+' not in parts[-1])
        ):
            assert False

        elif (
            len(parts) >= 3
            and parts[-3] in {'bl'}
            and ('+' not in parts[-1])
        ):
            assert parts[-1].startswith('<')
            assert parts[-1].endswith('>')
            callee = parts[-1][1:-1]
            calls[curfn].append(callee)

        else:
            if any(part == 'bl' for part in parts):
                print(lineno + 1)
                if lineno == 58:
                    continue
                assert False

    # normalize calls: dedup
    all_fns = set(fns + [INDIRECT])
    for caller, callees in calls.items():
        assert caller in fns
        callees = sorted(list(set(callees)))
        if not (set(callees) <= all_fns):
            print('Unknown functions:')
            print(set(callees) - all_fns)
            assert False
        calls[caller] = callees
    fns = sorted(fns)
    return fns, framesz, calls


def analyze(
    fns: List[str], framesz: Dict[str, Optional[int]], calls: Dict[str, List[str]]
):
    indegrees = {fn: 0 for fn in fns}
    for caller, callees in calls.items():
        for callee in callees:
            if callee != INDIRECT:
                indegrees[callee] += 1
    entry_fns = [fn for fn in indegrees if indegrees[fn] == 0]

    # DETECT LOOPS
    n_backedge_removed = 0

    def dfs(u, curpath, ignore, visited):
        if u in ignore:
            return
        if REMOVE_BACKEDGE:
            rmidx = []
        if u in visited:
            return
        visited.append(u)
        for i, v in enumerate(calls[u]):
            if v == INDIRECT:
                continue
            if v in curpath:
                if REMOVE_BACKEDGE:
                    rmidx.append(i)
                if REPORT_CYCLE:
                    print('cycle')
                    print(curpath[curpath.index(v) :] + [v])
                continue
            curpath.append(v)
            dfs(v, curpath, ignore, visited)
            curpath.pop()
        if REMOVE_BACKEDGE:
            nonlocal n_backedge_removed
            for i in reversed(rmidx):
                del calls[u][i]
                n_backedge_removed += 1

    ignores = [
        'rust_begin_unwind',
        '_ZN4core3str16slice_error_fail17hb6697d544fea5c93E',
        '_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h15c75e193739a7b4E',
    ]
    for fn in fns:
        for ignore in ignores:
            if ignore in fn:
                calls[fn] = []

    def detect_cycles():
        print('detecting cycles..')
        visited = []
        for entry_fn in entry_fns:
            dfs(entry_fn, [entry_fn], ignores, visited)
        print('cycles detected..')

    detect_cycles()

    max_stacksz = {fn: None for fn in fns}

    def get_max_stacksz(u):
        if max_stacksz[u] is not None:
            return max_stacksz[u]
        max_callee = max(
            (get_max_stacksz(v) for v in calls[u] if v != INDIRECT), default=0
        )
        max_stacksz[u] = (framesz[u] or 0) + max_callee
        return max_stacksz[u]

    for entry_fn in entry_fns:
        get_max_stacksz(entry_fn)
    pprint(max_stacksz)
    max_stacksz_sorted = sorted(
        max_stacksz.items(), key=lambda x: x[1] or 0, reverse=True
    )
    print('SORTED STACK USAGE>>>')
    for i in max_stacksz_sorted[:1000]:
        print(i)


fns, framesz, calls = parse_asm(INFILE)
with open(DUMP_CALLS, 'w') as fout:
    for caller, callees in calls.items():
        print(caller, ':', ' '.join(callees), file=fout)
with open(DUMP_FRAMESZ, 'w') as fout:
    pprint(framesz, stream=fout)
analyze(fns, framesz, calls)
