# 计算内核栈空间最大使用量
算法很简单，把 elf 给 `objdump -d` 然后 parse，得到一个有向图：
* 结点是所有函数
* 弧是调用关系（暂时只处理直接调用）
* 点权是这个函数的栈用量（开头的 sp = sp - ?）

然后在这图上找最长路径。一般 os 都没有递归，所以没有环直接 DP 即可。

有环需要手动去环（工具可以检测环），现在已知的递归函数有
```
rust_begin_unwind
_ZN4core3str16slice_error_fail17hc60ea3a9bdad3357E
_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h15c75e193739a7b4E
rust 的 fatos 的一些函数（而且他还是无界递归，深度大了很可能爆栈，不过忽略）
maturin 的 parse_user_app
```
