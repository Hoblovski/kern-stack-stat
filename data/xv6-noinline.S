
kernel:     file format elf32-i386


Disassembly of section .text:

80100000 <multiboot_header>:
80100000:	02 b0 ad 1b 00 00    	add    0x1bad(%eax),%dh
80100006:	00 00                	add    %al,(%eax)
80100008:	fe 4f 52             	decb   0x52(%edi)
8010000b:	e4                   	.byte 0xe4

8010000c <entry>:
8010000c:	0f 20 e0             	mov    %cr4,%eax
8010000f:	83 c8 10             	or     $0x10,%eax
80100012:	0f 22 e0             	mov    %eax,%cr4
80100015:	b8 00 90 10 00       	mov    $0x109000,%eax
8010001a:	0f 22 d8             	mov    %eax,%cr3
8010001d:	0f 20 c0             	mov    %cr0,%eax
80100020:	0d 00 00 01 80       	or     $0x80010000,%eax
80100025:	0f 22 c0             	mov    %eax,%cr0
80100028:	bc c0 b5 10 80       	mov    $0x8010b5c0,%esp
8010002d:	b8 f0 31 10 80       	mov    $0x801031f0,%eax
80100032:	ff e0                	jmp    *%eax
80100034:	66 90                	xchg   %ax,%ax
80100036:	66 90                	xchg   %ax,%ax
80100038:	66 90                	xchg   %ax,%ax
8010003a:	66 90                	xchg   %ax,%ax
8010003c:	66 90                	xchg   %ax,%ax
8010003e:	66 90                	xchg   %ax,%ax

80100040 <bget>:
80100040:	55                   	push   %ebp
80100041:	89 e5                	mov    %esp,%ebp
80100043:	57                   	push   %edi
80100044:	89 d7                	mov    %edx,%edi
80100046:	56                   	push   %esi
80100047:	89 c6                	mov    %eax,%esi
80100049:	53                   	push   %ebx
8010004a:	83 ec 18             	sub    $0x18,%esp
8010004d:	68 c0 b5 10 80       	push   $0x8010b5c0
80100052:	e8 79 46 00 00       	call   801046d0 <acquire>
80100057:	8b 1d 10 fd 10 80    	mov    0x8010fd10,%ebx
8010005d:	83 c4 10             	add    $0x10,%esp
80100060:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
80100066:	75 13                	jne    8010007b <bget+0x3b>
80100068:	eb 26                	jmp    80100090 <bget+0x50>
8010006a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100070:	8b 5b 54             	mov    0x54(%ebx),%ebx
80100073:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
80100079:	74 15                	je     80100090 <bget+0x50>
8010007b:	39 73 04             	cmp    %esi,0x4(%ebx)
8010007e:	75 f0                	jne    80100070 <bget+0x30>
80100080:	39 7b 08             	cmp    %edi,0x8(%ebx)
80100083:	75 eb                	jne    80100070 <bget+0x30>
80100085:	83 43 4c 01          	addl   $0x1,0x4c(%ebx)
80100089:	eb 3f                	jmp    801000ca <bget+0x8a>
8010008b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010008f:	90                   	nop
80100090:	8b 1d 0c fd 10 80    	mov    0x8010fd0c,%ebx
80100096:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
8010009c:	75 0d                	jne    801000ab <bget+0x6b>
8010009e:	eb 4f                	jmp    801000ef <bget+0xaf>
801000a0:	8b 5b 50             	mov    0x50(%ebx),%ebx
801000a3:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
801000a9:	74 44                	je     801000ef <bget+0xaf>
801000ab:	8b 43 4c             	mov    0x4c(%ebx),%eax
801000ae:	85 c0                	test   %eax,%eax
801000b0:	75 ee                	jne    801000a0 <bget+0x60>
801000b2:	f6 03 04             	testb  $0x4,(%ebx)
801000b5:	75 e9                	jne    801000a0 <bget+0x60>
801000b7:	89 73 04             	mov    %esi,0x4(%ebx)
801000ba:	89 7b 08             	mov    %edi,0x8(%ebx)
801000bd:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
801000c3:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
801000ca:	83 ec 0c             	sub    $0xc,%esp
801000cd:	68 c0 b5 10 80       	push   $0x8010b5c0
801000d2:	e8 69 46 00 00       	call   80104740 <release>
801000d7:	8d 43 0c             	lea    0xc(%ebx),%eax
801000da:	89 04 24             	mov    %eax,(%esp)
801000dd:	e8 0e 43 00 00       	call   801043f0 <acquiresleep>
801000e2:	83 c4 10             	add    $0x10,%esp
801000e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
801000e8:	89 d8                	mov    %ebx,%eax
801000ea:	5b                   	pop    %ebx
801000eb:	5e                   	pop    %esi
801000ec:	5f                   	pop    %edi
801000ed:	5d                   	pop    %ebp
801000ee:	c3                   	ret    
801000ef:	83 ec 0c             	sub    $0xc,%esp
801000f2:	68 a0 72 10 80       	push   $0x801072a0
801000f7:	e8 e4 02 00 00       	call   801003e0 <panic>
801000fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80100100 <binit>:
80100100:	f3 0f 1e fb          	endbr32 
80100104:	55                   	push   %ebp
80100105:	89 e5                	mov    %esp,%ebp
80100107:	53                   	push   %ebx
80100108:	bb f4 b5 10 80       	mov    $0x8010b5f4,%ebx
8010010d:	83 ec 0c             	sub    $0xc,%esp
80100110:	68 b1 72 10 80       	push   $0x801072b1
80100115:	68 c0 b5 10 80       	push   $0x8010b5c0
8010011a:	e8 11 44 00 00       	call   80104530 <initlock>
8010011f:	83 c4 10             	add    $0x10,%esp
80100122:	b8 bc fc 10 80       	mov    $0x8010fcbc,%eax
80100127:	c7 05 0c fd 10 80 bc 	movl   $0x8010fcbc,0x8010fd0c
8010012e:	fc 10 80 
80100131:	c7 05 10 fd 10 80 bc 	movl   $0x8010fcbc,0x8010fd10
80100138:	fc 10 80 
8010013b:	eb 05                	jmp    80100142 <binit+0x42>
8010013d:	8d 76 00             	lea    0x0(%esi),%esi
80100140:	89 d3                	mov    %edx,%ebx
80100142:	89 43 54             	mov    %eax,0x54(%ebx)
80100145:	83 ec 08             	sub    $0x8,%esp
80100148:	8d 43 0c             	lea    0xc(%ebx),%eax
8010014b:	c7 43 50 bc fc 10 80 	movl   $0x8010fcbc,0x50(%ebx)
80100152:	68 b8 72 10 80       	push   $0x801072b8
80100157:	50                   	push   %eax
80100158:	e8 53 42 00 00       	call   801043b0 <initsleeplock>
8010015d:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
80100162:	8d 93 5c 02 00 00    	lea    0x25c(%ebx),%edx
80100168:	83 c4 10             	add    $0x10,%esp
8010016b:	89 58 50             	mov    %ebx,0x50(%eax)
8010016e:	89 d8                	mov    %ebx,%eax
80100170:	89 1d 10 fd 10 80    	mov    %ebx,0x8010fd10
80100176:	81 fb 60 fa 10 80    	cmp    $0x8010fa60,%ebx
8010017c:	75 c2                	jne    80100140 <binit+0x40>
8010017e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100181:	c9                   	leave  
80100182:	c3                   	ret    
80100183:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010018a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80100190 <bread>:
80100190:	f3 0f 1e fb          	endbr32 
80100194:	55                   	push   %ebp
80100195:	89 e5                	mov    %esp,%ebp
80100197:	83 ec 18             	sub    $0x18,%esp
8010019a:	8b 55 0c             	mov    0xc(%ebp),%edx
8010019d:	8b 45 08             	mov    0x8(%ebp),%eax
801001a0:	e8 9b fe ff ff       	call   80100040 <bget>
801001a5:	f6 00 02             	testb  $0x2,(%eax)
801001a8:	74 06                	je     801001b0 <bread+0x20>
801001aa:	c9                   	leave  
801001ab:	c3                   	ret    
801001ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801001b0:	83 ec 0c             	sub    $0xc,%esp
801001b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
801001b6:	50                   	push   %eax
801001b7:	e8 74 21 00 00       	call   80102330 <iderw>
801001bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
801001bf:	83 c4 10             	add    $0x10,%esp
801001c2:	c9                   	leave  
801001c3:	c3                   	ret    
801001c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801001cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801001cf:	90                   	nop

801001d0 <bwrite>:
801001d0:	f3 0f 1e fb          	endbr32 
801001d4:	55                   	push   %ebp
801001d5:	89 e5                	mov    %esp,%ebp
801001d7:	53                   	push   %ebx
801001d8:	83 ec 10             	sub    $0x10,%esp
801001db:	8b 5d 08             	mov    0x8(%ebp),%ebx
801001de:	8d 43 0c             	lea    0xc(%ebx),%eax
801001e1:	50                   	push   %eax
801001e2:	e8 a9 42 00 00       	call   80104490 <holdingsleep>
801001e7:	83 c4 10             	add    $0x10,%esp
801001ea:	85 c0                	test   %eax,%eax
801001ec:	74 0f                	je     801001fd <bwrite+0x2d>
801001ee:	83 0b 04             	orl    $0x4,(%ebx)
801001f1:	89 5d 08             	mov    %ebx,0x8(%ebp)
801001f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801001f7:	c9                   	leave  
801001f8:	e9 33 21 00 00       	jmp    80102330 <iderw>
801001fd:	83 ec 0c             	sub    $0xc,%esp
80100200:	68 bf 72 10 80       	push   $0x801072bf
80100205:	e8 d6 01 00 00       	call   801003e0 <panic>
8010020a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80100210 <brelse>:
80100210:	f3 0f 1e fb          	endbr32 
80100214:	55                   	push   %ebp
80100215:	89 e5                	mov    %esp,%ebp
80100217:	56                   	push   %esi
80100218:	53                   	push   %ebx
80100219:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010021c:	8d 73 0c             	lea    0xc(%ebx),%esi
8010021f:	83 ec 0c             	sub    $0xc,%esp
80100222:	56                   	push   %esi
80100223:	e8 68 42 00 00       	call   80104490 <holdingsleep>
80100228:	83 c4 10             	add    $0x10,%esp
8010022b:	85 c0                	test   %eax,%eax
8010022d:	74 66                	je     80100295 <brelse+0x85>
8010022f:	83 ec 0c             	sub    $0xc,%esp
80100232:	56                   	push   %esi
80100233:	e8 18 42 00 00       	call   80104450 <releasesleep>
80100238:	c7 04 24 c0 b5 10 80 	movl   $0x8010b5c0,(%esp)
8010023f:	e8 8c 44 00 00       	call   801046d0 <acquire>
80100244:	8b 43 4c             	mov    0x4c(%ebx),%eax
80100247:	83 c4 10             	add    $0x10,%esp
8010024a:	83 e8 01             	sub    $0x1,%eax
8010024d:	89 43 4c             	mov    %eax,0x4c(%ebx)
80100250:	85 c0                	test   %eax,%eax
80100252:	75 2f                	jne    80100283 <brelse+0x73>
80100254:	8b 43 54             	mov    0x54(%ebx),%eax
80100257:	8b 53 50             	mov    0x50(%ebx),%edx
8010025a:	89 50 50             	mov    %edx,0x50(%eax)
8010025d:	8b 43 50             	mov    0x50(%ebx),%eax
80100260:	8b 53 54             	mov    0x54(%ebx),%edx
80100263:	89 50 54             	mov    %edx,0x54(%eax)
80100266:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
8010026b:	c7 43 50 bc fc 10 80 	movl   $0x8010fcbc,0x50(%ebx)
80100272:	89 43 54             	mov    %eax,0x54(%ebx)
80100275:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
8010027a:	89 58 50             	mov    %ebx,0x50(%eax)
8010027d:	89 1d 10 fd 10 80    	mov    %ebx,0x8010fd10
80100283:	c7 45 08 c0 b5 10 80 	movl   $0x8010b5c0,0x8(%ebp)
8010028a:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010028d:	5b                   	pop    %ebx
8010028e:	5e                   	pop    %esi
8010028f:	5d                   	pop    %ebp
80100290:	e9 ab 44 00 00       	jmp    80104740 <release>
80100295:	83 ec 0c             	sub    $0xc,%esp
80100298:	68 c6 72 10 80       	push   $0x801072c6
8010029d:	e8 3e 01 00 00       	call   801003e0 <panic>
801002a2:	66 90                	xchg   %ax,%ax
801002a4:	66 90                	xchg   %ax,%ax
801002a6:	66 90                	xchg   %ax,%ax
801002a8:	66 90                	xchg   %ax,%ax
801002aa:	66 90                	xchg   %ax,%ax
801002ac:	66 90                	xchg   %ax,%ax
801002ae:	66 90                	xchg   %ax,%ax

801002b0 <outb>:
801002b0:	89 c1                	mov    %eax,%ecx
801002b2:	89 d0                	mov    %edx,%eax
801002b4:	89 ca                	mov    %ecx,%edx
801002b6:	ee                   	out    %al,(%dx)
801002b7:	c3                   	ret    
801002b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801002bf:	90                   	nop

801002c0 <cli>:
801002c0:	fa                   	cli    
801002c1:	c3                   	ret    
801002c2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801002c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

801002d0 <consoleread>:
801002d0:	f3 0f 1e fb          	endbr32 
801002d4:	55                   	push   %ebp
801002d5:	89 e5                	mov    %esp,%ebp
801002d7:	57                   	push   %edi
801002d8:	56                   	push   %esi
801002d9:	53                   	push   %ebx
801002da:	83 ec 18             	sub    $0x18,%esp
801002dd:	ff 75 08             	pushl  0x8(%ebp)
801002e0:	8b 5d 10             	mov    0x10(%ebp),%ebx
801002e3:	89 de                	mov    %ebx,%esi
801002e5:	e8 66 17 00 00       	call   80101a50 <iunlock>
801002ea:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
801002f1:	e8 da 43 00 00       	call   801046d0 <acquire>
801002f6:	8b 7d 0c             	mov    0xc(%ebp),%edi
801002f9:	83 c4 10             	add    $0x10,%esp
801002fc:	01 df                	add    %ebx,%edi
801002fe:	85 db                	test   %ebx,%ebx
80100300:	0f 8e 97 00 00 00    	jle    8010039d <consoleread+0xcd>
80100306:	a1 a0 ff 10 80       	mov    0x8010ffa0,%eax
8010030b:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
80100311:	74 27                	je     8010033a <consoleread+0x6a>
80100313:	eb 5b                	jmp    80100370 <consoleread+0xa0>
80100315:	8d 76 00             	lea    0x0(%esi),%esi
80100318:	83 ec 08             	sub    $0x8,%esp
8010031b:	68 20 a5 10 80       	push   $0x8010a520
80100320:	68 a0 ff 10 80       	push   $0x8010ffa0
80100325:	e8 36 3d 00 00       	call   80104060 <sleep>
8010032a:	a1 a0 ff 10 80       	mov    0x8010ffa0,%eax
8010032f:	83 c4 10             	add    $0x10,%esp
80100332:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
80100338:	75 36                	jne    80100370 <consoleread+0xa0>
8010033a:	e8 e1 37 00 00       	call   80103b20 <myproc>
8010033f:	8b 48 24             	mov    0x24(%eax),%ecx
80100342:	85 c9                	test   %ecx,%ecx
80100344:	74 d2                	je     80100318 <consoleread+0x48>
80100346:	83 ec 0c             	sub    $0xc,%esp
80100349:	68 20 a5 10 80       	push   $0x8010a520
8010034e:	e8 ed 43 00 00       	call   80104740 <release>
80100353:	5a                   	pop    %edx
80100354:	ff 75 08             	pushl  0x8(%ebp)
80100357:	e8 14 16 00 00       	call   80101970 <ilock>
8010035c:	83 c4 10             	add    $0x10,%esp
8010035f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100362:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100367:	5b                   	pop    %ebx
80100368:	5e                   	pop    %esi
80100369:	5f                   	pop    %edi
8010036a:	5d                   	pop    %ebp
8010036b:	c3                   	ret    
8010036c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100370:	8d 50 01             	lea    0x1(%eax),%edx
80100373:	89 15 a0 ff 10 80    	mov    %edx,0x8010ffa0
80100379:	89 c2                	mov    %eax,%edx
8010037b:	83 e2 7f             	and    $0x7f,%edx
8010037e:	0f be 8a 20 ff 10 80 	movsbl -0x7fef00e0(%edx),%ecx
80100385:	80 f9 04             	cmp    $0x4,%cl
80100388:	74 38                	je     801003c2 <consoleread+0xf2>
8010038a:	89 d8                	mov    %ebx,%eax
8010038c:	83 eb 01             	sub    $0x1,%ebx
8010038f:	f7 d8                	neg    %eax
80100391:	88 0c 07             	mov    %cl,(%edi,%eax,1)
80100394:	83 f9 0a             	cmp    $0xa,%ecx
80100397:	0f 85 61 ff ff ff    	jne    801002fe <consoleread+0x2e>
8010039d:	83 ec 0c             	sub    $0xc,%esp
801003a0:	68 20 a5 10 80       	push   $0x8010a520
801003a5:	e8 96 43 00 00       	call   80104740 <release>
801003aa:	58                   	pop    %eax
801003ab:	ff 75 08             	pushl  0x8(%ebp)
801003ae:	e8 bd 15 00 00       	call   80101970 <ilock>
801003b3:	89 f0                	mov    %esi,%eax
801003b5:	83 c4 10             	add    $0x10,%esp
801003b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
801003bb:	29 d8                	sub    %ebx,%eax
801003bd:	5b                   	pop    %ebx
801003be:	5e                   	pop    %esi
801003bf:	5f                   	pop    %edi
801003c0:	5d                   	pop    %ebp
801003c1:	c3                   	ret    
801003c2:	39 f3                	cmp    %esi,%ebx
801003c4:	73 d7                	jae    8010039d <consoleread+0xcd>
801003c6:	a3 a0 ff 10 80       	mov    %eax,0x8010ffa0
801003cb:	eb d0                	jmp    8010039d <consoleread+0xcd>
801003cd:	8d 76 00             	lea    0x0(%esi),%esi

801003d0 <inb.constprop.0>:
801003d0:	ba d5 03 00 00       	mov    $0x3d5,%edx
801003d5:	ec                   	in     (%dx),%al
801003d6:	c3                   	ret    
801003d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801003de:	66 90                	xchg   %ax,%ax

801003e0 <panic>:
801003e0:	f3 0f 1e fb          	endbr32 
801003e4:	55                   	push   %ebp
801003e5:	89 e5                	mov    %esp,%ebp
801003e7:	56                   	push   %esi
801003e8:	53                   	push   %ebx
801003e9:	8d 5d d0             	lea    -0x30(%ebp),%ebx
801003ec:	8d 75 f8             	lea    -0x8(%ebp),%esi
801003ef:	83 ec 30             	sub    $0x30,%esp
801003f2:	e8 c9 fe ff ff       	call   801002c0 <cli>
801003f7:	c7 05 54 a5 10 80 00 	movl   $0x0,0x8010a554
801003fe:	00 00 00 
80100401:	e8 ea 25 00 00       	call   801029f0 <lapicid>
80100406:	83 ec 08             	sub    $0x8,%esp
80100409:	50                   	push   %eax
8010040a:	68 cd 72 10 80       	push   $0x801072cd
8010040f:	e8 3c 03 00 00       	call   80100750 <cprintf>
80100414:	58                   	pop    %eax
80100415:	ff 75 08             	pushl  0x8(%ebp)
80100418:	e8 33 03 00 00       	call   80100750 <cprintf>
8010041d:	c7 04 24 f7 7b 10 80 	movl   $0x80107bf7,(%esp)
80100424:	e8 27 03 00 00       	call   80100750 <cprintf>
80100429:	8d 45 08             	lea    0x8(%ebp),%eax
8010042c:	5a                   	pop    %edx
8010042d:	59                   	pop    %ecx
8010042e:	53                   	push   %ebx
8010042f:	50                   	push   %eax
80100430:	e8 1b 41 00 00       	call   80104550 <getcallerpcs>
80100435:	83 c4 10             	add    $0x10,%esp
80100438:	83 ec 08             	sub    $0x8,%esp
8010043b:	ff 33                	pushl  (%ebx)
8010043d:	83 c3 04             	add    $0x4,%ebx
80100440:	68 e1 72 10 80       	push   $0x801072e1
80100445:	e8 06 03 00 00       	call   80100750 <cprintf>
8010044a:	83 c4 10             	add    $0x10,%esp
8010044d:	39 f3                	cmp    %esi,%ebx
8010044f:	75 e7                	jne    80100438 <panic+0x58>
80100451:	c7 05 58 a5 10 80 01 	movl   $0x1,0x8010a558
80100458:	00 00 00 
8010045b:	eb fe                	jmp    8010045b <panic+0x7b>
8010045d:	8d 76 00             	lea    0x0(%esi),%esi

80100460 <cgaputc>:
80100460:	55                   	push   %ebp
80100461:	ba 0e 00 00 00       	mov    $0xe,%edx
80100466:	89 e5                	mov    %esp,%ebp
80100468:	57                   	push   %edi
80100469:	89 c7                	mov    %eax,%edi
8010046b:	b8 d4 03 00 00       	mov    $0x3d4,%eax
80100470:	56                   	push   %esi
80100471:	53                   	push   %ebx
80100472:	83 ec 0c             	sub    $0xc,%esp
80100475:	e8 36 fe ff ff       	call   801002b0 <outb>
8010047a:	e8 51 ff ff ff       	call   801003d0 <inb.constprop.0>
8010047f:	ba 0f 00 00 00       	mov    $0xf,%edx
80100484:	0f b6 d8             	movzbl %al,%ebx
80100487:	b8 d4 03 00 00       	mov    $0x3d4,%eax
8010048c:	e8 1f fe ff ff       	call   801002b0 <outb>
80100491:	89 de                	mov    %ebx,%esi
80100493:	e8 38 ff ff ff       	call   801003d0 <inb.constprop.0>
80100498:	c1 e6 08             	shl    $0x8,%esi
8010049b:	0f b6 d8             	movzbl %al,%ebx
8010049e:	09 f3                	or     %esi,%ebx
801004a0:	83 ff 0a             	cmp    $0xa,%edi
801004a3:	0f 84 a7 00 00 00    	je     80100550 <cgaputc+0xf0>
801004a9:	81 ff 00 01 00 00    	cmp    $0x100,%edi
801004af:	0f 84 8b 00 00 00    	je     80100540 <cgaputc+0xe0>
801004b5:	89 f8                	mov    %edi,%eax
801004b7:	8d 73 01             	lea    0x1(%ebx),%esi
801004ba:	0f b6 f8             	movzbl %al,%edi
801004bd:	66 81 cf 00 07       	or     $0x700,%di
801004c2:	66 89 bc 1b 00 80 0b 	mov    %di,-0x7ff48000(%ebx,%ebx,1)
801004c9:	80 
801004ca:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
801004d0:	0f 8f e0 00 00 00    	jg     801005b6 <cgaputc+0x156>
801004d6:	81 fe 7f 07 00 00    	cmp    $0x77f,%esi
801004dc:	0f 8f 8e 00 00 00    	jg     80100570 <cgaputc+0x110>
801004e2:	89 f3                	mov    %esi,%ebx
801004e4:	89 f0                	mov    %esi,%eax
801004e6:	8d bc 36 00 80 0b 80 	lea    -0x7ff48000(%esi,%esi,1),%edi
801004ed:	c1 fb 08             	sar    $0x8,%ebx
801004f0:	0f b6 f0             	movzbl %al,%esi
801004f3:	ba 0e 00 00 00       	mov    $0xe,%edx
801004f8:	b8 d4 03 00 00       	mov    $0x3d4,%eax
801004fd:	e8 ae fd ff ff       	call   801002b0 <outb>
80100502:	89 da                	mov    %ebx,%edx
80100504:	b8 d5 03 00 00       	mov    $0x3d5,%eax
80100509:	e8 a2 fd ff ff       	call   801002b0 <outb>
8010050e:	ba 0f 00 00 00       	mov    $0xf,%edx
80100513:	b8 d4 03 00 00       	mov    $0x3d4,%eax
80100518:	e8 93 fd ff ff       	call   801002b0 <outb>
8010051d:	89 f2                	mov    %esi,%edx
8010051f:	b8 d5 03 00 00       	mov    $0x3d5,%eax
80100524:	e8 87 fd ff ff       	call   801002b0 <outb>
80100529:	b8 20 07 00 00       	mov    $0x720,%eax
8010052e:	66 89 07             	mov    %ax,(%edi)
80100531:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100534:	5b                   	pop    %ebx
80100535:	5e                   	pop    %esi
80100536:	5f                   	pop    %edi
80100537:	5d                   	pop    %ebp
80100538:	c3                   	ret    
80100539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100540:	8d 73 ff             	lea    -0x1(%ebx),%esi
80100543:	85 db                	test   %ebx,%ebx
80100545:	75 83                	jne    801004ca <cgaputc+0x6a>
80100547:	31 f6                	xor    %esi,%esi
80100549:	bf 00 80 0b 80       	mov    $0x800b8000,%edi
8010054e:	eb a3                	jmp    801004f3 <cgaputc+0x93>
80100550:	89 d8                	mov    %ebx,%eax
80100552:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
80100557:	f7 e2                	mul    %edx
80100559:	c1 ea 06             	shr    $0x6,%edx
8010055c:	8d 04 92             	lea    (%edx,%edx,4),%eax
8010055f:	c1 e0 04             	shl    $0x4,%eax
80100562:	8d 70 50             	lea    0x50(%eax),%esi
80100565:	e9 60 ff ff ff       	jmp    801004ca <cgaputc+0x6a>
8010056a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100570:	83 ec 04             	sub    $0x4,%esp
80100573:	8d 5e b0             	lea    -0x50(%esi),%ebx
80100576:	8d bc 36 60 7f 0b 80 	lea    -0x7ff480a0(%esi,%esi,1),%edi
8010057d:	68 60 0e 00 00       	push   $0xe60
80100582:	0f b6 f3             	movzbl %bl,%esi
80100585:	68 a0 80 0b 80       	push   $0x800b80a0
8010058a:	68 00 80 0b 80       	push   $0x800b8000
8010058f:	e8 cc 42 00 00       	call   80104860 <memmove>
80100594:	b8 80 07 00 00       	mov    $0x780,%eax
80100599:	83 c4 0c             	add    $0xc,%esp
8010059c:	29 d8                	sub    %ebx,%eax
8010059e:	bb 07 00 00 00       	mov    $0x7,%ebx
801005a3:	01 c0                	add    %eax,%eax
801005a5:	50                   	push   %eax
801005a6:	6a 00                	push   $0x0
801005a8:	57                   	push   %edi
801005a9:	e8 02 42 00 00       	call   801047b0 <memset>
801005ae:	83 c4 10             	add    $0x10,%esp
801005b1:	e9 3d ff ff ff       	jmp    801004f3 <cgaputc+0x93>
801005b6:	83 ec 0c             	sub    $0xc,%esp
801005b9:	68 e5 72 10 80       	push   $0x801072e5
801005be:	e8 1d fe ff ff       	call   801003e0 <panic>
801005c3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801005ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

801005d0 <consputc>:
801005d0:	55                   	push   %ebp
801005d1:	89 e5                	mov    %esp,%ebp
801005d3:	53                   	push   %ebx
801005d4:	83 ec 04             	sub    $0x4,%esp
801005d7:	8b 15 58 a5 10 80    	mov    0x8010a558,%edx
801005dd:	85 d2                	test   %edx,%edx
801005df:	75 50                	jne    80100631 <consputc+0x61>
801005e1:	89 c3                	mov    %eax,%ebx
801005e3:	3d 00 01 00 00       	cmp    $0x100,%eax
801005e8:	74 17                	je     80100601 <consputc+0x31>
801005ea:	83 ec 0c             	sub    $0xc,%esp
801005ed:	50                   	push   %eax
801005ee:	e8 9d 57 00 00       	call   80105d90 <uartputc>
801005f3:	83 c4 10             	add    $0x10,%esp
801005f6:	89 d8                	mov    %ebx,%eax
801005f8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801005fb:	c9                   	leave  
801005fc:	e9 5f fe ff ff       	jmp    80100460 <cgaputc>
80100601:	83 ec 0c             	sub    $0xc,%esp
80100604:	6a 08                	push   $0x8
80100606:	e8 85 57 00 00       	call   80105d90 <uartputc>
8010060b:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
80100612:	e8 79 57 00 00       	call   80105d90 <uartputc>
80100617:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
8010061e:	e8 6d 57 00 00       	call   80105d90 <uartputc>
80100623:	83 c4 10             	add    $0x10,%esp
80100626:	89 d8                	mov    %ebx,%eax
80100628:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010062b:	c9                   	leave  
8010062c:	e9 2f fe ff ff       	jmp    80100460 <cgaputc>
80100631:	e8 8a fc ff ff       	call   801002c0 <cli>
80100636:	eb fe                	jmp    80100636 <consputc+0x66>
80100638:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010063f:	90                   	nop

80100640 <printint>:
80100640:	55                   	push   %ebp
80100641:	89 e5                	mov    %esp,%ebp
80100643:	57                   	push   %edi
80100644:	56                   	push   %esi
80100645:	53                   	push   %ebx
80100646:	83 ec 2c             	sub    $0x2c,%esp
80100649:	89 55 d4             	mov    %edx,-0x2c(%ebp)
8010064c:	89 4d cc             	mov    %ecx,-0x34(%ebp)
8010064f:	85 c9                	test   %ecx,%ecx
80100651:	74 04                	je     80100657 <printint+0x17>
80100653:	85 c0                	test   %eax,%eax
80100655:	78 79                	js     801006d0 <printint+0x90>
80100657:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
8010065e:	89 c1                	mov    %eax,%ecx
80100660:	31 db                	xor    %ebx,%ebx
80100662:	8d 7d d7             	lea    -0x29(%ebp),%edi
80100665:	8d 76 00             	lea    0x0(%esi),%esi
80100668:	89 c8                	mov    %ecx,%eax
8010066a:	31 d2                	xor    %edx,%edx
8010066c:	89 ce                	mov    %ecx,%esi
8010066e:	f7 75 d4             	divl   -0x2c(%ebp)
80100671:	0f b6 92 10 73 10 80 	movzbl -0x7fef8cf0(%edx),%edx
80100678:	89 45 d0             	mov    %eax,-0x30(%ebp)
8010067b:	89 d8                	mov    %ebx,%eax
8010067d:	8d 5b 01             	lea    0x1(%ebx),%ebx
80100680:	8b 4d d0             	mov    -0x30(%ebp),%ecx
80100683:	88 14 1f             	mov    %dl,(%edi,%ebx,1)
80100686:	3b 75 d4             	cmp    -0x2c(%ebp),%esi
80100689:	73 dd                	jae    80100668 <printint+0x28>
8010068b:	89 c6                	mov    %eax,%esi
8010068d:	8b 45 cc             	mov    -0x34(%ebp),%eax
80100690:	85 c0                	test   %eax,%eax
80100692:	74 0c                	je     801006a0 <printint+0x60>
80100694:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
80100699:	89 de                	mov    %ebx,%esi
8010069b:	ba 2d 00 00 00       	mov    $0x2d,%edx
801006a0:	8d 5c 35 d7          	lea    -0x29(%ebp,%esi,1),%ebx
801006a4:	0f be c2             	movsbl %dl,%eax
801006a7:	eb 0d                	jmp    801006b6 <printint+0x76>
801006a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801006b0:	0f be 03             	movsbl (%ebx),%eax
801006b3:	83 eb 01             	sub    $0x1,%ebx
801006b6:	e8 15 ff ff ff       	call   801005d0 <consputc>
801006bb:	39 fb                	cmp    %edi,%ebx
801006bd:	75 f1                	jne    801006b0 <printint+0x70>
801006bf:	83 c4 2c             	add    $0x2c,%esp
801006c2:	5b                   	pop    %ebx
801006c3:	5e                   	pop    %esi
801006c4:	5f                   	pop    %edi
801006c5:	5d                   	pop    %ebp
801006c6:	c3                   	ret    
801006c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801006ce:	66 90                	xchg   %ax,%ax
801006d0:	f7 d8                	neg    %eax
801006d2:	89 c1                	mov    %eax,%ecx
801006d4:	eb 8a                	jmp    80100660 <printint+0x20>
801006d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801006dd:	8d 76 00             	lea    0x0(%esi),%esi

801006e0 <consolewrite>:
801006e0:	f3 0f 1e fb          	endbr32 
801006e4:	55                   	push   %ebp
801006e5:	89 e5                	mov    %esp,%ebp
801006e7:	57                   	push   %edi
801006e8:	56                   	push   %esi
801006e9:	53                   	push   %ebx
801006ea:	83 ec 18             	sub    $0x18,%esp
801006ed:	ff 75 08             	pushl  0x8(%ebp)
801006f0:	8b 75 10             	mov    0x10(%ebp),%esi
801006f3:	e8 58 13 00 00       	call   80101a50 <iunlock>
801006f8:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
801006ff:	e8 cc 3f 00 00       	call   801046d0 <acquire>
80100704:	83 c4 10             	add    $0x10,%esp
80100707:	85 f6                	test   %esi,%esi
80100709:	7e 1c                	jle    80100727 <consolewrite+0x47>
8010070b:	8b 7d 0c             	mov    0xc(%ebp),%edi
8010070e:	8d 1c 37             	lea    (%edi,%esi,1),%ebx
80100711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100718:	0f b6 07             	movzbl (%edi),%eax
8010071b:	83 c7 01             	add    $0x1,%edi
8010071e:	e8 ad fe ff ff       	call   801005d0 <consputc>
80100723:	39 fb                	cmp    %edi,%ebx
80100725:	75 f1                	jne    80100718 <consolewrite+0x38>
80100727:	83 ec 0c             	sub    $0xc,%esp
8010072a:	68 20 a5 10 80       	push   $0x8010a520
8010072f:	e8 0c 40 00 00       	call   80104740 <release>
80100734:	58                   	pop    %eax
80100735:	ff 75 08             	pushl  0x8(%ebp)
80100738:	e8 33 12 00 00       	call   80101970 <ilock>
8010073d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100740:	89 f0                	mov    %esi,%eax
80100742:	5b                   	pop    %ebx
80100743:	5e                   	pop    %esi
80100744:	5f                   	pop    %edi
80100745:	5d                   	pop    %ebp
80100746:	c3                   	ret    
80100747:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010074e:	66 90                	xchg   %ax,%ax

80100750 <cprintf>:
80100750:	f3 0f 1e fb          	endbr32 
80100754:	55                   	push   %ebp
80100755:	89 e5                	mov    %esp,%ebp
80100757:	57                   	push   %edi
80100758:	56                   	push   %esi
80100759:	53                   	push   %ebx
8010075a:	83 ec 1c             	sub    $0x1c,%esp
8010075d:	a1 54 a5 10 80       	mov    0x8010a554,%eax
80100762:	89 45 d8             	mov    %eax,-0x28(%ebp)
80100765:	85 c0                	test   %eax,%eax
80100767:	0f 85 53 01 00 00    	jne    801008c0 <cprintf+0x170>
8010076d:	8b 45 08             	mov    0x8(%ebp),%eax
80100770:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80100773:	85 c0                	test   %eax,%eax
80100775:	0f 84 75 01 00 00    	je     801008f0 <cprintf+0x1a0>
8010077b:	0f b6 00             	movzbl (%eax),%eax
8010077e:	8d 4d 0c             	lea    0xc(%ebp),%ecx
80100781:	31 db                	xor    %ebx,%ebx
80100783:	89 4d e0             	mov    %ecx,-0x20(%ebp)
80100786:	85 c0                	test   %eax,%eax
80100788:	75 54                	jne    801007de <cprintf+0x8e>
8010078a:	eb 74                	jmp    80100800 <cprintf+0xb0>
8010078c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100790:	0f b6 16             	movzbl (%esi),%edx
80100793:	85 d2                	test   %edx,%edx
80100795:	74 69                	je     80100800 <cprintf+0xb0>
80100797:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010079a:	83 c3 02             	add    $0x2,%ebx
8010079d:	8d 34 18             	lea    (%eax,%ebx,1),%esi
801007a0:	83 fa 70             	cmp    $0x70,%edx
801007a3:	0f 84 bc 00 00 00    	je     80100865 <cprintf+0x115>
801007a9:	7f 6d                	jg     80100818 <cprintf+0xc8>
801007ab:	83 fa 25             	cmp    $0x25,%edx
801007ae:	0f 84 ec 00 00 00    	je     801008a0 <cprintf+0x150>
801007b4:	83 fa 64             	cmp    $0x64,%edx
801007b7:	0f 85 c4 00 00 00    	jne    80100881 <cprintf+0x131>
801007bd:	8b 45 e0             	mov    -0x20(%ebp),%eax
801007c0:	b9 01 00 00 00       	mov    $0x1,%ecx
801007c5:	ba 0a 00 00 00       	mov    $0xa,%edx
801007ca:	8d 78 04             	lea    0x4(%eax),%edi
801007cd:	8b 00                	mov    (%eax),%eax
801007cf:	e8 6c fe ff ff       	call   80100640 <printint>
801007d4:	89 7d e0             	mov    %edi,-0x20(%ebp)
801007d7:	0f b6 06             	movzbl (%esi),%eax
801007da:	85 c0                	test   %eax,%eax
801007dc:	74 22                	je     80100800 <cprintf+0xb0>
801007de:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
801007e1:	8d 7b 01             	lea    0x1(%ebx),%edi
801007e4:	8d 34 39             	lea    (%ecx,%edi,1),%esi
801007e7:	83 f8 25             	cmp    $0x25,%eax
801007ea:	74 a4                	je     80100790 <cprintf+0x40>
801007ec:	e8 df fd ff ff       	call   801005d0 <consputc>
801007f1:	0f b6 06             	movzbl (%esi),%eax
801007f4:	89 fb                	mov    %edi,%ebx
801007f6:	85 c0                	test   %eax,%eax
801007f8:	75 e4                	jne    801007de <cprintf+0x8e>
801007fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100800:	8b 45 d8             	mov    -0x28(%ebp),%eax
80100803:	85 c0                	test   %eax,%eax
80100805:	0f 85 cd 00 00 00    	jne    801008d8 <cprintf+0x188>
8010080b:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010080e:	5b                   	pop    %ebx
8010080f:	5e                   	pop    %esi
80100810:	5f                   	pop    %edi
80100811:	5d                   	pop    %ebp
80100812:	c3                   	ret    
80100813:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100817:	90                   	nop
80100818:	83 fa 73             	cmp    $0x73,%edx
8010081b:	75 43                	jne    80100860 <cprintf+0x110>
8010081d:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100820:	8b 10                	mov    (%eax),%edx
80100822:	8d 48 04             	lea    0x4(%eax),%ecx
80100825:	89 4d dc             	mov    %ecx,-0x24(%ebp)
80100828:	85 d2                	test   %edx,%edx
8010082a:	0f 84 80 00 00 00    	je     801008b0 <cprintf+0x160>
80100830:	0f be 02             	movsbl (%edx),%eax
80100833:	89 4d e0             	mov    %ecx,-0x20(%ebp)
80100836:	89 d7                	mov    %edx,%edi
80100838:	84 c0                	test   %al,%al
8010083a:	74 9b                	je     801007d7 <cprintf+0x87>
8010083c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100840:	e8 8b fd ff ff       	call   801005d0 <consputc>
80100845:	0f be 47 01          	movsbl 0x1(%edi),%eax
80100849:	83 c7 01             	add    $0x1,%edi
8010084c:	84 c0                	test   %al,%al
8010084e:	75 f0                	jne    80100840 <cprintf+0xf0>
80100850:	8b 45 dc             	mov    -0x24(%ebp),%eax
80100853:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100856:	e9 7c ff ff ff       	jmp    801007d7 <cprintf+0x87>
8010085b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010085f:	90                   	nop
80100860:	83 fa 78             	cmp    $0x78,%edx
80100863:	75 1c                	jne    80100881 <cprintf+0x131>
80100865:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100868:	31 c9                	xor    %ecx,%ecx
8010086a:	ba 10 00 00 00       	mov    $0x10,%edx
8010086f:	8d 78 04             	lea    0x4(%eax),%edi
80100872:	8b 00                	mov    (%eax),%eax
80100874:	e8 c7 fd ff ff       	call   80100640 <printint>
80100879:	89 7d e0             	mov    %edi,-0x20(%ebp)
8010087c:	e9 56 ff ff ff       	jmp    801007d7 <cprintf+0x87>
80100881:	b8 25 00 00 00       	mov    $0x25,%eax
80100886:	89 55 dc             	mov    %edx,-0x24(%ebp)
80100889:	e8 42 fd ff ff       	call   801005d0 <consputc>
8010088e:	8b 55 dc             	mov    -0x24(%ebp),%edx
80100891:	89 d0                	mov    %edx,%eax
80100893:	e8 38 fd ff ff       	call   801005d0 <consputc>
80100898:	e9 3a ff ff ff       	jmp    801007d7 <cprintf+0x87>
8010089d:	8d 76 00             	lea    0x0(%esi),%esi
801008a0:	b8 25 00 00 00       	mov    $0x25,%eax
801008a5:	e8 26 fd ff ff       	call   801005d0 <consputc>
801008aa:	e9 28 ff ff ff       	jmp    801007d7 <cprintf+0x87>
801008af:	90                   	nop
801008b0:	bf f8 72 10 80       	mov    $0x801072f8,%edi
801008b5:	b8 28 00 00 00       	mov    $0x28,%eax
801008ba:	eb 84                	jmp    80100840 <cprintf+0xf0>
801008bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801008c0:	83 ec 0c             	sub    $0xc,%esp
801008c3:	68 20 a5 10 80       	push   $0x8010a520
801008c8:	e8 03 3e 00 00       	call   801046d0 <acquire>
801008cd:	83 c4 10             	add    $0x10,%esp
801008d0:	e9 98 fe ff ff       	jmp    8010076d <cprintf+0x1d>
801008d5:	8d 76 00             	lea    0x0(%esi),%esi
801008d8:	83 ec 0c             	sub    $0xc,%esp
801008db:	68 20 a5 10 80       	push   $0x8010a520
801008e0:	e8 5b 3e 00 00       	call   80104740 <release>
801008e5:	83 c4 10             	add    $0x10,%esp
801008e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
801008eb:	5b                   	pop    %ebx
801008ec:	5e                   	pop    %esi
801008ed:	5f                   	pop    %edi
801008ee:	5d                   	pop    %ebp
801008ef:	c3                   	ret    
801008f0:	83 ec 0c             	sub    $0xc,%esp
801008f3:	68 ff 72 10 80       	push   $0x801072ff
801008f8:	e8 e3 fa ff ff       	call   801003e0 <panic>
801008fd:	8d 76 00             	lea    0x0(%esi),%esi

80100900 <consoleintr>:
80100900:	f3 0f 1e fb          	endbr32 
80100904:	55                   	push   %ebp
80100905:	89 e5                	mov    %esp,%ebp
80100907:	56                   	push   %esi
80100908:	31 f6                	xor    %esi,%esi
8010090a:	53                   	push   %ebx
8010090b:	83 ec 1c             	sub    $0x1c,%esp
8010090e:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100911:	68 20 a5 10 80       	push   $0x8010a520
80100916:	e8 b5 3d 00 00       	call   801046d0 <acquire>
8010091b:	83 c4 10             	add    $0x10,%esp
8010091e:	eb 17                	jmp    80100937 <consoleintr+0x37>
80100920:	83 f8 08             	cmp    $0x8,%eax
80100923:	0f 84 17 01 00 00    	je     80100a40 <consoleintr+0x140>
80100929:	83 f8 10             	cmp    $0x10,%eax
8010092c:	0f 85 36 01 00 00    	jne    80100a68 <consoleintr+0x168>
80100932:	be 01 00 00 00       	mov    $0x1,%esi
80100937:	ff d3                	call   *%ebx
80100939:	85 c0                	test   %eax,%eax
8010093b:	0f 88 8f 00 00 00    	js     801009d0 <consoleintr+0xd0>
80100941:	83 f8 15             	cmp    $0x15,%eax
80100944:	0f 84 a6 00 00 00    	je     801009f0 <consoleintr+0xf0>
8010094a:	7e d4                	jle    80100920 <consoleintr+0x20>
8010094c:	83 f8 7f             	cmp    $0x7f,%eax
8010094f:	0f 84 eb 00 00 00    	je     80100a40 <consoleintr+0x140>
80100955:	8b 15 a8 ff 10 80    	mov    0x8010ffa8,%edx
8010095b:	89 d1                	mov    %edx,%ecx
8010095d:	2b 0d a0 ff 10 80    	sub    0x8010ffa0,%ecx
80100963:	83 f9 7f             	cmp    $0x7f,%ecx
80100966:	77 cf                	ja     80100937 <consoleintr+0x37>
80100968:	8d 4a 01             	lea    0x1(%edx),%ecx
8010096b:	83 e2 7f             	and    $0x7f,%edx
8010096e:	89 0d a8 ff 10 80    	mov    %ecx,0x8010ffa8
80100974:	83 f8 0d             	cmp    $0xd,%eax
80100977:	0f 84 06 01 00 00    	je     80100a83 <consoleintr+0x183>
8010097d:	88 82 20 ff 10 80    	mov    %al,-0x7fef00e0(%edx)
80100983:	89 45 f4             	mov    %eax,-0xc(%ebp)
80100986:	e8 45 fc ff ff       	call   801005d0 <consputc>
8010098b:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010098e:	83 f8 0a             	cmp    $0xa,%eax
80100991:	0f 84 fd 00 00 00    	je     80100a94 <consoleintr+0x194>
80100997:	83 f8 04             	cmp    $0x4,%eax
8010099a:	0f 84 f4 00 00 00    	je     80100a94 <consoleintr+0x194>
801009a0:	a1 a0 ff 10 80       	mov    0x8010ffa0,%eax
801009a5:	83 e8 80             	sub    $0xffffff80,%eax
801009a8:	39 05 a8 ff 10 80    	cmp    %eax,0x8010ffa8
801009ae:	75 87                	jne    80100937 <consoleintr+0x37>
801009b0:	83 ec 0c             	sub    $0xc,%esp
801009b3:	a3 a4 ff 10 80       	mov    %eax,0x8010ffa4
801009b8:	68 a0 ff 10 80       	push   $0x8010ffa0
801009bd:	e8 4e 38 00 00       	call   80104210 <wakeup>
801009c2:	83 c4 10             	add    $0x10,%esp
801009c5:	ff d3                	call   *%ebx
801009c7:	85 c0                	test   %eax,%eax
801009c9:	0f 89 72 ff ff ff    	jns    80100941 <consoleintr+0x41>
801009cf:	90                   	nop
801009d0:	83 ec 0c             	sub    $0xc,%esp
801009d3:	68 20 a5 10 80       	push   $0x8010a520
801009d8:	e8 63 3d 00 00       	call   80104740 <release>
801009dd:	83 c4 10             	add    $0x10,%esp
801009e0:	85 f6                	test   %esi,%esi
801009e2:	0f 85 90 00 00 00    	jne    80100a78 <consoleintr+0x178>
801009e8:	8d 65 f8             	lea    -0x8(%ebp),%esp
801009eb:	5b                   	pop    %ebx
801009ec:	5e                   	pop    %esi
801009ed:	5d                   	pop    %ebp
801009ee:	c3                   	ret    
801009ef:	90                   	nop
801009f0:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
801009f5:	39 05 a4 ff 10 80    	cmp    %eax,0x8010ffa4
801009fb:	75 2b                	jne    80100a28 <consoleintr+0x128>
801009fd:	e9 35 ff ff ff       	jmp    80100937 <consoleintr+0x37>
80100a02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100a08:	a3 a8 ff 10 80       	mov    %eax,0x8010ffa8
80100a0d:	b8 00 01 00 00       	mov    $0x100,%eax
80100a12:	e8 b9 fb ff ff       	call   801005d0 <consputc>
80100a17:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
80100a1c:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
80100a22:	0f 84 0f ff ff ff    	je     80100937 <consoleintr+0x37>
80100a28:	83 e8 01             	sub    $0x1,%eax
80100a2b:	89 c2                	mov    %eax,%edx
80100a2d:	83 e2 7f             	and    $0x7f,%edx
80100a30:	80 ba 20 ff 10 80 0a 	cmpb   $0xa,-0x7fef00e0(%edx)
80100a37:	75 cf                	jne    80100a08 <consoleintr+0x108>
80100a39:	e9 f9 fe ff ff       	jmp    80100937 <consoleintr+0x37>
80100a3e:	66 90                	xchg   %ax,%ax
80100a40:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
80100a45:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
80100a4b:	0f 84 e6 fe ff ff    	je     80100937 <consoleintr+0x37>
80100a51:	83 e8 01             	sub    $0x1,%eax
80100a54:	a3 a8 ff 10 80       	mov    %eax,0x8010ffa8
80100a59:	b8 00 01 00 00       	mov    $0x100,%eax
80100a5e:	e8 6d fb ff ff       	call   801005d0 <consputc>
80100a63:	e9 cf fe ff ff       	jmp    80100937 <consoleintr+0x37>
80100a68:	85 c0                	test   %eax,%eax
80100a6a:	0f 84 c7 fe ff ff    	je     80100937 <consoleintr+0x37>
80100a70:	e9 e0 fe ff ff       	jmp    80100955 <consoleintr+0x55>
80100a75:	8d 76 00             	lea    0x0(%esi),%esi
80100a78:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100a7b:	5b                   	pop    %ebx
80100a7c:	5e                   	pop    %esi
80100a7d:	5d                   	pop    %ebp
80100a7e:	e9 5d 38 00 00       	jmp    801042e0 <procdump>
80100a83:	b8 0a 00 00 00       	mov    $0xa,%eax
80100a88:	c6 82 20 ff 10 80 0a 	movb   $0xa,-0x7fef00e0(%edx)
80100a8f:	e8 3c fb ff ff       	call   801005d0 <consputc>
80100a94:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
80100a99:	e9 12 ff ff ff       	jmp    801009b0 <consoleintr+0xb0>
80100a9e:	66 90                	xchg   %ax,%ax

80100aa0 <consoleinit>:
80100aa0:	f3 0f 1e fb          	endbr32 
80100aa4:	55                   	push   %ebp
80100aa5:	89 e5                	mov    %esp,%ebp
80100aa7:	83 ec 10             	sub    $0x10,%esp
80100aaa:	68 08 73 10 80       	push   $0x80107308
80100aaf:	68 20 a5 10 80       	push   $0x8010a520
80100ab4:	e8 77 3a 00 00       	call   80104530 <initlock>
80100ab9:	58                   	pop    %eax
80100aba:	5a                   	pop    %edx
80100abb:	6a 00                	push   $0x0
80100abd:	6a 01                	push   $0x1
80100abf:	c7 05 6c 09 11 80 e0 	movl   $0x801006e0,0x8011096c
80100ac6:	06 10 80 
80100ac9:	c7 05 68 09 11 80 d0 	movl   $0x801002d0,0x80110968
80100ad0:	02 10 80 
80100ad3:	c7 05 54 a5 10 80 01 	movl   $0x1,0x8010a554
80100ada:	00 00 00 
80100add:	e8 1e 1a 00 00       	call   80102500 <ioapicenable>
80100ae2:	83 c4 10             	add    $0x10,%esp
80100ae5:	c9                   	leave  
80100ae6:	c3                   	ret    
80100ae7:	66 90                	xchg   %ax,%ax
80100ae9:	66 90                	xchg   %ax,%ax
80100aeb:	66 90                	xchg   %ax,%ax
80100aed:	66 90                	xchg   %ax,%ax
80100aef:	90                   	nop

80100af0 <exec>:
80100af0:	f3 0f 1e fb          	endbr32 
80100af4:	55                   	push   %ebp
80100af5:	89 e5                	mov    %esp,%ebp
80100af7:	57                   	push   %edi
80100af8:	56                   	push   %esi
80100af9:	53                   	push   %ebx
80100afa:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
80100b00:	e8 1b 30 00 00       	call   80103b20 <myproc>
80100b05:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
80100b0b:	e8 b0 23 00 00       	call   80102ec0 <begin_op>
80100b10:	83 ec 0c             	sub    $0xc,%esp
80100b13:	ff 75 08             	pushl  0x8(%ebp)
80100b16:	e8 55 15 00 00       	call   80102070 <namei>
80100b1b:	83 c4 10             	add    $0x10,%esp
80100b1e:	85 c0                	test   %eax,%eax
80100b20:	0f 84 fe 02 00 00    	je     80100e24 <exec+0x334>
80100b26:	83 ec 0c             	sub    $0xc,%esp
80100b29:	89 c3                	mov    %eax,%ebx
80100b2b:	50                   	push   %eax
80100b2c:	e8 3f 0e 00 00       	call   80101970 <ilock>
80100b31:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
80100b37:	6a 34                	push   $0x34
80100b39:	6a 00                	push   $0x0
80100b3b:	50                   	push   %eax
80100b3c:	53                   	push   %ebx
80100b3d:	e8 6e 10 00 00       	call   80101bb0 <readi>
80100b42:	83 c4 20             	add    $0x20,%esp
80100b45:	83 f8 34             	cmp    $0x34,%eax
80100b48:	74 26                	je     80100b70 <exec+0x80>
80100b4a:	83 ec 0c             	sub    $0xc,%esp
80100b4d:	53                   	push   %ebx
80100b4e:	e8 fd 0f 00 00       	call   80101b50 <iunlockput>
80100b53:	e8 d8 23 00 00       	call   80102f30 <end_op>
80100b58:	83 c4 10             	add    $0x10,%esp
80100b5b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100b60:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100b63:	5b                   	pop    %ebx
80100b64:	5e                   	pop    %esi
80100b65:	5f                   	pop    %edi
80100b66:	5d                   	pop    %ebp
80100b67:	c3                   	ret    
80100b68:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100b6f:	90                   	nop
80100b70:	81 bd 24 ff ff ff 7f 	cmpl   $0x464c457f,-0xdc(%ebp)
80100b77:	45 4c 46 
80100b7a:	75 ce                	jne    80100b4a <exec+0x5a>
80100b7c:	e8 7f 64 00 00       	call   80107000 <setupkvm>
80100b81:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
80100b87:	85 c0                	test   %eax,%eax
80100b89:	74 bf                	je     80100b4a <exec+0x5a>
80100b8b:	66 83 bd 50 ff ff ff 	cmpw   $0x0,-0xb0(%ebp)
80100b92:	00 
80100b93:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
80100b99:	0f 84 a4 02 00 00    	je     80100e43 <exec+0x353>
80100b9f:	c7 85 f0 fe ff ff 00 	movl   $0x0,-0x110(%ebp)
80100ba6:	00 00 00 
80100ba9:	31 ff                	xor    %edi,%edi
80100bab:	e9 86 00 00 00       	jmp    80100c36 <exec+0x146>
80100bb0:	83 bd 04 ff ff ff 01 	cmpl   $0x1,-0xfc(%ebp)
80100bb7:	75 6c                	jne    80100c25 <exec+0x135>
80100bb9:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
80100bbf:	3b 85 14 ff ff ff    	cmp    -0xec(%ebp),%eax
80100bc5:	0f 82 87 00 00 00    	jb     80100c52 <exec+0x162>
80100bcb:	03 85 0c ff ff ff    	add    -0xf4(%ebp),%eax
80100bd1:	72 7f                	jb     80100c52 <exec+0x162>
80100bd3:	83 ec 04             	sub    $0x4,%esp
80100bd6:	50                   	push   %eax
80100bd7:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
80100bdd:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100be3:	e8 68 62 00 00       	call   80106e50 <allocuvm>
80100be8:	83 c4 10             	add    $0x10,%esp
80100beb:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100bf1:	85 c0                	test   %eax,%eax
80100bf3:	74 5d                	je     80100c52 <exec+0x162>
80100bf5:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
80100bfb:	a9 ff 0f 00 00       	test   $0xfff,%eax
80100c00:	75 50                	jne    80100c52 <exec+0x162>
80100c02:	83 ec 0c             	sub    $0xc,%esp
80100c05:	ff b5 14 ff ff ff    	pushl  -0xec(%ebp)
80100c0b:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
80100c11:	53                   	push   %ebx
80100c12:	50                   	push   %eax
80100c13:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100c19:	e8 b2 60 00 00       	call   80106cd0 <loaduvm>
80100c1e:	83 c4 20             	add    $0x20,%esp
80100c21:	85 c0                	test   %eax,%eax
80100c23:	78 2d                	js     80100c52 <exec+0x162>
80100c25:	0f b7 85 50 ff ff ff 	movzwl -0xb0(%ebp),%eax
80100c2c:	83 c7 01             	add    $0x1,%edi
80100c2f:	83 c6 20             	add    $0x20,%esi
80100c32:	39 f8                	cmp    %edi,%eax
80100c34:	7e 3a                	jle    80100c70 <exec+0x180>
80100c36:	8d 85 04 ff ff ff    	lea    -0xfc(%ebp),%eax
80100c3c:	6a 20                	push   $0x20
80100c3e:	56                   	push   %esi
80100c3f:	50                   	push   %eax
80100c40:	53                   	push   %ebx
80100c41:	e8 6a 0f 00 00       	call   80101bb0 <readi>
80100c46:	83 c4 10             	add    $0x10,%esp
80100c49:	83 f8 20             	cmp    $0x20,%eax
80100c4c:	0f 84 5e ff ff ff    	je     80100bb0 <exec+0xc0>
80100c52:	83 ec 0c             	sub    $0xc,%esp
80100c55:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100c5b:	e8 20 63 00 00       	call   80106f80 <freevm>
80100c60:	83 c4 10             	add    $0x10,%esp
80100c63:	e9 e2 fe ff ff       	jmp    80100b4a <exec+0x5a>
80100c68:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100c6f:	90                   	nop
80100c70:	8b bd f0 fe ff ff    	mov    -0x110(%ebp),%edi
80100c76:	81 c7 ff 0f 00 00    	add    $0xfff,%edi
80100c7c:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
80100c82:	8d b7 00 20 00 00    	lea    0x2000(%edi),%esi
80100c88:	83 ec 0c             	sub    $0xc,%esp
80100c8b:	53                   	push   %ebx
80100c8c:	e8 bf 0e 00 00       	call   80101b50 <iunlockput>
80100c91:	e8 9a 22 00 00       	call   80102f30 <end_op>
80100c96:	83 c4 0c             	add    $0xc,%esp
80100c99:	56                   	push   %esi
80100c9a:	57                   	push   %edi
80100c9b:	8b bd f4 fe ff ff    	mov    -0x10c(%ebp),%edi
80100ca1:	57                   	push   %edi
80100ca2:	e8 a9 61 00 00       	call   80106e50 <allocuvm>
80100ca7:	83 c4 10             	add    $0x10,%esp
80100caa:	89 c6                	mov    %eax,%esi
80100cac:	85 c0                	test   %eax,%eax
80100cae:	0f 84 94 00 00 00    	je     80100d48 <exec+0x258>
80100cb4:	83 ec 08             	sub    $0x8,%esp
80100cb7:	8d 80 00 e0 ff ff    	lea    -0x2000(%eax),%eax
80100cbd:	89 f3                	mov    %esi,%ebx
80100cbf:	50                   	push   %eax
80100cc0:	57                   	push   %edi
80100cc1:	31 ff                	xor    %edi,%edi
80100cc3:	e8 d8 63 00 00       	call   801070a0 <clearpteu>
80100cc8:	8b 45 0c             	mov    0xc(%ebp),%eax
80100ccb:	83 c4 10             	add    $0x10,%esp
80100cce:	8d 95 58 ff ff ff    	lea    -0xa8(%ebp),%edx
80100cd4:	8b 00                	mov    (%eax),%eax
80100cd6:	85 c0                	test   %eax,%eax
80100cd8:	0f 84 8b 00 00 00    	je     80100d69 <exec+0x279>
80100cde:	89 b5 f0 fe ff ff    	mov    %esi,-0x110(%ebp)
80100ce4:	8b b5 f4 fe ff ff    	mov    -0x10c(%ebp),%esi
80100cea:	eb 23                	jmp    80100d0f <exec+0x21f>
80100cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100cf0:	8b 45 0c             	mov    0xc(%ebp),%eax
80100cf3:	89 9c bd 64 ff ff ff 	mov    %ebx,-0x9c(%ebp,%edi,4)
80100cfa:	83 c7 01             	add    $0x1,%edi
80100cfd:	8d 95 58 ff ff ff    	lea    -0xa8(%ebp),%edx
80100d03:	8b 04 b8             	mov    (%eax,%edi,4),%eax
80100d06:	85 c0                	test   %eax,%eax
80100d08:	74 59                	je     80100d63 <exec+0x273>
80100d0a:	83 ff 20             	cmp    $0x20,%edi
80100d0d:	74 39                	je     80100d48 <exec+0x258>
80100d0f:	83 ec 0c             	sub    $0xc,%esp
80100d12:	50                   	push   %eax
80100d13:	e8 a8 3c 00 00       	call   801049c0 <strlen>
80100d18:	f7 d0                	not    %eax
80100d1a:	01 c3                	add    %eax,%ebx
80100d1c:	58                   	pop    %eax
80100d1d:	8b 45 0c             	mov    0xc(%ebp),%eax
80100d20:	83 e3 fc             	and    $0xfffffffc,%ebx
80100d23:	ff 34 b8             	pushl  (%eax,%edi,4)
80100d26:	e8 95 3c 00 00       	call   801049c0 <strlen>
80100d2b:	83 c0 01             	add    $0x1,%eax
80100d2e:	50                   	push   %eax
80100d2f:	8b 45 0c             	mov    0xc(%ebp),%eax
80100d32:	ff 34 b8             	pushl  (%eax,%edi,4)
80100d35:	53                   	push   %ebx
80100d36:	56                   	push   %esi
80100d37:	e8 c4 64 00 00       	call   80107200 <copyout>
80100d3c:	83 c4 20             	add    $0x20,%esp
80100d3f:	85 c0                	test   %eax,%eax
80100d41:	79 ad                	jns    80100cf0 <exec+0x200>
80100d43:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100d47:	90                   	nop
80100d48:	83 ec 0c             	sub    $0xc,%esp
80100d4b:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100d51:	e8 2a 62 00 00       	call   80106f80 <freevm>
80100d56:	83 c4 10             	add    $0x10,%esp
80100d59:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100d5e:	e9 fd fd ff ff       	jmp    80100b60 <exec+0x70>
80100d63:	8b b5 f0 fe ff ff    	mov    -0x110(%ebp),%esi
80100d69:	8d 04 bd 04 00 00 00 	lea    0x4(,%edi,4),%eax
80100d70:	89 d9                	mov    %ebx,%ecx
80100d72:	c7 84 bd 64 ff ff ff 	movl   $0x0,-0x9c(%ebp,%edi,4)
80100d79:	00 00 00 00 
80100d7d:	29 c1                	sub    %eax,%ecx
80100d7f:	83 c0 0c             	add    $0xc,%eax
80100d82:	89 bd 5c ff ff ff    	mov    %edi,-0xa4(%ebp)
80100d88:	29 c3                	sub    %eax,%ebx
80100d8a:	50                   	push   %eax
80100d8b:	52                   	push   %edx
80100d8c:	53                   	push   %ebx
80100d8d:	ff b5 f4 fe ff ff    	pushl  -0x10c(%ebp)
80100d93:	c7 85 58 ff ff ff ff 	movl   $0xffffffff,-0xa8(%ebp)
80100d9a:	ff ff ff 
80100d9d:	89 8d 60 ff ff ff    	mov    %ecx,-0xa0(%ebp)
80100da3:	e8 58 64 00 00       	call   80107200 <copyout>
80100da8:	83 c4 10             	add    $0x10,%esp
80100dab:	85 c0                	test   %eax,%eax
80100dad:	78 99                	js     80100d48 <exec+0x258>
80100daf:	8b 45 08             	mov    0x8(%ebp),%eax
80100db2:	8b 55 08             	mov    0x8(%ebp),%edx
80100db5:	0f b6 00             	movzbl (%eax),%eax
80100db8:	84 c0                	test   %al,%al
80100dba:	74 13                	je     80100dcf <exec+0x2df>
80100dbc:	89 d1                	mov    %edx,%ecx
80100dbe:	66 90                	xchg   %ax,%ax
80100dc0:	83 c1 01             	add    $0x1,%ecx
80100dc3:	3c 2f                	cmp    $0x2f,%al
80100dc5:	0f b6 01             	movzbl (%ecx),%eax
80100dc8:	0f 44 d1             	cmove  %ecx,%edx
80100dcb:	84 c0                	test   %al,%al
80100dcd:	75 f1                	jne    80100dc0 <exec+0x2d0>
80100dcf:	8b bd ec fe ff ff    	mov    -0x114(%ebp),%edi
80100dd5:	83 ec 04             	sub    $0x4,%esp
80100dd8:	6a 10                	push   $0x10
80100dda:	89 f8                	mov    %edi,%eax
80100ddc:	52                   	push   %edx
80100ddd:	83 c0 6c             	add    $0x6c,%eax
80100de0:	50                   	push   %eax
80100de1:	e8 9a 3b 00 00       	call   80104980 <safestrcpy>
80100de6:	8b 8d f4 fe ff ff    	mov    -0x10c(%ebp),%ecx
80100dec:	89 f8                	mov    %edi,%eax
80100dee:	8b 7f 04             	mov    0x4(%edi),%edi
80100df1:	89 30                	mov    %esi,(%eax)
80100df3:	89 48 04             	mov    %ecx,0x4(%eax)
80100df6:	89 c1                	mov    %eax,%ecx
80100df8:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
80100dfe:	8b 40 18             	mov    0x18(%eax),%eax
80100e01:	89 50 38             	mov    %edx,0x38(%eax)
80100e04:	8b 41 18             	mov    0x18(%ecx),%eax
80100e07:	89 58 44             	mov    %ebx,0x44(%eax)
80100e0a:	89 0c 24             	mov    %ecx,(%esp)
80100e0d:	e8 2e 5d 00 00       	call   80106b40 <switchuvm>
80100e12:	89 3c 24             	mov    %edi,(%esp)
80100e15:	e8 66 61 00 00       	call   80106f80 <freevm>
80100e1a:	83 c4 10             	add    $0x10,%esp
80100e1d:	31 c0                	xor    %eax,%eax
80100e1f:	e9 3c fd ff ff       	jmp    80100b60 <exec+0x70>
80100e24:	e8 07 21 00 00       	call   80102f30 <end_op>
80100e29:	83 ec 0c             	sub    $0xc,%esp
80100e2c:	68 21 73 10 80       	push   $0x80107321
80100e31:	e8 1a f9 ff ff       	call   80100750 <cprintf>
80100e36:	83 c4 10             	add    $0x10,%esp
80100e39:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100e3e:	e9 1d fd ff ff       	jmp    80100b60 <exec+0x70>
80100e43:	31 ff                	xor    %edi,%edi
80100e45:	be 00 20 00 00       	mov    $0x2000,%esi
80100e4a:	e9 39 fe ff ff       	jmp    80100c88 <exec+0x198>
80100e4f:	90                   	nop

80100e50 <fileinit>:
80100e50:	f3 0f 1e fb          	endbr32 
80100e54:	55                   	push   %ebp
80100e55:	89 e5                	mov    %esp,%ebp
80100e57:	83 ec 10             	sub    $0x10,%esp
80100e5a:	68 2d 73 10 80       	push   $0x8010732d
80100e5f:	68 c0 ff 10 80       	push   $0x8010ffc0
80100e64:	e8 c7 36 00 00       	call   80104530 <initlock>
80100e69:	83 c4 10             	add    $0x10,%esp
80100e6c:	c9                   	leave  
80100e6d:	c3                   	ret    
80100e6e:	66 90                	xchg   %ax,%ax

80100e70 <filealloc>:
80100e70:	f3 0f 1e fb          	endbr32 
80100e74:	55                   	push   %ebp
80100e75:	89 e5                	mov    %esp,%ebp
80100e77:	53                   	push   %ebx
80100e78:	bb f4 ff 10 80       	mov    $0x8010fff4,%ebx
80100e7d:	83 ec 10             	sub    $0x10,%esp
80100e80:	68 c0 ff 10 80       	push   $0x8010ffc0
80100e85:	e8 46 38 00 00       	call   801046d0 <acquire>
80100e8a:	83 c4 10             	add    $0x10,%esp
80100e8d:	eb 0c                	jmp    80100e9b <filealloc+0x2b>
80100e8f:	90                   	nop
80100e90:	83 c3 18             	add    $0x18,%ebx
80100e93:	81 fb 54 09 11 80    	cmp    $0x80110954,%ebx
80100e99:	74 25                	je     80100ec0 <filealloc+0x50>
80100e9b:	8b 43 04             	mov    0x4(%ebx),%eax
80100e9e:	85 c0                	test   %eax,%eax
80100ea0:	75 ee                	jne    80100e90 <filealloc+0x20>
80100ea2:	83 ec 0c             	sub    $0xc,%esp
80100ea5:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
80100eac:	68 c0 ff 10 80       	push   $0x8010ffc0
80100eb1:	e8 8a 38 00 00       	call   80104740 <release>
80100eb6:	89 d8                	mov    %ebx,%eax
80100eb8:	83 c4 10             	add    $0x10,%esp
80100ebb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100ebe:	c9                   	leave  
80100ebf:	c3                   	ret    
80100ec0:	83 ec 0c             	sub    $0xc,%esp
80100ec3:	31 db                	xor    %ebx,%ebx
80100ec5:	68 c0 ff 10 80       	push   $0x8010ffc0
80100eca:	e8 71 38 00 00       	call   80104740 <release>
80100ecf:	89 d8                	mov    %ebx,%eax
80100ed1:	83 c4 10             	add    $0x10,%esp
80100ed4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100ed7:	c9                   	leave  
80100ed8:	c3                   	ret    
80100ed9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80100ee0 <filedup>:
80100ee0:	f3 0f 1e fb          	endbr32 
80100ee4:	55                   	push   %ebp
80100ee5:	89 e5                	mov    %esp,%ebp
80100ee7:	53                   	push   %ebx
80100ee8:	83 ec 10             	sub    $0x10,%esp
80100eeb:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100eee:	68 c0 ff 10 80       	push   $0x8010ffc0
80100ef3:	e8 d8 37 00 00       	call   801046d0 <acquire>
80100ef8:	8b 43 04             	mov    0x4(%ebx),%eax
80100efb:	83 c4 10             	add    $0x10,%esp
80100efe:	85 c0                	test   %eax,%eax
80100f00:	7e 1a                	jle    80100f1c <filedup+0x3c>
80100f02:	83 c0 01             	add    $0x1,%eax
80100f05:	83 ec 0c             	sub    $0xc,%esp
80100f08:	89 43 04             	mov    %eax,0x4(%ebx)
80100f0b:	68 c0 ff 10 80       	push   $0x8010ffc0
80100f10:	e8 2b 38 00 00       	call   80104740 <release>
80100f15:	89 d8                	mov    %ebx,%eax
80100f17:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100f1a:	c9                   	leave  
80100f1b:	c3                   	ret    
80100f1c:	83 ec 0c             	sub    $0xc,%esp
80100f1f:	68 34 73 10 80       	push   $0x80107334
80100f24:	e8 b7 f4 ff ff       	call   801003e0 <panic>
80100f29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80100f30 <fileclose>:
80100f30:	f3 0f 1e fb          	endbr32 
80100f34:	55                   	push   %ebp
80100f35:	89 e5                	mov    %esp,%ebp
80100f37:	57                   	push   %edi
80100f38:	56                   	push   %esi
80100f39:	53                   	push   %ebx
80100f3a:	83 ec 28             	sub    $0x28,%esp
80100f3d:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100f40:	68 c0 ff 10 80       	push   $0x8010ffc0
80100f45:	e8 86 37 00 00       	call   801046d0 <acquire>
80100f4a:	8b 53 04             	mov    0x4(%ebx),%edx
80100f4d:	83 c4 10             	add    $0x10,%esp
80100f50:	85 d2                	test   %edx,%edx
80100f52:	0f 8e a1 00 00 00    	jle    80100ff9 <fileclose+0xc9>
80100f58:	83 ea 01             	sub    $0x1,%edx
80100f5b:	89 53 04             	mov    %edx,0x4(%ebx)
80100f5e:	75 40                	jne    80100fa0 <fileclose+0x70>
80100f60:	0f b6 43 09          	movzbl 0x9(%ebx),%eax
80100f64:	83 ec 0c             	sub    $0xc,%esp
80100f67:	8b 3b                	mov    (%ebx),%edi
80100f69:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80100f6f:	8b 73 0c             	mov    0xc(%ebx),%esi
80100f72:	88 45 e7             	mov    %al,-0x19(%ebp)
80100f75:	8b 43 10             	mov    0x10(%ebx),%eax
80100f78:	68 c0 ff 10 80       	push   $0x8010ffc0
80100f7d:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100f80:	e8 bb 37 00 00       	call   80104740 <release>
80100f85:	83 c4 10             	add    $0x10,%esp
80100f88:	83 ff 01             	cmp    $0x1,%edi
80100f8b:	74 53                	je     80100fe0 <fileclose+0xb0>
80100f8d:	83 ff 02             	cmp    $0x2,%edi
80100f90:	74 26                	je     80100fb8 <fileclose+0x88>
80100f92:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100f95:	5b                   	pop    %ebx
80100f96:	5e                   	pop    %esi
80100f97:	5f                   	pop    %edi
80100f98:	5d                   	pop    %ebp
80100f99:	c3                   	ret    
80100f9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100fa0:	c7 45 08 c0 ff 10 80 	movl   $0x8010ffc0,0x8(%ebp)
80100fa7:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100faa:	5b                   	pop    %ebx
80100fab:	5e                   	pop    %esi
80100fac:	5f                   	pop    %edi
80100fad:	5d                   	pop    %ebp
80100fae:	e9 8d 37 00 00       	jmp    80104740 <release>
80100fb3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100fb7:	90                   	nop
80100fb8:	e8 03 1f 00 00       	call   80102ec0 <begin_op>
80100fbd:	83 ec 0c             	sub    $0xc,%esp
80100fc0:	ff 75 e0             	pushl  -0x20(%ebp)
80100fc3:	e8 d8 0a 00 00       	call   80101aa0 <iput>
80100fc8:	83 c4 10             	add    $0x10,%esp
80100fcb:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100fce:	5b                   	pop    %ebx
80100fcf:	5e                   	pop    %esi
80100fd0:	5f                   	pop    %edi
80100fd1:	5d                   	pop    %ebp
80100fd2:	e9 59 1f 00 00       	jmp    80102f30 <end_op>
80100fd7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100fde:	66 90                	xchg   %ax,%ax
80100fe0:	0f be 5d e7          	movsbl -0x19(%ebp),%ebx
80100fe4:	83 ec 08             	sub    $0x8,%esp
80100fe7:	53                   	push   %ebx
80100fe8:	56                   	push   %esi
80100fe9:	e8 72 26 00 00       	call   80103660 <pipeclose>
80100fee:	83 c4 10             	add    $0x10,%esp
80100ff1:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100ff4:	5b                   	pop    %ebx
80100ff5:	5e                   	pop    %esi
80100ff6:	5f                   	pop    %edi
80100ff7:	5d                   	pop    %ebp
80100ff8:	c3                   	ret    
80100ff9:	83 ec 0c             	sub    $0xc,%esp
80100ffc:	68 3c 73 10 80       	push   $0x8010733c
80101001:	e8 da f3 ff ff       	call   801003e0 <panic>
80101006:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010100d:	8d 76 00             	lea    0x0(%esi),%esi

80101010 <filestat>:
80101010:	f3 0f 1e fb          	endbr32 
80101014:	55                   	push   %ebp
80101015:	89 e5                	mov    %esp,%ebp
80101017:	53                   	push   %ebx
80101018:	83 ec 04             	sub    $0x4,%esp
8010101b:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010101e:	83 3b 02             	cmpl   $0x2,(%ebx)
80101021:	75 2d                	jne    80101050 <filestat+0x40>
80101023:	83 ec 0c             	sub    $0xc,%esp
80101026:	ff 73 10             	pushl  0x10(%ebx)
80101029:	e8 42 09 00 00       	call   80101970 <ilock>
8010102e:	58                   	pop    %eax
8010102f:	5a                   	pop    %edx
80101030:	ff 75 0c             	pushl  0xc(%ebp)
80101033:	ff 73 10             	pushl  0x10(%ebx)
80101036:	e8 45 0b 00 00       	call   80101b80 <stati>
8010103b:	59                   	pop    %ecx
8010103c:	ff 73 10             	pushl  0x10(%ebx)
8010103f:	e8 0c 0a 00 00       	call   80101a50 <iunlock>
80101044:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101047:	83 c4 10             	add    $0x10,%esp
8010104a:	31 c0                	xor    %eax,%eax
8010104c:	c9                   	leave  
8010104d:	c3                   	ret    
8010104e:	66 90                	xchg   %ax,%ax
80101050:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101053:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101058:	c9                   	leave  
80101059:	c3                   	ret    
8010105a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80101060 <fileread>:
80101060:	f3 0f 1e fb          	endbr32 
80101064:	55                   	push   %ebp
80101065:	89 e5                	mov    %esp,%ebp
80101067:	57                   	push   %edi
80101068:	56                   	push   %esi
80101069:	53                   	push   %ebx
8010106a:	83 ec 0c             	sub    $0xc,%esp
8010106d:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101070:	8b 75 0c             	mov    0xc(%ebp),%esi
80101073:	8b 7d 10             	mov    0x10(%ebp),%edi
80101076:	80 7b 08 00          	cmpb   $0x0,0x8(%ebx)
8010107a:	74 64                	je     801010e0 <fileread+0x80>
8010107c:	8b 03                	mov    (%ebx),%eax
8010107e:	83 f8 01             	cmp    $0x1,%eax
80101081:	74 45                	je     801010c8 <fileread+0x68>
80101083:	83 f8 02             	cmp    $0x2,%eax
80101086:	75 5f                	jne    801010e7 <fileread+0x87>
80101088:	83 ec 0c             	sub    $0xc,%esp
8010108b:	ff 73 10             	pushl  0x10(%ebx)
8010108e:	e8 dd 08 00 00       	call   80101970 <ilock>
80101093:	57                   	push   %edi
80101094:	ff 73 14             	pushl  0x14(%ebx)
80101097:	56                   	push   %esi
80101098:	ff 73 10             	pushl  0x10(%ebx)
8010109b:	e8 10 0b 00 00       	call   80101bb0 <readi>
801010a0:	83 c4 20             	add    $0x20,%esp
801010a3:	89 c6                	mov    %eax,%esi
801010a5:	85 c0                	test   %eax,%eax
801010a7:	7e 03                	jle    801010ac <fileread+0x4c>
801010a9:	01 43 14             	add    %eax,0x14(%ebx)
801010ac:	83 ec 0c             	sub    $0xc,%esp
801010af:	ff 73 10             	pushl  0x10(%ebx)
801010b2:	e8 99 09 00 00       	call   80101a50 <iunlock>
801010b7:	83 c4 10             	add    $0x10,%esp
801010ba:	8d 65 f4             	lea    -0xc(%ebp),%esp
801010bd:	89 f0                	mov    %esi,%eax
801010bf:	5b                   	pop    %ebx
801010c0:	5e                   	pop    %esi
801010c1:	5f                   	pop    %edi
801010c2:	5d                   	pop    %ebp
801010c3:	c3                   	ret    
801010c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801010c8:	8b 43 0c             	mov    0xc(%ebx),%eax
801010cb:	89 45 08             	mov    %eax,0x8(%ebp)
801010ce:	8d 65 f4             	lea    -0xc(%ebp),%esp
801010d1:	5b                   	pop    %ebx
801010d2:	5e                   	pop    %esi
801010d3:	5f                   	pop    %edi
801010d4:	5d                   	pop    %ebp
801010d5:	e9 26 27 00 00       	jmp    80103800 <piperead>
801010da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801010e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
801010e5:	eb d3                	jmp    801010ba <fileread+0x5a>
801010e7:	83 ec 0c             	sub    $0xc,%esp
801010ea:	68 46 73 10 80       	push   $0x80107346
801010ef:	e8 ec f2 ff ff       	call   801003e0 <panic>
801010f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801010fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801010ff:	90                   	nop

80101100 <filewrite>:
80101100:	f3 0f 1e fb          	endbr32 
80101104:	55                   	push   %ebp
80101105:	89 e5                	mov    %esp,%ebp
80101107:	57                   	push   %edi
80101108:	56                   	push   %esi
80101109:	53                   	push   %ebx
8010110a:	83 ec 1c             	sub    $0x1c,%esp
8010110d:	8b 45 0c             	mov    0xc(%ebp),%eax
80101110:	8b 75 08             	mov    0x8(%ebp),%esi
80101113:	89 45 dc             	mov    %eax,-0x24(%ebp)
80101116:	8b 45 10             	mov    0x10(%ebp),%eax
80101119:	80 7e 09 00          	cmpb   $0x0,0x9(%esi)
8010111d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101120:	0f 84 c1 00 00 00    	je     801011e7 <filewrite+0xe7>
80101126:	8b 06                	mov    (%esi),%eax
80101128:	83 f8 01             	cmp    $0x1,%eax
8010112b:	0f 84 c3 00 00 00    	je     801011f4 <filewrite+0xf4>
80101131:	83 f8 02             	cmp    $0x2,%eax
80101134:	0f 85 cc 00 00 00    	jne    80101206 <filewrite+0x106>
8010113a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010113d:	31 ff                	xor    %edi,%edi
8010113f:	85 c0                	test   %eax,%eax
80101141:	7f 34                	jg     80101177 <filewrite+0x77>
80101143:	e9 98 00 00 00       	jmp    801011e0 <filewrite+0xe0>
80101148:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010114f:	90                   	nop
80101150:	01 46 14             	add    %eax,0x14(%esi)
80101153:	83 ec 0c             	sub    $0xc,%esp
80101156:	ff 76 10             	pushl  0x10(%esi)
80101159:	89 45 e0             	mov    %eax,-0x20(%ebp)
8010115c:	e8 ef 08 00 00       	call   80101a50 <iunlock>
80101161:	e8 ca 1d 00 00       	call   80102f30 <end_op>
80101166:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101169:	83 c4 10             	add    $0x10,%esp
8010116c:	39 c3                	cmp    %eax,%ebx
8010116e:	75 60                	jne    801011d0 <filewrite+0xd0>
80101170:	01 df                	add    %ebx,%edi
80101172:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
80101175:	7e 69                	jle    801011e0 <filewrite+0xe0>
80101177:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
8010117a:	b8 00 06 00 00       	mov    $0x600,%eax
8010117f:	29 fb                	sub    %edi,%ebx
80101181:	81 fb 00 06 00 00    	cmp    $0x600,%ebx
80101187:	0f 4f d8             	cmovg  %eax,%ebx
8010118a:	e8 31 1d 00 00       	call   80102ec0 <begin_op>
8010118f:	83 ec 0c             	sub    $0xc,%esp
80101192:	ff 76 10             	pushl  0x10(%esi)
80101195:	e8 d6 07 00 00       	call   80101970 <ilock>
8010119a:	8b 45 dc             	mov    -0x24(%ebp),%eax
8010119d:	53                   	push   %ebx
8010119e:	ff 76 14             	pushl  0x14(%esi)
801011a1:	01 f8                	add    %edi,%eax
801011a3:	50                   	push   %eax
801011a4:	ff 76 10             	pushl  0x10(%esi)
801011a7:	e8 04 0b 00 00       	call   80101cb0 <writei>
801011ac:	83 c4 20             	add    $0x20,%esp
801011af:	85 c0                	test   %eax,%eax
801011b1:	7f 9d                	jg     80101150 <filewrite+0x50>
801011b3:	83 ec 0c             	sub    $0xc,%esp
801011b6:	ff 76 10             	pushl  0x10(%esi)
801011b9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801011bc:	e8 8f 08 00 00       	call   80101a50 <iunlock>
801011c1:	e8 6a 1d 00 00       	call   80102f30 <end_op>
801011c6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801011c9:	83 c4 10             	add    $0x10,%esp
801011cc:	85 c0                	test   %eax,%eax
801011ce:	75 17                	jne    801011e7 <filewrite+0xe7>
801011d0:	83 ec 0c             	sub    $0xc,%esp
801011d3:	68 4f 73 10 80       	push   $0x8010734f
801011d8:	e8 03 f2 ff ff       	call   801003e0 <panic>
801011dd:	8d 76 00             	lea    0x0(%esi),%esi
801011e0:	89 f8                	mov    %edi,%eax
801011e2:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
801011e5:	74 05                	je     801011ec <filewrite+0xec>
801011e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801011ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
801011ef:	5b                   	pop    %ebx
801011f0:	5e                   	pop    %esi
801011f1:	5f                   	pop    %edi
801011f2:	5d                   	pop    %ebp
801011f3:	c3                   	ret    
801011f4:	8b 46 0c             	mov    0xc(%esi),%eax
801011f7:	89 45 08             	mov    %eax,0x8(%ebp)
801011fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
801011fd:	5b                   	pop    %ebx
801011fe:	5e                   	pop    %esi
801011ff:	5f                   	pop    %edi
80101200:	5d                   	pop    %ebp
80101201:	e9 fa 24 00 00       	jmp    80103700 <pipewrite>
80101206:	83 ec 0c             	sub    $0xc,%esp
80101209:	68 55 73 10 80       	push   $0x80107355
8010120e:	e8 cd f1 ff ff       	call   801003e0 <panic>
80101213:	66 90                	xchg   %ax,%ax
80101215:	66 90                	xchg   %ax,%ax
80101217:	66 90                	xchg   %ax,%ax
80101219:	66 90                	xchg   %ax,%ax
8010121b:	66 90                	xchg   %ax,%ax
8010121d:	66 90                	xchg   %ax,%ax
8010121f:	90                   	nop

80101220 <skipelem>:
80101220:	55                   	push   %ebp
80101221:	89 e5                	mov    %esp,%ebp
80101223:	56                   	push   %esi
80101224:	53                   	push   %ebx
80101225:	0f b6 08             	movzbl (%eax),%ecx
80101228:	80 f9 2f             	cmp    $0x2f,%cl
8010122b:	75 0f                	jne    8010123c <skipelem+0x1c>
8010122d:	8d 76 00             	lea    0x0(%esi),%esi
80101230:	0f b6 48 01          	movzbl 0x1(%eax),%ecx
80101234:	83 c0 01             	add    $0x1,%eax
80101237:	80 f9 2f             	cmp    $0x2f,%cl
8010123a:	74 f4                	je     80101230 <skipelem+0x10>
8010123c:	84 c9                	test   %cl,%cl
8010123e:	74 70                	je     801012b0 <skipelem+0x90>
80101240:	0f b6 08             	movzbl (%eax),%ecx
80101243:	84 c9                	test   %cl,%cl
80101245:	74 74                	je     801012bb <skipelem+0x9b>
80101247:	80 f9 2f             	cmp    $0x2f,%cl
8010124a:	74 6f                	je     801012bb <skipelem+0x9b>
8010124c:	89 c3                	mov    %eax,%ebx
8010124e:	66 90                	xchg   %ax,%ax
80101250:	0f b6 4b 01          	movzbl 0x1(%ebx),%ecx
80101254:	83 c3 01             	add    $0x1,%ebx
80101257:	80 f9 2f             	cmp    $0x2f,%cl
8010125a:	74 04                	je     80101260 <skipelem+0x40>
8010125c:	84 c9                	test   %cl,%cl
8010125e:	75 f0                	jne    80101250 <skipelem+0x30>
80101260:	89 d9                	mov    %ebx,%ecx
80101262:	29 c1                	sub    %eax,%ecx
80101264:	83 f9 0d             	cmp    $0xd,%ecx
80101267:	7e 2f                	jle    80101298 <skipelem+0x78>
80101269:	83 ec 04             	sub    $0x4,%esp
8010126c:	6a 0e                	push   $0xe
8010126e:	50                   	push   %eax
8010126f:	52                   	push   %edx
80101270:	e8 eb 35 00 00       	call   80104860 <memmove>
80101275:	83 c4 10             	add    $0x10,%esp
80101278:	80 3b 2f             	cmpb   $0x2f,(%ebx)
8010127b:	75 0b                	jne    80101288 <skipelem+0x68>
8010127d:	8d 76 00             	lea    0x0(%esi),%esi
80101280:	83 c3 01             	add    $0x1,%ebx
80101283:	80 3b 2f             	cmpb   $0x2f,(%ebx)
80101286:	74 f8                	je     80101280 <skipelem+0x60>
80101288:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010128b:	89 d8                	mov    %ebx,%eax
8010128d:	5b                   	pop    %ebx
8010128e:	5e                   	pop    %esi
8010128f:	5d                   	pop    %ebp
80101290:	c3                   	ret    
80101291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101298:	8d 34 0a             	lea    (%edx,%ecx,1),%esi
8010129b:	83 ec 04             	sub    $0x4,%esp
8010129e:	51                   	push   %ecx
8010129f:	50                   	push   %eax
801012a0:	52                   	push   %edx
801012a1:	e8 ba 35 00 00       	call   80104860 <memmove>
801012a6:	c6 06 00             	movb   $0x0,(%esi)
801012a9:	83 c4 10             	add    $0x10,%esp
801012ac:	eb ca                	jmp    80101278 <skipelem+0x58>
801012ae:	66 90                	xchg   %ax,%ax
801012b0:	8d 65 f8             	lea    -0x8(%ebp),%esp
801012b3:	31 db                	xor    %ebx,%ebx
801012b5:	89 d8                	mov    %ebx,%eax
801012b7:	5b                   	pop    %ebx
801012b8:	5e                   	pop    %esi
801012b9:	5d                   	pop    %ebp
801012ba:	c3                   	ret    
801012bb:	89 d6                	mov    %edx,%esi
801012bd:	89 c3                	mov    %eax,%ebx
801012bf:	31 c9                	xor    %ecx,%ecx
801012c1:	eb d8                	jmp    8010129b <skipelem+0x7b>
801012c3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801012ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

801012d0 <bzero>:
801012d0:	55                   	push   %ebp
801012d1:	89 e5                	mov    %esp,%ebp
801012d3:	53                   	push   %ebx
801012d4:	83 ec 0c             	sub    $0xc,%esp
801012d7:	52                   	push   %edx
801012d8:	50                   	push   %eax
801012d9:	e8 b2 ee ff ff       	call   80100190 <bread>
801012de:	83 c4 0c             	add    $0xc,%esp
801012e1:	89 c3                	mov    %eax,%ebx
801012e3:	8d 40 5c             	lea    0x5c(%eax),%eax
801012e6:	68 00 02 00 00       	push   $0x200
801012eb:	6a 00                	push   $0x0
801012ed:	50                   	push   %eax
801012ee:	e8 bd 34 00 00       	call   801047b0 <memset>
801012f3:	89 1c 24             	mov    %ebx,(%esp)
801012f6:	e8 f5 1c 00 00       	call   80102ff0 <log_write>
801012fb:	89 1c 24             	mov    %ebx,(%esp)
801012fe:	e8 0d ef ff ff       	call   80100210 <brelse>
80101303:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101306:	83 c4 10             	add    $0x10,%esp
80101309:	c9                   	leave  
8010130a:	c3                   	ret    
8010130b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010130f:	90                   	nop

80101310 <bfree>:
80101310:	55                   	push   %ebp
80101311:	89 c1                	mov    %eax,%ecx
80101313:	89 d0                	mov    %edx,%eax
80101315:	c1 e8 0c             	shr    $0xc,%eax
80101318:	03 05 d8 09 11 80    	add    0x801109d8,%eax
8010131e:	89 e5                	mov    %esp,%ebp
80101320:	56                   	push   %esi
80101321:	53                   	push   %ebx
80101322:	89 d3                	mov    %edx,%ebx
80101324:	83 ec 08             	sub    $0x8,%esp
80101327:	50                   	push   %eax
80101328:	51                   	push   %ecx
80101329:	e8 62 ee ff ff       	call   80100190 <bread>
8010132e:	89 d9                	mov    %ebx,%ecx
80101330:	c1 fb 03             	sar    $0x3,%ebx
80101333:	ba 01 00 00 00       	mov    $0x1,%edx
80101338:	83 e1 07             	and    $0x7,%ecx
8010133b:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
80101341:	83 c4 10             	add    $0x10,%esp
80101344:	d3 e2                	shl    %cl,%edx
80101346:	0f b6 4c 18 5c       	movzbl 0x5c(%eax,%ebx,1),%ecx
8010134b:	85 d1                	test   %edx,%ecx
8010134d:	74 25                	je     80101374 <bfree+0x64>
8010134f:	f7 d2                	not    %edx
80101351:	83 ec 0c             	sub    $0xc,%esp
80101354:	89 c6                	mov    %eax,%esi
80101356:	21 ca                	and    %ecx,%edx
80101358:	88 54 18 5c          	mov    %dl,0x5c(%eax,%ebx,1)
8010135c:	50                   	push   %eax
8010135d:	e8 8e 1c 00 00       	call   80102ff0 <log_write>
80101362:	89 34 24             	mov    %esi,(%esp)
80101365:	e8 a6 ee ff ff       	call   80100210 <brelse>
8010136a:	83 c4 10             	add    $0x10,%esp
8010136d:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101370:	5b                   	pop    %ebx
80101371:	5e                   	pop    %esi
80101372:	5d                   	pop    %ebp
80101373:	c3                   	ret    
80101374:	83 ec 0c             	sub    $0xc,%esp
80101377:	68 5f 73 10 80       	push   $0x8010735f
8010137c:	e8 5f f0 ff ff       	call   801003e0 <panic>
80101381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101388:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010138f:	90                   	nop

80101390 <balloc>:
80101390:	55                   	push   %ebp
80101391:	89 e5                	mov    %esp,%ebp
80101393:	57                   	push   %edi
80101394:	56                   	push   %esi
80101395:	53                   	push   %ebx
80101396:	83 ec 1c             	sub    $0x1c,%esp
80101399:	89 45 d8             	mov    %eax,-0x28(%ebp)
8010139c:	a1 c0 09 11 80       	mov    0x801109c0,%eax
801013a1:	85 c0                	test   %eax,%eax
801013a3:	0f 84 8c 00 00 00    	je     80101435 <balloc+0xa5>
801013a9:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
801013b0:	8b 75 dc             	mov    -0x24(%ebp),%esi
801013b3:	83 ec 08             	sub    $0x8,%esp
801013b6:	89 f0                	mov    %esi,%eax
801013b8:	c1 f8 0c             	sar    $0xc,%eax
801013bb:	03 05 d8 09 11 80    	add    0x801109d8,%eax
801013c1:	50                   	push   %eax
801013c2:	ff 75 d8             	pushl  -0x28(%ebp)
801013c5:	e8 c6 ed ff ff       	call   80100190 <bread>
801013ca:	83 c4 10             	add    $0x10,%esp
801013cd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801013d0:	a1 c0 09 11 80       	mov    0x801109c0,%eax
801013d5:	89 45 e0             	mov    %eax,-0x20(%ebp)
801013d8:	31 c0                	xor    %eax,%eax
801013da:	eb 30                	jmp    8010140c <balloc+0x7c>
801013dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801013e0:	89 c1                	mov    %eax,%ecx
801013e2:	bb 01 00 00 00       	mov    $0x1,%ebx
801013e7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801013ea:	83 e1 07             	and    $0x7,%ecx
801013ed:	d3 e3                	shl    %cl,%ebx
801013ef:	89 c1                	mov    %eax,%ecx
801013f1:	c1 f9 03             	sar    $0x3,%ecx
801013f4:	0f b6 7c 0a 5c       	movzbl 0x5c(%edx,%ecx,1),%edi
801013f9:	89 fa                	mov    %edi,%edx
801013fb:	85 df                	test   %ebx,%edi
801013fd:	74 49                	je     80101448 <balloc+0xb8>
801013ff:	83 c0 01             	add    $0x1,%eax
80101402:	83 c6 01             	add    $0x1,%esi
80101405:	3d 00 10 00 00       	cmp    $0x1000,%eax
8010140a:	74 05                	je     80101411 <balloc+0x81>
8010140c:	39 75 e0             	cmp    %esi,-0x20(%ebp)
8010140f:	77 cf                	ja     801013e0 <balloc+0x50>
80101411:	83 ec 0c             	sub    $0xc,%esp
80101414:	ff 75 e4             	pushl  -0x1c(%ebp)
80101417:	e8 f4 ed ff ff       	call   80100210 <brelse>
8010141c:	81 45 dc 00 10 00 00 	addl   $0x1000,-0x24(%ebp)
80101423:	83 c4 10             	add    $0x10,%esp
80101426:	8b 45 dc             	mov    -0x24(%ebp),%eax
80101429:	39 05 c0 09 11 80    	cmp    %eax,0x801109c0
8010142f:	0f 87 7b ff ff ff    	ja     801013b0 <balloc+0x20>
80101435:	83 ec 0c             	sub    $0xc,%esp
80101438:	68 72 73 10 80       	push   $0x80107372
8010143d:	e8 9e ef ff ff       	call   801003e0 <panic>
80101442:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80101448:	8b 7d e4             	mov    -0x1c(%ebp),%edi
8010144b:	83 ec 0c             	sub    $0xc,%esp
8010144e:	09 da                	or     %ebx,%edx
80101450:	88 54 0f 5c          	mov    %dl,0x5c(%edi,%ecx,1)
80101454:	57                   	push   %edi
80101455:	e8 96 1b 00 00       	call   80102ff0 <log_write>
8010145a:	89 3c 24             	mov    %edi,(%esp)
8010145d:	e8 ae ed ff ff       	call   80100210 <brelse>
80101462:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101465:	89 f2                	mov    %esi,%edx
80101467:	e8 64 fe ff ff       	call   801012d0 <bzero>
8010146c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010146f:	89 f0                	mov    %esi,%eax
80101471:	5b                   	pop    %ebx
80101472:	5e                   	pop    %esi
80101473:	5f                   	pop    %edi
80101474:	5d                   	pop    %ebp
80101475:	c3                   	ret    
80101476:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010147d:	8d 76 00             	lea    0x0(%esi),%esi

80101480 <bmap>:
80101480:	55                   	push   %ebp
80101481:	89 e5                	mov    %esp,%ebp
80101483:	57                   	push   %edi
80101484:	56                   	push   %esi
80101485:	89 c6                	mov    %eax,%esi
80101487:	53                   	push   %ebx
80101488:	83 ec 1c             	sub    $0x1c,%esp
8010148b:	83 fa 0b             	cmp    $0xb,%edx
8010148e:	0f 86 84 00 00 00    	jbe    80101518 <bmap+0x98>
80101494:	8d 5a f4             	lea    -0xc(%edx),%ebx
80101497:	83 fb 7f             	cmp    $0x7f,%ebx
8010149a:	0f 87 98 00 00 00    	ja     80101538 <bmap+0xb8>
801014a0:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
801014a6:	8b 16                	mov    (%esi),%edx
801014a8:	85 c0                	test   %eax,%eax
801014aa:	74 54                	je     80101500 <bmap+0x80>
801014ac:	83 ec 08             	sub    $0x8,%esp
801014af:	50                   	push   %eax
801014b0:	52                   	push   %edx
801014b1:	e8 da ec ff ff       	call   80100190 <bread>
801014b6:	83 c4 10             	add    $0x10,%esp
801014b9:	8d 54 98 5c          	lea    0x5c(%eax,%ebx,4),%edx
801014bd:	89 c7                	mov    %eax,%edi
801014bf:	8b 1a                	mov    (%edx),%ebx
801014c1:	85 db                	test   %ebx,%ebx
801014c3:	74 1b                	je     801014e0 <bmap+0x60>
801014c5:	83 ec 0c             	sub    $0xc,%esp
801014c8:	57                   	push   %edi
801014c9:	e8 42 ed ff ff       	call   80100210 <brelse>
801014ce:	83 c4 10             	add    $0x10,%esp
801014d1:	8d 65 f4             	lea    -0xc(%ebp),%esp
801014d4:	89 d8                	mov    %ebx,%eax
801014d6:	5b                   	pop    %ebx
801014d7:	5e                   	pop    %esi
801014d8:	5f                   	pop    %edi
801014d9:	5d                   	pop    %ebp
801014da:	c3                   	ret    
801014db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801014df:	90                   	nop
801014e0:	8b 06                	mov    (%esi),%eax
801014e2:	89 55 e4             	mov    %edx,-0x1c(%ebp)
801014e5:	e8 a6 fe ff ff       	call   80101390 <balloc>
801014ea:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801014ed:	83 ec 0c             	sub    $0xc,%esp
801014f0:	89 c3                	mov    %eax,%ebx
801014f2:	89 02                	mov    %eax,(%edx)
801014f4:	57                   	push   %edi
801014f5:	e8 f6 1a 00 00       	call   80102ff0 <log_write>
801014fa:	83 c4 10             	add    $0x10,%esp
801014fd:	eb c6                	jmp    801014c5 <bmap+0x45>
801014ff:	90                   	nop
80101500:	89 d0                	mov    %edx,%eax
80101502:	e8 89 fe ff ff       	call   80101390 <balloc>
80101507:	8b 16                	mov    (%esi),%edx
80101509:	89 86 8c 00 00 00    	mov    %eax,0x8c(%esi)
8010150f:	eb 9b                	jmp    801014ac <bmap+0x2c>
80101511:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101518:	8d 3c 90             	lea    (%eax,%edx,4),%edi
8010151b:	8b 5f 5c             	mov    0x5c(%edi),%ebx
8010151e:	85 db                	test   %ebx,%ebx
80101520:	75 af                	jne    801014d1 <bmap+0x51>
80101522:	8b 00                	mov    (%eax),%eax
80101524:	e8 67 fe ff ff       	call   80101390 <balloc>
80101529:	89 47 5c             	mov    %eax,0x5c(%edi)
8010152c:	89 c3                	mov    %eax,%ebx
8010152e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101531:	89 d8                	mov    %ebx,%eax
80101533:	5b                   	pop    %ebx
80101534:	5e                   	pop    %esi
80101535:	5f                   	pop    %edi
80101536:	5d                   	pop    %ebp
80101537:	c3                   	ret    
80101538:	83 ec 0c             	sub    $0xc,%esp
8010153b:	68 88 73 10 80       	push   $0x80107388
80101540:	e8 9b ee ff ff       	call   801003e0 <panic>
80101545:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010154c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101550 <iget>:
80101550:	55                   	push   %ebp
80101551:	89 e5                	mov    %esp,%ebp
80101553:	57                   	push   %edi
80101554:	89 c7                	mov    %eax,%edi
80101556:	56                   	push   %esi
80101557:	31 f6                	xor    %esi,%esi
80101559:	53                   	push   %ebx
8010155a:	bb 14 0a 11 80       	mov    $0x80110a14,%ebx
8010155f:	83 ec 28             	sub    $0x28,%esp
80101562:	89 55 e4             	mov    %edx,-0x1c(%ebp)
80101565:	68 e0 09 11 80       	push   $0x801109e0
8010156a:	e8 61 31 00 00       	call   801046d0 <acquire>
8010156f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101572:	83 c4 10             	add    $0x10,%esp
80101575:	eb 1b                	jmp    80101592 <iget+0x42>
80101577:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010157e:	66 90                	xchg   %ax,%ax
80101580:	39 3b                	cmp    %edi,(%ebx)
80101582:	74 6c                	je     801015f0 <iget+0xa0>
80101584:	81 c3 90 00 00 00    	add    $0x90,%ebx
8010158a:	81 fb 34 26 11 80    	cmp    $0x80112634,%ebx
80101590:	73 26                	jae    801015b8 <iget+0x68>
80101592:	8b 4b 08             	mov    0x8(%ebx),%ecx
80101595:	85 c9                	test   %ecx,%ecx
80101597:	7f e7                	jg     80101580 <iget+0x30>
80101599:	85 f6                	test   %esi,%esi
8010159b:	75 e7                	jne    80101584 <iget+0x34>
8010159d:	89 d8                	mov    %ebx,%eax
8010159f:	81 c3 90 00 00 00    	add    $0x90,%ebx
801015a5:	85 c9                	test   %ecx,%ecx
801015a7:	75 6e                	jne    80101617 <iget+0xc7>
801015a9:	89 c6                	mov    %eax,%esi
801015ab:	81 fb 34 26 11 80    	cmp    $0x80112634,%ebx
801015b1:	72 df                	jb     80101592 <iget+0x42>
801015b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801015b7:	90                   	nop
801015b8:	85 f6                	test   %esi,%esi
801015ba:	74 73                	je     8010162f <iget+0xdf>
801015bc:	83 ec 0c             	sub    $0xc,%esp
801015bf:	89 3e                	mov    %edi,(%esi)
801015c1:	89 56 04             	mov    %edx,0x4(%esi)
801015c4:	c7 46 08 01 00 00 00 	movl   $0x1,0x8(%esi)
801015cb:	c7 46 4c 00 00 00 00 	movl   $0x0,0x4c(%esi)
801015d2:	68 e0 09 11 80       	push   $0x801109e0
801015d7:	e8 64 31 00 00       	call   80104740 <release>
801015dc:	83 c4 10             	add    $0x10,%esp
801015df:	8d 65 f4             	lea    -0xc(%ebp),%esp
801015e2:	89 f0                	mov    %esi,%eax
801015e4:	5b                   	pop    %ebx
801015e5:	5e                   	pop    %esi
801015e6:	5f                   	pop    %edi
801015e7:	5d                   	pop    %ebp
801015e8:	c3                   	ret    
801015e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801015f0:	39 53 04             	cmp    %edx,0x4(%ebx)
801015f3:	75 8f                	jne    80101584 <iget+0x34>
801015f5:	83 ec 0c             	sub    $0xc,%esp
801015f8:	83 c1 01             	add    $0x1,%ecx
801015fb:	89 de                	mov    %ebx,%esi
801015fd:	68 e0 09 11 80       	push   $0x801109e0
80101602:	89 4b 08             	mov    %ecx,0x8(%ebx)
80101605:	e8 36 31 00 00       	call   80104740 <release>
8010160a:	83 c4 10             	add    $0x10,%esp
8010160d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101610:	89 f0                	mov    %esi,%eax
80101612:	5b                   	pop    %ebx
80101613:	5e                   	pop    %esi
80101614:	5f                   	pop    %edi
80101615:	5d                   	pop    %ebp
80101616:	c3                   	ret    
80101617:	81 fb 34 26 11 80    	cmp    $0x80112634,%ebx
8010161d:	73 10                	jae    8010162f <iget+0xdf>
8010161f:	8b 4b 08             	mov    0x8(%ebx),%ecx
80101622:	85 c9                	test   %ecx,%ecx
80101624:	0f 8f 56 ff ff ff    	jg     80101580 <iget+0x30>
8010162a:	e9 6e ff ff ff       	jmp    8010159d <iget+0x4d>
8010162f:	83 ec 0c             	sub    $0xc,%esp
80101632:	68 9b 73 10 80       	push   $0x8010739b
80101637:	e8 a4 ed ff ff       	call   801003e0 <panic>
8010163c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101640 <readsb>:
80101640:	f3 0f 1e fb          	endbr32 
80101644:	55                   	push   %ebp
80101645:	89 e5                	mov    %esp,%ebp
80101647:	56                   	push   %esi
80101648:	53                   	push   %ebx
80101649:	8b 75 0c             	mov    0xc(%ebp),%esi
8010164c:	83 ec 08             	sub    $0x8,%esp
8010164f:	6a 01                	push   $0x1
80101651:	ff 75 08             	pushl  0x8(%ebp)
80101654:	e8 37 eb ff ff       	call   80100190 <bread>
80101659:	83 c4 0c             	add    $0xc,%esp
8010165c:	89 c3                	mov    %eax,%ebx
8010165e:	8d 40 5c             	lea    0x5c(%eax),%eax
80101661:	6a 1c                	push   $0x1c
80101663:	50                   	push   %eax
80101664:	56                   	push   %esi
80101665:	e8 f6 31 00 00       	call   80104860 <memmove>
8010166a:	89 5d 08             	mov    %ebx,0x8(%ebp)
8010166d:	83 c4 10             	add    $0x10,%esp
80101670:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101673:	5b                   	pop    %ebx
80101674:	5e                   	pop    %esi
80101675:	5d                   	pop    %ebp
80101676:	e9 95 eb ff ff       	jmp    80100210 <brelse>
8010167b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010167f:	90                   	nop

80101680 <iinit>:
80101680:	f3 0f 1e fb          	endbr32 
80101684:	55                   	push   %ebp
80101685:	89 e5                	mov    %esp,%ebp
80101687:	53                   	push   %ebx
80101688:	bb 20 0a 11 80       	mov    $0x80110a20,%ebx
8010168d:	83 ec 0c             	sub    $0xc,%esp
80101690:	68 ab 73 10 80       	push   $0x801073ab
80101695:	68 e0 09 11 80       	push   $0x801109e0
8010169a:	e8 91 2e 00 00       	call   80104530 <initlock>
8010169f:	83 c4 10             	add    $0x10,%esp
801016a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801016a8:	83 ec 08             	sub    $0x8,%esp
801016ab:	68 b2 73 10 80       	push   $0x801073b2
801016b0:	53                   	push   %ebx
801016b1:	81 c3 90 00 00 00    	add    $0x90,%ebx
801016b7:	e8 f4 2c 00 00       	call   801043b0 <initsleeplock>
801016bc:	83 c4 10             	add    $0x10,%esp
801016bf:	81 fb 40 26 11 80    	cmp    $0x80112640,%ebx
801016c5:	75 e1                	jne    801016a8 <iinit+0x28>
801016c7:	83 ec 08             	sub    $0x8,%esp
801016ca:	68 c0 09 11 80       	push   $0x801109c0
801016cf:	ff 75 08             	pushl  0x8(%ebp)
801016d2:	e8 69 ff ff ff       	call   80101640 <readsb>
801016d7:	ff 35 d8 09 11 80    	pushl  0x801109d8
801016dd:	ff 35 d4 09 11 80    	pushl  0x801109d4
801016e3:	ff 35 d0 09 11 80    	pushl  0x801109d0
801016e9:	ff 35 cc 09 11 80    	pushl  0x801109cc
801016ef:	ff 35 c8 09 11 80    	pushl  0x801109c8
801016f5:	ff 35 c4 09 11 80    	pushl  0x801109c4
801016fb:	ff 35 c0 09 11 80    	pushl  0x801109c0
80101701:	68 18 74 10 80       	push   $0x80107418
80101706:	e8 45 f0 ff ff       	call   80100750 <cprintf>
8010170b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010170e:	83 c4 30             	add    $0x30,%esp
80101711:	c9                   	leave  
80101712:	c3                   	ret    
80101713:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010171a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80101720 <ialloc>:
80101720:	f3 0f 1e fb          	endbr32 
80101724:	55                   	push   %ebp
80101725:	89 e5                	mov    %esp,%ebp
80101727:	57                   	push   %edi
80101728:	56                   	push   %esi
80101729:	53                   	push   %ebx
8010172a:	83 ec 1c             	sub    $0x1c,%esp
8010172d:	8b 45 0c             	mov    0xc(%ebp),%eax
80101730:	83 3d c8 09 11 80 01 	cmpl   $0x1,0x801109c8
80101737:	8b 75 08             	mov    0x8(%ebp),%esi
8010173a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010173d:	0f 86 8d 00 00 00    	jbe    801017d0 <ialloc+0xb0>
80101743:	bf 01 00 00 00       	mov    $0x1,%edi
80101748:	eb 1d                	jmp    80101767 <ialloc+0x47>
8010174a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80101750:	83 ec 0c             	sub    $0xc,%esp
80101753:	83 c7 01             	add    $0x1,%edi
80101756:	53                   	push   %ebx
80101757:	e8 b4 ea ff ff       	call   80100210 <brelse>
8010175c:	83 c4 10             	add    $0x10,%esp
8010175f:	3b 3d c8 09 11 80    	cmp    0x801109c8,%edi
80101765:	73 69                	jae    801017d0 <ialloc+0xb0>
80101767:	89 f8                	mov    %edi,%eax
80101769:	83 ec 08             	sub    $0x8,%esp
8010176c:	c1 e8 03             	shr    $0x3,%eax
8010176f:	03 05 d4 09 11 80    	add    0x801109d4,%eax
80101775:	50                   	push   %eax
80101776:	56                   	push   %esi
80101777:	e8 14 ea ff ff       	call   80100190 <bread>
8010177c:	83 c4 10             	add    $0x10,%esp
8010177f:	89 c3                	mov    %eax,%ebx
80101781:	89 f8                	mov    %edi,%eax
80101783:	83 e0 07             	and    $0x7,%eax
80101786:	c1 e0 06             	shl    $0x6,%eax
80101789:	8d 4c 03 5c          	lea    0x5c(%ebx,%eax,1),%ecx
8010178d:	66 83 39 00          	cmpw   $0x0,(%ecx)
80101791:	75 bd                	jne    80101750 <ialloc+0x30>
80101793:	83 ec 04             	sub    $0x4,%esp
80101796:	89 4d e0             	mov    %ecx,-0x20(%ebp)
80101799:	6a 40                	push   $0x40
8010179b:	6a 00                	push   $0x0
8010179d:	51                   	push   %ecx
8010179e:	e8 0d 30 00 00       	call   801047b0 <memset>
801017a3:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
801017a7:	8b 4d e0             	mov    -0x20(%ebp),%ecx
801017aa:	66 89 01             	mov    %ax,(%ecx)
801017ad:	89 1c 24             	mov    %ebx,(%esp)
801017b0:	e8 3b 18 00 00       	call   80102ff0 <log_write>
801017b5:	89 1c 24             	mov    %ebx,(%esp)
801017b8:	e8 53 ea ff ff       	call   80100210 <brelse>
801017bd:	83 c4 10             	add    $0x10,%esp
801017c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
801017c3:	89 fa                	mov    %edi,%edx
801017c5:	5b                   	pop    %ebx
801017c6:	89 f0                	mov    %esi,%eax
801017c8:	5e                   	pop    %esi
801017c9:	5f                   	pop    %edi
801017ca:	5d                   	pop    %ebp
801017cb:	e9 80 fd ff ff       	jmp    80101550 <iget>
801017d0:	83 ec 0c             	sub    $0xc,%esp
801017d3:	68 b8 73 10 80       	push   $0x801073b8
801017d8:	e8 03 ec ff ff       	call   801003e0 <panic>
801017dd:	8d 76 00             	lea    0x0(%esi),%esi

801017e0 <iupdate>:
801017e0:	f3 0f 1e fb          	endbr32 
801017e4:	55                   	push   %ebp
801017e5:	89 e5                	mov    %esp,%ebp
801017e7:	56                   	push   %esi
801017e8:	53                   	push   %ebx
801017e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
801017ec:	8b 43 04             	mov    0x4(%ebx),%eax
801017ef:	83 c3 5c             	add    $0x5c,%ebx
801017f2:	83 ec 08             	sub    $0x8,%esp
801017f5:	c1 e8 03             	shr    $0x3,%eax
801017f8:	03 05 d4 09 11 80    	add    0x801109d4,%eax
801017fe:	50                   	push   %eax
801017ff:	ff 73 a4             	pushl  -0x5c(%ebx)
80101802:	e8 89 e9 ff ff       	call   80100190 <bread>
80101807:	0f b7 53 f4          	movzwl -0xc(%ebx),%edx
8010180b:	83 c4 0c             	add    $0xc,%esp
8010180e:	89 c6                	mov    %eax,%esi
80101810:	8b 43 a8             	mov    -0x58(%ebx),%eax
80101813:	83 e0 07             	and    $0x7,%eax
80101816:	c1 e0 06             	shl    $0x6,%eax
80101819:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
8010181d:	66 89 10             	mov    %dx,(%eax)
80101820:	0f b7 53 f6          	movzwl -0xa(%ebx),%edx
80101824:	83 c0 0c             	add    $0xc,%eax
80101827:	66 89 50 f6          	mov    %dx,-0xa(%eax)
8010182b:	0f b7 53 f8          	movzwl -0x8(%ebx),%edx
8010182f:	66 89 50 f8          	mov    %dx,-0x8(%eax)
80101833:	0f b7 53 fa          	movzwl -0x6(%ebx),%edx
80101837:	66 89 50 fa          	mov    %dx,-0x6(%eax)
8010183b:	8b 53 fc             	mov    -0x4(%ebx),%edx
8010183e:	89 50 fc             	mov    %edx,-0x4(%eax)
80101841:	6a 34                	push   $0x34
80101843:	53                   	push   %ebx
80101844:	50                   	push   %eax
80101845:	e8 16 30 00 00       	call   80104860 <memmove>
8010184a:	89 34 24             	mov    %esi,(%esp)
8010184d:	e8 9e 17 00 00       	call   80102ff0 <log_write>
80101852:	89 75 08             	mov    %esi,0x8(%ebp)
80101855:	83 c4 10             	add    $0x10,%esp
80101858:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010185b:	5b                   	pop    %ebx
8010185c:	5e                   	pop    %esi
8010185d:	5d                   	pop    %ebp
8010185e:	e9 ad e9 ff ff       	jmp    80100210 <brelse>
80101863:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010186a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80101870 <itrunc>:
80101870:	55                   	push   %ebp
80101871:	89 e5                	mov    %esp,%ebp
80101873:	57                   	push   %edi
80101874:	8d b8 8c 00 00 00    	lea    0x8c(%eax),%edi
8010187a:	56                   	push   %esi
8010187b:	89 c6                	mov    %eax,%esi
8010187d:	53                   	push   %ebx
8010187e:	8d 58 5c             	lea    0x5c(%eax),%ebx
80101881:	83 ec 1c             	sub    $0x1c,%esp
80101884:	eb 11                	jmp    80101897 <itrunc+0x27>
80101886:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010188d:	8d 76 00             	lea    0x0(%esi),%esi
80101890:	83 c3 04             	add    $0x4,%ebx
80101893:	39 fb                	cmp    %edi,%ebx
80101895:	74 1b                	je     801018b2 <itrunc+0x42>
80101897:	8b 13                	mov    (%ebx),%edx
80101899:	85 d2                	test   %edx,%edx
8010189b:	74 f3                	je     80101890 <itrunc+0x20>
8010189d:	8b 06                	mov    (%esi),%eax
8010189f:	83 c3 04             	add    $0x4,%ebx
801018a2:	e8 69 fa ff ff       	call   80101310 <bfree>
801018a7:	c7 43 fc 00 00 00 00 	movl   $0x0,-0x4(%ebx)
801018ae:	39 fb                	cmp    %edi,%ebx
801018b0:	75 e5                	jne    80101897 <itrunc+0x27>
801018b2:	8b 86 8c 00 00 00    	mov    0x8c(%esi),%eax
801018b8:	85 c0                	test   %eax,%eax
801018ba:	75 1b                	jne    801018d7 <itrunc+0x67>
801018bc:	83 ec 0c             	sub    $0xc,%esp
801018bf:	c7 46 58 00 00 00 00 	movl   $0x0,0x58(%esi)
801018c6:	56                   	push   %esi
801018c7:	e8 14 ff ff ff       	call   801017e0 <iupdate>
801018cc:	83 c4 10             	add    $0x10,%esp
801018cf:	8d 65 f4             	lea    -0xc(%ebp),%esp
801018d2:	5b                   	pop    %ebx
801018d3:	5e                   	pop    %esi
801018d4:	5f                   	pop    %edi
801018d5:	5d                   	pop    %ebp
801018d6:	c3                   	ret    
801018d7:	83 ec 08             	sub    $0x8,%esp
801018da:	50                   	push   %eax
801018db:	ff 36                	pushl  (%esi)
801018dd:	e8 ae e8 ff ff       	call   80100190 <bread>
801018e2:	83 c4 10             	add    $0x10,%esp
801018e5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801018e8:	8d 58 5c             	lea    0x5c(%eax),%ebx
801018eb:	8d b8 5c 02 00 00    	lea    0x25c(%eax),%edi
801018f1:	eb 0c                	jmp    801018ff <itrunc+0x8f>
801018f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801018f7:	90                   	nop
801018f8:	83 c3 04             	add    $0x4,%ebx
801018fb:	39 df                	cmp    %ebx,%edi
801018fd:	74 14                	je     80101913 <itrunc+0xa3>
801018ff:	8b 13                	mov    (%ebx),%edx
80101901:	85 d2                	test   %edx,%edx
80101903:	74 f3                	je     801018f8 <itrunc+0x88>
80101905:	8b 06                	mov    (%esi),%eax
80101907:	83 c3 04             	add    $0x4,%ebx
8010190a:	e8 01 fa ff ff       	call   80101310 <bfree>
8010190f:	39 df                	cmp    %ebx,%edi
80101911:	75 ec                	jne    801018ff <itrunc+0x8f>
80101913:	83 ec 0c             	sub    $0xc,%esp
80101916:	ff 75 e4             	pushl  -0x1c(%ebp)
80101919:	e8 f2 e8 ff ff       	call   80100210 <brelse>
8010191e:	8b 96 8c 00 00 00    	mov    0x8c(%esi),%edx
80101924:	8b 06                	mov    (%esi),%eax
80101926:	e8 e5 f9 ff ff       	call   80101310 <bfree>
8010192b:	83 c4 10             	add    $0x10,%esp
8010192e:	c7 86 8c 00 00 00 00 	movl   $0x0,0x8c(%esi)
80101935:	00 00 00 
80101938:	eb 82                	jmp    801018bc <itrunc+0x4c>
8010193a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80101940 <idup>:
80101940:	f3 0f 1e fb          	endbr32 
80101944:	55                   	push   %ebp
80101945:	89 e5                	mov    %esp,%ebp
80101947:	53                   	push   %ebx
80101948:	83 ec 10             	sub    $0x10,%esp
8010194b:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010194e:	68 e0 09 11 80       	push   $0x801109e0
80101953:	e8 78 2d 00 00       	call   801046d0 <acquire>
80101958:	83 43 08 01          	addl   $0x1,0x8(%ebx)
8010195c:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101963:	e8 d8 2d 00 00       	call   80104740 <release>
80101968:	89 d8                	mov    %ebx,%eax
8010196a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010196d:	c9                   	leave  
8010196e:	c3                   	ret    
8010196f:	90                   	nop

80101970 <ilock>:
80101970:	f3 0f 1e fb          	endbr32 
80101974:	55                   	push   %ebp
80101975:	89 e5                	mov    %esp,%ebp
80101977:	56                   	push   %esi
80101978:	53                   	push   %ebx
80101979:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010197c:	85 db                	test   %ebx,%ebx
8010197e:	0f 84 b3 00 00 00    	je     80101a37 <ilock+0xc7>
80101984:	8b 53 08             	mov    0x8(%ebx),%edx
80101987:	85 d2                	test   %edx,%edx
80101989:	0f 8e a8 00 00 00    	jle    80101a37 <ilock+0xc7>
8010198f:	83 ec 0c             	sub    $0xc,%esp
80101992:	8d 43 0c             	lea    0xc(%ebx),%eax
80101995:	50                   	push   %eax
80101996:	e8 55 2a 00 00       	call   801043f0 <acquiresleep>
8010199b:	8b 43 4c             	mov    0x4c(%ebx),%eax
8010199e:	83 c4 10             	add    $0x10,%esp
801019a1:	85 c0                	test   %eax,%eax
801019a3:	74 0b                	je     801019b0 <ilock+0x40>
801019a5:	8d 65 f8             	lea    -0x8(%ebp),%esp
801019a8:	5b                   	pop    %ebx
801019a9:	5e                   	pop    %esi
801019aa:	5d                   	pop    %ebp
801019ab:	c3                   	ret    
801019ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801019b0:	8b 43 04             	mov    0x4(%ebx),%eax
801019b3:	83 ec 08             	sub    $0x8,%esp
801019b6:	c1 e8 03             	shr    $0x3,%eax
801019b9:	03 05 d4 09 11 80    	add    0x801109d4,%eax
801019bf:	50                   	push   %eax
801019c0:	ff 33                	pushl  (%ebx)
801019c2:	e8 c9 e7 ff ff       	call   80100190 <bread>
801019c7:	83 c4 0c             	add    $0xc,%esp
801019ca:	89 c6                	mov    %eax,%esi
801019cc:	8b 43 04             	mov    0x4(%ebx),%eax
801019cf:	83 e0 07             	and    $0x7,%eax
801019d2:	c1 e0 06             	shl    $0x6,%eax
801019d5:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
801019d9:	0f b7 10             	movzwl (%eax),%edx
801019dc:	83 c0 0c             	add    $0xc,%eax
801019df:	66 89 53 50          	mov    %dx,0x50(%ebx)
801019e3:	0f b7 50 f6          	movzwl -0xa(%eax),%edx
801019e7:	66 89 53 52          	mov    %dx,0x52(%ebx)
801019eb:	0f b7 50 f8          	movzwl -0x8(%eax),%edx
801019ef:	66 89 53 54          	mov    %dx,0x54(%ebx)
801019f3:	0f b7 50 fa          	movzwl -0x6(%eax),%edx
801019f7:	66 89 53 56          	mov    %dx,0x56(%ebx)
801019fb:	8b 50 fc             	mov    -0x4(%eax),%edx
801019fe:	89 53 58             	mov    %edx,0x58(%ebx)
80101a01:	6a 34                	push   $0x34
80101a03:	50                   	push   %eax
80101a04:	8d 43 5c             	lea    0x5c(%ebx),%eax
80101a07:	50                   	push   %eax
80101a08:	e8 53 2e 00 00       	call   80104860 <memmove>
80101a0d:	89 34 24             	mov    %esi,(%esp)
80101a10:	e8 fb e7 ff ff       	call   80100210 <brelse>
80101a15:	83 c4 10             	add    $0x10,%esp
80101a18:	66 83 7b 50 00       	cmpw   $0x0,0x50(%ebx)
80101a1d:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
80101a24:	0f 85 7b ff ff ff    	jne    801019a5 <ilock+0x35>
80101a2a:	83 ec 0c             	sub    $0xc,%esp
80101a2d:	68 d0 73 10 80       	push   $0x801073d0
80101a32:	e8 a9 e9 ff ff       	call   801003e0 <panic>
80101a37:	83 ec 0c             	sub    $0xc,%esp
80101a3a:	68 ca 73 10 80       	push   $0x801073ca
80101a3f:	e8 9c e9 ff ff       	call   801003e0 <panic>
80101a44:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101a4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101a4f:	90                   	nop

80101a50 <iunlock>:
80101a50:	f3 0f 1e fb          	endbr32 
80101a54:	55                   	push   %ebp
80101a55:	89 e5                	mov    %esp,%ebp
80101a57:	56                   	push   %esi
80101a58:	53                   	push   %ebx
80101a59:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101a5c:	85 db                	test   %ebx,%ebx
80101a5e:	74 28                	je     80101a88 <iunlock+0x38>
80101a60:	83 ec 0c             	sub    $0xc,%esp
80101a63:	8d 73 0c             	lea    0xc(%ebx),%esi
80101a66:	56                   	push   %esi
80101a67:	e8 24 2a 00 00       	call   80104490 <holdingsleep>
80101a6c:	83 c4 10             	add    $0x10,%esp
80101a6f:	85 c0                	test   %eax,%eax
80101a71:	74 15                	je     80101a88 <iunlock+0x38>
80101a73:	8b 43 08             	mov    0x8(%ebx),%eax
80101a76:	85 c0                	test   %eax,%eax
80101a78:	7e 0e                	jle    80101a88 <iunlock+0x38>
80101a7a:	89 75 08             	mov    %esi,0x8(%ebp)
80101a7d:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101a80:	5b                   	pop    %ebx
80101a81:	5e                   	pop    %esi
80101a82:	5d                   	pop    %ebp
80101a83:	e9 c8 29 00 00       	jmp    80104450 <releasesleep>
80101a88:	83 ec 0c             	sub    $0xc,%esp
80101a8b:	68 df 73 10 80       	push   $0x801073df
80101a90:	e8 4b e9 ff ff       	call   801003e0 <panic>
80101a95:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101aa0 <iput>:
80101aa0:	f3 0f 1e fb          	endbr32 
80101aa4:	55                   	push   %ebp
80101aa5:	89 e5                	mov    %esp,%ebp
80101aa7:	57                   	push   %edi
80101aa8:	56                   	push   %esi
80101aa9:	53                   	push   %ebx
80101aaa:	83 ec 18             	sub    $0x18,%esp
80101aad:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101ab0:	8d 73 0c             	lea    0xc(%ebx),%esi
80101ab3:	56                   	push   %esi
80101ab4:	e8 37 29 00 00       	call   801043f0 <acquiresleep>
80101ab9:	8b 53 4c             	mov    0x4c(%ebx),%edx
80101abc:	83 c4 10             	add    $0x10,%esp
80101abf:	85 d2                	test   %edx,%edx
80101ac1:	74 07                	je     80101aca <iput+0x2a>
80101ac3:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
80101ac8:	74 36                	je     80101b00 <iput+0x60>
80101aca:	83 ec 0c             	sub    $0xc,%esp
80101acd:	56                   	push   %esi
80101ace:	e8 7d 29 00 00       	call   80104450 <releasesleep>
80101ad3:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101ada:	e8 f1 2b 00 00       	call   801046d0 <acquire>
80101adf:	83 6b 08 01          	subl   $0x1,0x8(%ebx)
80101ae3:	83 c4 10             	add    $0x10,%esp
80101ae6:	c7 45 08 e0 09 11 80 	movl   $0x801109e0,0x8(%ebp)
80101aed:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101af0:	5b                   	pop    %ebx
80101af1:	5e                   	pop    %esi
80101af2:	5f                   	pop    %edi
80101af3:	5d                   	pop    %ebp
80101af4:	e9 47 2c 00 00       	jmp    80104740 <release>
80101af9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101b00:	83 ec 0c             	sub    $0xc,%esp
80101b03:	68 e0 09 11 80       	push   $0x801109e0
80101b08:	e8 c3 2b 00 00       	call   801046d0 <acquire>
80101b0d:	8b 7b 08             	mov    0x8(%ebx),%edi
80101b10:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101b17:	e8 24 2c 00 00       	call   80104740 <release>
80101b1c:	83 c4 10             	add    $0x10,%esp
80101b1f:	83 ff 01             	cmp    $0x1,%edi
80101b22:	75 a6                	jne    80101aca <iput+0x2a>
80101b24:	89 d8                	mov    %ebx,%eax
80101b26:	e8 45 fd ff ff       	call   80101870 <itrunc>
80101b2b:	83 ec 0c             	sub    $0xc,%esp
80101b2e:	31 c0                	xor    %eax,%eax
80101b30:	66 89 43 50          	mov    %ax,0x50(%ebx)
80101b34:	53                   	push   %ebx
80101b35:	e8 a6 fc ff ff       	call   801017e0 <iupdate>
80101b3a:	c7 43 4c 00 00 00 00 	movl   $0x0,0x4c(%ebx)
80101b41:	83 c4 10             	add    $0x10,%esp
80101b44:	eb 84                	jmp    80101aca <iput+0x2a>
80101b46:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101b4d:	8d 76 00             	lea    0x0(%esi),%esi

80101b50 <iunlockput>:
80101b50:	f3 0f 1e fb          	endbr32 
80101b54:	55                   	push   %ebp
80101b55:	89 e5                	mov    %esp,%ebp
80101b57:	53                   	push   %ebx
80101b58:	83 ec 10             	sub    $0x10,%esp
80101b5b:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101b5e:	53                   	push   %ebx
80101b5f:	e8 ec fe ff ff       	call   80101a50 <iunlock>
80101b64:	89 5d 08             	mov    %ebx,0x8(%ebp)
80101b67:	83 c4 10             	add    $0x10,%esp
80101b6a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101b6d:	c9                   	leave  
80101b6e:	e9 2d ff ff ff       	jmp    80101aa0 <iput>
80101b73:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80101b80 <stati>:
80101b80:	f3 0f 1e fb          	endbr32 
80101b84:	55                   	push   %ebp
80101b85:	89 e5                	mov    %esp,%ebp
80101b87:	8b 55 08             	mov    0x8(%ebp),%edx
80101b8a:	8b 45 0c             	mov    0xc(%ebp),%eax
80101b8d:	8b 0a                	mov    (%edx),%ecx
80101b8f:	89 48 04             	mov    %ecx,0x4(%eax)
80101b92:	8b 4a 04             	mov    0x4(%edx),%ecx
80101b95:	89 48 08             	mov    %ecx,0x8(%eax)
80101b98:	0f b7 4a 50          	movzwl 0x50(%edx),%ecx
80101b9c:	66 89 08             	mov    %cx,(%eax)
80101b9f:	0f b7 4a 56          	movzwl 0x56(%edx),%ecx
80101ba3:	66 89 48 0c          	mov    %cx,0xc(%eax)
80101ba7:	8b 52 58             	mov    0x58(%edx),%edx
80101baa:	89 50 10             	mov    %edx,0x10(%eax)
80101bad:	5d                   	pop    %ebp
80101bae:	c3                   	ret    
80101baf:	90                   	nop

80101bb0 <readi>:
80101bb0:	f3 0f 1e fb          	endbr32 
80101bb4:	55                   	push   %ebp
80101bb5:	89 e5                	mov    %esp,%ebp
80101bb7:	57                   	push   %edi
80101bb8:	56                   	push   %esi
80101bb9:	53                   	push   %ebx
80101bba:	83 ec 1c             	sub    $0x1c,%esp
80101bbd:	8b 7d 0c             	mov    0xc(%ebp),%edi
80101bc0:	8b 45 08             	mov    0x8(%ebp),%eax
80101bc3:	8b 75 10             	mov    0x10(%ebp),%esi
80101bc6:	89 7d e0             	mov    %edi,-0x20(%ebp)
80101bc9:	8b 7d 14             	mov    0x14(%ebp),%edi
80101bcc:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
80101bd1:	89 45 d8             	mov    %eax,-0x28(%ebp)
80101bd4:	89 7d e4             	mov    %edi,-0x1c(%ebp)
80101bd7:	0f 84 a3 00 00 00    	je     80101c80 <readi+0xd0>
80101bdd:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101be0:	8b 40 58             	mov    0x58(%eax),%eax
80101be3:	39 f0                	cmp    %esi,%eax
80101be5:	0f 82 b6 00 00 00    	jb     80101ca1 <readi+0xf1>
80101beb:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
80101bee:	31 c9                	xor    %ecx,%ecx
80101bf0:	89 da                	mov    %ebx,%edx
80101bf2:	01 f2                	add    %esi,%edx
80101bf4:	0f 92 c1             	setb   %cl
80101bf7:	89 cf                	mov    %ecx,%edi
80101bf9:	0f 82 a2 00 00 00    	jb     80101ca1 <readi+0xf1>
80101bff:	89 c1                	mov    %eax,%ecx
80101c01:	29 f1                	sub    %esi,%ecx
80101c03:	39 d0                	cmp    %edx,%eax
80101c05:	0f 43 cb             	cmovae %ebx,%ecx
80101c08:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
80101c0b:	85 c9                	test   %ecx,%ecx
80101c0d:	74 63                	je     80101c72 <readi+0xc2>
80101c0f:	90                   	nop
80101c10:	8b 5d d8             	mov    -0x28(%ebp),%ebx
80101c13:	89 f2                	mov    %esi,%edx
80101c15:	c1 ea 09             	shr    $0x9,%edx
80101c18:	89 d8                	mov    %ebx,%eax
80101c1a:	e8 61 f8 ff ff       	call   80101480 <bmap>
80101c1f:	83 ec 08             	sub    $0x8,%esp
80101c22:	50                   	push   %eax
80101c23:	ff 33                	pushl  (%ebx)
80101c25:	e8 66 e5 ff ff       	call   80100190 <bread>
80101c2a:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
80101c2d:	b9 00 02 00 00       	mov    $0x200,%ecx
80101c32:	83 c4 0c             	add    $0xc,%esp
80101c35:	89 c2                	mov    %eax,%edx
80101c37:	89 f0                	mov    %esi,%eax
80101c39:	25 ff 01 00 00       	and    $0x1ff,%eax
80101c3e:	29 fb                	sub    %edi,%ebx
80101c40:	89 55 dc             	mov    %edx,-0x24(%ebp)
80101c43:	29 c1                	sub    %eax,%ecx
80101c45:	8d 44 02 5c          	lea    0x5c(%edx,%eax,1),%eax
80101c49:	39 d9                	cmp    %ebx,%ecx
80101c4b:	0f 46 d9             	cmovbe %ecx,%ebx
80101c4e:	53                   	push   %ebx
80101c4f:	01 df                	add    %ebx,%edi
80101c51:	01 de                	add    %ebx,%esi
80101c53:	50                   	push   %eax
80101c54:	ff 75 e0             	pushl  -0x20(%ebp)
80101c57:	e8 04 2c 00 00       	call   80104860 <memmove>
80101c5c:	8b 55 dc             	mov    -0x24(%ebp),%edx
80101c5f:	89 14 24             	mov    %edx,(%esp)
80101c62:	e8 a9 e5 ff ff       	call   80100210 <brelse>
80101c67:	01 5d e0             	add    %ebx,-0x20(%ebp)
80101c6a:	83 c4 10             	add    $0x10,%esp
80101c6d:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
80101c70:	77 9e                	ja     80101c10 <readi+0x60>
80101c72:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101c75:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101c78:	5b                   	pop    %ebx
80101c79:	5e                   	pop    %esi
80101c7a:	5f                   	pop    %edi
80101c7b:	5d                   	pop    %ebp
80101c7c:	c3                   	ret    
80101c7d:	8d 76 00             	lea    0x0(%esi),%esi
80101c80:	0f bf 40 52          	movswl 0x52(%eax),%eax
80101c84:	66 83 f8 09          	cmp    $0x9,%ax
80101c88:	77 17                	ja     80101ca1 <readi+0xf1>
80101c8a:	8b 04 c5 60 09 11 80 	mov    -0x7feef6a0(,%eax,8),%eax
80101c91:	85 c0                	test   %eax,%eax
80101c93:	74 0c                	je     80101ca1 <readi+0xf1>
80101c95:	89 7d 10             	mov    %edi,0x10(%ebp)
80101c98:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101c9b:	5b                   	pop    %ebx
80101c9c:	5e                   	pop    %esi
80101c9d:	5f                   	pop    %edi
80101c9e:	5d                   	pop    %ebp
80101c9f:	ff e0                	jmp    *%eax
80101ca1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101ca6:	eb cd                	jmp    80101c75 <readi+0xc5>
80101ca8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101caf:	90                   	nop

80101cb0 <writei>:
80101cb0:	f3 0f 1e fb          	endbr32 
80101cb4:	55                   	push   %ebp
80101cb5:	89 e5                	mov    %esp,%ebp
80101cb7:	57                   	push   %edi
80101cb8:	56                   	push   %esi
80101cb9:	53                   	push   %ebx
80101cba:	83 ec 1c             	sub    $0x1c,%esp
80101cbd:	8b 45 08             	mov    0x8(%ebp),%eax
80101cc0:	8b 75 0c             	mov    0xc(%ebp),%esi
80101cc3:	8b 7d 14             	mov    0x14(%ebp),%edi
80101cc6:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
80101ccb:	89 75 dc             	mov    %esi,-0x24(%ebp)
80101cce:	89 45 d8             	mov    %eax,-0x28(%ebp)
80101cd1:	8b 75 10             	mov    0x10(%ebp),%esi
80101cd4:	89 7d e0             	mov    %edi,-0x20(%ebp)
80101cd7:	0f 84 bb 00 00 00    	je     80101d98 <writei+0xe8>
80101cdd:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101ce0:	39 70 58             	cmp    %esi,0x58(%eax)
80101ce3:	0f 82 eb 00 00 00    	jb     80101dd4 <writei+0x124>
80101ce9:	8b 7d e0             	mov    -0x20(%ebp),%edi
80101cec:	31 d2                	xor    %edx,%edx
80101cee:	89 f8                	mov    %edi,%eax
80101cf0:	01 f0                	add    %esi,%eax
80101cf2:	0f 92 c2             	setb   %dl
80101cf5:	3d 00 18 01 00       	cmp    $0x11800,%eax
80101cfa:	0f 87 d4 00 00 00    	ja     80101dd4 <writei+0x124>
80101d00:	85 d2                	test   %edx,%edx
80101d02:	0f 85 cc 00 00 00    	jne    80101dd4 <writei+0x124>
80101d08:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80101d0f:	85 ff                	test   %edi,%edi
80101d11:	74 76                	je     80101d89 <writei+0xd9>
80101d13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101d17:	90                   	nop
80101d18:	8b 7d d8             	mov    -0x28(%ebp),%edi
80101d1b:	89 f2                	mov    %esi,%edx
80101d1d:	c1 ea 09             	shr    $0x9,%edx
80101d20:	89 f8                	mov    %edi,%eax
80101d22:	e8 59 f7 ff ff       	call   80101480 <bmap>
80101d27:	83 ec 08             	sub    $0x8,%esp
80101d2a:	50                   	push   %eax
80101d2b:	ff 37                	pushl  (%edi)
80101d2d:	e8 5e e4 ff ff       	call   80100190 <bread>
80101d32:	b9 00 02 00 00       	mov    $0x200,%ecx
80101d37:	8b 5d e0             	mov    -0x20(%ebp),%ebx
80101d3a:	2b 5d e4             	sub    -0x1c(%ebp),%ebx
80101d3d:	89 c7                	mov    %eax,%edi
80101d3f:	89 f0                	mov    %esi,%eax
80101d41:	83 c4 0c             	add    $0xc,%esp
80101d44:	25 ff 01 00 00       	and    $0x1ff,%eax
80101d49:	29 c1                	sub    %eax,%ecx
80101d4b:	8d 44 07 5c          	lea    0x5c(%edi,%eax,1),%eax
80101d4f:	39 d9                	cmp    %ebx,%ecx
80101d51:	0f 46 d9             	cmovbe %ecx,%ebx
80101d54:	53                   	push   %ebx
80101d55:	01 de                	add    %ebx,%esi
80101d57:	ff 75 dc             	pushl  -0x24(%ebp)
80101d5a:	50                   	push   %eax
80101d5b:	e8 00 2b 00 00       	call   80104860 <memmove>
80101d60:	89 3c 24             	mov    %edi,(%esp)
80101d63:	e8 88 12 00 00       	call   80102ff0 <log_write>
80101d68:	89 3c 24             	mov    %edi,(%esp)
80101d6b:	e8 a0 e4 ff ff       	call   80100210 <brelse>
80101d70:	01 5d e4             	add    %ebx,-0x1c(%ebp)
80101d73:	83 c4 10             	add    $0x10,%esp
80101d76:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101d79:	01 5d dc             	add    %ebx,-0x24(%ebp)
80101d7c:	39 45 e0             	cmp    %eax,-0x20(%ebp)
80101d7f:	77 97                	ja     80101d18 <writei+0x68>
80101d81:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101d84:	39 70 58             	cmp    %esi,0x58(%eax)
80101d87:	72 37                	jb     80101dc0 <writei+0x110>
80101d89:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101d8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101d8f:	5b                   	pop    %ebx
80101d90:	5e                   	pop    %esi
80101d91:	5f                   	pop    %edi
80101d92:	5d                   	pop    %ebp
80101d93:	c3                   	ret    
80101d94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101d98:	0f bf 40 52          	movswl 0x52(%eax),%eax
80101d9c:	66 83 f8 09          	cmp    $0x9,%ax
80101da0:	77 32                	ja     80101dd4 <writei+0x124>
80101da2:	8b 04 c5 64 09 11 80 	mov    -0x7feef69c(,%eax,8),%eax
80101da9:	85 c0                	test   %eax,%eax
80101dab:	74 27                	je     80101dd4 <writei+0x124>
80101dad:	89 7d 10             	mov    %edi,0x10(%ebp)
80101db0:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101db3:	5b                   	pop    %ebx
80101db4:	5e                   	pop    %esi
80101db5:	5f                   	pop    %edi
80101db6:	5d                   	pop    %ebp
80101db7:	ff e0                	jmp    *%eax
80101db9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101dc0:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101dc3:	83 ec 0c             	sub    $0xc,%esp
80101dc6:	89 70 58             	mov    %esi,0x58(%eax)
80101dc9:	50                   	push   %eax
80101dca:	e8 11 fa ff ff       	call   801017e0 <iupdate>
80101dcf:	83 c4 10             	add    $0x10,%esp
80101dd2:	eb b5                	jmp    80101d89 <writei+0xd9>
80101dd4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101dd9:	eb b1                	jmp    80101d8c <writei+0xdc>
80101ddb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101ddf:	90                   	nop

80101de0 <namecmp>:
80101de0:	f3 0f 1e fb          	endbr32 
80101de4:	55                   	push   %ebp
80101de5:	89 e5                	mov    %esp,%ebp
80101de7:	83 ec 0c             	sub    $0xc,%esp
80101dea:	6a 0e                	push   $0xe
80101dec:	ff 75 0c             	pushl  0xc(%ebp)
80101def:	ff 75 08             	pushl  0x8(%ebp)
80101df2:	e8 d9 2a 00 00       	call   801048d0 <strncmp>
80101df7:	c9                   	leave  
80101df8:	c3                   	ret    
80101df9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80101e00 <dirlookup>:
80101e00:	f3 0f 1e fb          	endbr32 
80101e04:	55                   	push   %ebp
80101e05:	89 e5                	mov    %esp,%ebp
80101e07:	57                   	push   %edi
80101e08:	56                   	push   %esi
80101e09:	53                   	push   %ebx
80101e0a:	83 ec 1c             	sub    $0x1c,%esp
80101e0d:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101e10:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80101e15:	0f 85 89 00 00 00    	jne    80101ea4 <dirlookup+0xa4>
80101e1b:	8b 53 58             	mov    0x58(%ebx),%edx
80101e1e:	31 ff                	xor    %edi,%edi
80101e20:	8d 75 d8             	lea    -0x28(%ebp),%esi
80101e23:	85 d2                	test   %edx,%edx
80101e25:	74 40                	je     80101e67 <dirlookup+0x67>
80101e27:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101e2e:	66 90                	xchg   %ax,%ax
80101e30:	6a 10                	push   $0x10
80101e32:	57                   	push   %edi
80101e33:	56                   	push   %esi
80101e34:	53                   	push   %ebx
80101e35:	e8 76 fd ff ff       	call   80101bb0 <readi>
80101e3a:	83 c4 10             	add    $0x10,%esp
80101e3d:	83 f8 10             	cmp    $0x10,%eax
80101e40:	75 55                	jne    80101e97 <dirlookup+0x97>
80101e42:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101e47:	74 16                	je     80101e5f <dirlookup+0x5f>
80101e49:	83 ec 08             	sub    $0x8,%esp
80101e4c:	8d 45 da             	lea    -0x26(%ebp),%eax
80101e4f:	50                   	push   %eax
80101e50:	ff 75 0c             	pushl  0xc(%ebp)
80101e53:	e8 88 ff ff ff       	call   80101de0 <namecmp>
80101e58:	83 c4 10             	add    $0x10,%esp
80101e5b:	85 c0                	test   %eax,%eax
80101e5d:	74 19                	je     80101e78 <dirlookup+0x78>
80101e5f:	83 c7 10             	add    $0x10,%edi
80101e62:	39 7b 58             	cmp    %edi,0x58(%ebx)
80101e65:	77 c9                	ja     80101e30 <dirlookup+0x30>
80101e67:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101e6a:	31 c0                	xor    %eax,%eax
80101e6c:	5b                   	pop    %ebx
80101e6d:	5e                   	pop    %esi
80101e6e:	5f                   	pop    %edi
80101e6f:	5d                   	pop    %ebp
80101e70:	c3                   	ret    
80101e71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101e78:	8b 45 10             	mov    0x10(%ebp),%eax
80101e7b:	85 c0                	test   %eax,%eax
80101e7d:	74 05                	je     80101e84 <dirlookup+0x84>
80101e7f:	8b 45 10             	mov    0x10(%ebp),%eax
80101e82:	89 38                	mov    %edi,(%eax)
80101e84:	0f b7 55 d8          	movzwl -0x28(%ebp),%edx
80101e88:	8b 03                	mov    (%ebx),%eax
80101e8a:	e8 c1 f6 ff ff       	call   80101550 <iget>
80101e8f:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101e92:	5b                   	pop    %ebx
80101e93:	5e                   	pop    %esi
80101e94:	5f                   	pop    %edi
80101e95:	5d                   	pop    %ebp
80101e96:	c3                   	ret    
80101e97:	83 ec 0c             	sub    $0xc,%esp
80101e9a:	68 f9 73 10 80       	push   $0x801073f9
80101e9f:	e8 3c e5 ff ff       	call   801003e0 <panic>
80101ea4:	83 ec 0c             	sub    $0xc,%esp
80101ea7:	68 e7 73 10 80       	push   $0x801073e7
80101eac:	e8 2f e5 ff ff       	call   801003e0 <panic>
80101eb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101eb8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101ebf:	90                   	nop

80101ec0 <namex>:
80101ec0:	55                   	push   %ebp
80101ec1:	89 e5                	mov    %esp,%ebp
80101ec3:	57                   	push   %edi
80101ec4:	89 cf                	mov    %ecx,%edi
80101ec6:	56                   	push   %esi
80101ec7:	53                   	push   %ebx
80101ec8:	89 c3                	mov    %eax,%ebx
80101eca:	83 ec 1c             	sub    $0x1c,%esp
80101ecd:	80 38 2f             	cmpb   $0x2f,(%eax)
80101ed0:	89 55 e0             	mov    %edx,-0x20(%ebp)
80101ed3:	0f 84 a7 00 00 00    	je     80101f80 <namex+0xc0>
80101ed9:	e8 42 1c 00 00       	call   80103b20 <myproc>
80101ede:	83 ec 0c             	sub    $0xc,%esp
80101ee1:	ff 70 68             	pushl  0x68(%eax)
80101ee4:	e8 57 fa ff ff       	call   80101940 <idup>
80101ee9:	83 c4 10             	add    $0x10,%esp
80101eec:	89 c6                	mov    %eax,%esi
80101eee:	eb 4a                	jmp    80101f3a <namex+0x7a>
80101ef0:	83 ec 0c             	sub    $0xc,%esp
80101ef3:	56                   	push   %esi
80101ef4:	e8 77 fa ff ff       	call   80101970 <ilock>
80101ef9:	83 c4 10             	add    $0x10,%esp
80101efc:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80101f01:	75 5d                	jne    80101f60 <namex+0xa0>
80101f03:	8b 55 e0             	mov    -0x20(%ebp),%edx
80101f06:	85 d2                	test   %edx,%edx
80101f08:	74 09                	je     80101f13 <namex+0x53>
80101f0a:	80 3b 00             	cmpb   $0x0,(%ebx)
80101f0d:	0f 84 85 00 00 00    	je     80101f98 <namex+0xd8>
80101f13:	83 ec 04             	sub    $0x4,%esp
80101f16:	6a 00                	push   $0x0
80101f18:	57                   	push   %edi
80101f19:	56                   	push   %esi
80101f1a:	e8 e1 fe ff ff       	call   80101e00 <dirlookup>
80101f1f:	83 c4 10             	add    $0x10,%esp
80101f22:	85 c0                	test   %eax,%eax
80101f24:	74 3a                	je     80101f60 <namex+0xa0>
80101f26:	83 ec 0c             	sub    $0xc,%esp
80101f29:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101f2c:	56                   	push   %esi
80101f2d:	e8 1e fc ff ff       	call   80101b50 <iunlockput>
80101f32:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101f35:	83 c4 10             	add    $0x10,%esp
80101f38:	89 c6                	mov    %eax,%esi
80101f3a:	89 d8                	mov    %ebx,%eax
80101f3c:	89 fa                	mov    %edi,%edx
80101f3e:	e8 dd f2 ff ff       	call   80101220 <skipelem>
80101f43:	89 c3                	mov    %eax,%ebx
80101f45:	85 c0                	test   %eax,%eax
80101f47:	75 a7                	jne    80101ef0 <namex+0x30>
80101f49:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101f4c:	85 c0                	test   %eax,%eax
80101f4e:	74 1e                	je     80101f6e <namex+0xae>
80101f50:	83 ec 0c             	sub    $0xc,%esp
80101f53:	56                   	push   %esi
80101f54:	31 f6                	xor    %esi,%esi
80101f56:	e8 45 fb ff ff       	call   80101aa0 <iput>
80101f5b:	83 c4 10             	add    $0x10,%esp
80101f5e:	eb 0e                	jmp    80101f6e <namex+0xae>
80101f60:	83 ec 0c             	sub    $0xc,%esp
80101f63:	56                   	push   %esi
80101f64:	31 f6                	xor    %esi,%esi
80101f66:	e8 e5 fb ff ff       	call   80101b50 <iunlockput>
80101f6b:	83 c4 10             	add    $0x10,%esp
80101f6e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101f71:	89 f0                	mov    %esi,%eax
80101f73:	5b                   	pop    %ebx
80101f74:	5e                   	pop    %esi
80101f75:	5f                   	pop    %edi
80101f76:	5d                   	pop    %ebp
80101f77:	c3                   	ret    
80101f78:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101f7f:	90                   	nop
80101f80:	ba 01 00 00 00       	mov    $0x1,%edx
80101f85:	b8 01 00 00 00       	mov    $0x1,%eax
80101f8a:	e8 c1 f5 ff ff       	call   80101550 <iget>
80101f8f:	89 c6                	mov    %eax,%esi
80101f91:	eb a7                	jmp    80101f3a <namex+0x7a>
80101f93:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101f97:	90                   	nop
80101f98:	83 ec 0c             	sub    $0xc,%esp
80101f9b:	56                   	push   %esi
80101f9c:	e8 af fa ff ff       	call   80101a50 <iunlock>
80101fa1:	83 c4 10             	add    $0x10,%esp
80101fa4:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101fa7:	89 f0                	mov    %esi,%eax
80101fa9:	5b                   	pop    %ebx
80101faa:	5e                   	pop    %esi
80101fab:	5f                   	pop    %edi
80101fac:	5d                   	pop    %ebp
80101fad:	c3                   	ret    
80101fae:	66 90                	xchg   %ax,%ax

80101fb0 <dirlink>:
80101fb0:	f3 0f 1e fb          	endbr32 
80101fb4:	55                   	push   %ebp
80101fb5:	89 e5                	mov    %esp,%ebp
80101fb7:	57                   	push   %edi
80101fb8:	56                   	push   %esi
80101fb9:	53                   	push   %ebx
80101fba:	83 ec 20             	sub    $0x20,%esp
80101fbd:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101fc0:	6a 00                	push   $0x0
80101fc2:	ff 75 0c             	pushl  0xc(%ebp)
80101fc5:	53                   	push   %ebx
80101fc6:	e8 35 fe ff ff       	call   80101e00 <dirlookup>
80101fcb:	83 c4 10             	add    $0x10,%esp
80101fce:	85 c0                	test   %eax,%eax
80101fd0:	75 6b                	jne    8010203d <dirlink+0x8d>
80101fd2:	8b 7b 58             	mov    0x58(%ebx),%edi
80101fd5:	8d 75 d8             	lea    -0x28(%ebp),%esi
80101fd8:	85 ff                	test   %edi,%edi
80101fda:	74 2d                	je     80102009 <dirlink+0x59>
80101fdc:	31 ff                	xor    %edi,%edi
80101fde:	8d 75 d8             	lea    -0x28(%ebp),%esi
80101fe1:	eb 0d                	jmp    80101ff0 <dirlink+0x40>
80101fe3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101fe7:	90                   	nop
80101fe8:	83 c7 10             	add    $0x10,%edi
80101feb:	3b 7b 58             	cmp    0x58(%ebx),%edi
80101fee:	73 19                	jae    80102009 <dirlink+0x59>
80101ff0:	6a 10                	push   $0x10
80101ff2:	57                   	push   %edi
80101ff3:	56                   	push   %esi
80101ff4:	53                   	push   %ebx
80101ff5:	e8 b6 fb ff ff       	call   80101bb0 <readi>
80101ffa:	83 c4 10             	add    $0x10,%esp
80101ffd:	83 f8 10             	cmp    $0x10,%eax
80102000:	75 4e                	jne    80102050 <dirlink+0xa0>
80102002:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80102007:	75 df                	jne    80101fe8 <dirlink+0x38>
80102009:	83 ec 04             	sub    $0x4,%esp
8010200c:	8d 45 da             	lea    -0x26(%ebp),%eax
8010200f:	6a 0e                	push   $0xe
80102011:	ff 75 0c             	pushl  0xc(%ebp)
80102014:	50                   	push   %eax
80102015:	e8 06 29 00 00       	call   80104920 <strncpy>
8010201a:	6a 10                	push   $0x10
8010201c:	8b 45 10             	mov    0x10(%ebp),%eax
8010201f:	57                   	push   %edi
80102020:	56                   	push   %esi
80102021:	53                   	push   %ebx
80102022:	66 89 45 d8          	mov    %ax,-0x28(%ebp)
80102026:	e8 85 fc ff ff       	call   80101cb0 <writei>
8010202b:	83 c4 20             	add    $0x20,%esp
8010202e:	83 f8 10             	cmp    $0x10,%eax
80102031:	75 2a                	jne    8010205d <dirlink+0xad>
80102033:	31 c0                	xor    %eax,%eax
80102035:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102038:	5b                   	pop    %ebx
80102039:	5e                   	pop    %esi
8010203a:	5f                   	pop    %edi
8010203b:	5d                   	pop    %ebp
8010203c:	c3                   	ret    
8010203d:	83 ec 0c             	sub    $0xc,%esp
80102040:	50                   	push   %eax
80102041:	e8 5a fa ff ff       	call   80101aa0 <iput>
80102046:	83 c4 10             	add    $0x10,%esp
80102049:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010204e:	eb e5                	jmp    80102035 <dirlink+0x85>
80102050:	83 ec 0c             	sub    $0xc,%esp
80102053:	68 08 74 10 80       	push   $0x80107408
80102058:	e8 83 e3 ff ff       	call   801003e0 <panic>
8010205d:	83 ec 0c             	sub    $0xc,%esp
80102060:	68 f0 79 10 80       	push   $0x801079f0
80102065:	e8 76 e3 ff ff       	call   801003e0 <panic>
8010206a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80102070 <namei>:
80102070:	f3 0f 1e fb          	endbr32 
80102074:	55                   	push   %ebp
80102075:	31 d2                	xor    %edx,%edx
80102077:	89 e5                	mov    %esp,%ebp
80102079:	83 ec 18             	sub    $0x18,%esp
8010207c:	8b 45 08             	mov    0x8(%ebp),%eax
8010207f:	8d 4d ea             	lea    -0x16(%ebp),%ecx
80102082:	e8 39 fe ff ff       	call   80101ec0 <namex>
80102087:	c9                   	leave  
80102088:	c3                   	ret    
80102089:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80102090 <nameiparent>:
80102090:	f3 0f 1e fb          	endbr32 
80102094:	55                   	push   %ebp
80102095:	ba 01 00 00 00       	mov    $0x1,%edx
8010209a:	89 e5                	mov    %esp,%ebp
8010209c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
8010209f:	8b 45 08             	mov    0x8(%ebp),%eax
801020a2:	5d                   	pop    %ebp
801020a3:	e9 18 fe ff ff       	jmp    80101ec0 <namex>
801020a8:	66 90                	xchg   %ax,%ax
801020aa:	66 90                	xchg   %ax,%ax
801020ac:	66 90                	xchg   %ax,%ax
801020ae:	66 90                	xchg   %ax,%ax

801020b0 <outb>:
801020b0:	89 c1                	mov    %eax,%ecx
801020b2:	89 d0                	mov    %edx,%eax
801020b4:	89 ca                	mov    %ecx,%edx
801020b6:	ee                   	out    %al,(%dx)
801020b7:	c3                   	ret    
801020b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801020bf:	90                   	nop

801020c0 <outsl.constprop.0>:
801020c0:	55                   	push   %ebp
801020c1:	b9 80 00 00 00       	mov    $0x80,%ecx
801020c6:	ba f0 01 00 00       	mov    $0x1f0,%edx
801020cb:	89 e5                	mov    %esp,%ebp
801020cd:	56                   	push   %esi
801020ce:	89 c6                	mov    %eax,%esi
801020d0:	fc                   	cld    
801020d1:	f3 6f                	rep outsl %ds:(%esi),(%dx)
801020d3:	5e                   	pop    %esi
801020d4:	5d                   	pop    %ebp
801020d5:	c3                   	ret    
801020d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801020dd:	8d 76 00             	lea    0x0(%esi),%esi

801020e0 <insl.constprop.0>:
801020e0:	55                   	push   %ebp
801020e1:	b9 80 00 00 00       	mov    $0x80,%ecx
801020e6:	ba f0 01 00 00       	mov    $0x1f0,%edx
801020eb:	89 e5                	mov    %esp,%ebp
801020ed:	57                   	push   %edi
801020ee:	89 c7                	mov    %eax,%edi
801020f0:	fc                   	cld    
801020f1:	f3 6d                	rep insl (%dx),%es:(%edi)
801020f3:	5f                   	pop    %edi
801020f4:	5d                   	pop    %ebp
801020f5:	c3                   	ret    
801020f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801020fd:	8d 76 00             	lea    0x0(%esi),%esi

80102100 <inb.constprop.0>:
80102100:	ba f7 01 00 00       	mov    $0x1f7,%edx
80102105:	ec                   	in     (%dx),%al
80102106:	c3                   	ret    
80102107:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010210e:	66 90                	xchg   %ax,%ax

80102110 <idewait>:
80102110:	55                   	push   %ebp
80102111:	89 c1                	mov    %eax,%ecx
80102113:	89 e5                	mov    %esp,%ebp
80102115:	83 ec 08             	sub    $0x8,%esp
80102118:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010211f:	90                   	nop
80102120:	e8 db ff ff ff       	call   80102100 <inb.constprop.0>
80102125:	89 c2                	mov    %eax,%edx
80102127:	83 e2 c0             	and    $0xffffffc0,%edx
8010212a:	80 fa 40             	cmp    $0x40,%dl
8010212d:	75 f1                	jne    80102120 <idewait+0x10>
8010212f:	85 c9                	test   %ecx,%ecx
80102131:	74 09                	je     8010213c <idewait+0x2c>
80102133:	31 c9                	xor    %ecx,%ecx
80102135:	a8 21                	test   $0x21,%al
80102137:	0f 95 c1             	setne  %cl
8010213a:	f7 d9                	neg    %ecx
8010213c:	c9                   	leave  
8010213d:	89 c8                	mov    %ecx,%eax
8010213f:	c3                   	ret    

80102140 <idestart>:
80102140:	55                   	push   %ebp
80102141:	89 e5                	mov    %esp,%ebp
80102143:	56                   	push   %esi
80102144:	53                   	push   %ebx
80102145:	85 c0                	test   %eax,%eax
80102147:	0f 84 c5 00 00 00    	je     80102212 <idestart+0xd2>
8010214d:	8b 70 08             	mov    0x8(%eax),%esi
80102150:	89 c3                	mov    %eax,%ebx
80102152:	81 fe e7 03 00 00    	cmp    $0x3e7,%esi
80102158:	0f 87 a7 00 00 00    	ja     80102205 <idestart+0xc5>
8010215e:	31 c0                	xor    %eax,%eax
80102160:	e8 ab ff ff ff       	call   80102110 <idewait>
80102165:	31 d2                	xor    %edx,%edx
80102167:	b8 f6 03 00 00       	mov    $0x3f6,%eax
8010216c:	e8 3f ff ff ff       	call   801020b0 <outb>
80102171:	ba 01 00 00 00       	mov    $0x1,%edx
80102176:	b8 f2 01 00 00       	mov    $0x1f2,%eax
8010217b:	e8 30 ff ff ff       	call   801020b0 <outb>
80102180:	89 f0                	mov    %esi,%eax
80102182:	c1 fe 08             	sar    $0x8,%esi
80102185:	0f b6 d0             	movzbl %al,%edx
80102188:	b8 f3 01 00 00       	mov    $0x1f3,%eax
8010218d:	e8 1e ff ff ff       	call   801020b0 <outb>
80102192:	89 f2                	mov    %esi,%edx
80102194:	b8 f4 01 00 00       	mov    $0x1f4,%eax
80102199:	e8 12 ff ff ff       	call   801020b0 <outb>
8010219e:	31 d2                	xor    %edx,%edx
801021a0:	b8 f5 01 00 00       	mov    $0x1f5,%eax
801021a5:	e8 06 ff ff ff       	call   801020b0 <outb>
801021aa:	0f b6 53 04          	movzbl 0x4(%ebx),%edx
801021ae:	b8 f6 01 00 00       	mov    $0x1f6,%eax
801021b3:	c1 e2 04             	shl    $0x4,%edx
801021b6:	83 e2 10             	and    $0x10,%edx
801021b9:	83 ca e0             	or     $0xffffffe0,%edx
801021bc:	0f b6 d2             	movzbl %dl,%edx
801021bf:	e8 ec fe ff ff       	call   801020b0 <outb>
801021c4:	f6 03 04             	testb  $0x4,(%ebx)
801021c7:	74 27                	je     801021f0 <idestart+0xb0>
801021c9:	b8 f7 01 00 00       	mov    $0x1f7,%eax
801021ce:	ba 30 00 00 00       	mov    $0x30,%edx
801021d3:	e8 d8 fe ff ff       	call   801020b0 <outb>
801021d8:	8d 65 f8             	lea    -0x8(%ebp),%esp
801021db:	8d 43 5c             	lea    0x5c(%ebx),%eax
801021de:	5b                   	pop    %ebx
801021df:	5e                   	pop    %esi
801021e0:	5d                   	pop    %ebp
801021e1:	e9 da fe ff ff       	jmp    801020c0 <outsl.constprop.0>
801021e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801021ed:	8d 76 00             	lea    0x0(%esi),%esi
801021f0:	8d 65 f8             	lea    -0x8(%ebp),%esp
801021f3:	ba 20 00 00 00       	mov    $0x20,%edx
801021f8:	b8 f7 01 00 00       	mov    $0x1f7,%eax
801021fd:	5b                   	pop    %ebx
801021fe:	5e                   	pop    %esi
801021ff:	5d                   	pop    %ebp
80102200:	e9 ab fe ff ff       	jmp    801020b0 <outb>
80102205:	83 ec 0c             	sub    $0xc,%esp
80102208:	68 74 74 10 80       	push   $0x80107474
8010220d:	e8 ce e1 ff ff       	call   801003e0 <panic>
80102212:	83 ec 0c             	sub    $0xc,%esp
80102215:	68 6b 74 10 80       	push   $0x8010746b
8010221a:	e8 c1 e1 ff ff       	call   801003e0 <panic>
8010221f:	90                   	nop

80102220 <ideinit>:
80102220:	f3 0f 1e fb          	endbr32 
80102224:	55                   	push   %ebp
80102225:	89 e5                	mov    %esp,%ebp
80102227:	83 ec 10             	sub    $0x10,%esp
8010222a:	68 86 74 10 80       	push   $0x80107486
8010222f:	68 80 a5 10 80       	push   $0x8010a580
80102234:	e8 f7 22 00 00       	call   80104530 <initlock>
80102239:	58                   	pop    %eax
8010223a:	a1 00 2d 11 80       	mov    0x80112d00,%eax
8010223f:	5a                   	pop    %edx
80102240:	83 e8 01             	sub    $0x1,%eax
80102243:	50                   	push   %eax
80102244:	6a 0e                	push   $0xe
80102246:	e8 b5 02 00 00       	call   80102500 <ioapicenable>
8010224b:	31 c0                	xor    %eax,%eax
8010224d:	e8 be fe ff ff       	call   80102110 <idewait>
80102252:	ba f0 00 00 00       	mov    $0xf0,%edx
80102257:	b8 f6 01 00 00       	mov    $0x1f6,%eax
8010225c:	e8 4f fe ff ff       	call   801020b0 <outb>
80102261:	83 c4 10             	add    $0x10,%esp
80102264:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
80102269:	eb 0a                	jmp    80102275 <ideinit+0x55>
8010226b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010226f:	90                   	nop
80102270:	83 e9 01             	sub    $0x1,%ecx
80102273:	74 13                	je     80102288 <ideinit+0x68>
80102275:	e8 86 fe ff ff       	call   80102100 <inb.constprop.0>
8010227a:	84 c0                	test   %al,%al
8010227c:	74 f2                	je     80102270 <ideinit+0x50>
8010227e:	c7 05 60 a5 10 80 01 	movl   $0x1,0x8010a560
80102285:	00 00 00 
80102288:	c9                   	leave  
80102289:	ba e0 00 00 00       	mov    $0xe0,%edx
8010228e:	b8 f6 01 00 00       	mov    $0x1f6,%eax
80102293:	e9 18 fe ff ff       	jmp    801020b0 <outb>
80102298:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010229f:	90                   	nop

801022a0 <ideintr>:
801022a0:	f3 0f 1e fb          	endbr32 
801022a4:	55                   	push   %ebp
801022a5:	89 e5                	mov    %esp,%ebp
801022a7:	53                   	push   %ebx
801022a8:	83 ec 10             	sub    $0x10,%esp
801022ab:	68 80 a5 10 80       	push   $0x8010a580
801022b0:	e8 1b 24 00 00       	call   801046d0 <acquire>
801022b5:	8b 1d 64 a5 10 80    	mov    0x8010a564,%ebx
801022bb:	83 c4 10             	add    $0x10,%esp
801022be:	85 db                	test   %ebx,%ebx
801022c0:	74 30                	je     801022f2 <ideintr+0x52>
801022c2:	8b 43 58             	mov    0x58(%ebx),%eax
801022c5:	a3 64 a5 10 80       	mov    %eax,0x8010a564
801022ca:	8b 03                	mov    (%ebx),%eax
801022cc:	a8 04                	test   $0x4,%al
801022ce:	74 38                	je     80102308 <ideintr+0x68>
801022d0:	83 e0 fb             	and    $0xfffffffb,%eax
801022d3:	83 ec 0c             	sub    $0xc,%esp
801022d6:	83 c8 02             	or     $0x2,%eax
801022d9:	89 03                	mov    %eax,(%ebx)
801022db:	53                   	push   %ebx
801022dc:	e8 2f 1f 00 00       	call   80104210 <wakeup>
801022e1:	a1 64 a5 10 80       	mov    0x8010a564,%eax
801022e6:	83 c4 10             	add    $0x10,%esp
801022e9:	85 c0                	test   %eax,%eax
801022eb:	74 05                	je     801022f2 <ideintr+0x52>
801022ed:	e8 4e fe ff ff       	call   80102140 <idestart>
801022f2:	83 ec 0c             	sub    $0xc,%esp
801022f5:	68 80 a5 10 80       	push   $0x8010a580
801022fa:	e8 41 24 00 00       	call   80104740 <release>
801022ff:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102302:	c9                   	leave  
80102303:	c3                   	ret    
80102304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102308:	b8 01 00 00 00       	mov    $0x1,%eax
8010230d:	e8 fe fd ff ff       	call   80102110 <idewait>
80102312:	85 c0                	test   %eax,%eax
80102314:	79 0a                	jns    80102320 <ideintr+0x80>
80102316:	8b 03                	mov    (%ebx),%eax
80102318:	eb b6                	jmp    801022d0 <ideintr+0x30>
8010231a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80102320:	8d 43 5c             	lea    0x5c(%ebx),%eax
80102323:	e8 b8 fd ff ff       	call   801020e0 <insl.constprop.0>
80102328:	8b 03                	mov    (%ebx),%eax
8010232a:	eb a4                	jmp    801022d0 <ideintr+0x30>
8010232c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80102330 <iderw>:
80102330:	f3 0f 1e fb          	endbr32 
80102334:	55                   	push   %ebp
80102335:	89 e5                	mov    %esp,%ebp
80102337:	53                   	push   %ebx
80102338:	83 ec 10             	sub    $0x10,%esp
8010233b:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010233e:	8d 43 0c             	lea    0xc(%ebx),%eax
80102341:	50                   	push   %eax
80102342:	e8 49 21 00 00       	call   80104490 <holdingsleep>
80102347:	83 c4 10             	add    $0x10,%esp
8010234a:	85 c0                	test   %eax,%eax
8010234c:	0f 84 cf 00 00 00    	je     80102421 <iderw+0xf1>
80102352:	8b 03                	mov    (%ebx),%eax
80102354:	83 e0 06             	and    $0x6,%eax
80102357:	83 f8 02             	cmp    $0x2,%eax
8010235a:	0f 84 b4 00 00 00    	je     80102414 <iderw+0xe4>
80102360:	8b 53 04             	mov    0x4(%ebx),%edx
80102363:	85 d2                	test   %edx,%edx
80102365:	74 0d                	je     80102374 <iderw+0x44>
80102367:	a1 60 a5 10 80       	mov    0x8010a560,%eax
8010236c:	85 c0                	test   %eax,%eax
8010236e:	0f 84 93 00 00 00    	je     80102407 <iderw+0xd7>
80102374:	83 ec 0c             	sub    $0xc,%esp
80102377:	68 80 a5 10 80       	push   $0x8010a580
8010237c:	e8 4f 23 00 00       	call   801046d0 <acquire>
80102381:	a1 64 a5 10 80       	mov    0x8010a564,%eax
80102386:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
8010238d:	83 c4 10             	add    $0x10,%esp
80102390:	85 c0                	test   %eax,%eax
80102392:	74 6c                	je     80102400 <iderw+0xd0>
80102394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102398:	89 c2                	mov    %eax,%edx
8010239a:	8b 40 58             	mov    0x58(%eax),%eax
8010239d:	85 c0                	test   %eax,%eax
8010239f:	75 f7                	jne    80102398 <iderw+0x68>
801023a1:	83 c2 58             	add    $0x58,%edx
801023a4:	89 1a                	mov    %ebx,(%edx)
801023a6:	39 1d 64 a5 10 80    	cmp    %ebx,0x8010a564
801023ac:	74 42                	je     801023f0 <iderw+0xc0>
801023ae:	8b 03                	mov    (%ebx),%eax
801023b0:	83 e0 06             	and    $0x6,%eax
801023b3:	83 f8 02             	cmp    $0x2,%eax
801023b6:	74 23                	je     801023db <iderw+0xab>
801023b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801023bf:	90                   	nop
801023c0:	83 ec 08             	sub    $0x8,%esp
801023c3:	68 80 a5 10 80       	push   $0x8010a580
801023c8:	53                   	push   %ebx
801023c9:	e8 92 1c 00 00       	call   80104060 <sleep>
801023ce:	8b 03                	mov    (%ebx),%eax
801023d0:	83 c4 10             	add    $0x10,%esp
801023d3:	83 e0 06             	and    $0x6,%eax
801023d6:	83 f8 02             	cmp    $0x2,%eax
801023d9:	75 e5                	jne    801023c0 <iderw+0x90>
801023db:	c7 45 08 80 a5 10 80 	movl   $0x8010a580,0x8(%ebp)
801023e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801023e5:	c9                   	leave  
801023e6:	e9 55 23 00 00       	jmp    80104740 <release>
801023eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801023ef:	90                   	nop
801023f0:	89 d8                	mov    %ebx,%eax
801023f2:	e8 49 fd ff ff       	call   80102140 <idestart>
801023f7:	eb b5                	jmp    801023ae <iderw+0x7e>
801023f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102400:	ba 64 a5 10 80       	mov    $0x8010a564,%edx
80102405:	eb 9d                	jmp    801023a4 <iderw+0x74>
80102407:	83 ec 0c             	sub    $0xc,%esp
8010240a:	68 b5 74 10 80       	push   $0x801074b5
8010240f:	e8 cc df ff ff       	call   801003e0 <panic>
80102414:	83 ec 0c             	sub    $0xc,%esp
80102417:	68 a0 74 10 80       	push   $0x801074a0
8010241c:	e8 bf df ff ff       	call   801003e0 <panic>
80102421:	83 ec 0c             	sub    $0xc,%esp
80102424:	68 8a 74 10 80       	push   $0x8010748a
80102429:	e8 b2 df ff ff       	call   801003e0 <panic>
8010242e:	66 90                	xchg   %ax,%ax

80102430 <ioapicread>:
80102430:	8b 15 34 26 11 80    	mov    0x80112634,%edx
80102436:	89 02                	mov    %eax,(%edx)
80102438:	a1 34 26 11 80       	mov    0x80112634,%eax
8010243d:	8b 40 10             	mov    0x10(%eax),%eax
80102440:	c3                   	ret    
80102441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010244f:	90                   	nop

80102450 <ioapicwrite>:
80102450:	8b 0d 34 26 11 80    	mov    0x80112634,%ecx
80102456:	89 01                	mov    %eax,(%ecx)
80102458:	a1 34 26 11 80       	mov    0x80112634,%eax
8010245d:	89 50 10             	mov    %edx,0x10(%eax)
80102460:	c3                   	ret    
80102461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102468:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010246f:	90                   	nop

80102470 <ioapicinit>:
80102470:	f3 0f 1e fb          	endbr32 
80102474:	55                   	push   %ebp
80102475:	b8 01 00 00 00       	mov    $0x1,%eax
8010247a:	89 e5                	mov    %esp,%ebp
8010247c:	57                   	push   %edi
8010247d:	56                   	push   %esi
8010247e:	53                   	push   %ebx
8010247f:	83 ec 0c             	sub    $0xc,%esp
80102482:	c7 05 34 26 11 80 00 	movl   $0xfec00000,0x80112634
80102489:	00 c0 fe 
8010248c:	e8 9f ff ff ff       	call   80102430 <ioapicread>
80102491:	c1 e8 10             	shr    $0x10,%eax
80102494:	0f b6 f8             	movzbl %al,%edi
80102497:	31 c0                	xor    %eax,%eax
80102499:	e8 92 ff ff ff       	call   80102430 <ioapicread>
8010249e:	0f b6 15 60 27 11 80 	movzbl 0x80112760,%edx
801024a5:	c1 e8 18             	shr    $0x18,%eax
801024a8:	39 c2                	cmp    %eax,%edx
801024aa:	74 10                	je     801024bc <ioapicinit+0x4c>
801024ac:	83 ec 0c             	sub    $0xc,%esp
801024af:	68 d4 74 10 80       	push   $0x801074d4
801024b4:	e8 97 e2 ff ff       	call   80100750 <cprintf>
801024b9:	83 c4 10             	add    $0x10,%esp
801024bc:	83 c7 21             	add    $0x21,%edi
801024bf:	be 10 00 00 00       	mov    $0x10,%esi
801024c4:	bb 20 00 00 00       	mov    $0x20,%ebx
801024c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801024d0:	89 da                	mov    %ebx,%edx
801024d2:	89 f0                	mov    %esi,%eax
801024d4:	83 c3 01             	add    $0x1,%ebx
801024d7:	81 ca 00 00 01 00    	or     $0x10000,%edx
801024dd:	e8 6e ff ff ff       	call   80102450 <ioapicwrite>
801024e2:	8d 46 01             	lea    0x1(%esi),%eax
801024e5:	31 d2                	xor    %edx,%edx
801024e7:	83 c6 02             	add    $0x2,%esi
801024ea:	e8 61 ff ff ff       	call   80102450 <ioapicwrite>
801024ef:	39 fb                	cmp    %edi,%ebx
801024f1:	75 dd                	jne    801024d0 <ioapicinit+0x60>
801024f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
801024f6:	5b                   	pop    %ebx
801024f7:	5e                   	pop    %esi
801024f8:	5f                   	pop    %edi
801024f9:	5d                   	pop    %ebp
801024fa:	c3                   	ret    
801024fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801024ff:	90                   	nop

80102500 <ioapicenable>:
80102500:	f3 0f 1e fb          	endbr32 
80102504:	55                   	push   %ebp
80102505:	89 e5                	mov    %esp,%ebp
80102507:	56                   	push   %esi
80102508:	8b 55 08             	mov    0x8(%ebp),%edx
8010250b:	8b 75 0c             	mov    0xc(%ebp),%esi
8010250e:	53                   	push   %ebx
8010250f:	8d 5c 12 10          	lea    0x10(%edx,%edx,1),%ebx
80102513:	c1 e6 18             	shl    $0x18,%esi
80102516:	83 c2 20             	add    $0x20,%edx
80102519:	89 d8                	mov    %ebx,%eax
8010251b:	e8 30 ff ff ff       	call   80102450 <ioapicwrite>
80102520:	89 f2                	mov    %esi,%edx
80102522:	8d 43 01             	lea    0x1(%ebx),%eax
80102525:	5b                   	pop    %ebx
80102526:	5e                   	pop    %esi
80102527:	5d                   	pop    %ebp
80102528:	e9 23 ff ff ff       	jmp    80102450 <ioapicwrite>
8010252d:	66 90                	xchg   %ax,%ax
8010252f:	90                   	nop

80102530 <kfree>:
80102530:	f3 0f 1e fb          	endbr32 
80102534:	55                   	push   %ebp
80102535:	89 e5                	mov    %esp,%ebp
80102537:	53                   	push   %ebx
80102538:	83 ec 04             	sub    $0x4,%esp
8010253b:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010253e:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
80102544:	75 7a                	jne    801025c0 <kfree+0x90>
80102546:	81 fb a8 54 11 80    	cmp    $0x801154a8,%ebx
8010254c:	72 72                	jb     801025c0 <kfree+0x90>
8010254e:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80102554:	3d ff ff ff 0d       	cmp    $0xdffffff,%eax
80102559:	77 65                	ja     801025c0 <kfree+0x90>
8010255b:	83 ec 04             	sub    $0x4,%esp
8010255e:	68 00 10 00 00       	push   $0x1000
80102563:	6a 01                	push   $0x1
80102565:	53                   	push   %ebx
80102566:	e8 45 22 00 00       	call   801047b0 <memset>
8010256b:	8b 15 74 26 11 80    	mov    0x80112674,%edx
80102571:	83 c4 10             	add    $0x10,%esp
80102574:	85 d2                	test   %edx,%edx
80102576:	75 20                	jne    80102598 <kfree+0x68>
80102578:	a1 78 26 11 80       	mov    0x80112678,%eax
8010257d:	89 03                	mov    %eax,(%ebx)
8010257f:	a1 74 26 11 80       	mov    0x80112674,%eax
80102584:	89 1d 78 26 11 80    	mov    %ebx,0x80112678
8010258a:	85 c0                	test   %eax,%eax
8010258c:	75 22                	jne    801025b0 <kfree+0x80>
8010258e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102591:	c9                   	leave  
80102592:	c3                   	ret    
80102593:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102597:	90                   	nop
80102598:	83 ec 0c             	sub    $0xc,%esp
8010259b:	68 40 26 11 80       	push   $0x80112640
801025a0:	e8 2b 21 00 00       	call   801046d0 <acquire>
801025a5:	83 c4 10             	add    $0x10,%esp
801025a8:	eb ce                	jmp    80102578 <kfree+0x48>
801025aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801025b0:	c7 45 08 40 26 11 80 	movl   $0x80112640,0x8(%ebp)
801025b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801025ba:	c9                   	leave  
801025bb:	e9 80 21 00 00       	jmp    80104740 <release>
801025c0:	83 ec 0c             	sub    $0xc,%esp
801025c3:	68 06 75 10 80       	push   $0x80107506
801025c8:	e8 13 de ff ff       	call   801003e0 <panic>
801025cd:	8d 76 00             	lea    0x0(%esi),%esi

801025d0 <freerange>:
801025d0:	f3 0f 1e fb          	endbr32 
801025d4:	55                   	push   %ebp
801025d5:	89 e5                	mov    %esp,%ebp
801025d7:	56                   	push   %esi
801025d8:	8b 45 08             	mov    0x8(%ebp),%eax
801025db:	8b 75 0c             	mov    0xc(%ebp),%esi
801025de:	53                   	push   %ebx
801025df:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
801025e5:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
801025eb:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801025f1:	39 de                	cmp    %ebx,%esi
801025f3:	72 1f                	jb     80102614 <freerange+0x44>
801025f5:	8d 76 00             	lea    0x0(%esi),%esi
801025f8:	83 ec 0c             	sub    $0xc,%esp
801025fb:	8d 83 00 f0 ff ff    	lea    -0x1000(%ebx),%eax
80102601:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80102607:	50                   	push   %eax
80102608:	e8 23 ff ff ff       	call   80102530 <kfree>
8010260d:	83 c4 10             	add    $0x10,%esp
80102610:	39 f3                	cmp    %esi,%ebx
80102612:	76 e4                	jbe    801025f8 <freerange+0x28>
80102614:	8d 65 f8             	lea    -0x8(%ebp),%esp
80102617:	5b                   	pop    %ebx
80102618:	5e                   	pop    %esi
80102619:	5d                   	pop    %ebp
8010261a:	c3                   	ret    
8010261b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010261f:	90                   	nop

80102620 <kinit1>:
80102620:	f3 0f 1e fb          	endbr32 
80102624:	55                   	push   %ebp
80102625:	89 e5                	mov    %esp,%ebp
80102627:	56                   	push   %esi
80102628:	53                   	push   %ebx
80102629:	8b 75 0c             	mov    0xc(%ebp),%esi
8010262c:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010262f:	83 ec 08             	sub    $0x8,%esp
80102632:	68 0c 75 10 80       	push   $0x8010750c
80102637:	68 40 26 11 80       	push   $0x80112640
8010263c:	e8 ef 1e 00 00       	call   80104530 <initlock>
80102641:	89 75 0c             	mov    %esi,0xc(%ebp)
80102644:	83 c4 10             	add    $0x10,%esp
80102647:	89 5d 08             	mov    %ebx,0x8(%ebp)
8010264a:	c7 05 74 26 11 80 00 	movl   $0x0,0x80112674
80102651:	00 00 00 
80102654:	8d 65 f8             	lea    -0x8(%ebp),%esp
80102657:	5b                   	pop    %ebx
80102658:	5e                   	pop    %esi
80102659:	5d                   	pop    %ebp
8010265a:	e9 71 ff ff ff       	jmp    801025d0 <freerange>
8010265f:	90                   	nop

80102660 <kinit2>:
80102660:	f3 0f 1e fb          	endbr32 
80102664:	55                   	push   %ebp
80102665:	89 e5                	mov    %esp,%ebp
80102667:	83 ec 10             	sub    $0x10,%esp
8010266a:	ff 75 0c             	pushl  0xc(%ebp)
8010266d:	ff 75 08             	pushl  0x8(%ebp)
80102670:	e8 5b ff ff ff       	call   801025d0 <freerange>
80102675:	83 c4 10             	add    $0x10,%esp
80102678:	c7 05 74 26 11 80 01 	movl   $0x1,0x80112674
8010267f:	00 00 00 
80102682:	c9                   	leave  
80102683:	c3                   	ret    
80102684:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010268b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010268f:	90                   	nop

80102690 <kalloc>:
80102690:	f3 0f 1e fb          	endbr32 
80102694:	a1 74 26 11 80       	mov    0x80112674,%eax
80102699:	85 c0                	test   %eax,%eax
8010269b:	75 1b                	jne    801026b8 <kalloc+0x28>
8010269d:	a1 78 26 11 80       	mov    0x80112678,%eax
801026a2:	85 c0                	test   %eax,%eax
801026a4:	74 0a                	je     801026b0 <kalloc+0x20>
801026a6:	8b 10                	mov    (%eax),%edx
801026a8:	89 15 78 26 11 80    	mov    %edx,0x80112678
801026ae:	c3                   	ret    
801026af:	90                   	nop
801026b0:	c3                   	ret    
801026b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801026b8:	55                   	push   %ebp
801026b9:	89 e5                	mov    %esp,%ebp
801026bb:	83 ec 24             	sub    $0x24,%esp
801026be:	68 40 26 11 80       	push   $0x80112640
801026c3:	e8 08 20 00 00       	call   801046d0 <acquire>
801026c8:	a1 78 26 11 80       	mov    0x80112678,%eax
801026cd:	8b 15 74 26 11 80    	mov    0x80112674,%edx
801026d3:	83 c4 10             	add    $0x10,%esp
801026d6:	85 c0                	test   %eax,%eax
801026d8:	74 08                	je     801026e2 <kalloc+0x52>
801026da:	8b 08                	mov    (%eax),%ecx
801026dc:	89 0d 78 26 11 80    	mov    %ecx,0x80112678
801026e2:	85 d2                	test   %edx,%edx
801026e4:	74 16                	je     801026fc <kalloc+0x6c>
801026e6:	83 ec 0c             	sub    $0xc,%esp
801026e9:	89 45 f4             	mov    %eax,-0xc(%ebp)
801026ec:	68 40 26 11 80       	push   $0x80112640
801026f1:	e8 4a 20 00 00       	call   80104740 <release>
801026f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
801026f9:	83 c4 10             	add    $0x10,%esp
801026fc:	c9                   	leave  
801026fd:	c3                   	ret    
801026fe:	66 90                	xchg   %ax,%ax

80102700 <inb>:
80102700:	89 c2                	mov    %eax,%edx
80102702:	ec                   	in     (%dx),%al
80102703:	c3                   	ret    
80102704:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010270b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010270f:	90                   	nop

80102710 <kbdgetc>:
80102710:	f3 0f 1e fb          	endbr32 
80102714:	55                   	push   %ebp
80102715:	b8 64 00 00 00       	mov    $0x64,%eax
8010271a:	89 e5                	mov    %esp,%ebp
8010271c:	53                   	push   %ebx
8010271d:	83 ec 04             	sub    $0x4,%esp
80102720:	e8 db ff ff ff       	call   80102700 <inb>
80102725:	a8 01                	test   $0x1,%al
80102727:	0f 84 cb 00 00 00    	je     801027f8 <kbdgetc+0xe8>
8010272d:	b8 60 00 00 00       	mov    $0x60,%eax
80102732:	e8 c9 ff ff ff       	call   80102700 <inb>
80102737:	8b 1d b4 a5 10 80    	mov    0x8010a5b4,%ebx
8010273d:	0f b6 c8             	movzbl %al,%ecx
80102740:	3c e0                	cmp    $0xe0,%al
80102742:	74 5c                	je     801027a0 <kbdgetc+0x90>
80102744:	89 da                	mov    %ebx,%edx
80102746:	83 e2 40             	and    $0x40,%edx
80102749:	84 c0                	test   %al,%al
8010274b:	78 6b                	js     801027b8 <kbdgetc+0xa8>
8010274d:	85 d2                	test   %edx,%edx
8010274f:	74 09                	je     8010275a <kbdgetc+0x4a>
80102751:	83 c8 80             	or     $0xffffff80,%eax
80102754:	83 e3 bf             	and    $0xffffffbf,%ebx
80102757:	0f b6 c8             	movzbl %al,%ecx
8010275a:	0f b6 91 40 76 10 80 	movzbl -0x7fef89c0(%ecx),%edx
80102761:	0f b6 81 40 75 10 80 	movzbl -0x7fef8ac0(%ecx),%eax
80102768:	09 da                	or     %ebx,%edx
8010276a:	31 c2                	xor    %eax,%edx
8010276c:	89 d0                	mov    %edx,%eax
8010276e:	89 15 b4 a5 10 80    	mov    %edx,0x8010a5b4
80102774:	83 e0 03             	and    $0x3,%eax
80102777:	83 e2 08             	and    $0x8,%edx
8010277a:	8b 04 85 20 75 10 80 	mov    -0x7fef8ae0(,%eax,4),%eax
80102781:	0f b6 04 08          	movzbl (%eax,%ecx,1),%eax
80102785:	74 0b                	je     80102792 <kbdgetc+0x82>
80102787:	8d 50 9f             	lea    -0x61(%eax),%edx
8010278a:	83 fa 19             	cmp    $0x19,%edx
8010278d:	77 51                	ja     801027e0 <kbdgetc+0xd0>
8010278f:	83 e8 20             	sub    $0x20,%eax
80102792:	83 c4 04             	add    $0x4,%esp
80102795:	5b                   	pop    %ebx
80102796:	5d                   	pop    %ebp
80102797:	c3                   	ret    
80102798:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010279f:	90                   	nop
801027a0:	83 cb 40             	or     $0x40,%ebx
801027a3:	31 c0                	xor    %eax,%eax
801027a5:	89 1d b4 a5 10 80    	mov    %ebx,0x8010a5b4
801027ab:	83 c4 04             	add    $0x4,%esp
801027ae:	5b                   	pop    %ebx
801027af:	5d                   	pop    %ebp
801027b0:	c3                   	ret    
801027b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801027b8:	83 e0 7f             	and    $0x7f,%eax
801027bb:	85 d2                	test   %edx,%edx
801027bd:	0f 44 c8             	cmove  %eax,%ecx
801027c0:	31 c0                	xor    %eax,%eax
801027c2:	0f b6 91 40 76 10 80 	movzbl -0x7fef89c0(%ecx),%edx
801027c9:	83 ca 40             	or     $0x40,%edx
801027cc:	0f b6 d2             	movzbl %dl,%edx
801027cf:	f7 d2                	not    %edx
801027d1:	21 da                	and    %ebx,%edx
801027d3:	89 15 b4 a5 10 80    	mov    %edx,0x8010a5b4
801027d9:	83 c4 04             	add    $0x4,%esp
801027dc:	5b                   	pop    %ebx
801027dd:	5d                   	pop    %ebp
801027de:	c3                   	ret    
801027df:	90                   	nop
801027e0:	8d 48 bf             	lea    -0x41(%eax),%ecx
801027e3:	8d 50 20             	lea    0x20(%eax),%edx
801027e6:	83 f9 1a             	cmp    $0x1a,%ecx
801027e9:	0f 42 c2             	cmovb  %edx,%eax
801027ec:	83 c4 04             	add    $0x4,%esp
801027ef:	5b                   	pop    %ebx
801027f0:	5d                   	pop    %ebp
801027f1:	c3                   	ret    
801027f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801027f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801027fd:	eb 93                	jmp    80102792 <kbdgetc+0x82>
801027ff:	90                   	nop

80102800 <kbdintr>:
80102800:	f3 0f 1e fb          	endbr32 
80102804:	55                   	push   %ebp
80102805:	89 e5                	mov    %esp,%ebp
80102807:	83 ec 14             	sub    $0x14,%esp
8010280a:	68 10 27 10 80       	push   $0x80102710
8010280f:	e8 ec e0 ff ff       	call   80100900 <consoleintr>
80102814:	83 c4 10             	add    $0x10,%esp
80102817:	c9                   	leave  
80102818:	c3                   	ret    
80102819:	66 90                	xchg   %ax,%ax
8010281b:	66 90                	xchg   %ax,%ax
8010281d:	66 90                	xchg   %ax,%ax
8010281f:	90                   	nop

80102820 <outb>:
80102820:	89 c1                	mov    %eax,%ecx
80102822:	89 d0                	mov    %edx,%eax
80102824:	89 ca                	mov    %ecx,%edx
80102826:	ee                   	out    %al,(%dx)
80102827:	c3                   	ret    
80102828:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010282f:	90                   	nop

80102830 <lapicw>:
80102830:	8b 0d 7c 26 11 80    	mov    0x8011267c,%ecx
80102836:	8d 04 81             	lea    (%ecx,%eax,4),%eax
80102839:	89 10                	mov    %edx,(%eax)
8010283b:	a1 7c 26 11 80       	mov    0x8011267c,%eax
80102840:	8b 40 20             	mov    0x20(%eax),%eax
80102843:	c3                   	ret    
80102844:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010284b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010284f:	90                   	nop

80102850 <inb.constprop.0>:
80102850:	ba 71 00 00 00       	mov    $0x71,%edx
80102855:	ec                   	in     (%dx),%al
80102856:	c3                   	ret    
80102857:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010285e:	66 90                	xchg   %ax,%ax

80102860 <cmos_read>:
80102860:	55                   	push   %ebp
80102861:	89 c2                	mov    %eax,%edx
80102863:	b8 70 00 00 00       	mov    $0x70,%eax
80102868:	89 e5                	mov    %esp,%ebp
8010286a:	83 ec 08             	sub    $0x8,%esp
8010286d:	e8 ae ff ff ff       	call   80102820 <outb>
80102872:	e8 d9 ff ff ff       	call   80102850 <inb.constprop.0>
80102877:	c9                   	leave  
80102878:	0f b6 c0             	movzbl %al,%eax
8010287b:	c3                   	ret    
8010287c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80102880 <fill_rtcdate>:
80102880:	55                   	push   %ebp
80102881:	89 e5                	mov    %esp,%ebp
80102883:	53                   	push   %ebx
80102884:	89 c3                	mov    %eax,%ebx
80102886:	31 c0                	xor    %eax,%eax
80102888:	83 ec 04             	sub    $0x4,%esp
8010288b:	e8 d0 ff ff ff       	call   80102860 <cmos_read>
80102890:	89 03                	mov    %eax,(%ebx)
80102892:	b8 02 00 00 00       	mov    $0x2,%eax
80102897:	e8 c4 ff ff ff       	call   80102860 <cmos_read>
8010289c:	89 43 04             	mov    %eax,0x4(%ebx)
8010289f:	b8 04 00 00 00       	mov    $0x4,%eax
801028a4:	e8 b7 ff ff ff       	call   80102860 <cmos_read>
801028a9:	89 43 08             	mov    %eax,0x8(%ebx)
801028ac:	b8 07 00 00 00       	mov    $0x7,%eax
801028b1:	e8 aa ff ff ff       	call   80102860 <cmos_read>
801028b6:	89 43 0c             	mov    %eax,0xc(%ebx)
801028b9:	b8 08 00 00 00       	mov    $0x8,%eax
801028be:	e8 9d ff ff ff       	call   80102860 <cmos_read>
801028c3:	89 43 10             	mov    %eax,0x10(%ebx)
801028c6:	b8 09 00 00 00       	mov    $0x9,%eax
801028cb:	e8 90 ff ff ff       	call   80102860 <cmos_read>
801028d0:	89 43 14             	mov    %eax,0x14(%ebx)
801028d3:	83 c4 04             	add    $0x4,%esp
801028d6:	5b                   	pop    %ebx
801028d7:	5d                   	pop    %ebp
801028d8:	c3                   	ret    
801028d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

801028e0 <lapicinit>:
801028e0:	f3 0f 1e fb          	endbr32 
801028e4:	a1 7c 26 11 80       	mov    0x8011267c,%eax
801028e9:	85 c0                	test   %eax,%eax
801028eb:	0f 84 f7 00 00 00    	je     801029e8 <lapicinit+0x108>
801028f1:	55                   	push   %ebp
801028f2:	ba 3f 01 00 00       	mov    $0x13f,%edx
801028f7:	b8 3c 00 00 00       	mov    $0x3c,%eax
801028fc:	89 e5                	mov    %esp,%ebp
801028fe:	83 ec 08             	sub    $0x8,%esp
80102901:	e8 2a ff ff ff       	call   80102830 <lapicw>
80102906:	ba 0b 00 00 00       	mov    $0xb,%edx
8010290b:	b8 f8 00 00 00       	mov    $0xf8,%eax
80102910:	e8 1b ff ff ff       	call   80102830 <lapicw>
80102915:	ba 20 00 02 00       	mov    $0x20020,%edx
8010291a:	b8 c8 00 00 00       	mov    $0xc8,%eax
8010291f:	e8 0c ff ff ff       	call   80102830 <lapicw>
80102924:	ba 80 96 98 00       	mov    $0x989680,%edx
80102929:	b8 e0 00 00 00       	mov    $0xe0,%eax
8010292e:	e8 fd fe ff ff       	call   80102830 <lapicw>
80102933:	ba 00 00 01 00       	mov    $0x10000,%edx
80102938:	b8 d4 00 00 00       	mov    $0xd4,%eax
8010293d:	e8 ee fe ff ff       	call   80102830 <lapicw>
80102942:	b8 d8 00 00 00       	mov    $0xd8,%eax
80102947:	ba 00 00 01 00       	mov    $0x10000,%edx
8010294c:	e8 df fe ff ff       	call   80102830 <lapicw>
80102951:	a1 7c 26 11 80       	mov    0x8011267c,%eax
80102956:	8b 40 30             	mov    0x30(%eax),%eax
80102959:	c1 e8 10             	shr    $0x10,%eax
8010295c:	a8 fc                	test   $0xfc,%al
8010295e:	75 70                	jne    801029d0 <lapicinit+0xf0>
80102960:	ba 33 00 00 00       	mov    $0x33,%edx
80102965:	b8 dc 00 00 00       	mov    $0xdc,%eax
8010296a:	e8 c1 fe ff ff       	call   80102830 <lapicw>
8010296f:	31 d2                	xor    %edx,%edx
80102971:	b8 a0 00 00 00       	mov    $0xa0,%eax
80102976:	e8 b5 fe ff ff       	call   80102830 <lapicw>
8010297b:	31 d2                	xor    %edx,%edx
8010297d:	b8 a0 00 00 00       	mov    $0xa0,%eax
80102982:	e8 a9 fe ff ff       	call   80102830 <lapicw>
80102987:	31 d2                	xor    %edx,%edx
80102989:	b8 2c 00 00 00       	mov    $0x2c,%eax
8010298e:	e8 9d fe ff ff       	call   80102830 <lapicw>
80102993:	31 d2                	xor    %edx,%edx
80102995:	b8 c4 00 00 00       	mov    $0xc4,%eax
8010299a:	e8 91 fe ff ff       	call   80102830 <lapicw>
8010299f:	ba 00 85 08 00       	mov    $0x88500,%edx
801029a4:	b8 c0 00 00 00       	mov    $0xc0,%eax
801029a9:	e8 82 fe ff ff       	call   80102830 <lapicw>
801029ae:	8b 15 7c 26 11 80    	mov    0x8011267c,%edx
801029b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801029b8:	8b 82 00 03 00 00    	mov    0x300(%edx),%eax
801029be:	f6 c4 10             	test   $0x10,%ah
801029c1:	75 f5                	jne    801029b8 <lapicinit+0xd8>
801029c3:	c9                   	leave  
801029c4:	31 d2                	xor    %edx,%edx
801029c6:	b8 20 00 00 00       	mov    $0x20,%eax
801029cb:	e9 60 fe ff ff       	jmp    80102830 <lapicw>
801029d0:	ba 00 00 01 00       	mov    $0x10000,%edx
801029d5:	b8 d0 00 00 00       	mov    $0xd0,%eax
801029da:	e8 51 fe ff ff       	call   80102830 <lapicw>
801029df:	e9 7c ff ff ff       	jmp    80102960 <lapicinit+0x80>
801029e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801029e8:	c3                   	ret    
801029e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

801029f0 <lapicid>:
801029f0:	f3 0f 1e fb          	endbr32 
801029f4:	a1 7c 26 11 80       	mov    0x8011267c,%eax
801029f9:	85 c0                	test   %eax,%eax
801029fb:	74 0b                	je     80102a08 <lapicid+0x18>
801029fd:	8b 40 20             	mov    0x20(%eax),%eax
80102a00:	c1 e8 18             	shr    $0x18,%eax
80102a03:	c3                   	ret    
80102a04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102a08:	31 c0                	xor    %eax,%eax
80102a0a:	c3                   	ret    
80102a0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102a0f:	90                   	nop

80102a10 <lapiceoi>:
80102a10:	f3 0f 1e fb          	endbr32 
80102a14:	a1 7c 26 11 80       	mov    0x8011267c,%eax
80102a19:	85 c0                	test   %eax,%eax
80102a1b:	74 13                	je     80102a30 <lapiceoi+0x20>
80102a1d:	31 d2                	xor    %edx,%edx
80102a1f:	b8 2c 00 00 00       	mov    $0x2c,%eax
80102a24:	e9 07 fe ff ff       	jmp    80102830 <lapicw>
80102a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102a30:	c3                   	ret    
80102a31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102a38:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102a3f:	90                   	nop

80102a40 <microdelay>:
80102a40:	f3 0f 1e fb          	endbr32 
80102a44:	c3                   	ret    
80102a45:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80102a50 <lapicstartap>:
80102a50:	f3 0f 1e fb          	endbr32 
80102a54:	55                   	push   %ebp
80102a55:	ba 0f 00 00 00       	mov    $0xf,%edx
80102a5a:	b8 70 00 00 00       	mov    $0x70,%eax
80102a5f:	89 e5                	mov    %esp,%ebp
80102a61:	56                   	push   %esi
80102a62:	53                   	push   %ebx
80102a63:	8b 75 08             	mov    0x8(%ebp),%esi
80102a66:	8b 5d 0c             	mov    0xc(%ebp),%ebx
80102a69:	c1 e6 18             	shl    $0x18,%esi
80102a6c:	e8 af fd ff ff       	call   80102820 <outb>
80102a71:	ba 0a 00 00 00       	mov    $0xa,%edx
80102a76:	b8 71 00 00 00       	mov    $0x71,%eax
80102a7b:	e8 a0 fd ff ff       	call   80102820 <outb>
80102a80:	31 c0                	xor    %eax,%eax
80102a82:	89 f2                	mov    %esi,%edx
80102a84:	66 a3 67 04 00 80    	mov    %ax,0x80000467
80102a8a:	89 d8                	mov    %ebx,%eax
80102a8c:	c1 eb 0c             	shr    $0xc,%ebx
80102a8f:	c1 e8 04             	shr    $0x4,%eax
80102a92:	80 cf 06             	or     $0x6,%bh
80102a95:	66 a3 69 04 00 80    	mov    %ax,0x80000469
80102a9b:	b8 c4 00 00 00       	mov    $0xc4,%eax
80102aa0:	e8 8b fd ff ff       	call   80102830 <lapicw>
80102aa5:	ba 00 c5 00 00       	mov    $0xc500,%edx
80102aaa:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102aaf:	e8 7c fd ff ff       	call   80102830 <lapicw>
80102ab4:	ba 00 85 00 00       	mov    $0x8500,%edx
80102ab9:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102abe:	e8 6d fd ff ff       	call   80102830 <lapicw>
80102ac3:	89 f2                	mov    %esi,%edx
80102ac5:	b8 c4 00 00 00       	mov    $0xc4,%eax
80102aca:	e8 61 fd ff ff       	call   80102830 <lapicw>
80102acf:	89 da                	mov    %ebx,%edx
80102ad1:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102ad6:	e8 55 fd ff ff       	call   80102830 <lapicw>
80102adb:	89 f2                	mov    %esi,%edx
80102add:	b8 c4 00 00 00       	mov    $0xc4,%eax
80102ae2:	e8 49 fd ff ff       	call   80102830 <lapicw>
80102ae7:	89 da                	mov    %ebx,%edx
80102ae9:	b8 c0 00 00 00       	mov    $0xc0,%eax
80102aee:	5b                   	pop    %ebx
80102aef:	5e                   	pop    %esi
80102af0:	5d                   	pop    %ebp
80102af1:	e9 3a fd ff ff       	jmp    80102830 <lapicw>
80102af6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102afd:	8d 76 00             	lea    0x0(%esi),%esi

80102b00 <cmostime>:
80102b00:	f3 0f 1e fb          	endbr32 
80102b04:	55                   	push   %ebp
80102b05:	b8 0b 00 00 00       	mov    $0xb,%eax
80102b0a:	89 e5                	mov    %esp,%ebp
80102b0c:	57                   	push   %edi
80102b0d:	56                   	push   %esi
80102b0e:	8d 75 d0             	lea    -0x30(%ebp),%esi
80102b11:	53                   	push   %ebx
80102b12:	8d 5d b8             	lea    -0x48(%ebp),%ebx
80102b15:	83 ec 4c             	sub    $0x4c,%esp
80102b18:	8b 7d 08             	mov    0x8(%ebp),%edi
80102b1b:	e8 40 fd ff ff       	call   80102860 <cmos_read>
80102b20:	83 e0 04             	and    $0x4,%eax
80102b23:	89 45 b4             	mov    %eax,-0x4c(%ebp)
80102b26:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102b2d:	8d 76 00             	lea    0x0(%esi),%esi
80102b30:	89 d8                	mov    %ebx,%eax
80102b32:	e8 49 fd ff ff       	call   80102880 <fill_rtcdate>
80102b37:	b8 0a 00 00 00       	mov    $0xa,%eax
80102b3c:	e8 1f fd ff ff       	call   80102860 <cmos_read>
80102b41:	a8 80                	test   $0x80,%al
80102b43:	75 eb                	jne    80102b30 <cmostime+0x30>
80102b45:	89 f0                	mov    %esi,%eax
80102b47:	e8 34 fd ff ff       	call   80102880 <fill_rtcdate>
80102b4c:	83 ec 04             	sub    $0x4,%esp
80102b4f:	6a 18                	push   $0x18
80102b51:	56                   	push   %esi
80102b52:	53                   	push   %ebx
80102b53:	e8 b8 1c 00 00       	call   80104810 <memcmp>
80102b58:	83 c4 10             	add    $0x10,%esp
80102b5b:	85 c0                	test   %eax,%eax
80102b5d:	75 d1                	jne    80102b30 <cmostime+0x30>
80102b5f:	8b 45 b4             	mov    -0x4c(%ebp),%eax
80102b62:	85 c0                	test   %eax,%eax
80102b64:	75 78                	jne    80102bde <cmostime+0xde>
80102b66:	8b 45 b8             	mov    -0x48(%ebp),%eax
80102b69:	89 c2                	mov    %eax,%edx
80102b6b:	83 e0 0f             	and    $0xf,%eax
80102b6e:	c1 ea 04             	shr    $0x4,%edx
80102b71:	8d 14 92             	lea    (%edx,%edx,4),%edx
80102b74:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102b77:	89 45 b8             	mov    %eax,-0x48(%ebp)
80102b7a:	8b 45 bc             	mov    -0x44(%ebp),%eax
80102b7d:	89 c2                	mov    %eax,%edx
80102b7f:	83 e0 0f             	and    $0xf,%eax
80102b82:	c1 ea 04             	shr    $0x4,%edx
80102b85:	8d 14 92             	lea    (%edx,%edx,4),%edx
80102b88:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102b8b:	89 45 bc             	mov    %eax,-0x44(%ebp)
80102b8e:	8b 45 c0             	mov    -0x40(%ebp),%eax
80102b91:	89 c2                	mov    %eax,%edx
80102b93:	83 e0 0f             	and    $0xf,%eax
80102b96:	c1 ea 04             	shr    $0x4,%edx
80102b99:	8d 14 92             	lea    (%edx,%edx,4),%edx
80102b9c:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102b9f:	89 45 c0             	mov    %eax,-0x40(%ebp)
80102ba2:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80102ba5:	89 c2                	mov    %eax,%edx
80102ba7:	83 e0 0f             	and    $0xf,%eax
80102baa:	c1 ea 04             	shr    $0x4,%edx
80102bad:	8d 14 92             	lea    (%edx,%edx,4),%edx
80102bb0:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102bb3:	89 45 c4             	mov    %eax,-0x3c(%ebp)
80102bb6:	8b 45 c8             	mov    -0x38(%ebp),%eax
80102bb9:	89 c2                	mov    %eax,%edx
80102bbb:	83 e0 0f             	and    $0xf,%eax
80102bbe:	c1 ea 04             	shr    $0x4,%edx
80102bc1:	8d 14 92             	lea    (%edx,%edx,4),%edx
80102bc4:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102bc7:	89 45 c8             	mov    %eax,-0x38(%ebp)
80102bca:	8b 45 cc             	mov    -0x34(%ebp),%eax
80102bcd:	89 c2                	mov    %eax,%edx
80102bcf:	83 e0 0f             	and    $0xf,%eax
80102bd2:	c1 ea 04             	shr    $0x4,%edx
80102bd5:	8d 14 92             	lea    (%edx,%edx,4),%edx
80102bd8:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102bdb:	89 45 cc             	mov    %eax,-0x34(%ebp)
80102bde:	8b 45 b8             	mov    -0x48(%ebp),%eax
80102be1:	89 07                	mov    %eax,(%edi)
80102be3:	8b 45 bc             	mov    -0x44(%ebp),%eax
80102be6:	89 47 04             	mov    %eax,0x4(%edi)
80102be9:	8b 45 c0             	mov    -0x40(%ebp),%eax
80102bec:	89 47 08             	mov    %eax,0x8(%edi)
80102bef:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80102bf2:	89 47 0c             	mov    %eax,0xc(%edi)
80102bf5:	8b 45 c8             	mov    -0x38(%ebp),%eax
80102bf8:	89 47 10             	mov    %eax,0x10(%edi)
80102bfb:	8b 45 cc             	mov    -0x34(%ebp),%eax
80102bfe:	89 47 14             	mov    %eax,0x14(%edi)
80102c01:	81 47 14 d0 07 00 00 	addl   $0x7d0,0x14(%edi)
80102c08:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102c0b:	5b                   	pop    %ebx
80102c0c:	5e                   	pop    %esi
80102c0d:	5f                   	pop    %edi
80102c0e:	5d                   	pop    %ebp
80102c0f:	c3                   	ret    

80102c10 <read_head>:
80102c10:	55                   	push   %ebp
80102c11:	89 e5                	mov    %esp,%ebp
80102c13:	53                   	push   %ebx
80102c14:	83 ec 0c             	sub    $0xc,%esp
80102c17:	ff 35 b4 26 11 80    	pushl  0x801126b4
80102c1d:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102c23:	e8 68 d5 ff ff       	call   80100190 <bread>
80102c28:	83 c4 10             	add    $0x10,%esp
80102c2b:	8b 58 5c             	mov    0x5c(%eax),%ebx
80102c2e:	89 1d c8 26 11 80    	mov    %ebx,0x801126c8
80102c34:	85 db                	test   %ebx,%ebx
80102c36:	7e 1a                	jle    80102c52 <read_head+0x42>
80102c38:	31 d2                	xor    %edx,%edx
80102c3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80102c40:	8b 4c 90 60          	mov    0x60(%eax,%edx,4),%ecx
80102c44:	89 0c 95 cc 26 11 80 	mov    %ecx,-0x7feed934(,%edx,4)
80102c4b:	83 c2 01             	add    $0x1,%edx
80102c4e:	39 d3                	cmp    %edx,%ebx
80102c50:	75 ee                	jne    80102c40 <read_head+0x30>
80102c52:	83 ec 0c             	sub    $0xc,%esp
80102c55:	50                   	push   %eax
80102c56:	e8 b5 d5 ff ff       	call   80100210 <brelse>
80102c5b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102c5e:	83 c4 10             	add    $0x10,%esp
80102c61:	c9                   	leave  
80102c62:	c3                   	ret    
80102c63:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102c6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80102c70 <install_trans>:
80102c70:	8b 0d c8 26 11 80    	mov    0x801126c8,%ecx
80102c76:	85 c9                	test   %ecx,%ecx
80102c78:	0f 8e 8a 00 00 00    	jle    80102d08 <install_trans+0x98>
80102c7e:	55                   	push   %ebp
80102c7f:	89 e5                	mov    %esp,%ebp
80102c81:	57                   	push   %edi
80102c82:	31 ff                	xor    %edi,%edi
80102c84:	56                   	push   %esi
80102c85:	53                   	push   %ebx
80102c86:	83 ec 0c             	sub    $0xc,%esp
80102c89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102c90:	a1 b4 26 11 80       	mov    0x801126b4,%eax
80102c95:	83 ec 08             	sub    $0x8,%esp
80102c98:	01 f8                	add    %edi,%eax
80102c9a:	83 c0 01             	add    $0x1,%eax
80102c9d:	50                   	push   %eax
80102c9e:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102ca4:	e8 e7 d4 ff ff       	call   80100190 <bread>
80102ca9:	89 c6                	mov    %eax,%esi
80102cab:	58                   	pop    %eax
80102cac:	5a                   	pop    %edx
80102cad:	ff 34 bd cc 26 11 80 	pushl  -0x7feed934(,%edi,4)
80102cb4:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102cba:	83 c7 01             	add    $0x1,%edi
80102cbd:	e8 ce d4 ff ff       	call   80100190 <bread>
80102cc2:	83 c4 0c             	add    $0xc,%esp
80102cc5:	89 c3                	mov    %eax,%ebx
80102cc7:	8d 46 5c             	lea    0x5c(%esi),%eax
80102cca:	68 00 02 00 00       	push   $0x200
80102ccf:	50                   	push   %eax
80102cd0:	8d 43 5c             	lea    0x5c(%ebx),%eax
80102cd3:	50                   	push   %eax
80102cd4:	e8 87 1b 00 00       	call   80104860 <memmove>
80102cd9:	89 1c 24             	mov    %ebx,(%esp)
80102cdc:	e8 ef d4 ff ff       	call   801001d0 <bwrite>
80102ce1:	89 34 24             	mov    %esi,(%esp)
80102ce4:	e8 27 d5 ff ff       	call   80100210 <brelse>
80102ce9:	89 1c 24             	mov    %ebx,(%esp)
80102cec:	e8 1f d5 ff ff       	call   80100210 <brelse>
80102cf1:	83 c4 10             	add    $0x10,%esp
80102cf4:	39 3d c8 26 11 80    	cmp    %edi,0x801126c8
80102cfa:	7f 94                	jg     80102c90 <install_trans+0x20>
80102cfc:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102cff:	5b                   	pop    %ebx
80102d00:	5e                   	pop    %esi
80102d01:	5f                   	pop    %edi
80102d02:	5d                   	pop    %ebp
80102d03:	c3                   	ret    
80102d04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102d08:	c3                   	ret    
80102d09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80102d10 <write_head>:
80102d10:	55                   	push   %ebp
80102d11:	89 e5                	mov    %esp,%ebp
80102d13:	53                   	push   %ebx
80102d14:	83 ec 0c             	sub    $0xc,%esp
80102d17:	ff 35 b4 26 11 80    	pushl  0x801126b4
80102d1d:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102d23:	e8 68 d4 ff ff       	call   80100190 <bread>
80102d28:	83 c4 10             	add    $0x10,%esp
80102d2b:	89 c3                	mov    %eax,%ebx
80102d2d:	a1 c8 26 11 80       	mov    0x801126c8,%eax
80102d32:	89 43 5c             	mov    %eax,0x5c(%ebx)
80102d35:	85 c0                	test   %eax,%eax
80102d37:	7e 19                	jle    80102d52 <write_head+0x42>
80102d39:	31 d2                	xor    %edx,%edx
80102d3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102d3f:	90                   	nop
80102d40:	8b 0c 95 cc 26 11 80 	mov    -0x7feed934(,%edx,4),%ecx
80102d47:	89 4c 93 60          	mov    %ecx,0x60(%ebx,%edx,4)
80102d4b:	83 c2 01             	add    $0x1,%edx
80102d4e:	39 d0                	cmp    %edx,%eax
80102d50:	75 ee                	jne    80102d40 <write_head+0x30>
80102d52:	83 ec 0c             	sub    $0xc,%esp
80102d55:	53                   	push   %ebx
80102d56:	e8 75 d4 ff ff       	call   801001d0 <bwrite>
80102d5b:	89 1c 24             	mov    %ebx,(%esp)
80102d5e:	e8 ad d4 ff ff       	call   80100210 <brelse>
80102d63:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102d66:	83 c4 10             	add    $0x10,%esp
80102d69:	c9                   	leave  
80102d6a:	c3                   	ret    
80102d6b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102d6f:	90                   	nop

80102d70 <recover_from_log>:
80102d70:	55                   	push   %ebp
80102d71:	89 e5                	mov    %esp,%ebp
80102d73:	83 ec 08             	sub    $0x8,%esp
80102d76:	e8 95 fe ff ff       	call   80102c10 <read_head>
80102d7b:	e8 f0 fe ff ff       	call   80102c70 <install_trans>
80102d80:	c7 05 c8 26 11 80 00 	movl   $0x0,0x801126c8
80102d87:	00 00 00 
80102d8a:	c9                   	leave  
80102d8b:	eb 83                	jmp    80102d10 <write_head>
80102d8d:	8d 76 00             	lea    0x0(%esi),%esi

80102d90 <write_log>:
80102d90:	8b 0d c8 26 11 80    	mov    0x801126c8,%ecx
80102d96:	85 c9                	test   %ecx,%ecx
80102d98:	0f 8e 8a 00 00 00    	jle    80102e28 <write_log+0x98>
80102d9e:	55                   	push   %ebp
80102d9f:	89 e5                	mov    %esp,%ebp
80102da1:	57                   	push   %edi
80102da2:	56                   	push   %esi
80102da3:	31 f6                	xor    %esi,%esi
80102da5:	53                   	push   %ebx
80102da6:	83 ec 0c             	sub    $0xc,%esp
80102da9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102db0:	a1 b4 26 11 80       	mov    0x801126b4,%eax
80102db5:	83 ec 08             	sub    $0x8,%esp
80102db8:	01 f0                	add    %esi,%eax
80102dba:	83 c0 01             	add    $0x1,%eax
80102dbd:	50                   	push   %eax
80102dbe:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102dc4:	e8 c7 d3 ff ff       	call   80100190 <bread>
80102dc9:	89 c3                	mov    %eax,%ebx
80102dcb:	58                   	pop    %eax
80102dcc:	5a                   	pop    %edx
80102dcd:	ff 34 b5 cc 26 11 80 	pushl  -0x7feed934(,%esi,4)
80102dd4:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102dda:	83 c6 01             	add    $0x1,%esi
80102ddd:	e8 ae d3 ff ff       	call   80100190 <bread>
80102de2:	83 c4 0c             	add    $0xc,%esp
80102de5:	89 c7                	mov    %eax,%edi
80102de7:	8d 40 5c             	lea    0x5c(%eax),%eax
80102dea:	68 00 02 00 00       	push   $0x200
80102def:	50                   	push   %eax
80102df0:	8d 43 5c             	lea    0x5c(%ebx),%eax
80102df3:	50                   	push   %eax
80102df4:	e8 67 1a 00 00       	call   80104860 <memmove>
80102df9:	89 1c 24             	mov    %ebx,(%esp)
80102dfc:	e8 cf d3 ff ff       	call   801001d0 <bwrite>
80102e01:	89 3c 24             	mov    %edi,(%esp)
80102e04:	e8 07 d4 ff ff       	call   80100210 <brelse>
80102e09:	89 1c 24             	mov    %ebx,(%esp)
80102e0c:	e8 ff d3 ff ff       	call   80100210 <brelse>
80102e11:	83 c4 10             	add    $0x10,%esp
80102e14:	39 35 c8 26 11 80    	cmp    %esi,0x801126c8
80102e1a:	7f 94                	jg     80102db0 <write_log+0x20>
80102e1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102e1f:	5b                   	pop    %ebx
80102e20:	5e                   	pop    %esi
80102e21:	5f                   	pop    %edi
80102e22:	5d                   	pop    %ebp
80102e23:	c3                   	ret    
80102e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102e28:	c3                   	ret    
80102e29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80102e30 <commit>:
80102e30:	a1 c8 26 11 80       	mov    0x801126c8,%eax
80102e35:	85 c0                	test   %eax,%eax
80102e37:	7f 07                	jg     80102e40 <commit+0x10>
80102e39:	c3                   	ret    
80102e3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80102e40:	55                   	push   %ebp
80102e41:	89 e5                	mov    %esp,%ebp
80102e43:	83 ec 08             	sub    $0x8,%esp
80102e46:	e8 45 ff ff ff       	call   80102d90 <write_log>
80102e4b:	e8 c0 fe ff ff       	call   80102d10 <write_head>
80102e50:	e8 1b fe ff ff       	call   80102c70 <install_trans>
80102e55:	c7 05 c8 26 11 80 00 	movl   $0x0,0x801126c8
80102e5c:	00 00 00 
80102e5f:	c9                   	leave  
80102e60:	e9 ab fe ff ff       	jmp    80102d10 <write_head>
80102e65:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102e6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80102e70 <initlog>:
80102e70:	f3 0f 1e fb          	endbr32 
80102e74:	55                   	push   %ebp
80102e75:	89 e5                	mov    %esp,%ebp
80102e77:	53                   	push   %ebx
80102e78:	83 ec 2c             	sub    $0x2c,%esp
80102e7b:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102e7e:	68 40 77 10 80       	push   $0x80107740
80102e83:	68 80 26 11 80       	push   $0x80112680
80102e88:	e8 a3 16 00 00       	call   80104530 <initlock>
80102e8d:	58                   	pop    %eax
80102e8e:	8d 45 dc             	lea    -0x24(%ebp),%eax
80102e91:	5a                   	pop    %edx
80102e92:	50                   	push   %eax
80102e93:	53                   	push   %ebx
80102e94:	e8 a7 e7 ff ff       	call   80101640 <readsb>
80102e99:	8b 45 ec             	mov    -0x14(%ebp),%eax
80102e9c:	89 1d c4 26 11 80    	mov    %ebx,0x801126c4
80102ea2:	a3 b4 26 11 80       	mov    %eax,0x801126b4
80102ea7:	8b 45 e8             	mov    -0x18(%ebp),%eax
80102eaa:	a3 b8 26 11 80       	mov    %eax,0x801126b8
80102eaf:	e8 bc fe ff ff       	call   80102d70 <recover_from_log>
80102eb4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102eb7:	83 c4 10             	add    $0x10,%esp
80102eba:	c9                   	leave  
80102ebb:	c3                   	ret    
80102ebc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80102ec0 <begin_op>:
80102ec0:	f3 0f 1e fb          	endbr32 
80102ec4:	55                   	push   %ebp
80102ec5:	89 e5                	mov    %esp,%ebp
80102ec7:	83 ec 14             	sub    $0x14,%esp
80102eca:	68 80 26 11 80       	push   $0x80112680
80102ecf:	e8 fc 17 00 00       	call   801046d0 <acquire>
80102ed4:	83 c4 10             	add    $0x10,%esp
80102ed7:	eb 1c                	jmp    80102ef5 <begin_op+0x35>
80102ed9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102ee0:	83 ec 08             	sub    $0x8,%esp
80102ee3:	68 80 26 11 80       	push   $0x80112680
80102ee8:	68 80 26 11 80       	push   $0x80112680
80102eed:	e8 6e 11 00 00       	call   80104060 <sleep>
80102ef2:	83 c4 10             	add    $0x10,%esp
80102ef5:	a1 c0 26 11 80       	mov    0x801126c0,%eax
80102efa:	85 c0                	test   %eax,%eax
80102efc:	75 e2                	jne    80102ee0 <begin_op+0x20>
80102efe:	a1 bc 26 11 80       	mov    0x801126bc,%eax
80102f03:	8b 15 c8 26 11 80    	mov    0x801126c8,%edx
80102f09:	83 c0 01             	add    $0x1,%eax
80102f0c:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
80102f0f:	8d 14 4a             	lea    (%edx,%ecx,2),%edx
80102f12:	83 fa 1e             	cmp    $0x1e,%edx
80102f15:	7f c9                	jg     80102ee0 <begin_op+0x20>
80102f17:	83 ec 0c             	sub    $0xc,%esp
80102f1a:	a3 bc 26 11 80       	mov    %eax,0x801126bc
80102f1f:	68 80 26 11 80       	push   $0x80112680
80102f24:	e8 17 18 00 00       	call   80104740 <release>
80102f29:	83 c4 10             	add    $0x10,%esp
80102f2c:	c9                   	leave  
80102f2d:	c3                   	ret    
80102f2e:	66 90                	xchg   %ax,%ax

80102f30 <end_op>:
80102f30:	f3 0f 1e fb          	endbr32 
80102f34:	55                   	push   %ebp
80102f35:	89 e5                	mov    %esp,%ebp
80102f37:	83 ec 14             	sub    $0x14,%esp
80102f3a:	68 80 26 11 80       	push   $0x80112680
80102f3f:	e8 8c 17 00 00       	call   801046d0 <acquire>
80102f44:	a1 bc 26 11 80       	mov    0x801126bc,%eax
80102f49:	8b 15 c0 26 11 80    	mov    0x801126c0,%edx
80102f4f:	83 c4 10             	add    $0x10,%esp
80102f52:	83 e8 01             	sub    $0x1,%eax
80102f55:	a3 bc 26 11 80       	mov    %eax,0x801126bc
80102f5a:	85 d2                	test   %edx,%edx
80102f5c:	75 78                	jne    80102fd6 <end_op+0xa6>
80102f5e:	85 c0                	test   %eax,%eax
80102f60:	75 56                	jne    80102fb8 <end_op+0x88>
80102f62:	c7 05 c0 26 11 80 01 	movl   $0x1,0x801126c0
80102f69:	00 00 00 
80102f6c:	83 ec 0c             	sub    $0xc,%esp
80102f6f:	68 80 26 11 80       	push   $0x80112680
80102f74:	e8 c7 17 00 00       	call   80104740 <release>
80102f79:	e8 b2 fe ff ff       	call   80102e30 <commit>
80102f7e:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102f85:	e8 46 17 00 00       	call   801046d0 <acquire>
80102f8a:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102f91:	c7 05 c0 26 11 80 00 	movl   $0x0,0x801126c0
80102f98:	00 00 00 
80102f9b:	e8 70 12 00 00       	call   80104210 <wakeup>
80102fa0:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102fa7:	e8 94 17 00 00       	call   80104740 <release>
80102fac:	83 c4 10             	add    $0x10,%esp
80102faf:	c9                   	leave  
80102fb0:	c3                   	ret    
80102fb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102fb8:	83 ec 0c             	sub    $0xc,%esp
80102fbb:	68 80 26 11 80       	push   $0x80112680
80102fc0:	e8 4b 12 00 00       	call   80104210 <wakeup>
80102fc5:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102fcc:	e8 6f 17 00 00       	call   80104740 <release>
80102fd1:	83 c4 10             	add    $0x10,%esp
80102fd4:	c9                   	leave  
80102fd5:	c3                   	ret    
80102fd6:	83 ec 0c             	sub    $0xc,%esp
80102fd9:	68 44 77 10 80       	push   $0x80107744
80102fde:	e8 fd d3 ff ff       	call   801003e0 <panic>
80102fe3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102fea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80102ff0 <log_write>:
80102ff0:	f3 0f 1e fb          	endbr32 
80102ff4:	55                   	push   %ebp
80102ff5:	89 e5                	mov    %esp,%ebp
80102ff7:	53                   	push   %ebx
80102ff8:	83 ec 04             	sub    $0x4,%esp
80102ffb:	8b 15 c8 26 11 80    	mov    0x801126c8,%edx
80103001:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103004:	83 fa 1d             	cmp    $0x1d,%edx
80103007:	0f 8f 91 00 00 00    	jg     8010309e <log_write+0xae>
8010300d:	a1 b8 26 11 80       	mov    0x801126b8,%eax
80103012:	83 e8 01             	sub    $0x1,%eax
80103015:	39 c2                	cmp    %eax,%edx
80103017:	0f 8d 81 00 00 00    	jge    8010309e <log_write+0xae>
8010301d:	a1 bc 26 11 80       	mov    0x801126bc,%eax
80103022:	85 c0                	test   %eax,%eax
80103024:	0f 8e 81 00 00 00    	jle    801030ab <log_write+0xbb>
8010302a:	83 ec 0c             	sub    $0xc,%esp
8010302d:	68 80 26 11 80       	push   $0x80112680
80103032:	e8 99 16 00 00       	call   801046d0 <acquire>
80103037:	8b 15 c8 26 11 80    	mov    0x801126c8,%edx
8010303d:	83 c4 10             	add    $0x10,%esp
80103040:	85 d2                	test   %edx,%edx
80103042:	7e 4e                	jle    80103092 <log_write+0xa2>
80103044:	8b 4b 08             	mov    0x8(%ebx),%ecx
80103047:	31 c0                	xor    %eax,%eax
80103049:	eb 0c                	jmp    80103057 <log_write+0x67>
8010304b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010304f:	90                   	nop
80103050:	83 c0 01             	add    $0x1,%eax
80103053:	39 c2                	cmp    %eax,%edx
80103055:	74 29                	je     80103080 <log_write+0x90>
80103057:	39 0c 85 cc 26 11 80 	cmp    %ecx,-0x7feed934(,%eax,4)
8010305e:	75 f0                	jne    80103050 <log_write+0x60>
80103060:	89 0c 85 cc 26 11 80 	mov    %ecx,-0x7feed934(,%eax,4)
80103067:	83 0b 04             	orl    $0x4,(%ebx)
8010306a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010306d:	c7 45 08 80 26 11 80 	movl   $0x80112680,0x8(%ebp)
80103074:	c9                   	leave  
80103075:	e9 c6 16 00 00       	jmp    80104740 <release>
8010307a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80103080:	89 0c 95 cc 26 11 80 	mov    %ecx,-0x7feed934(,%edx,4)
80103087:	83 c2 01             	add    $0x1,%edx
8010308a:	89 15 c8 26 11 80    	mov    %edx,0x801126c8
80103090:	eb d5                	jmp    80103067 <log_write+0x77>
80103092:	8b 43 08             	mov    0x8(%ebx),%eax
80103095:	a3 cc 26 11 80       	mov    %eax,0x801126cc
8010309a:	75 cb                	jne    80103067 <log_write+0x77>
8010309c:	eb e9                	jmp    80103087 <log_write+0x97>
8010309e:	83 ec 0c             	sub    $0xc,%esp
801030a1:	68 53 77 10 80       	push   $0x80107753
801030a6:	e8 35 d3 ff ff       	call   801003e0 <panic>
801030ab:	83 ec 0c             	sub    $0xc,%esp
801030ae:	68 69 77 10 80       	push   $0x80107769
801030b3:	e8 28 d3 ff ff       	call   801003e0 <panic>
801030b8:	66 90                	xchg   %ax,%ax
801030ba:	66 90                	xchg   %ax,%ax
801030bc:	66 90                	xchg   %ax,%ax
801030be:	66 90                	xchg   %ax,%ax

801030c0 <startothers>:
801030c0:	55                   	push   %ebp
801030c1:	89 e5                	mov    %esp,%ebp
801030c3:	53                   	push   %ebx
801030c4:	83 ec 08             	sub    $0x8,%esp
801030c7:	68 8a 00 00 00       	push   $0x8a
801030cc:	68 8c a4 10 80       	push   $0x8010a48c
801030d1:	68 00 70 00 80       	push   $0x80007000
801030d6:	e8 85 17 00 00       	call   80104860 <memmove>
801030db:	83 c4 10             	add    $0x10,%esp
801030de:	69 05 00 2d 11 80 b0 	imul   $0xb0,0x80112d00,%eax
801030e5:	00 00 00 
801030e8:	05 80 27 11 80       	add    $0x80112780,%eax
801030ed:	3d 80 27 11 80       	cmp    $0x80112780,%eax
801030f2:	76 7c                	jbe    80103170 <startothers+0xb0>
801030f4:	bb 80 27 11 80       	mov    $0x80112780,%ebx
801030f9:	eb 1e                	jmp    80103119 <startothers+0x59>
801030fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801030ff:	90                   	nop
80103100:	69 05 00 2d 11 80 b0 	imul   $0xb0,0x80112d00,%eax
80103107:	00 00 00 
8010310a:	81 c3 b0 00 00 00    	add    $0xb0,%ebx
80103110:	05 80 27 11 80       	add    $0x80112780,%eax
80103115:	39 c3                	cmp    %eax,%ebx
80103117:	73 57                	jae    80103170 <startothers+0xb0>
80103119:	e8 72 09 00 00       	call   80103a90 <mycpu>
8010311e:	39 c3                	cmp    %eax,%ebx
80103120:	74 de                	je     80103100 <startothers+0x40>
80103122:	e8 69 f5 ff ff       	call   80102690 <kalloc>
80103127:	83 ec 08             	sub    $0x8,%esp
8010312a:	c7 05 f8 6f 00 80 d0 	movl   $0x801031d0,0x80006ff8
80103131:	31 10 80 
80103134:	c7 05 f4 6f 00 80 00 	movl   $0x109000,0x80006ff4
8010313b:	90 10 00 
8010313e:	05 00 10 00 00       	add    $0x1000,%eax
80103143:	a3 fc 6f 00 80       	mov    %eax,0x80006ffc
80103148:	0f b6 03             	movzbl (%ebx),%eax
8010314b:	68 00 70 00 00       	push   $0x7000
80103150:	50                   	push   %eax
80103151:	e8 fa f8 ff ff       	call   80102a50 <lapicstartap>
80103156:	83 c4 10             	add    $0x10,%esp
80103159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103160:	8b 83 a0 00 00 00    	mov    0xa0(%ebx),%eax
80103166:	85 c0                	test   %eax,%eax
80103168:	74 f6                	je     80103160 <startothers+0xa0>
8010316a:	eb 94                	jmp    80103100 <startothers+0x40>
8010316c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103170:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103173:	c9                   	leave  
80103174:	c3                   	ret    
80103175:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010317c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80103180 <xchg.constprop.0>:
80103180:	89 c2                	mov    %eax,%edx
80103182:	b8 01 00 00 00       	mov    $0x1,%eax
80103187:	f0 87 02             	lock xchg %eax,(%edx)
8010318a:	c3                   	ret    
8010318b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010318f:	90                   	nop

80103190 <mpmain>:
80103190:	55                   	push   %ebp
80103191:	89 e5                	mov    %esp,%ebp
80103193:	53                   	push   %ebx
80103194:	83 ec 04             	sub    $0x4,%esp
80103197:	e8 64 09 00 00       	call   80103b00 <cpuid>
8010319c:	89 c3                	mov    %eax,%ebx
8010319e:	e8 5d 09 00 00       	call   80103b00 <cpuid>
801031a3:	83 ec 04             	sub    $0x4,%esp
801031a6:	53                   	push   %ebx
801031a7:	50                   	push   %eax
801031a8:	68 84 77 10 80       	push   $0x80107784
801031ad:	e8 9e d5 ff ff       	call   80100750 <cprintf>
801031b2:	e8 09 29 00 00       	call   80105ac0 <idtinit>
801031b7:	e8 d4 08 00 00       	call   80103a90 <mycpu>
801031bc:	05 a0 00 00 00       	add    $0xa0,%eax
801031c1:	e8 ba ff ff ff       	call   80103180 <xchg.constprop.0>
801031c6:	e8 15 0c 00 00       	call   80103de0 <scheduler>
801031cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801031cf:	90                   	nop

801031d0 <mpenter>:
801031d0:	f3 0f 1e fb          	endbr32 
801031d4:	55                   	push   %ebp
801031d5:	89 e5                	mov    %esp,%ebp
801031d7:	83 ec 08             	sub    $0x8,%esp
801031da:	e8 41 39 00 00       	call   80106b20 <switchkvm>
801031df:	e8 cc 38 00 00       	call   80106ab0 <seginit>
801031e4:	e8 f7 f6 ff ff       	call   801028e0 <lapicinit>
801031e9:	e8 a2 ff ff ff       	call   80103190 <mpmain>
801031ee:	66 90                	xchg   %ax,%ax

801031f0 <main>:
801031f0:	f3 0f 1e fb          	endbr32 
801031f4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
801031f8:	83 e4 f0             	and    $0xfffffff0,%esp
801031fb:	ff 71 fc             	pushl  -0x4(%ecx)
801031fe:	55                   	push   %ebp
801031ff:	89 e5                	mov    %esp,%ebp
80103201:	51                   	push   %ecx
80103202:	83 ec 0c             	sub    $0xc,%esp
80103205:	68 00 00 40 80       	push   $0x80400000
8010320a:	68 a8 54 11 80       	push   $0x801154a8
8010320f:	e8 0c f4 ff ff       	call   80102620 <kinit1>
80103214:	e8 67 3e 00 00       	call   80107080 <kvmalloc>
80103219:	e8 f2 01 00 00       	call   80103410 <mpinit>
8010321e:	e8 bd f6 ff ff       	call   801028e0 <lapicinit>
80103223:	e8 88 38 00 00       	call   80106ab0 <seginit>
80103228:	e8 03 03 00 00       	call   80103530 <picinit>
8010322d:	e8 3e f2 ff ff       	call   80102470 <ioapicinit>
80103232:	e8 69 d8 ff ff       	call   80100aa0 <consoleinit>
80103237:	e8 b4 2b 00 00       	call   80105df0 <uartinit>
8010323c:	e8 2f 08 00 00       	call   80103a70 <pinit>
80103241:	e8 fa 27 00 00       	call   80105a40 <tvinit>
80103246:	e8 b5 ce ff ff       	call   80100100 <binit>
8010324b:	e8 00 dc ff ff       	call   80100e50 <fileinit>
80103250:	e8 cb ef ff ff       	call   80102220 <ideinit>
80103255:	e8 66 fe ff ff       	call   801030c0 <startothers>
8010325a:	58                   	pop    %eax
8010325b:	5a                   	pop    %edx
8010325c:	68 00 00 00 8e       	push   $0x8e000000
80103261:	68 00 00 40 80       	push   $0x80400000
80103266:	e8 f5 f3 ff ff       	call   80102660 <kinit2>
8010326b:	e8 e0 08 00 00       	call   80103b50 <userinit>
80103270:	e8 1b ff ff ff       	call   80103190 <mpmain>
80103275:	66 90                	xchg   %ax,%ax
80103277:	66 90                	xchg   %ax,%ax
80103279:	66 90                	xchg   %ax,%ax
8010327b:	66 90                	xchg   %ax,%ax
8010327d:	66 90                	xchg   %ax,%ax
8010327f:	90                   	nop

80103280 <outb>:
80103280:	89 c1                	mov    %eax,%ecx
80103282:	89 d0                	mov    %edx,%eax
80103284:	89 ca                	mov    %ecx,%edx
80103286:	ee                   	out    %al,(%dx)
80103287:	c3                   	ret    
80103288:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010328f:	90                   	nop

80103290 <sum>:
80103290:	85 d2                	test   %edx,%edx
80103292:	74 24                	je     801032b8 <sum+0x28>
80103294:	55                   	push   %ebp
80103295:	89 e5                	mov    %esp,%ebp
80103297:	53                   	push   %ebx
80103298:	8d 1c 10             	lea    (%eax,%edx,1),%ebx
8010329b:	31 d2                	xor    %edx,%edx
8010329d:	8d 76 00             	lea    0x0(%esi),%esi
801032a0:	0f b6 08             	movzbl (%eax),%ecx
801032a3:	83 c0 01             	add    $0x1,%eax
801032a6:	01 ca                	add    %ecx,%edx
801032a8:	39 c3                	cmp    %eax,%ebx
801032aa:	75 f4                	jne    801032a0 <sum+0x10>
801032ac:	89 d0                	mov    %edx,%eax
801032ae:	5b                   	pop    %ebx
801032af:	5d                   	pop    %ebp
801032b0:	c3                   	ret    
801032b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801032b8:	31 c0                	xor    %eax,%eax
801032ba:	c3                   	ret    
801032bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801032bf:	90                   	nop

801032c0 <mpsearch1>:
801032c0:	55                   	push   %ebp
801032c1:	89 e5                	mov    %esp,%ebp
801032c3:	56                   	push   %esi
801032c4:	53                   	push   %ebx
801032c5:	8d 98 00 00 00 80    	lea    -0x80000000(%eax),%ebx
801032cb:	8d 34 13             	lea    (%ebx,%edx,1),%esi
801032ce:	39 f3                	cmp    %esi,%ebx
801032d0:	73 34                	jae    80103306 <mpsearch1+0x46>
801032d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801032d8:	83 ec 04             	sub    $0x4,%esp
801032db:	6a 04                	push   $0x4
801032dd:	68 98 77 10 80       	push   $0x80107798
801032e2:	53                   	push   %ebx
801032e3:	e8 28 15 00 00       	call   80104810 <memcmp>
801032e8:	83 c4 10             	add    $0x10,%esp
801032eb:	85 c0                	test   %eax,%eax
801032ed:	75 10                	jne    801032ff <mpsearch1+0x3f>
801032ef:	ba 10 00 00 00       	mov    $0x10,%edx
801032f4:	89 d8                	mov    %ebx,%eax
801032f6:	e8 95 ff ff ff       	call   80103290 <sum>
801032fb:	84 c0                	test   %al,%al
801032fd:	74 09                	je     80103308 <mpsearch1+0x48>
801032ff:	83 c3 10             	add    $0x10,%ebx
80103302:	39 de                	cmp    %ebx,%esi
80103304:	77 d2                	ja     801032d8 <mpsearch1+0x18>
80103306:	31 db                	xor    %ebx,%ebx
80103308:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010330b:	89 d8                	mov    %ebx,%eax
8010330d:	5b                   	pop    %ebx
8010330e:	5e                   	pop    %esi
8010330f:	5d                   	pop    %ebp
80103310:	c3                   	ret    
80103311:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103318:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010331f:	90                   	nop

80103320 <mpsearch>:
80103320:	55                   	push   %ebp
80103321:	89 e5                	mov    %esp,%ebp
80103323:	83 ec 08             	sub    $0x8,%esp
80103326:	0f b6 05 0f 04 00 80 	movzbl 0x8000040f,%eax
8010332d:	0f b6 15 0e 04 00 80 	movzbl 0x8000040e,%edx
80103334:	c1 e0 08             	shl    $0x8,%eax
80103337:	09 d0                	or     %edx,%eax
80103339:	c1 e0 04             	shl    $0x4,%eax
8010333c:	75 1b                	jne    80103359 <mpsearch+0x39>
8010333e:	0f b6 05 14 04 00 80 	movzbl 0x80000414,%eax
80103345:	0f b6 15 13 04 00 80 	movzbl 0x80000413,%edx
8010334c:	c1 e0 08             	shl    $0x8,%eax
8010334f:	09 d0                	or     %edx,%eax
80103351:	c1 e0 0a             	shl    $0xa,%eax
80103354:	2d 00 04 00 00       	sub    $0x400,%eax
80103359:	ba 00 04 00 00       	mov    $0x400,%edx
8010335e:	e8 5d ff ff ff       	call   801032c0 <mpsearch1>
80103363:	85 c0                	test   %eax,%eax
80103365:	74 09                	je     80103370 <mpsearch+0x50>
80103367:	c9                   	leave  
80103368:	c3                   	ret    
80103369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103370:	c9                   	leave  
80103371:	ba 00 00 01 00       	mov    $0x10000,%edx
80103376:	b8 00 00 0f 00       	mov    $0xf0000,%eax
8010337b:	e9 40 ff ff ff       	jmp    801032c0 <mpsearch1>

80103380 <mpconfig>:
80103380:	55                   	push   %ebp
80103381:	89 e5                	mov    %esp,%ebp
80103383:	57                   	push   %edi
80103384:	56                   	push   %esi
80103385:	53                   	push   %ebx
80103386:	83 ec 1c             	sub    $0x1c,%esp
80103389:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010338c:	e8 8f ff ff ff       	call   80103320 <mpsearch>
80103391:	85 c0                	test   %eax,%eax
80103393:	74 5b                	je     801033f0 <mpconfig+0x70>
80103395:	8b 70 04             	mov    0x4(%eax),%esi
80103398:	89 c3                	mov    %eax,%ebx
8010339a:	85 f6                	test   %esi,%esi
8010339c:	74 52                	je     801033f0 <mpconfig+0x70>
8010339e:	83 ec 04             	sub    $0x4,%esp
801033a1:	8d be 00 00 00 80    	lea    -0x80000000(%esi),%edi
801033a7:	6a 04                	push   $0x4
801033a9:	68 9d 77 10 80       	push   $0x8010779d
801033ae:	57                   	push   %edi
801033af:	e8 5c 14 00 00       	call   80104810 <memcmp>
801033b4:	83 c4 10             	add    $0x10,%esp
801033b7:	85 c0                	test   %eax,%eax
801033b9:	75 35                	jne    801033f0 <mpconfig+0x70>
801033bb:	0f b6 86 06 00 00 80 	movzbl -0x7ffffffa(%esi),%eax
801033c2:	3c 01                	cmp    $0x1,%al
801033c4:	74 04                	je     801033ca <mpconfig+0x4a>
801033c6:	3c 04                	cmp    $0x4,%al
801033c8:	75 26                	jne    801033f0 <mpconfig+0x70>
801033ca:	0f b7 96 04 00 00 80 	movzwl -0x7ffffffc(%esi),%edx
801033d1:	89 f8                	mov    %edi,%eax
801033d3:	e8 b8 fe ff ff       	call   80103290 <sum>
801033d8:	84 c0                	test   %al,%al
801033da:	75 14                	jne    801033f0 <mpconfig+0x70>
801033dc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801033df:	89 18                	mov    %ebx,(%eax)
801033e1:	8d 65 f4             	lea    -0xc(%ebp),%esp
801033e4:	89 f8                	mov    %edi,%eax
801033e6:	5b                   	pop    %ebx
801033e7:	5e                   	pop    %esi
801033e8:	5f                   	pop    %edi
801033e9:	5d                   	pop    %ebp
801033ea:	c3                   	ret    
801033eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801033ef:	90                   	nop
801033f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
801033f3:	31 ff                	xor    %edi,%edi
801033f5:	5b                   	pop    %ebx
801033f6:	89 f8                	mov    %edi,%eax
801033f8:	5e                   	pop    %esi
801033f9:	5f                   	pop    %edi
801033fa:	5d                   	pop    %ebp
801033fb:	c3                   	ret    
801033fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80103400 <inb.constprop.0>:
80103400:	ba 23 00 00 00       	mov    $0x23,%edx
80103405:	ec                   	in     (%dx),%al
80103406:	c3                   	ret    
80103407:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010340e:	66 90                	xchg   %ax,%ax

80103410 <mpinit>:
80103410:	f3 0f 1e fb          	endbr32 
80103414:	55                   	push   %ebp
80103415:	89 e5                	mov    %esp,%ebp
80103417:	57                   	push   %edi
80103418:	56                   	push   %esi
80103419:	8d 45 e4             	lea    -0x1c(%ebp),%eax
8010341c:	53                   	push   %ebx
8010341d:	83 ec 1c             	sub    $0x1c,%esp
80103420:	e8 5b ff ff ff       	call   80103380 <mpconfig>
80103425:	85 c0                	test   %eax,%eax
80103427:	0f 84 dd 00 00 00    	je     8010350a <mpinit+0xfa>
8010342d:	8b 50 24             	mov    0x24(%eax),%edx
80103430:	0f b7 48 04          	movzwl 0x4(%eax),%ecx
80103434:	bb 01 00 00 00       	mov    $0x1,%ebx
80103439:	89 15 7c 26 11 80    	mov    %edx,0x8011267c
8010343f:	01 c1                	add    %eax,%ecx
80103441:	8d 50 2c             	lea    0x2c(%eax),%edx
80103444:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103448:	39 d1                	cmp    %edx,%ecx
8010344a:	76 14                	jbe    80103460 <mpinit+0x50>
8010344c:	0f b6 02             	movzbl (%edx),%eax
8010344f:	3c 02                	cmp    $0x2,%al
80103451:	74 6d                	je     801034c0 <mpinit+0xb0>
80103453:	77 2b                	ja     80103480 <mpinit+0x70>
80103455:	84 c0                	test   %al,%al
80103457:	74 37                	je     80103490 <mpinit+0x80>
80103459:	83 c2 08             	add    $0x8,%edx
8010345c:	39 d1                	cmp    %edx,%ecx
8010345e:	77 ec                	ja     8010344c <mpinit+0x3c>
80103460:	85 db                	test   %ebx,%ebx
80103462:	0f 84 95 00 00 00    	je     801034fd <mpinit+0xed>
80103468:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010346b:	80 78 0c 00          	cmpb   $0x0,0xc(%eax)
8010346f:	75 60                	jne    801034d1 <mpinit+0xc1>
80103471:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103474:	5b                   	pop    %ebx
80103475:	5e                   	pop    %esi
80103476:	5f                   	pop    %edi
80103477:	5d                   	pop    %ebp
80103478:	c3                   	ret    
80103479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103480:	83 e8 03             	sub    $0x3,%eax
80103483:	3c 01                	cmp    $0x1,%al
80103485:	76 d2                	jbe    80103459 <mpinit+0x49>
80103487:	31 db                	xor    %ebx,%ebx
80103489:	eb bd                	jmp    80103448 <mpinit+0x38>
8010348b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010348f:	90                   	nop
80103490:	8b 35 00 2d 11 80    	mov    0x80112d00,%esi
80103496:	83 fe 07             	cmp    $0x7,%esi
80103499:	7f 19                	jg     801034b4 <mpinit+0xa4>
8010349b:	69 fe b0 00 00 00    	imul   $0xb0,%esi,%edi
801034a1:	0f b6 42 01          	movzbl 0x1(%edx),%eax
801034a5:	83 c6 01             	add    $0x1,%esi
801034a8:	89 35 00 2d 11 80    	mov    %esi,0x80112d00
801034ae:	88 87 80 27 11 80    	mov    %al,-0x7feed880(%edi)
801034b4:	83 c2 14             	add    $0x14,%edx
801034b7:	eb 8f                	jmp    80103448 <mpinit+0x38>
801034b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801034c0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
801034c4:	83 c2 08             	add    $0x8,%edx
801034c7:	a2 60 27 11 80       	mov    %al,0x80112760
801034cc:	e9 77 ff ff ff       	jmp    80103448 <mpinit+0x38>
801034d1:	ba 70 00 00 00       	mov    $0x70,%edx
801034d6:	b8 22 00 00 00       	mov    $0x22,%eax
801034db:	e8 a0 fd ff ff       	call   80103280 <outb>
801034e0:	e8 1b ff ff ff       	call   80103400 <inb.constprop.0>
801034e5:	83 c8 01             	or     $0x1,%eax
801034e8:	0f b6 d0             	movzbl %al,%edx
801034eb:	b8 23 00 00 00       	mov    $0x23,%eax
801034f0:	e8 8b fd ff ff       	call   80103280 <outb>
801034f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
801034f8:	5b                   	pop    %ebx
801034f9:	5e                   	pop    %esi
801034fa:	5f                   	pop    %edi
801034fb:	5d                   	pop    %ebp
801034fc:	c3                   	ret    
801034fd:	83 ec 0c             	sub    $0xc,%esp
80103500:	68 bc 77 10 80       	push   $0x801077bc
80103505:	e8 d6 ce ff ff       	call   801003e0 <panic>
8010350a:	83 ec 0c             	sub    $0xc,%esp
8010350d:	68 a2 77 10 80       	push   $0x801077a2
80103512:	e8 c9 ce ff ff       	call   801003e0 <panic>
80103517:	66 90                	xchg   %ax,%ax
80103519:	66 90                	xchg   %ax,%ax
8010351b:	66 90                	xchg   %ax,%ax
8010351d:	66 90                	xchg   %ax,%ax
8010351f:	90                   	nop

80103520 <outb.constprop.0>:
80103520:	89 c2                	mov    %eax,%edx
80103522:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103527:	ee                   	out    %al,(%dx)
80103528:	c3                   	ret    
80103529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80103530 <picinit>:
80103530:	f3 0f 1e fb          	endbr32 
80103534:	55                   	push   %ebp
80103535:	b8 21 00 00 00       	mov    $0x21,%eax
8010353a:	89 e5                	mov    %esp,%ebp
8010353c:	83 ec 08             	sub    $0x8,%esp
8010353f:	e8 dc ff ff ff       	call   80103520 <outb.constprop.0>
80103544:	b8 a1 00 00 00       	mov    $0xa1,%eax
80103549:	c9                   	leave  
8010354a:	eb d4                	jmp    80103520 <outb.constprop.0>
8010354c:	66 90                	xchg   %ax,%ax
8010354e:	66 90                	xchg   %ax,%ax

80103550 <pipealloc>:
80103550:	f3 0f 1e fb          	endbr32 
80103554:	55                   	push   %ebp
80103555:	89 e5                	mov    %esp,%ebp
80103557:	57                   	push   %edi
80103558:	56                   	push   %esi
80103559:	53                   	push   %ebx
8010355a:	83 ec 0c             	sub    $0xc,%esp
8010355d:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103560:	8b 75 0c             	mov    0xc(%ebp),%esi
80103563:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80103569:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
8010356f:	e8 fc d8 ff ff       	call   80100e70 <filealloc>
80103574:	89 03                	mov    %eax,(%ebx)
80103576:	85 c0                	test   %eax,%eax
80103578:	0f 84 ac 00 00 00    	je     8010362a <pipealloc+0xda>
8010357e:	e8 ed d8 ff ff       	call   80100e70 <filealloc>
80103583:	89 06                	mov    %eax,(%esi)
80103585:	85 c0                	test   %eax,%eax
80103587:	0f 84 8b 00 00 00    	je     80103618 <pipealloc+0xc8>
8010358d:	e8 fe f0 ff ff       	call   80102690 <kalloc>
80103592:	89 c7                	mov    %eax,%edi
80103594:	85 c0                	test   %eax,%eax
80103596:	0f 84 b4 00 00 00    	je     80103650 <pipealloc+0x100>
8010359c:	c7 80 3c 02 00 00 01 	movl   $0x1,0x23c(%eax)
801035a3:	00 00 00 
801035a6:	83 ec 08             	sub    $0x8,%esp
801035a9:	c7 80 40 02 00 00 01 	movl   $0x1,0x240(%eax)
801035b0:	00 00 00 
801035b3:	c7 80 38 02 00 00 00 	movl   $0x0,0x238(%eax)
801035ba:	00 00 00 
801035bd:	c7 80 34 02 00 00 00 	movl   $0x0,0x234(%eax)
801035c4:	00 00 00 
801035c7:	68 db 77 10 80       	push   $0x801077db
801035cc:	50                   	push   %eax
801035cd:	e8 5e 0f 00 00       	call   80104530 <initlock>
801035d2:	8b 03                	mov    (%ebx),%eax
801035d4:	83 c4 10             	add    $0x10,%esp
801035d7:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
801035dd:	8b 03                	mov    (%ebx),%eax
801035df:	c6 40 08 01          	movb   $0x1,0x8(%eax)
801035e3:	8b 03                	mov    (%ebx),%eax
801035e5:	c6 40 09 00          	movb   $0x0,0x9(%eax)
801035e9:	8b 03                	mov    (%ebx),%eax
801035eb:	89 78 0c             	mov    %edi,0xc(%eax)
801035ee:	8b 06                	mov    (%esi),%eax
801035f0:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
801035f6:	8b 06                	mov    (%esi),%eax
801035f8:	c6 40 08 00          	movb   $0x0,0x8(%eax)
801035fc:	8b 06                	mov    (%esi),%eax
801035fe:	c6 40 09 01          	movb   $0x1,0x9(%eax)
80103602:	8b 06                	mov    (%esi),%eax
80103604:	89 78 0c             	mov    %edi,0xc(%eax)
80103607:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010360a:	31 c0                	xor    %eax,%eax
8010360c:	5b                   	pop    %ebx
8010360d:	5e                   	pop    %esi
8010360e:	5f                   	pop    %edi
8010360f:	5d                   	pop    %ebp
80103610:	c3                   	ret    
80103611:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103618:	8b 03                	mov    (%ebx),%eax
8010361a:	85 c0                	test   %eax,%eax
8010361c:	74 1e                	je     8010363c <pipealloc+0xec>
8010361e:	83 ec 0c             	sub    $0xc,%esp
80103621:	50                   	push   %eax
80103622:	e8 09 d9 ff ff       	call   80100f30 <fileclose>
80103627:	83 c4 10             	add    $0x10,%esp
8010362a:	8b 06                	mov    (%esi),%eax
8010362c:	85 c0                	test   %eax,%eax
8010362e:	74 0c                	je     8010363c <pipealloc+0xec>
80103630:	83 ec 0c             	sub    $0xc,%esp
80103633:	50                   	push   %eax
80103634:	e8 f7 d8 ff ff       	call   80100f30 <fileclose>
80103639:	83 c4 10             	add    $0x10,%esp
8010363c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010363f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103644:	5b                   	pop    %ebx
80103645:	5e                   	pop    %esi
80103646:	5f                   	pop    %edi
80103647:	5d                   	pop    %ebp
80103648:	c3                   	ret    
80103649:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103650:	8b 03                	mov    (%ebx),%eax
80103652:	85 c0                	test   %eax,%eax
80103654:	75 c8                	jne    8010361e <pipealloc+0xce>
80103656:	eb d2                	jmp    8010362a <pipealloc+0xda>
80103658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010365f:	90                   	nop

80103660 <pipeclose>:
80103660:	f3 0f 1e fb          	endbr32 
80103664:	55                   	push   %ebp
80103665:	89 e5                	mov    %esp,%ebp
80103667:	56                   	push   %esi
80103668:	53                   	push   %ebx
80103669:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010366c:	8b 75 0c             	mov    0xc(%ebp),%esi
8010366f:	83 ec 0c             	sub    $0xc,%esp
80103672:	53                   	push   %ebx
80103673:	e8 58 10 00 00       	call   801046d0 <acquire>
80103678:	83 c4 10             	add    $0x10,%esp
8010367b:	85 f6                	test   %esi,%esi
8010367d:	74 41                	je     801036c0 <pipeclose+0x60>
8010367f:	83 ec 0c             	sub    $0xc,%esp
80103682:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80103688:	c7 83 40 02 00 00 00 	movl   $0x0,0x240(%ebx)
8010368f:	00 00 00 
80103692:	50                   	push   %eax
80103693:	e8 78 0b 00 00       	call   80104210 <wakeup>
80103698:	83 c4 10             	add    $0x10,%esp
8010369b:	8b 93 3c 02 00 00    	mov    0x23c(%ebx),%edx
801036a1:	85 d2                	test   %edx,%edx
801036a3:	75 0a                	jne    801036af <pipeclose+0x4f>
801036a5:	8b 83 40 02 00 00    	mov    0x240(%ebx),%eax
801036ab:	85 c0                	test   %eax,%eax
801036ad:	74 31                	je     801036e0 <pipeclose+0x80>
801036af:	89 5d 08             	mov    %ebx,0x8(%ebp)
801036b2:	8d 65 f8             	lea    -0x8(%ebp),%esp
801036b5:	5b                   	pop    %ebx
801036b6:	5e                   	pop    %esi
801036b7:	5d                   	pop    %ebp
801036b8:	e9 83 10 00 00       	jmp    80104740 <release>
801036bd:	8d 76 00             	lea    0x0(%esi),%esi
801036c0:	83 ec 0c             	sub    $0xc,%esp
801036c3:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
801036c9:	c7 83 3c 02 00 00 00 	movl   $0x0,0x23c(%ebx)
801036d0:	00 00 00 
801036d3:	50                   	push   %eax
801036d4:	e8 37 0b 00 00       	call   80104210 <wakeup>
801036d9:	83 c4 10             	add    $0x10,%esp
801036dc:	eb bd                	jmp    8010369b <pipeclose+0x3b>
801036de:	66 90                	xchg   %ax,%ax
801036e0:	83 ec 0c             	sub    $0xc,%esp
801036e3:	53                   	push   %ebx
801036e4:	e8 57 10 00 00       	call   80104740 <release>
801036e9:	89 5d 08             	mov    %ebx,0x8(%ebp)
801036ec:	83 c4 10             	add    $0x10,%esp
801036ef:	8d 65 f8             	lea    -0x8(%ebp),%esp
801036f2:	5b                   	pop    %ebx
801036f3:	5e                   	pop    %esi
801036f4:	5d                   	pop    %ebp
801036f5:	e9 36 ee ff ff       	jmp    80102530 <kfree>
801036fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80103700 <pipewrite>:
80103700:	f3 0f 1e fb          	endbr32 
80103704:	55                   	push   %ebp
80103705:	89 e5                	mov    %esp,%ebp
80103707:	57                   	push   %edi
80103708:	56                   	push   %esi
80103709:	53                   	push   %ebx
8010370a:	83 ec 28             	sub    $0x28,%esp
8010370d:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103710:	53                   	push   %ebx
80103711:	e8 ba 0f 00 00       	call   801046d0 <acquire>
80103716:	8b 45 10             	mov    0x10(%ebp),%eax
80103719:	83 c4 10             	add    $0x10,%esp
8010371c:	85 c0                	test   %eax,%eax
8010371e:	0f 8e bc 00 00 00    	jle    801037e0 <pipewrite+0xe0>
80103724:	8b 45 0c             	mov    0xc(%ebp),%eax
80103727:	8b 8b 38 02 00 00    	mov    0x238(%ebx),%ecx
8010372d:	8d bb 34 02 00 00    	lea    0x234(%ebx),%edi
80103733:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80103736:	03 45 10             	add    0x10(%ebp),%eax
80103739:	89 45 e0             	mov    %eax,-0x20(%ebp)
8010373c:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
80103742:	8d b3 38 02 00 00    	lea    0x238(%ebx),%esi
80103748:	89 ca                	mov    %ecx,%edx
8010374a:	05 00 02 00 00       	add    $0x200,%eax
8010374f:	39 c1                	cmp    %eax,%ecx
80103751:	74 3b                	je     8010378e <pipewrite+0x8e>
80103753:	eb 63                	jmp    801037b8 <pipewrite+0xb8>
80103755:	8d 76 00             	lea    0x0(%esi),%esi
80103758:	e8 c3 03 00 00       	call   80103b20 <myproc>
8010375d:	8b 48 24             	mov    0x24(%eax),%ecx
80103760:	85 c9                	test   %ecx,%ecx
80103762:	75 34                	jne    80103798 <pipewrite+0x98>
80103764:	83 ec 0c             	sub    $0xc,%esp
80103767:	57                   	push   %edi
80103768:	e8 a3 0a 00 00       	call   80104210 <wakeup>
8010376d:	58                   	pop    %eax
8010376e:	5a                   	pop    %edx
8010376f:	53                   	push   %ebx
80103770:	56                   	push   %esi
80103771:	e8 ea 08 00 00       	call   80104060 <sleep>
80103776:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
8010377c:	8b 93 38 02 00 00    	mov    0x238(%ebx),%edx
80103782:	83 c4 10             	add    $0x10,%esp
80103785:	05 00 02 00 00       	add    $0x200,%eax
8010378a:	39 c2                	cmp    %eax,%edx
8010378c:	75 2a                	jne    801037b8 <pipewrite+0xb8>
8010378e:	8b 83 3c 02 00 00    	mov    0x23c(%ebx),%eax
80103794:	85 c0                	test   %eax,%eax
80103796:	75 c0                	jne    80103758 <pipewrite+0x58>
80103798:	83 ec 0c             	sub    $0xc,%esp
8010379b:	53                   	push   %ebx
8010379c:	e8 9f 0f 00 00       	call   80104740 <release>
801037a1:	83 c4 10             	add    $0x10,%esp
801037a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801037a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
801037ac:	5b                   	pop    %ebx
801037ad:	5e                   	pop    %esi
801037ae:	5f                   	pop    %edi
801037af:	5d                   	pop    %ebp
801037b0:	c3                   	ret    
801037b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801037b8:	8b 75 e4             	mov    -0x1c(%ebp),%esi
801037bb:	8d 4a 01             	lea    0x1(%edx),%ecx
801037be:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
801037c4:	89 8b 38 02 00 00    	mov    %ecx,0x238(%ebx)
801037ca:	0f b6 06             	movzbl (%esi),%eax
801037cd:	83 c6 01             	add    $0x1,%esi
801037d0:	89 75 e4             	mov    %esi,-0x1c(%ebp)
801037d3:	88 44 13 34          	mov    %al,0x34(%ebx,%edx,1)
801037d7:	3b 75 e0             	cmp    -0x20(%ebp),%esi
801037da:	0f 85 5c ff ff ff    	jne    8010373c <pipewrite+0x3c>
801037e0:	83 ec 0c             	sub    $0xc,%esp
801037e3:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
801037e9:	50                   	push   %eax
801037ea:	e8 21 0a 00 00       	call   80104210 <wakeup>
801037ef:	89 1c 24             	mov    %ebx,(%esp)
801037f2:	e8 49 0f 00 00       	call   80104740 <release>
801037f7:	8b 45 10             	mov    0x10(%ebp),%eax
801037fa:	83 c4 10             	add    $0x10,%esp
801037fd:	eb aa                	jmp    801037a9 <pipewrite+0xa9>
801037ff:	90                   	nop

80103800 <piperead>:
80103800:	f3 0f 1e fb          	endbr32 
80103804:	55                   	push   %ebp
80103805:	89 e5                	mov    %esp,%ebp
80103807:	57                   	push   %edi
80103808:	56                   	push   %esi
80103809:	53                   	push   %ebx
8010380a:	83 ec 18             	sub    $0x18,%esp
8010380d:	8b 75 08             	mov    0x8(%ebp),%esi
80103810:	8b 7d 0c             	mov    0xc(%ebp),%edi
80103813:	56                   	push   %esi
80103814:	8d 9e 34 02 00 00    	lea    0x234(%esi),%ebx
8010381a:	e8 b1 0e 00 00       	call   801046d0 <acquire>
8010381f:	8b 86 34 02 00 00    	mov    0x234(%esi),%eax
80103825:	83 c4 10             	add    $0x10,%esp
80103828:	39 86 38 02 00 00    	cmp    %eax,0x238(%esi)
8010382e:	74 33                	je     80103863 <piperead+0x63>
80103830:	eb 3b                	jmp    8010386d <piperead+0x6d>
80103832:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80103838:	e8 e3 02 00 00       	call   80103b20 <myproc>
8010383d:	8b 48 24             	mov    0x24(%eax),%ecx
80103840:	85 c9                	test   %ecx,%ecx
80103842:	0f 85 88 00 00 00    	jne    801038d0 <piperead+0xd0>
80103848:	83 ec 08             	sub    $0x8,%esp
8010384b:	56                   	push   %esi
8010384c:	53                   	push   %ebx
8010384d:	e8 0e 08 00 00       	call   80104060 <sleep>
80103852:	8b 86 38 02 00 00    	mov    0x238(%esi),%eax
80103858:	83 c4 10             	add    $0x10,%esp
8010385b:	39 86 34 02 00 00    	cmp    %eax,0x234(%esi)
80103861:	75 0a                	jne    8010386d <piperead+0x6d>
80103863:	8b 86 40 02 00 00    	mov    0x240(%esi),%eax
80103869:	85 c0                	test   %eax,%eax
8010386b:	75 cb                	jne    80103838 <piperead+0x38>
8010386d:	8b 55 10             	mov    0x10(%ebp),%edx
80103870:	31 db                	xor    %ebx,%ebx
80103872:	85 d2                	test   %edx,%edx
80103874:	7f 28                	jg     8010389e <piperead+0x9e>
80103876:	eb 34                	jmp    801038ac <piperead+0xac>
80103878:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010387f:	90                   	nop
80103880:	8d 48 01             	lea    0x1(%eax),%ecx
80103883:	25 ff 01 00 00       	and    $0x1ff,%eax
80103888:	89 8e 34 02 00 00    	mov    %ecx,0x234(%esi)
8010388e:	0f b6 44 06 34       	movzbl 0x34(%esi,%eax,1),%eax
80103893:	88 04 1f             	mov    %al,(%edi,%ebx,1)
80103896:	83 c3 01             	add    $0x1,%ebx
80103899:	39 5d 10             	cmp    %ebx,0x10(%ebp)
8010389c:	74 0e                	je     801038ac <piperead+0xac>
8010389e:	8b 86 34 02 00 00    	mov    0x234(%esi),%eax
801038a4:	3b 86 38 02 00 00    	cmp    0x238(%esi),%eax
801038aa:	75 d4                	jne    80103880 <piperead+0x80>
801038ac:	83 ec 0c             	sub    $0xc,%esp
801038af:	8d 86 38 02 00 00    	lea    0x238(%esi),%eax
801038b5:	50                   	push   %eax
801038b6:	e8 55 09 00 00       	call   80104210 <wakeup>
801038bb:	89 34 24             	mov    %esi,(%esp)
801038be:	e8 7d 0e 00 00       	call   80104740 <release>
801038c3:	83 c4 10             	add    $0x10,%esp
801038c6:	8d 65 f4             	lea    -0xc(%ebp),%esp
801038c9:	89 d8                	mov    %ebx,%eax
801038cb:	5b                   	pop    %ebx
801038cc:	5e                   	pop    %esi
801038cd:	5f                   	pop    %edi
801038ce:	5d                   	pop    %ebp
801038cf:	c3                   	ret    
801038d0:	83 ec 0c             	sub    $0xc,%esp
801038d3:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801038d8:	56                   	push   %esi
801038d9:	e8 62 0e 00 00       	call   80104740 <release>
801038de:	83 c4 10             	add    $0x10,%esp
801038e1:	8d 65 f4             	lea    -0xc(%ebp),%esp
801038e4:	89 d8                	mov    %ebx,%eax
801038e6:	5b                   	pop    %ebx
801038e7:	5e                   	pop    %esi
801038e8:	5f                   	pop    %edi
801038e9:	5d                   	pop    %ebp
801038ea:	c3                   	ret    
801038eb:	66 90                	xchg   %ax,%ax
801038ed:	66 90                	xchg   %ax,%ax
801038ef:	90                   	nop

801038f0 <readeflags>:
801038f0:	9c                   	pushf  
801038f1:	58                   	pop    %eax
801038f2:	c3                   	ret    
801038f3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801038fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80103900 <sti>:
80103900:	fb                   	sti    
80103901:	c3                   	ret    
80103902:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80103910 <wakeup1>:
80103910:	ba 54 2d 11 80       	mov    $0x80112d54,%edx
80103915:	eb 14                	jmp    8010392b <wakeup1+0x1b>
80103917:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010391e:	66 90                	xchg   %ax,%ax
80103920:	83 c2 7c             	add    $0x7c,%edx
80103923:	81 fa 54 4c 11 80    	cmp    $0x80114c54,%edx
80103929:	74 1d                	je     80103948 <wakeup1+0x38>
8010392b:	83 7a 0c 02          	cmpl   $0x2,0xc(%edx)
8010392f:	75 ef                	jne    80103920 <wakeup1+0x10>
80103931:	39 42 20             	cmp    %eax,0x20(%edx)
80103934:	75 ea                	jne    80103920 <wakeup1+0x10>
80103936:	c7 42 0c 03 00 00 00 	movl   $0x3,0xc(%edx)
8010393d:	83 c2 7c             	add    $0x7c,%edx
80103940:	81 fa 54 4c 11 80    	cmp    $0x80114c54,%edx
80103946:	75 e3                	jne    8010392b <wakeup1+0x1b>
80103948:	c3                   	ret    
80103949:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80103950 <allocproc>:
80103950:	55                   	push   %ebp
80103951:	89 e5                	mov    %esp,%ebp
80103953:	53                   	push   %ebx
80103954:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
80103959:	83 ec 10             	sub    $0x10,%esp
8010395c:	68 20 2d 11 80       	push   $0x80112d20
80103961:	e8 6a 0d 00 00       	call   801046d0 <acquire>
80103966:	83 c4 10             	add    $0x10,%esp
80103969:	eb 10                	jmp    8010397b <allocproc+0x2b>
8010396b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010396f:	90                   	nop
80103970:	83 c3 7c             	add    $0x7c,%ebx
80103973:	81 fb 54 4c 11 80    	cmp    $0x80114c54,%ebx
80103979:	74 75                	je     801039f0 <allocproc+0xa0>
8010397b:	8b 43 0c             	mov    0xc(%ebx),%eax
8010397e:	85 c0                	test   %eax,%eax
80103980:	75 ee                	jne    80103970 <allocproc+0x20>
80103982:	a1 04 a0 10 80       	mov    0x8010a004,%eax
80103987:	83 ec 0c             	sub    $0xc,%esp
8010398a:	c7 43 0c 01 00 00 00 	movl   $0x1,0xc(%ebx)
80103991:	89 43 10             	mov    %eax,0x10(%ebx)
80103994:	8d 50 01             	lea    0x1(%eax),%edx
80103997:	68 20 2d 11 80       	push   $0x80112d20
8010399c:	89 15 04 a0 10 80    	mov    %edx,0x8010a004
801039a2:	e8 99 0d 00 00       	call   80104740 <release>
801039a7:	e8 e4 ec ff ff       	call   80102690 <kalloc>
801039ac:	83 c4 10             	add    $0x10,%esp
801039af:	89 43 08             	mov    %eax,0x8(%ebx)
801039b2:	85 c0                	test   %eax,%eax
801039b4:	74 53                	je     80103a09 <allocproc+0xb9>
801039b6:	8d 90 b4 0f 00 00    	lea    0xfb4(%eax),%edx
801039bc:	83 ec 04             	sub    $0x4,%esp
801039bf:	05 9c 0f 00 00       	add    $0xf9c,%eax
801039c4:	89 53 18             	mov    %edx,0x18(%ebx)
801039c7:	c7 40 14 e6 59 10 80 	movl   $0x801059e6,0x14(%eax)
801039ce:	89 43 1c             	mov    %eax,0x1c(%ebx)
801039d1:	6a 14                	push   $0x14
801039d3:	6a 00                	push   $0x0
801039d5:	50                   	push   %eax
801039d6:	e8 d5 0d 00 00       	call   801047b0 <memset>
801039db:	8b 43 1c             	mov    0x1c(%ebx),%eax
801039de:	83 c4 10             	add    $0x10,%esp
801039e1:	c7 40 10 20 3a 10 80 	movl   $0x80103a20,0x10(%eax)
801039e8:	89 d8                	mov    %ebx,%eax
801039ea:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801039ed:	c9                   	leave  
801039ee:	c3                   	ret    
801039ef:	90                   	nop
801039f0:	83 ec 0c             	sub    $0xc,%esp
801039f3:	31 db                	xor    %ebx,%ebx
801039f5:	68 20 2d 11 80       	push   $0x80112d20
801039fa:	e8 41 0d 00 00       	call   80104740 <release>
801039ff:	89 d8                	mov    %ebx,%eax
80103a01:	83 c4 10             	add    $0x10,%esp
80103a04:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103a07:	c9                   	leave  
80103a08:	c3                   	ret    
80103a09:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80103a10:	31 db                	xor    %ebx,%ebx
80103a12:	89 d8                	mov    %ebx,%eax
80103a14:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103a17:	c9                   	leave  
80103a18:	c3                   	ret    
80103a19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80103a20 <forkret>:
80103a20:	f3 0f 1e fb          	endbr32 
80103a24:	55                   	push   %ebp
80103a25:	89 e5                	mov    %esp,%ebp
80103a27:	83 ec 14             	sub    $0x14,%esp
80103a2a:	68 20 2d 11 80       	push   $0x80112d20
80103a2f:	e8 0c 0d 00 00       	call   80104740 <release>
80103a34:	a1 00 a0 10 80       	mov    0x8010a000,%eax
80103a39:	83 c4 10             	add    $0x10,%esp
80103a3c:	85 c0                	test   %eax,%eax
80103a3e:	75 08                	jne    80103a48 <forkret+0x28>
80103a40:	c9                   	leave  
80103a41:	c3                   	ret    
80103a42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80103a48:	c7 05 00 a0 10 80 00 	movl   $0x0,0x8010a000
80103a4f:	00 00 00 
80103a52:	83 ec 0c             	sub    $0xc,%esp
80103a55:	6a 01                	push   $0x1
80103a57:	e8 24 dc ff ff       	call   80101680 <iinit>
80103a5c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
80103a63:	e8 08 f4 ff ff       	call   80102e70 <initlog>
80103a68:	83 c4 10             	add    $0x10,%esp
80103a6b:	c9                   	leave  
80103a6c:	c3                   	ret    
80103a6d:	8d 76 00             	lea    0x0(%esi),%esi

80103a70 <pinit>:
80103a70:	f3 0f 1e fb          	endbr32 
80103a74:	55                   	push   %ebp
80103a75:	89 e5                	mov    %esp,%ebp
80103a77:	83 ec 10             	sub    $0x10,%esp
80103a7a:	68 e0 77 10 80       	push   $0x801077e0
80103a7f:	68 20 2d 11 80       	push   $0x80112d20
80103a84:	e8 a7 0a 00 00       	call   80104530 <initlock>
80103a89:	83 c4 10             	add    $0x10,%esp
80103a8c:	c9                   	leave  
80103a8d:	c3                   	ret    
80103a8e:	66 90                	xchg   %ax,%ax

80103a90 <mycpu>:
80103a90:	f3 0f 1e fb          	endbr32 
80103a94:	55                   	push   %ebp
80103a95:	89 e5                	mov    %esp,%ebp
80103a97:	56                   	push   %esi
80103a98:	53                   	push   %ebx
80103a99:	e8 52 fe ff ff       	call   801038f0 <readeflags>
80103a9e:	f6 c4 02             	test   $0x2,%ah
80103aa1:	75 4f                	jne    80103af2 <mycpu+0x62>
80103aa3:	e8 48 ef ff ff       	call   801029f0 <lapicid>
80103aa8:	8b 35 00 2d 11 80    	mov    0x80112d00,%esi
80103aae:	89 c3                	mov    %eax,%ebx
80103ab0:	85 f6                	test   %esi,%esi
80103ab2:	7e 31                	jle    80103ae5 <mycpu+0x55>
80103ab4:	31 d2                	xor    %edx,%edx
80103ab6:	eb 0f                	jmp    80103ac7 <mycpu+0x37>
80103ab8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103abf:	90                   	nop
80103ac0:	83 c2 01             	add    $0x1,%edx
80103ac3:	39 f2                	cmp    %esi,%edx
80103ac5:	74 1e                	je     80103ae5 <mycpu+0x55>
80103ac7:	69 ca b0 00 00 00    	imul   $0xb0,%edx,%ecx
80103acd:	0f b6 81 80 27 11 80 	movzbl -0x7feed880(%ecx),%eax
80103ad4:	39 d8                	cmp    %ebx,%eax
80103ad6:	75 e8                	jne    80103ac0 <mycpu+0x30>
80103ad8:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103adb:	8d 81 80 27 11 80    	lea    -0x7feed880(%ecx),%eax
80103ae1:	5b                   	pop    %ebx
80103ae2:	5e                   	pop    %esi
80103ae3:	5d                   	pop    %ebp
80103ae4:	c3                   	ret    
80103ae5:	83 ec 0c             	sub    $0xc,%esp
80103ae8:	68 e7 77 10 80       	push   $0x801077e7
80103aed:	e8 ee c8 ff ff       	call   801003e0 <panic>
80103af2:	83 ec 0c             	sub    $0xc,%esp
80103af5:	68 c4 78 10 80       	push   $0x801078c4
80103afa:	e8 e1 c8 ff ff       	call   801003e0 <panic>
80103aff:	90                   	nop

80103b00 <cpuid>:
80103b00:	f3 0f 1e fb          	endbr32 
80103b04:	55                   	push   %ebp
80103b05:	89 e5                	mov    %esp,%ebp
80103b07:	83 ec 08             	sub    $0x8,%esp
80103b0a:	e8 81 ff ff ff       	call   80103a90 <mycpu>
80103b0f:	c9                   	leave  
80103b10:	2d 80 27 11 80       	sub    $0x80112780,%eax
80103b15:	c1 f8 04             	sar    $0x4,%eax
80103b18:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
80103b1e:	c3                   	ret    
80103b1f:	90                   	nop

80103b20 <myproc>:
80103b20:	f3 0f 1e fb          	endbr32 
80103b24:	55                   	push   %ebp
80103b25:	89 e5                	mov    %esp,%ebp
80103b27:	53                   	push   %ebx
80103b28:	83 ec 04             	sub    $0x4,%esp
80103b2b:	e8 80 0a 00 00       	call   801045b0 <pushcli>
80103b30:	e8 5b ff ff ff       	call   80103a90 <mycpu>
80103b35:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
80103b3b:	e8 d0 0a 00 00       	call   80104610 <popcli>
80103b40:	83 c4 04             	add    $0x4,%esp
80103b43:	89 d8                	mov    %ebx,%eax
80103b45:	5b                   	pop    %ebx
80103b46:	5d                   	pop    %ebp
80103b47:	c3                   	ret    
80103b48:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103b4f:	90                   	nop

80103b50 <userinit>:
80103b50:	f3 0f 1e fb          	endbr32 
80103b54:	55                   	push   %ebp
80103b55:	89 e5                	mov    %esp,%ebp
80103b57:	53                   	push   %ebx
80103b58:	83 ec 04             	sub    $0x4,%esp
80103b5b:	e8 f0 fd ff ff       	call   80103950 <allocproc>
80103b60:	89 c3                	mov    %eax,%ebx
80103b62:	a3 b8 a5 10 80       	mov    %eax,0x8010a5b8
80103b67:	e8 94 34 00 00       	call   80107000 <setupkvm>
80103b6c:	89 43 04             	mov    %eax,0x4(%ebx)
80103b6f:	85 c0                	test   %eax,%eax
80103b71:	0f 84 bd 00 00 00    	je     80103c34 <userinit+0xe4>
80103b77:	83 ec 04             	sub    $0x4,%esp
80103b7a:	68 2c 00 00 00       	push   $0x2c
80103b7f:	68 60 a4 10 80       	push   $0x8010a460
80103b84:	50                   	push   %eax
80103b85:	e8 c6 30 00 00       	call   80106c50 <inituvm>
80103b8a:	83 c4 0c             	add    $0xc,%esp
80103b8d:	c7 03 00 10 00 00    	movl   $0x1000,(%ebx)
80103b93:	6a 4c                	push   $0x4c
80103b95:	6a 00                	push   $0x0
80103b97:	ff 73 18             	pushl  0x18(%ebx)
80103b9a:	e8 11 0c 00 00       	call   801047b0 <memset>
80103b9f:	8b 43 18             	mov    0x18(%ebx),%eax
80103ba2:	ba 1b 00 00 00       	mov    $0x1b,%edx
80103ba7:	83 c4 0c             	add    $0xc,%esp
80103baa:	b9 23 00 00 00       	mov    $0x23,%ecx
80103baf:	66 89 50 3c          	mov    %dx,0x3c(%eax)
80103bb3:	8b 43 18             	mov    0x18(%ebx),%eax
80103bb6:	66 89 48 2c          	mov    %cx,0x2c(%eax)
80103bba:	8b 43 18             	mov    0x18(%ebx),%eax
80103bbd:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
80103bc1:	66 89 50 28          	mov    %dx,0x28(%eax)
80103bc5:	8b 43 18             	mov    0x18(%ebx),%eax
80103bc8:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
80103bcc:	66 89 50 48          	mov    %dx,0x48(%eax)
80103bd0:	8b 43 18             	mov    0x18(%ebx),%eax
80103bd3:	c7 40 40 00 02 00 00 	movl   $0x200,0x40(%eax)
80103bda:	8b 43 18             	mov    0x18(%ebx),%eax
80103bdd:	c7 40 44 00 10 00 00 	movl   $0x1000,0x44(%eax)
80103be4:	8b 43 18             	mov    0x18(%ebx),%eax
80103be7:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
80103bee:	8d 43 6c             	lea    0x6c(%ebx),%eax
80103bf1:	6a 10                	push   $0x10
80103bf3:	68 10 78 10 80       	push   $0x80107810
80103bf8:	50                   	push   %eax
80103bf9:	e8 82 0d 00 00       	call   80104980 <safestrcpy>
80103bfe:	c7 04 24 19 78 10 80 	movl   $0x80107819,(%esp)
80103c05:	e8 66 e4 ff ff       	call   80102070 <namei>
80103c0a:	89 43 68             	mov    %eax,0x68(%ebx)
80103c0d:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103c14:	e8 b7 0a 00 00       	call   801046d0 <acquire>
80103c19:	c7 43 0c 03 00 00 00 	movl   $0x3,0xc(%ebx)
80103c20:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103c27:	e8 14 0b 00 00       	call   80104740 <release>
80103c2c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103c2f:	83 c4 10             	add    $0x10,%esp
80103c32:	c9                   	leave  
80103c33:	c3                   	ret    
80103c34:	83 ec 0c             	sub    $0xc,%esp
80103c37:	68 f7 77 10 80       	push   $0x801077f7
80103c3c:	e8 9f c7 ff ff       	call   801003e0 <panic>
80103c41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103c48:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103c4f:	90                   	nop

80103c50 <growproc>:
80103c50:	f3 0f 1e fb          	endbr32 
80103c54:	55                   	push   %ebp
80103c55:	89 e5                	mov    %esp,%ebp
80103c57:	56                   	push   %esi
80103c58:	53                   	push   %ebx
80103c59:	8b 75 08             	mov    0x8(%ebp),%esi
80103c5c:	e8 bf fe ff ff       	call   80103b20 <myproc>
80103c61:	89 c3                	mov    %eax,%ebx
80103c63:	8b 00                	mov    (%eax),%eax
80103c65:	85 f6                	test   %esi,%esi
80103c67:	7f 1f                	jg     80103c88 <growproc+0x38>
80103c69:	75 3d                	jne    80103ca8 <growproc+0x58>
80103c6b:	83 ec 0c             	sub    $0xc,%esp
80103c6e:	89 03                	mov    %eax,(%ebx)
80103c70:	53                   	push   %ebx
80103c71:	e8 ca 2e 00 00       	call   80106b40 <switchuvm>
80103c76:	83 c4 10             	add    $0x10,%esp
80103c79:	31 c0                	xor    %eax,%eax
80103c7b:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103c7e:	5b                   	pop    %ebx
80103c7f:	5e                   	pop    %esi
80103c80:	5d                   	pop    %ebp
80103c81:	c3                   	ret    
80103c82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80103c88:	83 ec 04             	sub    $0x4,%esp
80103c8b:	01 c6                	add    %eax,%esi
80103c8d:	56                   	push   %esi
80103c8e:	50                   	push   %eax
80103c8f:	ff 73 04             	pushl  0x4(%ebx)
80103c92:	e8 b9 31 00 00       	call   80106e50 <allocuvm>
80103c97:	83 c4 10             	add    $0x10,%esp
80103c9a:	85 c0                	test   %eax,%eax
80103c9c:	75 cd                	jne    80103c6b <growproc+0x1b>
80103c9e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103ca3:	eb d6                	jmp    80103c7b <growproc+0x2b>
80103ca5:	8d 76 00             	lea    0x0(%esi),%esi
80103ca8:	83 ec 04             	sub    $0x4,%esp
80103cab:	01 c6                	add    %eax,%esi
80103cad:	56                   	push   %esi
80103cae:	50                   	push   %eax
80103caf:	ff 73 04             	pushl  0x4(%ebx)
80103cb2:	e8 e9 30 00 00       	call   80106da0 <deallocuvm>
80103cb7:	83 c4 10             	add    $0x10,%esp
80103cba:	85 c0                	test   %eax,%eax
80103cbc:	75 ad                	jne    80103c6b <growproc+0x1b>
80103cbe:	eb de                	jmp    80103c9e <growproc+0x4e>

80103cc0 <fork>:
80103cc0:	f3 0f 1e fb          	endbr32 
80103cc4:	55                   	push   %ebp
80103cc5:	89 e5                	mov    %esp,%ebp
80103cc7:	57                   	push   %edi
80103cc8:	56                   	push   %esi
80103cc9:	53                   	push   %ebx
80103cca:	83 ec 1c             	sub    $0x1c,%esp
80103ccd:	e8 4e fe ff ff       	call   80103b20 <myproc>
80103cd2:	89 c3                	mov    %eax,%ebx
80103cd4:	e8 77 fc ff ff       	call   80103950 <allocproc>
80103cd9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80103cdc:	85 c0                	test   %eax,%eax
80103cde:	0f 84 c1 00 00 00    	je     80103da5 <fork+0xe5>
80103ce4:	83 ec 08             	sub    $0x8,%esp
80103ce7:	ff 33                	pushl  (%ebx)
80103ce9:	89 c7                	mov    %eax,%edi
80103ceb:	ff 73 04             	pushl  0x4(%ebx)
80103cee:	e8 dd 33 00 00       	call   801070d0 <copyuvm>
80103cf3:	83 c4 10             	add    $0x10,%esp
80103cf6:	89 47 04             	mov    %eax,0x4(%edi)
80103cf9:	85 c0                	test   %eax,%eax
80103cfb:	0f 84 ab 00 00 00    	je     80103dac <fork+0xec>
80103d01:	8b 03                	mov    (%ebx),%eax
80103d03:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80103d06:	89 01                	mov    %eax,(%ecx)
80103d08:	8b 79 18             	mov    0x18(%ecx),%edi
80103d0b:	89 c8                	mov    %ecx,%eax
80103d0d:	89 59 14             	mov    %ebx,0x14(%ecx)
80103d10:	b9 13 00 00 00       	mov    $0x13,%ecx
80103d15:	8b 73 18             	mov    0x18(%ebx),%esi
80103d18:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
80103d1a:	31 f6                	xor    %esi,%esi
80103d1c:	8b 40 18             	mov    0x18(%eax),%eax
80103d1f:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
80103d26:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103d2d:	8d 76 00             	lea    0x0(%esi),%esi
80103d30:	8b 44 b3 28          	mov    0x28(%ebx,%esi,4),%eax
80103d34:	85 c0                	test   %eax,%eax
80103d36:	74 13                	je     80103d4b <fork+0x8b>
80103d38:	83 ec 0c             	sub    $0xc,%esp
80103d3b:	50                   	push   %eax
80103d3c:	e8 9f d1 ff ff       	call   80100ee0 <filedup>
80103d41:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80103d44:	83 c4 10             	add    $0x10,%esp
80103d47:	89 44 b2 28          	mov    %eax,0x28(%edx,%esi,4)
80103d4b:	83 c6 01             	add    $0x1,%esi
80103d4e:	83 fe 10             	cmp    $0x10,%esi
80103d51:	75 dd                	jne    80103d30 <fork+0x70>
80103d53:	83 ec 0c             	sub    $0xc,%esp
80103d56:	ff 73 68             	pushl  0x68(%ebx)
80103d59:	83 c3 6c             	add    $0x6c,%ebx
80103d5c:	e8 df db ff ff       	call   80101940 <idup>
80103d61:	8b 7d e4             	mov    -0x1c(%ebp),%edi
80103d64:	83 c4 0c             	add    $0xc,%esp
80103d67:	89 47 68             	mov    %eax,0x68(%edi)
80103d6a:	8d 47 6c             	lea    0x6c(%edi),%eax
80103d6d:	6a 10                	push   $0x10
80103d6f:	53                   	push   %ebx
80103d70:	50                   	push   %eax
80103d71:	e8 0a 0c 00 00       	call   80104980 <safestrcpy>
80103d76:	8b 5f 10             	mov    0x10(%edi),%ebx
80103d79:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103d80:	e8 4b 09 00 00       	call   801046d0 <acquire>
80103d85:	c7 47 0c 03 00 00 00 	movl   $0x3,0xc(%edi)
80103d8c:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103d93:	e8 a8 09 00 00       	call   80104740 <release>
80103d98:	83 c4 10             	add    $0x10,%esp
80103d9b:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103d9e:	89 d8                	mov    %ebx,%eax
80103da0:	5b                   	pop    %ebx
80103da1:	5e                   	pop    %esi
80103da2:	5f                   	pop    %edi
80103da3:	5d                   	pop    %ebp
80103da4:	c3                   	ret    
80103da5:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80103daa:	eb ef                	jmp    80103d9b <fork+0xdb>
80103dac:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
80103daf:	83 ec 0c             	sub    $0xc,%esp
80103db2:	ff 73 08             	pushl  0x8(%ebx)
80103db5:	e8 76 e7 ff ff       	call   80102530 <kfree>
80103dba:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
80103dc1:	83 c4 10             	add    $0x10,%esp
80103dc4:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80103dcb:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80103dd0:	eb c9                	jmp    80103d9b <fork+0xdb>
80103dd2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80103de0 <scheduler>:
80103de0:	f3 0f 1e fb          	endbr32 
80103de4:	55                   	push   %ebp
80103de5:	89 e5                	mov    %esp,%ebp
80103de7:	57                   	push   %edi
80103de8:	56                   	push   %esi
80103de9:	53                   	push   %ebx
80103dea:	83 ec 0c             	sub    $0xc,%esp
80103ded:	e8 9e fc ff ff       	call   80103a90 <mycpu>
80103df2:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
80103df9:	00 00 00 
80103dfc:	89 c6                	mov    %eax,%esi
80103dfe:	8d 78 04             	lea    0x4(%eax),%edi
80103e01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103e08:	e8 f3 fa ff ff       	call   80103900 <sti>
80103e0d:	83 ec 0c             	sub    $0xc,%esp
80103e10:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
80103e15:	68 20 2d 11 80       	push   $0x80112d20
80103e1a:	e8 b1 08 00 00       	call   801046d0 <acquire>
80103e1f:	83 c4 10             	add    $0x10,%esp
80103e22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80103e28:	83 7b 0c 03          	cmpl   $0x3,0xc(%ebx)
80103e2c:	75 33                	jne    80103e61 <scheduler+0x81>
80103e2e:	83 ec 0c             	sub    $0xc,%esp
80103e31:	89 9e ac 00 00 00    	mov    %ebx,0xac(%esi)
80103e37:	53                   	push   %ebx
80103e38:	e8 03 2d 00 00       	call   80106b40 <switchuvm>
80103e3d:	58                   	pop    %eax
80103e3e:	5a                   	pop    %edx
80103e3f:	ff 73 1c             	pushl  0x1c(%ebx)
80103e42:	57                   	push   %edi
80103e43:	c7 43 0c 04 00 00 00 	movl   $0x4,0xc(%ebx)
80103e4a:	e8 94 0b 00 00       	call   801049e3 <swtch>
80103e4f:	e8 cc 2c 00 00       	call   80106b20 <switchkvm>
80103e54:	83 c4 10             	add    $0x10,%esp
80103e57:	c7 86 ac 00 00 00 00 	movl   $0x0,0xac(%esi)
80103e5e:	00 00 00 
80103e61:	83 c3 7c             	add    $0x7c,%ebx
80103e64:	81 fb 54 4c 11 80    	cmp    $0x80114c54,%ebx
80103e6a:	75 bc                	jne    80103e28 <scheduler+0x48>
80103e6c:	83 ec 0c             	sub    $0xc,%esp
80103e6f:	68 20 2d 11 80       	push   $0x80112d20
80103e74:	e8 c7 08 00 00       	call   80104740 <release>
80103e79:	83 c4 10             	add    $0x10,%esp
80103e7c:	eb 8a                	jmp    80103e08 <scheduler+0x28>
80103e7e:	66 90                	xchg   %ax,%ax

80103e80 <sched>:
80103e80:	f3 0f 1e fb          	endbr32 
80103e84:	55                   	push   %ebp
80103e85:	89 e5                	mov    %esp,%ebp
80103e87:	56                   	push   %esi
80103e88:	53                   	push   %ebx
80103e89:	e8 92 fc ff ff       	call   80103b20 <myproc>
80103e8e:	83 ec 0c             	sub    $0xc,%esp
80103e91:	68 20 2d 11 80       	push   $0x80112d20
80103e96:	89 c3                	mov    %eax,%ebx
80103e98:	e8 e3 07 00 00       	call   80104680 <holding>
80103e9d:	83 c4 10             	add    $0x10,%esp
80103ea0:	85 c0                	test   %eax,%eax
80103ea2:	74 52                	je     80103ef6 <sched+0x76>
80103ea4:	e8 e7 fb ff ff       	call   80103a90 <mycpu>
80103ea9:	83 b8 a4 00 00 00 01 	cmpl   $0x1,0xa4(%eax)
80103eb0:	75 6b                	jne    80103f1d <sched+0x9d>
80103eb2:	83 7b 0c 04          	cmpl   $0x4,0xc(%ebx)
80103eb6:	74 58                	je     80103f10 <sched+0x90>
80103eb8:	e8 33 fa ff ff       	call   801038f0 <readeflags>
80103ebd:	f6 c4 02             	test   $0x2,%ah
80103ec0:	75 41                	jne    80103f03 <sched+0x83>
80103ec2:	e8 c9 fb ff ff       	call   80103a90 <mycpu>
80103ec7:	83 c3 1c             	add    $0x1c,%ebx
80103eca:	8b b0 a8 00 00 00    	mov    0xa8(%eax),%esi
80103ed0:	e8 bb fb ff ff       	call   80103a90 <mycpu>
80103ed5:	83 ec 08             	sub    $0x8,%esp
80103ed8:	ff 70 04             	pushl  0x4(%eax)
80103edb:	53                   	push   %ebx
80103edc:	e8 02 0b 00 00       	call   801049e3 <swtch>
80103ee1:	e8 aa fb ff ff       	call   80103a90 <mycpu>
80103ee6:	83 c4 10             	add    $0x10,%esp
80103ee9:	89 b0 a8 00 00 00    	mov    %esi,0xa8(%eax)
80103eef:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103ef2:	5b                   	pop    %ebx
80103ef3:	5e                   	pop    %esi
80103ef4:	5d                   	pop    %ebp
80103ef5:	c3                   	ret    
80103ef6:	83 ec 0c             	sub    $0xc,%esp
80103ef9:	68 1b 78 10 80       	push   $0x8010781b
80103efe:	e8 dd c4 ff ff       	call   801003e0 <panic>
80103f03:	83 ec 0c             	sub    $0xc,%esp
80103f06:	68 47 78 10 80       	push   $0x80107847
80103f0b:	e8 d0 c4 ff ff       	call   801003e0 <panic>
80103f10:	83 ec 0c             	sub    $0xc,%esp
80103f13:	68 39 78 10 80       	push   $0x80107839
80103f18:	e8 c3 c4 ff ff       	call   801003e0 <panic>
80103f1d:	83 ec 0c             	sub    $0xc,%esp
80103f20:	68 2d 78 10 80       	push   $0x8010782d
80103f25:	e8 b6 c4 ff ff       	call   801003e0 <panic>
80103f2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80103f30 <exit>:
80103f30:	f3 0f 1e fb          	endbr32 
80103f34:	55                   	push   %ebp
80103f35:	89 e5                	mov    %esp,%ebp
80103f37:	57                   	push   %edi
80103f38:	56                   	push   %esi
80103f39:	53                   	push   %ebx
80103f3a:	83 ec 0c             	sub    $0xc,%esp
80103f3d:	e8 de fb ff ff       	call   80103b20 <myproc>
80103f42:	39 05 b8 a5 10 80    	cmp    %eax,0x8010a5b8
80103f48:	0f 84 bb 00 00 00    	je     80104009 <exit+0xd9>
80103f4e:	89 c3                	mov    %eax,%ebx
80103f50:	8d 70 28             	lea    0x28(%eax),%esi
80103f53:	8d 78 68             	lea    0x68(%eax),%edi
80103f56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103f5d:	8d 76 00             	lea    0x0(%esi),%esi
80103f60:	8b 06                	mov    (%esi),%eax
80103f62:	85 c0                	test   %eax,%eax
80103f64:	74 12                	je     80103f78 <exit+0x48>
80103f66:	83 ec 0c             	sub    $0xc,%esp
80103f69:	50                   	push   %eax
80103f6a:	e8 c1 cf ff ff       	call   80100f30 <fileclose>
80103f6f:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80103f75:	83 c4 10             	add    $0x10,%esp
80103f78:	83 c6 04             	add    $0x4,%esi
80103f7b:	39 fe                	cmp    %edi,%esi
80103f7d:	75 e1                	jne    80103f60 <exit+0x30>
80103f7f:	e8 3c ef ff ff       	call   80102ec0 <begin_op>
80103f84:	83 ec 0c             	sub    $0xc,%esp
80103f87:	ff 73 68             	pushl  0x68(%ebx)
80103f8a:	e8 11 db ff ff       	call   80101aa0 <iput>
80103f8f:	e8 9c ef ff ff       	call   80102f30 <end_op>
80103f94:	c7 43 68 00 00 00 00 	movl   $0x0,0x68(%ebx)
80103f9b:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103fa2:	e8 29 07 00 00       	call   801046d0 <acquire>
80103fa7:	8b 43 14             	mov    0x14(%ebx),%eax
80103faa:	e8 61 f9 ff ff       	call   80103910 <wakeup1>
80103faf:	83 c4 10             	add    $0x10,%esp
80103fb2:	b9 54 2d 11 80       	mov    $0x80112d54,%ecx
80103fb7:	eb 12                	jmp    80103fcb <exit+0x9b>
80103fb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103fc0:	83 c1 7c             	add    $0x7c,%ecx
80103fc3:	81 f9 54 4c 11 80    	cmp    $0x80114c54,%ecx
80103fc9:	74 25                	je     80103ff0 <exit+0xc0>
80103fcb:	39 59 14             	cmp    %ebx,0x14(%ecx)
80103fce:	75 f0                	jne    80103fc0 <exit+0x90>
80103fd0:	a1 b8 a5 10 80       	mov    0x8010a5b8,%eax
80103fd5:	83 79 0c 05          	cmpl   $0x5,0xc(%ecx)
80103fd9:	89 41 14             	mov    %eax,0x14(%ecx)
80103fdc:	75 e2                	jne    80103fc0 <exit+0x90>
80103fde:	e8 2d f9 ff ff       	call   80103910 <wakeup1>
80103fe3:	83 c1 7c             	add    $0x7c,%ecx
80103fe6:	81 f9 54 4c 11 80    	cmp    $0x80114c54,%ecx
80103fec:	75 dd                	jne    80103fcb <exit+0x9b>
80103fee:	66 90                	xchg   %ax,%ax
80103ff0:	c7 43 0c 05 00 00 00 	movl   $0x5,0xc(%ebx)
80103ff7:	e8 84 fe ff ff       	call   80103e80 <sched>
80103ffc:	83 ec 0c             	sub    $0xc,%esp
80103fff:	68 68 78 10 80       	push   $0x80107868
80104004:	e8 d7 c3 ff ff       	call   801003e0 <panic>
80104009:	83 ec 0c             	sub    $0xc,%esp
8010400c:	68 5b 78 10 80       	push   $0x8010785b
80104011:	e8 ca c3 ff ff       	call   801003e0 <panic>
80104016:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010401d:	8d 76 00             	lea    0x0(%esi),%esi

80104020 <yield>:
80104020:	f3 0f 1e fb          	endbr32 
80104024:	55                   	push   %ebp
80104025:	89 e5                	mov    %esp,%ebp
80104027:	83 ec 14             	sub    $0x14,%esp
8010402a:	68 20 2d 11 80       	push   $0x80112d20
8010402f:	e8 9c 06 00 00       	call   801046d0 <acquire>
80104034:	e8 e7 fa ff ff       	call   80103b20 <myproc>
80104039:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
80104040:	e8 3b fe ff ff       	call   80103e80 <sched>
80104045:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
8010404c:	e8 ef 06 00 00       	call   80104740 <release>
80104051:	83 c4 10             	add    $0x10,%esp
80104054:	c9                   	leave  
80104055:	c3                   	ret    
80104056:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010405d:	8d 76 00             	lea    0x0(%esi),%esi

80104060 <sleep>:
80104060:	f3 0f 1e fb          	endbr32 
80104064:	55                   	push   %ebp
80104065:	89 e5                	mov    %esp,%ebp
80104067:	57                   	push   %edi
80104068:	56                   	push   %esi
80104069:	53                   	push   %ebx
8010406a:	83 ec 0c             	sub    $0xc,%esp
8010406d:	8b 7d 08             	mov    0x8(%ebp),%edi
80104070:	8b 75 0c             	mov    0xc(%ebp),%esi
80104073:	e8 a8 fa ff ff       	call   80103b20 <myproc>
80104078:	85 c0                	test   %eax,%eax
8010407a:	0f 84 8b 00 00 00    	je     8010410b <sleep+0xab>
80104080:	85 f6                	test   %esi,%esi
80104082:	74 7a                	je     801040fe <sleep+0x9e>
80104084:	89 c3                	mov    %eax,%ebx
80104086:	81 fe 20 2d 11 80    	cmp    $0x80112d20,%esi
8010408c:	74 52                	je     801040e0 <sleep+0x80>
8010408e:	83 ec 0c             	sub    $0xc,%esp
80104091:	68 20 2d 11 80       	push   $0x80112d20
80104096:	e8 35 06 00 00       	call   801046d0 <acquire>
8010409b:	89 34 24             	mov    %esi,(%esp)
8010409e:	e8 9d 06 00 00       	call   80104740 <release>
801040a3:	89 7b 20             	mov    %edi,0x20(%ebx)
801040a6:	c7 43 0c 02 00 00 00 	movl   $0x2,0xc(%ebx)
801040ad:	e8 ce fd ff ff       	call   80103e80 <sched>
801040b2:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
801040b9:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
801040c0:	e8 7b 06 00 00       	call   80104740 <release>
801040c5:	89 75 08             	mov    %esi,0x8(%ebp)
801040c8:	83 c4 10             	add    $0x10,%esp
801040cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
801040ce:	5b                   	pop    %ebx
801040cf:	5e                   	pop    %esi
801040d0:	5f                   	pop    %edi
801040d1:	5d                   	pop    %ebp
801040d2:	e9 f9 05 00 00       	jmp    801046d0 <acquire>
801040d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801040de:	66 90                	xchg   %ax,%ax
801040e0:	89 78 20             	mov    %edi,0x20(%eax)
801040e3:	c7 40 0c 02 00 00 00 	movl   $0x2,0xc(%eax)
801040ea:	e8 91 fd ff ff       	call   80103e80 <sched>
801040ef:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
801040f6:	8d 65 f4             	lea    -0xc(%ebp),%esp
801040f9:	5b                   	pop    %ebx
801040fa:	5e                   	pop    %esi
801040fb:	5f                   	pop    %edi
801040fc:	5d                   	pop    %ebp
801040fd:	c3                   	ret    
801040fe:	83 ec 0c             	sub    $0xc,%esp
80104101:	68 7a 78 10 80       	push   $0x8010787a
80104106:	e8 d5 c2 ff ff       	call   801003e0 <panic>
8010410b:	83 ec 0c             	sub    $0xc,%esp
8010410e:	68 74 78 10 80       	push   $0x80107874
80104113:	e8 c8 c2 ff ff       	call   801003e0 <panic>
80104118:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010411f:	90                   	nop

80104120 <wait>:
80104120:	f3 0f 1e fb          	endbr32 
80104124:	55                   	push   %ebp
80104125:	89 e5                	mov    %esp,%ebp
80104127:	56                   	push   %esi
80104128:	53                   	push   %ebx
80104129:	e8 f2 f9 ff ff       	call   80103b20 <myproc>
8010412e:	83 ec 0c             	sub    $0xc,%esp
80104131:	68 20 2d 11 80       	push   $0x80112d20
80104136:	89 c6                	mov    %eax,%esi
80104138:	e8 93 05 00 00       	call   801046d0 <acquire>
8010413d:	83 c4 10             	add    $0x10,%esp
80104140:	31 c0                	xor    %eax,%eax
80104142:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
80104147:	eb 12                	jmp    8010415b <wait+0x3b>
80104149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104150:	83 c3 7c             	add    $0x7c,%ebx
80104153:	81 fb 54 4c 11 80    	cmp    $0x80114c54,%ebx
80104159:	74 1b                	je     80104176 <wait+0x56>
8010415b:	39 73 14             	cmp    %esi,0x14(%ebx)
8010415e:	75 f0                	jne    80104150 <wait+0x30>
80104160:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
80104164:	74 32                	je     80104198 <wait+0x78>
80104166:	83 c3 7c             	add    $0x7c,%ebx
80104169:	b8 01 00 00 00       	mov    $0x1,%eax
8010416e:	81 fb 54 4c 11 80    	cmp    $0x80114c54,%ebx
80104174:	75 e5                	jne    8010415b <wait+0x3b>
80104176:	85 c0                	test   %eax,%eax
80104178:	74 74                	je     801041ee <wait+0xce>
8010417a:	8b 46 24             	mov    0x24(%esi),%eax
8010417d:	85 c0                	test   %eax,%eax
8010417f:	75 6d                	jne    801041ee <wait+0xce>
80104181:	83 ec 08             	sub    $0x8,%esp
80104184:	68 20 2d 11 80       	push   $0x80112d20
80104189:	56                   	push   %esi
8010418a:	e8 d1 fe ff ff       	call   80104060 <sleep>
8010418f:	83 c4 10             	add    $0x10,%esp
80104192:	eb ac                	jmp    80104140 <wait+0x20>
80104194:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104198:	83 ec 0c             	sub    $0xc,%esp
8010419b:	ff 73 08             	pushl  0x8(%ebx)
8010419e:	8b 73 10             	mov    0x10(%ebx),%esi
801041a1:	e8 8a e3 ff ff       	call   80102530 <kfree>
801041a6:	5a                   	pop    %edx
801041a7:	ff 73 04             	pushl  0x4(%ebx)
801041aa:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
801041b1:	e8 ca 2d 00 00       	call   80106f80 <freevm>
801041b6:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
801041bd:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
801041c4:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
801041cb:	c6 43 6c 00          	movb   $0x0,0x6c(%ebx)
801041cf:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%ebx)
801041d6:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
801041dd:	e8 5e 05 00 00       	call   80104740 <release>
801041e2:	83 c4 10             	add    $0x10,%esp
801041e5:	8d 65 f8             	lea    -0x8(%ebp),%esp
801041e8:	89 f0                	mov    %esi,%eax
801041ea:	5b                   	pop    %ebx
801041eb:	5e                   	pop    %esi
801041ec:	5d                   	pop    %ebp
801041ed:	c3                   	ret    
801041ee:	83 ec 0c             	sub    $0xc,%esp
801041f1:	be ff ff ff ff       	mov    $0xffffffff,%esi
801041f6:	68 20 2d 11 80       	push   $0x80112d20
801041fb:	e8 40 05 00 00       	call   80104740 <release>
80104200:	83 c4 10             	add    $0x10,%esp
80104203:	eb e0                	jmp    801041e5 <wait+0xc5>
80104205:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010420c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104210 <wakeup>:
80104210:	f3 0f 1e fb          	endbr32 
80104214:	55                   	push   %ebp
80104215:	89 e5                	mov    %esp,%ebp
80104217:	53                   	push   %ebx
80104218:	83 ec 10             	sub    $0x10,%esp
8010421b:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010421e:	68 20 2d 11 80       	push   $0x80112d20
80104223:	e8 a8 04 00 00       	call   801046d0 <acquire>
80104228:	89 d8                	mov    %ebx,%eax
8010422a:	e8 e1 f6 ff ff       	call   80103910 <wakeup1>
8010422f:	c7 45 08 20 2d 11 80 	movl   $0x80112d20,0x8(%ebp)
80104236:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104239:	83 c4 10             	add    $0x10,%esp
8010423c:	c9                   	leave  
8010423d:	e9 fe 04 00 00       	jmp    80104740 <release>
80104242:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80104250 <kill>:
80104250:	f3 0f 1e fb          	endbr32 
80104254:	55                   	push   %ebp
80104255:	89 e5                	mov    %esp,%ebp
80104257:	53                   	push   %ebx
80104258:	83 ec 10             	sub    $0x10,%esp
8010425b:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010425e:	68 20 2d 11 80       	push   $0x80112d20
80104263:	e8 68 04 00 00       	call   801046d0 <acquire>
80104268:	83 c4 10             	add    $0x10,%esp
8010426b:	b8 54 2d 11 80       	mov    $0x80112d54,%eax
80104270:	eb 10                	jmp    80104282 <kill+0x32>
80104272:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104278:	83 c0 7c             	add    $0x7c,%eax
8010427b:	3d 54 4c 11 80       	cmp    $0x80114c54,%eax
80104280:	74 36                	je     801042b8 <kill+0x68>
80104282:	39 58 10             	cmp    %ebx,0x10(%eax)
80104285:	75 f1                	jne    80104278 <kill+0x28>
80104287:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
8010428b:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
80104292:	75 07                	jne    8010429b <kill+0x4b>
80104294:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
8010429b:	83 ec 0c             	sub    $0xc,%esp
8010429e:	68 20 2d 11 80       	push   $0x80112d20
801042a3:	e8 98 04 00 00       	call   80104740 <release>
801042a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801042ab:	83 c4 10             	add    $0x10,%esp
801042ae:	31 c0                	xor    %eax,%eax
801042b0:	c9                   	leave  
801042b1:	c3                   	ret    
801042b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801042b8:	83 ec 0c             	sub    $0xc,%esp
801042bb:	68 20 2d 11 80       	push   $0x80112d20
801042c0:	e8 7b 04 00 00       	call   80104740 <release>
801042c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801042c8:	83 c4 10             	add    $0x10,%esp
801042cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801042d0:	c9                   	leave  
801042d1:	c3                   	ret    
801042d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801042d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

801042e0 <procdump>:
801042e0:	f3 0f 1e fb          	endbr32 
801042e4:	55                   	push   %ebp
801042e5:	89 e5                	mov    %esp,%ebp
801042e7:	57                   	push   %edi
801042e8:	56                   	push   %esi
801042e9:	8d 75 e8             	lea    -0x18(%ebp),%esi
801042ec:	53                   	push   %ebx
801042ed:	bb c0 2d 11 80       	mov    $0x80112dc0,%ebx
801042f2:	83 ec 3c             	sub    $0x3c,%esp
801042f5:	eb 28                	jmp    8010431f <procdump+0x3f>
801042f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801042fe:	66 90                	xchg   %ax,%ax
80104300:	83 ec 0c             	sub    $0xc,%esp
80104303:	68 f7 7b 10 80       	push   $0x80107bf7
80104308:	e8 43 c4 ff ff       	call   80100750 <cprintf>
8010430d:	83 c4 10             	add    $0x10,%esp
80104310:	83 c3 7c             	add    $0x7c,%ebx
80104313:	81 fb c0 4c 11 80    	cmp    $0x80114cc0,%ebx
80104319:	0f 84 81 00 00 00    	je     801043a0 <procdump+0xc0>
8010431f:	8b 43 a0             	mov    -0x60(%ebx),%eax
80104322:	85 c0                	test   %eax,%eax
80104324:	74 ea                	je     80104310 <procdump+0x30>
80104326:	ba 8b 78 10 80       	mov    $0x8010788b,%edx
8010432b:	83 f8 05             	cmp    $0x5,%eax
8010432e:	77 11                	ja     80104341 <procdump+0x61>
80104330:	8b 14 85 ec 78 10 80 	mov    -0x7fef8714(,%eax,4),%edx
80104337:	b8 8b 78 10 80       	mov    $0x8010788b,%eax
8010433c:	85 d2                	test   %edx,%edx
8010433e:	0f 44 d0             	cmove  %eax,%edx
80104341:	53                   	push   %ebx
80104342:	52                   	push   %edx
80104343:	ff 73 a4             	pushl  -0x5c(%ebx)
80104346:	68 8f 78 10 80       	push   $0x8010788f
8010434b:	e8 00 c4 ff ff       	call   80100750 <cprintf>
80104350:	83 c4 10             	add    $0x10,%esp
80104353:	83 7b a0 02          	cmpl   $0x2,-0x60(%ebx)
80104357:	75 a7                	jne    80104300 <procdump+0x20>
80104359:	83 ec 08             	sub    $0x8,%esp
8010435c:	8d 45 c0             	lea    -0x40(%ebp),%eax
8010435f:	8d 7d c0             	lea    -0x40(%ebp),%edi
80104362:	50                   	push   %eax
80104363:	8b 43 b0             	mov    -0x50(%ebx),%eax
80104366:	8b 40 0c             	mov    0xc(%eax),%eax
80104369:	83 c0 08             	add    $0x8,%eax
8010436c:	50                   	push   %eax
8010436d:	e8 de 01 00 00       	call   80104550 <getcallerpcs>
80104372:	83 c4 10             	add    $0x10,%esp
80104375:	8d 76 00             	lea    0x0(%esi),%esi
80104378:	8b 17                	mov    (%edi),%edx
8010437a:	85 d2                	test   %edx,%edx
8010437c:	74 82                	je     80104300 <procdump+0x20>
8010437e:	83 ec 08             	sub    $0x8,%esp
80104381:	83 c7 04             	add    $0x4,%edi
80104384:	52                   	push   %edx
80104385:	68 e1 72 10 80       	push   $0x801072e1
8010438a:	e8 c1 c3 ff ff       	call   80100750 <cprintf>
8010438f:	83 c4 10             	add    $0x10,%esp
80104392:	39 fe                	cmp    %edi,%esi
80104394:	75 e2                	jne    80104378 <procdump+0x98>
80104396:	e9 65 ff ff ff       	jmp    80104300 <procdump+0x20>
8010439b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010439f:	90                   	nop
801043a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
801043a3:	5b                   	pop    %ebx
801043a4:	5e                   	pop    %esi
801043a5:	5f                   	pop    %edi
801043a6:	5d                   	pop    %ebp
801043a7:	c3                   	ret    
801043a8:	66 90                	xchg   %ax,%ax
801043aa:	66 90                	xchg   %ax,%ax
801043ac:	66 90                	xchg   %ax,%ax
801043ae:	66 90                	xchg   %ax,%ax

801043b0 <initsleeplock>:
801043b0:	f3 0f 1e fb          	endbr32 
801043b4:	55                   	push   %ebp
801043b5:	89 e5                	mov    %esp,%ebp
801043b7:	53                   	push   %ebx
801043b8:	83 ec 0c             	sub    $0xc,%esp
801043bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
801043be:	68 04 79 10 80       	push   $0x80107904
801043c3:	8d 43 04             	lea    0x4(%ebx),%eax
801043c6:	50                   	push   %eax
801043c7:	e8 64 01 00 00       	call   80104530 <initlock>
801043cc:	8b 45 0c             	mov    0xc(%ebp),%eax
801043cf:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
801043d5:	83 c4 10             	add    $0x10,%esp
801043d8:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
801043df:	89 43 38             	mov    %eax,0x38(%ebx)
801043e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801043e5:	c9                   	leave  
801043e6:	c3                   	ret    
801043e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801043ee:	66 90                	xchg   %ax,%ax

801043f0 <acquiresleep>:
801043f0:	f3 0f 1e fb          	endbr32 
801043f4:	55                   	push   %ebp
801043f5:	89 e5                	mov    %esp,%ebp
801043f7:	56                   	push   %esi
801043f8:	53                   	push   %ebx
801043f9:	8b 5d 08             	mov    0x8(%ebp),%ebx
801043fc:	8d 73 04             	lea    0x4(%ebx),%esi
801043ff:	83 ec 0c             	sub    $0xc,%esp
80104402:	56                   	push   %esi
80104403:	e8 c8 02 00 00       	call   801046d0 <acquire>
80104408:	8b 13                	mov    (%ebx),%edx
8010440a:	83 c4 10             	add    $0x10,%esp
8010440d:	85 d2                	test   %edx,%edx
8010440f:	74 1a                	je     8010442b <acquiresleep+0x3b>
80104411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104418:	83 ec 08             	sub    $0x8,%esp
8010441b:	56                   	push   %esi
8010441c:	53                   	push   %ebx
8010441d:	e8 3e fc ff ff       	call   80104060 <sleep>
80104422:	8b 03                	mov    (%ebx),%eax
80104424:	83 c4 10             	add    $0x10,%esp
80104427:	85 c0                	test   %eax,%eax
80104429:	75 ed                	jne    80104418 <acquiresleep+0x28>
8010442b:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
80104431:	e8 ea f6 ff ff       	call   80103b20 <myproc>
80104436:	8b 40 10             	mov    0x10(%eax),%eax
80104439:	89 43 3c             	mov    %eax,0x3c(%ebx)
8010443c:	89 75 08             	mov    %esi,0x8(%ebp)
8010443f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104442:	5b                   	pop    %ebx
80104443:	5e                   	pop    %esi
80104444:	5d                   	pop    %ebp
80104445:	e9 f6 02 00 00       	jmp    80104740 <release>
8010444a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80104450 <releasesleep>:
80104450:	f3 0f 1e fb          	endbr32 
80104454:	55                   	push   %ebp
80104455:	89 e5                	mov    %esp,%ebp
80104457:	56                   	push   %esi
80104458:	53                   	push   %ebx
80104459:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010445c:	8d 73 04             	lea    0x4(%ebx),%esi
8010445f:	83 ec 0c             	sub    $0xc,%esp
80104462:	56                   	push   %esi
80104463:	e8 68 02 00 00       	call   801046d0 <acquire>
80104468:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
8010446e:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
80104475:	89 1c 24             	mov    %ebx,(%esp)
80104478:	e8 93 fd ff ff       	call   80104210 <wakeup>
8010447d:	89 75 08             	mov    %esi,0x8(%ebp)
80104480:	83 c4 10             	add    $0x10,%esp
80104483:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104486:	5b                   	pop    %ebx
80104487:	5e                   	pop    %esi
80104488:	5d                   	pop    %ebp
80104489:	e9 b2 02 00 00       	jmp    80104740 <release>
8010448e:	66 90                	xchg   %ax,%ax

80104490 <holdingsleep>:
80104490:	f3 0f 1e fb          	endbr32 
80104494:	55                   	push   %ebp
80104495:	89 e5                	mov    %esp,%ebp
80104497:	57                   	push   %edi
80104498:	31 ff                	xor    %edi,%edi
8010449a:	56                   	push   %esi
8010449b:	53                   	push   %ebx
8010449c:	83 ec 18             	sub    $0x18,%esp
8010449f:	8b 5d 08             	mov    0x8(%ebp),%ebx
801044a2:	8d 73 04             	lea    0x4(%ebx),%esi
801044a5:	56                   	push   %esi
801044a6:	e8 25 02 00 00       	call   801046d0 <acquire>
801044ab:	8b 03                	mov    (%ebx),%eax
801044ad:	83 c4 10             	add    $0x10,%esp
801044b0:	85 c0                	test   %eax,%eax
801044b2:	75 1c                	jne    801044d0 <holdingsleep+0x40>
801044b4:	83 ec 0c             	sub    $0xc,%esp
801044b7:	56                   	push   %esi
801044b8:	e8 83 02 00 00       	call   80104740 <release>
801044bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
801044c0:	89 f8                	mov    %edi,%eax
801044c2:	5b                   	pop    %ebx
801044c3:	5e                   	pop    %esi
801044c4:	5f                   	pop    %edi
801044c5:	5d                   	pop    %ebp
801044c6:	c3                   	ret    
801044c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801044ce:	66 90                	xchg   %ax,%ax
801044d0:	8b 5b 3c             	mov    0x3c(%ebx),%ebx
801044d3:	e8 48 f6 ff ff       	call   80103b20 <myproc>
801044d8:	39 58 10             	cmp    %ebx,0x10(%eax)
801044db:	0f 94 c0             	sete   %al
801044de:	0f b6 c0             	movzbl %al,%eax
801044e1:	89 c7                	mov    %eax,%edi
801044e3:	eb cf                	jmp    801044b4 <holdingsleep+0x24>
801044e5:	66 90                	xchg   %ax,%ax
801044e7:	66 90                	xchg   %ax,%ax
801044e9:	66 90                	xchg   %ax,%ax
801044eb:	66 90                	xchg   %ax,%ax
801044ed:	66 90                	xchg   %ax,%ax
801044ef:	90                   	nop

801044f0 <readeflags>:
801044f0:	9c                   	pushf  
801044f1:	58                   	pop    %eax
801044f2:	c3                   	ret    
801044f3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801044fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80104500 <cli>:
80104500:	fa                   	cli    
80104501:	c3                   	ret    
80104502:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80104510 <sti>:
80104510:	fb                   	sti    
80104511:	c3                   	ret    
80104512:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80104520 <xchg.constprop.0>:
80104520:	89 c2                	mov    %eax,%edx
80104522:	b8 01 00 00 00       	mov    $0x1,%eax
80104527:	f0 87 02             	lock xchg %eax,(%edx)
8010452a:	c3                   	ret    
8010452b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010452f:	90                   	nop

80104530 <initlock>:
80104530:	f3 0f 1e fb          	endbr32 
80104534:	55                   	push   %ebp
80104535:	89 e5                	mov    %esp,%ebp
80104537:	8b 45 08             	mov    0x8(%ebp),%eax
8010453a:	8b 55 0c             	mov    0xc(%ebp),%edx
8010453d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
80104543:	89 50 04             	mov    %edx,0x4(%eax)
80104546:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
8010454d:	5d                   	pop    %ebp
8010454e:	c3                   	ret    
8010454f:	90                   	nop

80104550 <getcallerpcs>:
80104550:	f3 0f 1e fb          	endbr32 
80104554:	55                   	push   %ebp
80104555:	31 d2                	xor    %edx,%edx
80104557:	89 e5                	mov    %esp,%ebp
80104559:	53                   	push   %ebx
8010455a:	8b 45 08             	mov    0x8(%ebp),%eax
8010455d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80104560:	83 e8 08             	sub    $0x8,%eax
80104563:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104567:	90                   	nop
80104568:	8d 98 00 00 00 80    	lea    -0x80000000(%eax),%ebx
8010456e:	81 fb fe ff ff 7f    	cmp    $0x7ffffffe,%ebx
80104574:	77 1a                	ja     80104590 <getcallerpcs+0x40>
80104576:	8b 58 04             	mov    0x4(%eax),%ebx
80104579:	89 1c 91             	mov    %ebx,(%ecx,%edx,4)
8010457c:	83 c2 01             	add    $0x1,%edx
8010457f:	8b 00                	mov    (%eax),%eax
80104581:	83 fa 0a             	cmp    $0xa,%edx
80104584:	75 e2                	jne    80104568 <getcallerpcs+0x18>
80104586:	5b                   	pop    %ebx
80104587:	5d                   	pop    %ebp
80104588:	c3                   	ret    
80104589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104590:	8d 04 91             	lea    (%ecx,%edx,4),%eax
80104593:	8d 51 28             	lea    0x28(%ecx),%edx
80104596:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010459d:	8d 76 00             	lea    0x0(%esi),%esi
801045a0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
801045a6:	83 c0 04             	add    $0x4,%eax
801045a9:	39 d0                	cmp    %edx,%eax
801045ab:	75 f3                	jne    801045a0 <getcallerpcs+0x50>
801045ad:	5b                   	pop    %ebx
801045ae:	5d                   	pop    %ebp
801045af:	c3                   	ret    

801045b0 <pushcli>:
801045b0:	f3 0f 1e fb          	endbr32 
801045b4:	55                   	push   %ebp
801045b5:	89 e5                	mov    %esp,%ebp
801045b7:	53                   	push   %ebx
801045b8:	83 ec 04             	sub    $0x4,%esp
801045bb:	e8 30 ff ff ff       	call   801044f0 <readeflags>
801045c0:	89 c3                	mov    %eax,%ebx
801045c2:	e8 39 ff ff ff       	call   80104500 <cli>
801045c7:	e8 c4 f4 ff ff       	call   80103a90 <mycpu>
801045cc:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
801045d2:	85 c0                	test   %eax,%eax
801045d4:	74 1a                	je     801045f0 <pushcli+0x40>
801045d6:	e8 b5 f4 ff ff       	call   80103a90 <mycpu>
801045db:	83 80 a4 00 00 00 01 	addl   $0x1,0xa4(%eax)
801045e2:	83 c4 04             	add    $0x4,%esp
801045e5:	5b                   	pop    %ebx
801045e6:	5d                   	pop    %ebp
801045e7:	c3                   	ret    
801045e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801045ef:	90                   	nop
801045f0:	e8 9b f4 ff ff       	call   80103a90 <mycpu>
801045f5:	89 c2                	mov    %eax,%edx
801045f7:	89 d8                	mov    %ebx,%eax
801045f9:	25 00 02 00 00       	and    $0x200,%eax
801045fe:	89 82 a8 00 00 00    	mov    %eax,0xa8(%edx)
80104604:	eb d0                	jmp    801045d6 <pushcli+0x26>
80104606:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010460d:	8d 76 00             	lea    0x0(%esi),%esi

80104610 <popcli>:
80104610:	f3 0f 1e fb          	endbr32 
80104614:	55                   	push   %ebp
80104615:	89 e5                	mov    %esp,%ebp
80104617:	83 ec 08             	sub    $0x8,%esp
8010461a:	e8 d1 fe ff ff       	call   801044f0 <readeflags>
8010461f:	f6 c4 02             	test   $0x2,%ah
80104622:	75 39                	jne    8010465d <popcli+0x4d>
80104624:	e8 67 f4 ff ff       	call   80103a90 <mycpu>
80104629:	83 a8 a4 00 00 00 01 	subl   $0x1,0xa4(%eax)
80104630:	78 38                	js     8010466a <popcli+0x5a>
80104632:	e8 59 f4 ff ff       	call   80103a90 <mycpu>
80104637:	8b 90 a4 00 00 00    	mov    0xa4(%eax),%edx
8010463d:	85 d2                	test   %edx,%edx
8010463f:	74 07                	je     80104648 <popcli+0x38>
80104641:	c9                   	leave  
80104642:	c3                   	ret    
80104643:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104647:	90                   	nop
80104648:	e8 43 f4 ff ff       	call   80103a90 <mycpu>
8010464d:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
80104653:	85 c0                	test   %eax,%eax
80104655:	74 ea                	je     80104641 <popcli+0x31>
80104657:	c9                   	leave  
80104658:	e9 b3 fe ff ff       	jmp    80104510 <sti>
8010465d:	83 ec 0c             	sub    $0xc,%esp
80104660:	68 0f 79 10 80       	push   $0x8010790f
80104665:	e8 76 bd ff ff       	call   801003e0 <panic>
8010466a:	83 ec 0c             	sub    $0xc,%esp
8010466d:	68 26 79 10 80       	push   $0x80107926
80104672:	e8 69 bd ff ff       	call   801003e0 <panic>
80104677:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010467e:	66 90                	xchg   %ax,%ax

80104680 <holding>:
80104680:	f3 0f 1e fb          	endbr32 
80104684:	55                   	push   %ebp
80104685:	89 e5                	mov    %esp,%ebp
80104687:	56                   	push   %esi
80104688:	53                   	push   %ebx
80104689:	8b 75 08             	mov    0x8(%ebp),%esi
8010468c:	31 db                	xor    %ebx,%ebx
8010468e:	e8 1d ff ff ff       	call   801045b0 <pushcli>
80104693:	8b 06                	mov    (%esi),%eax
80104695:	85 c0                	test   %eax,%eax
80104697:	75 0f                	jne    801046a8 <holding+0x28>
80104699:	e8 72 ff ff ff       	call   80104610 <popcli>
8010469e:	89 d8                	mov    %ebx,%eax
801046a0:	5b                   	pop    %ebx
801046a1:	5e                   	pop    %esi
801046a2:	5d                   	pop    %ebp
801046a3:	c3                   	ret    
801046a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801046a8:	8b 5e 08             	mov    0x8(%esi),%ebx
801046ab:	e8 e0 f3 ff ff       	call   80103a90 <mycpu>
801046b0:	39 c3                	cmp    %eax,%ebx
801046b2:	0f 94 c3             	sete   %bl
801046b5:	e8 56 ff ff ff       	call   80104610 <popcli>
801046ba:	0f b6 db             	movzbl %bl,%ebx
801046bd:	89 d8                	mov    %ebx,%eax
801046bf:	5b                   	pop    %ebx
801046c0:	5e                   	pop    %esi
801046c1:	5d                   	pop    %ebp
801046c2:	c3                   	ret    
801046c3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801046ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

801046d0 <acquire>:
801046d0:	f3 0f 1e fb          	endbr32 
801046d4:	55                   	push   %ebp
801046d5:	89 e5                	mov    %esp,%ebp
801046d7:	53                   	push   %ebx
801046d8:	83 ec 04             	sub    $0x4,%esp
801046db:	e8 d0 fe ff ff       	call   801045b0 <pushcli>
801046e0:	83 ec 0c             	sub    $0xc,%esp
801046e3:	ff 75 08             	pushl  0x8(%ebp)
801046e6:	e8 95 ff ff ff       	call   80104680 <holding>
801046eb:	83 c4 10             	add    $0x10,%esp
801046ee:	85 c0                	test   %eax,%eax
801046f0:	75 3d                	jne    8010472f <acquire+0x5f>
801046f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801046f8:	8b 45 08             	mov    0x8(%ebp),%eax
801046fb:	e8 20 fe ff ff       	call   80104520 <xchg.constprop.0>
80104700:	85 c0                	test   %eax,%eax
80104702:	75 f4                	jne    801046f8 <acquire+0x28>
80104704:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
80104709:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010470c:	e8 7f f3 ff ff       	call   80103a90 <mycpu>
80104711:	83 ec 08             	sub    $0x8,%esp
80104714:	89 43 08             	mov    %eax,0x8(%ebx)
80104717:	8b 45 08             	mov    0x8(%ebp),%eax
8010471a:	83 c0 0c             	add    $0xc,%eax
8010471d:	50                   	push   %eax
8010471e:	8d 45 08             	lea    0x8(%ebp),%eax
80104721:	50                   	push   %eax
80104722:	e8 29 fe ff ff       	call   80104550 <getcallerpcs>
80104727:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010472a:	83 c4 10             	add    $0x10,%esp
8010472d:	c9                   	leave  
8010472e:	c3                   	ret    
8010472f:	83 ec 0c             	sub    $0xc,%esp
80104732:	68 2d 79 10 80       	push   $0x8010792d
80104737:	e8 a4 bc ff ff       	call   801003e0 <panic>
8010473c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104740 <release>:
80104740:	f3 0f 1e fb          	endbr32 
80104744:	55                   	push   %ebp
80104745:	89 e5                	mov    %esp,%ebp
80104747:	53                   	push   %ebx
80104748:	83 ec 10             	sub    $0x10,%esp
8010474b:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010474e:	53                   	push   %ebx
8010474f:	e8 2c ff ff ff       	call   80104680 <holding>
80104754:	83 c4 10             	add    $0x10,%esp
80104757:	85 c0                	test   %eax,%eax
80104759:	74 22                	je     8010477d <release+0x3d>
8010475b:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80104762:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
80104769:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
8010476e:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80104774:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104777:	c9                   	leave  
80104778:	e9 93 fe ff ff       	jmp    80104610 <popcli>
8010477d:	83 ec 0c             	sub    $0xc,%esp
80104780:	68 35 79 10 80       	push   $0x80107935
80104785:	e8 56 bc ff ff       	call   801003e0 <panic>
8010478a:	66 90                	xchg   %ax,%ax
8010478c:	66 90                	xchg   %ax,%ax
8010478e:	66 90                	xchg   %ax,%ax

80104790 <stosb>:
80104790:	55                   	push   %ebp
80104791:	89 e5                	mov    %esp,%ebp
80104793:	57                   	push   %edi
80104794:	89 c7                	mov    %eax,%edi
80104796:	89 d0                	mov    %edx,%eax
80104798:	fc                   	cld    
80104799:	f3 aa                	rep stos %al,%es:(%edi)
8010479b:	5f                   	pop    %edi
8010479c:	5d                   	pop    %ebp
8010479d:	c3                   	ret    
8010479e:	66 90                	xchg   %ax,%ax

801047a0 <stosl>:
801047a0:	55                   	push   %ebp
801047a1:	89 e5                	mov    %esp,%ebp
801047a3:	57                   	push   %edi
801047a4:	89 c7                	mov    %eax,%edi
801047a6:	89 d0                	mov    %edx,%eax
801047a8:	fc                   	cld    
801047a9:	f3 ab                	rep stos %eax,%es:(%edi)
801047ab:	5f                   	pop    %edi
801047ac:	5d                   	pop    %ebp
801047ad:	c3                   	ret    
801047ae:	66 90                	xchg   %ax,%ax

801047b0 <memset>:
801047b0:	f3 0f 1e fb          	endbr32 
801047b4:	55                   	push   %ebp
801047b5:	89 e5                	mov    %esp,%ebp
801047b7:	56                   	push   %esi
801047b8:	8b 4d 10             	mov    0x10(%ebp),%ecx
801047bb:	8b 55 0c             	mov    0xc(%ebp),%edx
801047be:	53                   	push   %ebx
801047bf:	8b 5d 08             	mov    0x8(%ebp),%ebx
801047c2:	89 d8                	mov    %ebx,%eax
801047c4:	09 c8                	or     %ecx,%eax
801047c6:	a8 03                	test   $0x3,%al
801047c8:	74 16                	je     801047e0 <memset+0x30>
801047ca:	89 d8                	mov    %ebx,%eax
801047cc:	e8 bf ff ff ff       	call   80104790 <stosb>
801047d1:	89 d8                	mov    %ebx,%eax
801047d3:	5b                   	pop    %ebx
801047d4:	5e                   	pop    %esi
801047d5:	5d                   	pop    %ebp
801047d6:	c3                   	ret    
801047d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801047de:	66 90                	xchg   %ax,%ax
801047e0:	0f b6 c2             	movzbl %dl,%eax
801047e3:	c1 e2 18             	shl    $0x18,%edx
801047e6:	89 c6                	mov    %eax,%esi
801047e8:	c1 e9 02             	shr    $0x2,%ecx
801047eb:	c1 e6 10             	shl    $0x10,%esi
801047ee:	09 f2                	or     %esi,%edx
801047f0:	09 c2                	or     %eax,%edx
801047f2:	c1 e0 08             	shl    $0x8,%eax
801047f5:	09 c2                	or     %eax,%edx
801047f7:	89 d8                	mov    %ebx,%eax
801047f9:	e8 a2 ff ff ff       	call   801047a0 <stosl>
801047fe:	89 d8                	mov    %ebx,%eax
80104800:	5b                   	pop    %ebx
80104801:	5e                   	pop    %esi
80104802:	5d                   	pop    %ebp
80104803:	c3                   	ret    
80104804:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010480b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010480f:	90                   	nop

80104810 <memcmp>:
80104810:	f3 0f 1e fb          	endbr32 
80104814:	55                   	push   %ebp
80104815:	89 e5                	mov    %esp,%ebp
80104817:	56                   	push   %esi
80104818:	8b 75 10             	mov    0x10(%ebp),%esi
8010481b:	8b 55 08             	mov    0x8(%ebp),%edx
8010481e:	53                   	push   %ebx
8010481f:	8b 45 0c             	mov    0xc(%ebp),%eax
80104822:	85 f6                	test   %esi,%esi
80104824:	74 2a                	je     80104850 <memcmp+0x40>
80104826:	01 c6                	add    %eax,%esi
80104828:	eb 10                	jmp    8010483a <memcmp+0x2a>
8010482a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104830:	83 c0 01             	add    $0x1,%eax
80104833:	83 c2 01             	add    $0x1,%edx
80104836:	39 f0                	cmp    %esi,%eax
80104838:	74 16                	je     80104850 <memcmp+0x40>
8010483a:	0f b6 0a             	movzbl (%edx),%ecx
8010483d:	0f b6 18             	movzbl (%eax),%ebx
80104840:	38 d9                	cmp    %bl,%cl
80104842:	74 ec                	je     80104830 <memcmp+0x20>
80104844:	0f b6 c1             	movzbl %cl,%eax
80104847:	29 d8                	sub    %ebx,%eax
80104849:	5b                   	pop    %ebx
8010484a:	5e                   	pop    %esi
8010484b:	5d                   	pop    %ebp
8010484c:	c3                   	ret    
8010484d:	8d 76 00             	lea    0x0(%esi),%esi
80104850:	5b                   	pop    %ebx
80104851:	31 c0                	xor    %eax,%eax
80104853:	5e                   	pop    %esi
80104854:	5d                   	pop    %ebp
80104855:	c3                   	ret    
80104856:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010485d:	8d 76 00             	lea    0x0(%esi),%esi

80104860 <memmove>:
80104860:	f3 0f 1e fb          	endbr32 
80104864:	55                   	push   %ebp
80104865:	89 e5                	mov    %esp,%ebp
80104867:	57                   	push   %edi
80104868:	8b 55 08             	mov    0x8(%ebp),%edx
8010486b:	8b 4d 10             	mov    0x10(%ebp),%ecx
8010486e:	56                   	push   %esi
8010486f:	8b 75 0c             	mov    0xc(%ebp),%esi
80104872:	39 d6                	cmp    %edx,%esi
80104874:	73 2a                	jae    801048a0 <memmove+0x40>
80104876:	8d 3c 0e             	lea    (%esi,%ecx,1),%edi
80104879:	39 fa                	cmp    %edi,%edx
8010487b:	73 23                	jae    801048a0 <memmove+0x40>
8010487d:	8d 41 ff             	lea    -0x1(%ecx),%eax
80104880:	85 c9                	test   %ecx,%ecx
80104882:	74 13                	je     80104897 <memmove+0x37>
80104884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104888:	0f b6 0c 06          	movzbl (%esi,%eax,1),%ecx
8010488c:	88 0c 02             	mov    %cl,(%edx,%eax,1)
8010488f:	83 e8 01             	sub    $0x1,%eax
80104892:	83 f8 ff             	cmp    $0xffffffff,%eax
80104895:	75 f1                	jne    80104888 <memmove+0x28>
80104897:	5e                   	pop    %esi
80104898:	89 d0                	mov    %edx,%eax
8010489a:	5f                   	pop    %edi
8010489b:	5d                   	pop    %ebp
8010489c:	c3                   	ret    
8010489d:	8d 76 00             	lea    0x0(%esi),%esi
801048a0:	8d 04 0e             	lea    (%esi,%ecx,1),%eax
801048a3:	89 d7                	mov    %edx,%edi
801048a5:	85 c9                	test   %ecx,%ecx
801048a7:	74 ee                	je     80104897 <memmove+0x37>
801048a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801048b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
801048b1:	39 f0                	cmp    %esi,%eax
801048b3:	75 fb                	jne    801048b0 <memmove+0x50>
801048b5:	5e                   	pop    %esi
801048b6:	89 d0                	mov    %edx,%eax
801048b8:	5f                   	pop    %edi
801048b9:	5d                   	pop    %ebp
801048ba:	c3                   	ret    
801048bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801048bf:	90                   	nop

801048c0 <memcpy>:
801048c0:	f3 0f 1e fb          	endbr32 
801048c4:	eb 9a                	jmp    80104860 <memmove>
801048c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801048cd:	8d 76 00             	lea    0x0(%esi),%esi

801048d0 <strncmp>:
801048d0:	f3 0f 1e fb          	endbr32 
801048d4:	55                   	push   %ebp
801048d5:	89 e5                	mov    %esp,%ebp
801048d7:	56                   	push   %esi
801048d8:	8b 75 10             	mov    0x10(%ebp),%esi
801048db:	8b 4d 08             	mov    0x8(%ebp),%ecx
801048de:	53                   	push   %ebx
801048df:	8b 45 0c             	mov    0xc(%ebp),%eax
801048e2:	85 f6                	test   %esi,%esi
801048e4:	74 32                	je     80104918 <strncmp+0x48>
801048e6:	01 c6                	add    %eax,%esi
801048e8:	eb 14                	jmp    801048fe <strncmp+0x2e>
801048ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801048f0:	38 da                	cmp    %bl,%dl
801048f2:	75 14                	jne    80104908 <strncmp+0x38>
801048f4:	83 c0 01             	add    $0x1,%eax
801048f7:	83 c1 01             	add    $0x1,%ecx
801048fa:	39 f0                	cmp    %esi,%eax
801048fc:	74 1a                	je     80104918 <strncmp+0x48>
801048fe:	0f b6 11             	movzbl (%ecx),%edx
80104901:	0f b6 18             	movzbl (%eax),%ebx
80104904:	84 d2                	test   %dl,%dl
80104906:	75 e8                	jne    801048f0 <strncmp+0x20>
80104908:	0f b6 c2             	movzbl %dl,%eax
8010490b:	29 d8                	sub    %ebx,%eax
8010490d:	5b                   	pop    %ebx
8010490e:	5e                   	pop    %esi
8010490f:	5d                   	pop    %ebp
80104910:	c3                   	ret    
80104911:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104918:	5b                   	pop    %ebx
80104919:	31 c0                	xor    %eax,%eax
8010491b:	5e                   	pop    %esi
8010491c:	5d                   	pop    %ebp
8010491d:	c3                   	ret    
8010491e:	66 90                	xchg   %ax,%ax

80104920 <strncpy>:
80104920:	f3 0f 1e fb          	endbr32 
80104924:	55                   	push   %ebp
80104925:	89 e5                	mov    %esp,%ebp
80104927:	57                   	push   %edi
80104928:	56                   	push   %esi
80104929:	8b 75 08             	mov    0x8(%ebp),%esi
8010492c:	53                   	push   %ebx
8010492d:	8b 45 10             	mov    0x10(%ebp),%eax
80104930:	89 f2                	mov    %esi,%edx
80104932:	eb 1b                	jmp    8010494f <strncpy+0x2f>
80104934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104938:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
8010493c:	8b 7d 0c             	mov    0xc(%ebp),%edi
8010493f:	83 c2 01             	add    $0x1,%edx
80104942:	0f b6 7f ff          	movzbl -0x1(%edi),%edi
80104946:	89 f9                	mov    %edi,%ecx
80104948:	88 4a ff             	mov    %cl,-0x1(%edx)
8010494b:	84 c9                	test   %cl,%cl
8010494d:	74 09                	je     80104958 <strncpy+0x38>
8010494f:	89 c3                	mov    %eax,%ebx
80104951:	83 e8 01             	sub    $0x1,%eax
80104954:	85 db                	test   %ebx,%ebx
80104956:	7f e0                	jg     80104938 <strncpy+0x18>
80104958:	89 d1                	mov    %edx,%ecx
8010495a:	85 c0                	test   %eax,%eax
8010495c:	7e 15                	jle    80104973 <strncpy+0x53>
8010495e:	66 90                	xchg   %ax,%ax
80104960:	83 c1 01             	add    $0x1,%ecx
80104963:	c6 41 ff 00          	movb   $0x0,-0x1(%ecx)
80104967:	89 c8                	mov    %ecx,%eax
80104969:	f7 d0                	not    %eax
8010496b:	01 d0                	add    %edx,%eax
8010496d:	01 d8                	add    %ebx,%eax
8010496f:	85 c0                	test   %eax,%eax
80104971:	7f ed                	jg     80104960 <strncpy+0x40>
80104973:	5b                   	pop    %ebx
80104974:	89 f0                	mov    %esi,%eax
80104976:	5e                   	pop    %esi
80104977:	5f                   	pop    %edi
80104978:	5d                   	pop    %ebp
80104979:	c3                   	ret    
8010497a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80104980 <safestrcpy>:
80104980:	f3 0f 1e fb          	endbr32 
80104984:	55                   	push   %ebp
80104985:	89 e5                	mov    %esp,%ebp
80104987:	56                   	push   %esi
80104988:	8b 55 10             	mov    0x10(%ebp),%edx
8010498b:	8b 75 08             	mov    0x8(%ebp),%esi
8010498e:	53                   	push   %ebx
8010498f:	8b 45 0c             	mov    0xc(%ebp),%eax
80104992:	85 d2                	test   %edx,%edx
80104994:	7e 21                	jle    801049b7 <safestrcpy+0x37>
80104996:	8d 5c 10 ff          	lea    -0x1(%eax,%edx,1),%ebx
8010499a:	89 f2                	mov    %esi,%edx
8010499c:	eb 12                	jmp    801049b0 <safestrcpy+0x30>
8010499e:	66 90                	xchg   %ax,%ax
801049a0:	0f b6 08             	movzbl (%eax),%ecx
801049a3:	83 c0 01             	add    $0x1,%eax
801049a6:	83 c2 01             	add    $0x1,%edx
801049a9:	88 4a ff             	mov    %cl,-0x1(%edx)
801049ac:	84 c9                	test   %cl,%cl
801049ae:	74 04                	je     801049b4 <safestrcpy+0x34>
801049b0:	39 d8                	cmp    %ebx,%eax
801049b2:	75 ec                	jne    801049a0 <safestrcpy+0x20>
801049b4:	c6 02 00             	movb   $0x0,(%edx)
801049b7:	89 f0                	mov    %esi,%eax
801049b9:	5b                   	pop    %ebx
801049ba:	5e                   	pop    %esi
801049bb:	5d                   	pop    %ebp
801049bc:	c3                   	ret    
801049bd:	8d 76 00             	lea    0x0(%esi),%esi

801049c0 <strlen>:
801049c0:	f3 0f 1e fb          	endbr32 
801049c4:	55                   	push   %ebp
801049c5:	31 c0                	xor    %eax,%eax
801049c7:	89 e5                	mov    %esp,%ebp
801049c9:	8b 55 08             	mov    0x8(%ebp),%edx
801049cc:	80 3a 00             	cmpb   $0x0,(%edx)
801049cf:	74 10                	je     801049e1 <strlen+0x21>
801049d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801049d8:	83 c0 01             	add    $0x1,%eax
801049db:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
801049df:	75 f7                	jne    801049d8 <strlen+0x18>
801049e1:	5d                   	pop    %ebp
801049e2:	c3                   	ret    

801049e3 <swtch>:
801049e3:	8b 44 24 04          	mov    0x4(%esp),%eax
801049e7:	8b 54 24 08          	mov    0x8(%esp),%edx
801049eb:	55                   	push   %ebp
801049ec:	53                   	push   %ebx
801049ed:	56                   	push   %esi
801049ee:	57                   	push   %edi
801049ef:	89 20                	mov    %esp,(%eax)
801049f1:	89 d4                	mov    %edx,%esp
801049f3:	5f                   	pop    %edi
801049f4:	5e                   	pop    %esi
801049f5:	5b                   	pop    %ebx
801049f6:	5d                   	pop    %ebp
801049f7:	c3                   	ret    
801049f8:	66 90                	xchg   %ax,%ax
801049fa:	66 90                	xchg   %ax,%ax
801049fc:	66 90                	xchg   %ax,%ax
801049fe:	66 90                	xchg   %ax,%ax

80104a00 <fetchint>:
80104a00:	f3 0f 1e fb          	endbr32 
80104a04:	55                   	push   %ebp
80104a05:	89 e5                	mov    %esp,%ebp
80104a07:	53                   	push   %ebx
80104a08:	83 ec 04             	sub    $0x4,%esp
80104a0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
80104a0e:	e8 0d f1 ff ff       	call   80103b20 <myproc>
80104a13:	8b 00                	mov    (%eax),%eax
80104a15:	39 d8                	cmp    %ebx,%eax
80104a17:	76 17                	jbe    80104a30 <fetchint+0x30>
80104a19:	8d 53 04             	lea    0x4(%ebx),%edx
80104a1c:	39 d0                	cmp    %edx,%eax
80104a1e:	72 10                	jb     80104a30 <fetchint+0x30>
80104a20:	8b 45 0c             	mov    0xc(%ebp),%eax
80104a23:	8b 13                	mov    (%ebx),%edx
80104a25:	89 10                	mov    %edx,(%eax)
80104a27:	31 c0                	xor    %eax,%eax
80104a29:	83 c4 04             	add    $0x4,%esp
80104a2c:	5b                   	pop    %ebx
80104a2d:	5d                   	pop    %ebp
80104a2e:	c3                   	ret    
80104a2f:	90                   	nop
80104a30:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a35:	eb f2                	jmp    80104a29 <fetchint+0x29>
80104a37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104a3e:	66 90                	xchg   %ax,%ax

80104a40 <fetchstr>:
80104a40:	f3 0f 1e fb          	endbr32 
80104a44:	55                   	push   %ebp
80104a45:	89 e5                	mov    %esp,%ebp
80104a47:	53                   	push   %ebx
80104a48:	83 ec 04             	sub    $0x4,%esp
80104a4b:	8b 5d 08             	mov    0x8(%ebp),%ebx
80104a4e:	e8 cd f0 ff ff       	call   80103b20 <myproc>
80104a53:	39 18                	cmp    %ebx,(%eax)
80104a55:	76 31                	jbe    80104a88 <fetchstr+0x48>
80104a57:	8b 55 0c             	mov    0xc(%ebp),%edx
80104a5a:	89 1a                	mov    %ebx,(%edx)
80104a5c:	8b 10                	mov    (%eax),%edx
80104a5e:	39 d3                	cmp    %edx,%ebx
80104a60:	73 26                	jae    80104a88 <fetchstr+0x48>
80104a62:	89 d8                	mov    %ebx,%eax
80104a64:	eb 11                	jmp    80104a77 <fetchstr+0x37>
80104a66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104a6d:	8d 76 00             	lea    0x0(%esi),%esi
80104a70:	83 c0 01             	add    $0x1,%eax
80104a73:	39 c2                	cmp    %eax,%edx
80104a75:	76 11                	jbe    80104a88 <fetchstr+0x48>
80104a77:	80 38 00             	cmpb   $0x0,(%eax)
80104a7a:	75 f4                	jne    80104a70 <fetchstr+0x30>
80104a7c:	83 c4 04             	add    $0x4,%esp
80104a7f:	29 d8                	sub    %ebx,%eax
80104a81:	5b                   	pop    %ebx
80104a82:	5d                   	pop    %ebp
80104a83:	c3                   	ret    
80104a84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104a88:	83 c4 04             	add    $0x4,%esp
80104a8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a90:	5b                   	pop    %ebx
80104a91:	5d                   	pop    %ebp
80104a92:	c3                   	ret    
80104a93:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80104aa0 <argint>:
80104aa0:	f3 0f 1e fb          	endbr32 
80104aa4:	55                   	push   %ebp
80104aa5:	89 e5                	mov    %esp,%ebp
80104aa7:	56                   	push   %esi
80104aa8:	53                   	push   %ebx
80104aa9:	8b 75 0c             	mov    0xc(%ebp),%esi
80104aac:	8b 5d 08             	mov    0x8(%ebp),%ebx
80104aaf:	e8 6c f0 ff ff       	call   80103b20 <myproc>
80104ab4:	89 75 0c             	mov    %esi,0xc(%ebp)
80104ab7:	8b 40 18             	mov    0x18(%eax),%eax
80104aba:	8b 40 44             	mov    0x44(%eax),%eax
80104abd:	8d 44 98 04          	lea    0x4(%eax,%ebx,4),%eax
80104ac1:	5b                   	pop    %ebx
80104ac2:	5e                   	pop    %esi
80104ac3:	89 45 08             	mov    %eax,0x8(%ebp)
80104ac6:	5d                   	pop    %ebp
80104ac7:	e9 34 ff ff ff       	jmp    80104a00 <fetchint>
80104acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104ad0 <argptr>:
80104ad0:	f3 0f 1e fb          	endbr32 
80104ad4:	55                   	push   %ebp
80104ad5:	89 e5                	mov    %esp,%ebp
80104ad7:	56                   	push   %esi
80104ad8:	53                   	push   %ebx
80104ad9:	83 ec 10             	sub    $0x10,%esp
80104adc:	8b 5d 10             	mov    0x10(%ebp),%ebx
80104adf:	e8 3c f0 ff ff       	call   80103b20 <myproc>
80104ae4:	83 ec 08             	sub    $0x8,%esp
80104ae7:	89 c6                	mov    %eax,%esi
80104ae9:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104aec:	50                   	push   %eax
80104aed:	ff 75 08             	pushl  0x8(%ebp)
80104af0:	e8 ab ff ff ff       	call   80104aa0 <argint>
80104af5:	83 c4 10             	add    $0x10,%esp
80104af8:	85 c0                	test   %eax,%eax
80104afa:	78 24                	js     80104b20 <argptr+0x50>
80104afc:	85 db                	test   %ebx,%ebx
80104afe:	78 20                	js     80104b20 <argptr+0x50>
80104b00:	8b 16                	mov    (%esi),%edx
80104b02:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104b05:	39 c2                	cmp    %eax,%edx
80104b07:	76 17                	jbe    80104b20 <argptr+0x50>
80104b09:	01 c3                	add    %eax,%ebx
80104b0b:	39 da                	cmp    %ebx,%edx
80104b0d:	72 11                	jb     80104b20 <argptr+0x50>
80104b0f:	8b 55 0c             	mov    0xc(%ebp),%edx
80104b12:	89 02                	mov    %eax,(%edx)
80104b14:	31 c0                	xor    %eax,%eax
80104b16:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104b19:	5b                   	pop    %ebx
80104b1a:	5e                   	pop    %esi
80104b1b:	5d                   	pop    %ebp
80104b1c:	c3                   	ret    
80104b1d:	8d 76 00             	lea    0x0(%esi),%esi
80104b20:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b25:	eb ef                	jmp    80104b16 <argptr+0x46>
80104b27:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104b2e:	66 90                	xchg   %ax,%ax

80104b30 <argstr>:
80104b30:	f3 0f 1e fb          	endbr32 
80104b34:	55                   	push   %ebp
80104b35:	89 e5                	mov    %esp,%ebp
80104b37:	83 ec 20             	sub    $0x20,%esp
80104b3a:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104b3d:	50                   	push   %eax
80104b3e:	ff 75 08             	pushl  0x8(%ebp)
80104b41:	e8 5a ff ff ff       	call   80104aa0 <argint>
80104b46:	83 c4 10             	add    $0x10,%esp
80104b49:	85 c0                	test   %eax,%eax
80104b4b:	78 13                	js     80104b60 <argstr+0x30>
80104b4d:	83 ec 08             	sub    $0x8,%esp
80104b50:	ff 75 0c             	pushl  0xc(%ebp)
80104b53:	ff 75 f4             	pushl  -0xc(%ebp)
80104b56:	e8 e5 fe ff ff       	call   80104a40 <fetchstr>
80104b5b:	83 c4 10             	add    $0x10,%esp
80104b5e:	c9                   	leave  
80104b5f:	c3                   	ret    
80104b60:	c9                   	leave  
80104b61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b66:	c3                   	ret    
80104b67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104b6e:	66 90                	xchg   %ax,%ax

80104b70 <syscall>:
80104b70:	f3 0f 1e fb          	endbr32 
80104b74:	55                   	push   %ebp
80104b75:	89 e5                	mov    %esp,%ebp
80104b77:	53                   	push   %ebx
80104b78:	83 ec 04             	sub    $0x4,%esp
80104b7b:	e8 a0 ef ff ff       	call   80103b20 <myproc>
80104b80:	89 c3                	mov    %eax,%ebx
80104b82:	8b 40 18             	mov    0x18(%eax),%eax
80104b85:	8b 40 1c             	mov    0x1c(%eax),%eax
80104b88:	8d 50 ff             	lea    -0x1(%eax),%edx
80104b8b:	83 fa 14             	cmp    $0x14,%edx
80104b8e:	77 20                	ja     80104bb0 <syscall+0x40>
80104b90:	8b 14 85 60 79 10 80 	mov    -0x7fef86a0(,%eax,4),%edx
80104b97:	85 d2                	test   %edx,%edx
80104b99:	74 15                	je     80104bb0 <syscall+0x40>
80104b9b:	ff d2                	call   *%edx
80104b9d:	89 c2                	mov    %eax,%edx
80104b9f:	8b 43 18             	mov    0x18(%ebx),%eax
80104ba2:	89 50 1c             	mov    %edx,0x1c(%eax)
80104ba5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104ba8:	c9                   	leave  
80104ba9:	c3                   	ret    
80104baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104bb0:	50                   	push   %eax
80104bb1:	8d 43 6c             	lea    0x6c(%ebx),%eax
80104bb4:	50                   	push   %eax
80104bb5:	ff 73 10             	pushl  0x10(%ebx)
80104bb8:	68 3d 79 10 80       	push   $0x8010793d
80104bbd:	e8 8e bb ff ff       	call   80100750 <cprintf>
80104bc2:	8b 43 18             	mov    0x18(%ebx),%eax
80104bc5:	83 c4 10             	add    $0x10,%esp
80104bc8:	c7 40 1c ff ff ff ff 	movl   $0xffffffff,0x1c(%eax)
80104bcf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104bd2:	c9                   	leave  
80104bd3:	c3                   	ret    
80104bd4:	66 90                	xchg   %ax,%ax
80104bd6:	66 90                	xchg   %ax,%ax
80104bd8:	66 90                	xchg   %ax,%ax
80104bda:	66 90                	xchg   %ax,%ax
80104bdc:	66 90                	xchg   %ax,%ax
80104bde:	66 90                	xchg   %ax,%ax

80104be0 <fdalloc>:
80104be0:	55                   	push   %ebp
80104be1:	89 e5                	mov    %esp,%ebp
80104be3:	53                   	push   %ebx
80104be4:	89 c3                	mov    %eax,%ebx
80104be6:	83 ec 04             	sub    $0x4,%esp
80104be9:	e8 32 ef ff ff       	call   80103b20 <myproc>
80104bee:	89 c2                	mov    %eax,%edx
80104bf0:	31 c0                	xor    %eax,%eax
80104bf2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104bf8:	8b 4c 82 28          	mov    0x28(%edx,%eax,4),%ecx
80104bfc:	85 c9                	test   %ecx,%ecx
80104bfe:	74 18                	je     80104c18 <fdalloc+0x38>
80104c00:	83 c0 01             	add    $0x1,%eax
80104c03:	83 f8 10             	cmp    $0x10,%eax
80104c06:	75 f0                	jne    80104bf8 <fdalloc+0x18>
80104c08:	83 c4 04             	add    $0x4,%esp
80104c0b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c10:	5b                   	pop    %ebx
80104c11:	5d                   	pop    %ebp
80104c12:	c3                   	ret    
80104c13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104c17:	90                   	nop
80104c18:	89 5c 82 28          	mov    %ebx,0x28(%edx,%eax,4)
80104c1c:	83 c4 04             	add    $0x4,%esp
80104c1f:	5b                   	pop    %ebx
80104c20:	5d                   	pop    %ebp
80104c21:	c3                   	ret    
80104c22:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104c29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80104c30 <isdirempty>:
80104c30:	83 78 58 20          	cmpl   $0x20,0x58(%eax)
80104c34:	76 57                	jbe    80104c8d <isdirempty+0x5d>
80104c36:	55                   	push   %ebp
80104c37:	89 e5                	mov    %esp,%ebp
80104c39:	57                   	push   %edi
80104c3a:	56                   	push   %esi
80104c3b:	8d 7d d8             	lea    -0x28(%ebp),%edi
80104c3e:	89 c6                	mov    %eax,%esi
80104c40:	53                   	push   %ebx
80104c41:	bb 20 00 00 00       	mov    $0x20,%ebx
80104c46:	83 ec 1c             	sub    $0x1c,%esp
80104c49:	eb 0d                	jmp    80104c58 <isdirempty+0x28>
80104c4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104c4f:	90                   	nop
80104c50:	83 c3 10             	add    $0x10,%ebx
80104c53:	39 5e 58             	cmp    %ebx,0x58(%esi)
80104c56:	76 28                	jbe    80104c80 <isdirempty+0x50>
80104c58:	6a 10                	push   $0x10
80104c5a:	53                   	push   %ebx
80104c5b:	57                   	push   %edi
80104c5c:	56                   	push   %esi
80104c5d:	e8 4e cf ff ff       	call   80101bb0 <readi>
80104c62:	83 c4 10             	add    $0x10,%esp
80104c65:	83 f8 10             	cmp    $0x10,%eax
80104c68:	75 29                	jne    80104c93 <isdirempty+0x63>
80104c6a:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80104c6f:	74 df                	je     80104c50 <isdirempty+0x20>
80104c71:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104c74:	31 c0                	xor    %eax,%eax
80104c76:	5b                   	pop    %ebx
80104c77:	5e                   	pop    %esi
80104c78:	5f                   	pop    %edi
80104c79:	5d                   	pop    %ebp
80104c7a:	c3                   	ret    
80104c7b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104c7f:	90                   	nop
80104c80:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104c83:	b8 01 00 00 00       	mov    $0x1,%eax
80104c88:	5b                   	pop    %ebx
80104c89:	5e                   	pop    %esi
80104c8a:	5f                   	pop    %edi
80104c8b:	5d                   	pop    %ebp
80104c8c:	c3                   	ret    
80104c8d:	b8 01 00 00 00       	mov    $0x1,%eax
80104c92:	c3                   	ret    
80104c93:	83 ec 0c             	sub    $0xc,%esp
80104c96:	68 b8 79 10 80       	push   $0x801079b8
80104c9b:	e8 40 b7 ff ff       	call   801003e0 <panic>

80104ca0 <create>:
80104ca0:	55                   	push   %ebp
80104ca1:	89 e5                	mov    %esp,%ebp
80104ca3:	57                   	push   %edi
80104ca4:	56                   	push   %esi
80104ca5:	8d 7d da             	lea    -0x26(%ebp),%edi
80104ca8:	53                   	push   %ebx
80104ca9:	83 ec 34             	sub    $0x34,%esp
80104cac:	89 4d d0             	mov    %ecx,-0x30(%ebp)
80104caf:	8b 4d 08             	mov    0x8(%ebp),%ecx
80104cb2:	57                   	push   %edi
80104cb3:	50                   	push   %eax
80104cb4:	89 55 d4             	mov    %edx,-0x2c(%ebp)
80104cb7:	89 4d cc             	mov    %ecx,-0x34(%ebp)
80104cba:	e8 d1 d3 ff ff       	call   80102090 <nameiparent>
80104cbf:	83 c4 10             	add    $0x10,%esp
80104cc2:	85 c0                	test   %eax,%eax
80104cc4:	0f 84 46 01 00 00    	je     80104e10 <create+0x170>
80104cca:	83 ec 0c             	sub    $0xc,%esp
80104ccd:	89 c3                	mov    %eax,%ebx
80104ccf:	50                   	push   %eax
80104cd0:	e8 9b cc ff ff       	call   80101970 <ilock>
80104cd5:	83 c4 0c             	add    $0xc,%esp
80104cd8:	6a 00                	push   $0x0
80104cda:	57                   	push   %edi
80104cdb:	53                   	push   %ebx
80104cdc:	e8 1f d1 ff ff       	call   80101e00 <dirlookup>
80104ce1:	83 c4 10             	add    $0x10,%esp
80104ce4:	89 c6                	mov    %eax,%esi
80104ce6:	85 c0                	test   %eax,%eax
80104ce8:	74 56                	je     80104d40 <create+0xa0>
80104cea:	83 ec 0c             	sub    $0xc,%esp
80104ced:	53                   	push   %ebx
80104cee:	e8 5d ce ff ff       	call   80101b50 <iunlockput>
80104cf3:	89 34 24             	mov    %esi,(%esp)
80104cf6:	e8 75 cc ff ff       	call   80101970 <ilock>
80104cfb:	83 c4 10             	add    $0x10,%esp
80104cfe:	66 83 7d d4 02       	cmpw   $0x2,-0x2c(%ebp)
80104d03:	75 1b                	jne    80104d20 <create+0x80>
80104d05:	66 83 7e 50 02       	cmpw   $0x2,0x50(%esi)
80104d0a:	75 14                	jne    80104d20 <create+0x80>
80104d0c:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104d0f:	89 f0                	mov    %esi,%eax
80104d11:	5b                   	pop    %ebx
80104d12:	5e                   	pop    %esi
80104d13:	5f                   	pop    %edi
80104d14:	5d                   	pop    %ebp
80104d15:	c3                   	ret    
80104d16:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104d1d:	8d 76 00             	lea    0x0(%esi),%esi
80104d20:	83 ec 0c             	sub    $0xc,%esp
80104d23:	56                   	push   %esi
80104d24:	31 f6                	xor    %esi,%esi
80104d26:	e8 25 ce ff ff       	call   80101b50 <iunlockput>
80104d2b:	83 c4 10             	add    $0x10,%esp
80104d2e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104d31:	89 f0                	mov    %esi,%eax
80104d33:	5b                   	pop    %ebx
80104d34:	5e                   	pop    %esi
80104d35:	5f                   	pop    %edi
80104d36:	5d                   	pop    %ebp
80104d37:	c3                   	ret    
80104d38:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104d3f:	90                   	nop
80104d40:	0f bf 45 d4          	movswl -0x2c(%ebp),%eax
80104d44:	83 ec 08             	sub    $0x8,%esp
80104d47:	50                   	push   %eax
80104d48:	ff 33                	pushl  (%ebx)
80104d4a:	e8 d1 c9 ff ff       	call   80101720 <ialloc>
80104d4f:	83 c4 10             	add    $0x10,%esp
80104d52:	89 c6                	mov    %eax,%esi
80104d54:	85 c0                	test   %eax,%eax
80104d56:	0f 84 cd 00 00 00    	je     80104e29 <create+0x189>
80104d5c:	83 ec 0c             	sub    $0xc,%esp
80104d5f:	50                   	push   %eax
80104d60:	e8 0b cc ff ff       	call   80101970 <ilock>
80104d65:	0f b7 45 d0          	movzwl -0x30(%ebp),%eax
80104d69:	66 89 46 52          	mov    %ax,0x52(%esi)
80104d6d:	0f b7 45 cc          	movzwl -0x34(%ebp),%eax
80104d71:	66 89 46 54          	mov    %ax,0x54(%esi)
80104d75:	b8 01 00 00 00       	mov    $0x1,%eax
80104d7a:	66 89 46 56          	mov    %ax,0x56(%esi)
80104d7e:	89 34 24             	mov    %esi,(%esp)
80104d81:	e8 5a ca ff ff       	call   801017e0 <iupdate>
80104d86:	83 c4 10             	add    $0x10,%esp
80104d89:	66 83 7d d4 01       	cmpw   $0x1,-0x2c(%ebp)
80104d8e:	74 30                	je     80104dc0 <create+0x120>
80104d90:	83 ec 04             	sub    $0x4,%esp
80104d93:	ff 76 04             	pushl  0x4(%esi)
80104d96:	57                   	push   %edi
80104d97:	53                   	push   %ebx
80104d98:	e8 13 d2 ff ff       	call   80101fb0 <dirlink>
80104d9d:	83 c4 10             	add    $0x10,%esp
80104da0:	85 c0                	test   %eax,%eax
80104da2:	78 78                	js     80104e1c <create+0x17c>
80104da4:	83 ec 0c             	sub    $0xc,%esp
80104da7:	53                   	push   %ebx
80104da8:	e8 a3 cd ff ff       	call   80101b50 <iunlockput>
80104dad:	83 c4 10             	add    $0x10,%esp
80104db0:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104db3:	89 f0                	mov    %esi,%eax
80104db5:	5b                   	pop    %ebx
80104db6:	5e                   	pop    %esi
80104db7:	5f                   	pop    %edi
80104db8:	5d                   	pop    %ebp
80104db9:	c3                   	ret    
80104dba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104dc0:	83 ec 0c             	sub    $0xc,%esp
80104dc3:	66 83 43 56 01       	addw   $0x1,0x56(%ebx)
80104dc8:	53                   	push   %ebx
80104dc9:	e8 12 ca ff ff       	call   801017e0 <iupdate>
80104dce:	83 c4 0c             	add    $0xc,%esp
80104dd1:	ff 76 04             	pushl  0x4(%esi)
80104dd4:	68 e6 79 10 80       	push   $0x801079e6
80104dd9:	56                   	push   %esi
80104dda:	e8 d1 d1 ff ff       	call   80101fb0 <dirlink>
80104ddf:	83 c4 10             	add    $0x10,%esp
80104de2:	85 c0                	test   %eax,%eax
80104de4:	78 18                	js     80104dfe <create+0x15e>
80104de6:	83 ec 04             	sub    $0x4,%esp
80104de9:	ff 73 04             	pushl  0x4(%ebx)
80104dec:	68 e5 79 10 80       	push   $0x801079e5
80104df1:	56                   	push   %esi
80104df2:	e8 b9 d1 ff ff       	call   80101fb0 <dirlink>
80104df7:	83 c4 10             	add    $0x10,%esp
80104dfa:	85 c0                	test   %eax,%eax
80104dfc:	79 92                	jns    80104d90 <create+0xf0>
80104dfe:	83 ec 0c             	sub    $0xc,%esp
80104e01:	68 d9 79 10 80       	push   $0x801079d9
80104e06:	e8 d5 b5 ff ff       	call   801003e0 <panic>
80104e0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104e0f:	90                   	nop
80104e10:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104e13:	31 f6                	xor    %esi,%esi
80104e15:	5b                   	pop    %ebx
80104e16:	89 f0                	mov    %esi,%eax
80104e18:	5e                   	pop    %esi
80104e19:	5f                   	pop    %edi
80104e1a:	5d                   	pop    %ebp
80104e1b:	c3                   	ret    
80104e1c:	83 ec 0c             	sub    $0xc,%esp
80104e1f:	68 e8 79 10 80       	push   $0x801079e8
80104e24:	e8 b7 b5 ff ff       	call   801003e0 <panic>
80104e29:	83 ec 0c             	sub    $0xc,%esp
80104e2c:	68 ca 79 10 80       	push   $0x801079ca
80104e31:	e8 aa b5 ff ff       	call   801003e0 <panic>
80104e36:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104e3d:	8d 76 00             	lea    0x0(%esi),%esi

80104e40 <argfd.constprop.0>:
80104e40:	55                   	push   %ebp
80104e41:	89 e5                	mov    %esp,%ebp
80104e43:	56                   	push   %esi
80104e44:	89 d6                	mov    %edx,%esi
80104e46:	53                   	push   %ebx
80104e47:	89 c3                	mov    %eax,%ebx
80104e49:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104e4c:	83 ec 18             	sub    $0x18,%esp
80104e4f:	50                   	push   %eax
80104e50:	6a 00                	push   $0x0
80104e52:	e8 49 fc ff ff       	call   80104aa0 <argint>
80104e57:	83 c4 10             	add    $0x10,%esp
80104e5a:	85 c0                	test   %eax,%eax
80104e5c:	78 2a                	js     80104e88 <argfd.constprop.0+0x48>
80104e5e:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
80104e62:	77 24                	ja     80104e88 <argfd.constprop.0+0x48>
80104e64:	e8 b7 ec ff ff       	call   80103b20 <myproc>
80104e69:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104e6c:	8b 44 90 28          	mov    0x28(%eax,%edx,4),%eax
80104e70:	85 c0                	test   %eax,%eax
80104e72:	74 14                	je     80104e88 <argfd.constprop.0+0x48>
80104e74:	85 db                	test   %ebx,%ebx
80104e76:	74 02                	je     80104e7a <argfd.constprop.0+0x3a>
80104e78:	89 13                	mov    %edx,(%ebx)
80104e7a:	89 06                	mov    %eax,(%esi)
80104e7c:	31 c0                	xor    %eax,%eax
80104e7e:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104e81:	5b                   	pop    %ebx
80104e82:	5e                   	pop    %esi
80104e83:	5d                   	pop    %ebp
80104e84:	c3                   	ret    
80104e85:	8d 76 00             	lea    0x0(%esi),%esi
80104e88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104e8d:	eb ef                	jmp    80104e7e <argfd.constprop.0+0x3e>
80104e8f:	90                   	nop

80104e90 <sys_dup>:
80104e90:	f3 0f 1e fb          	endbr32 
80104e94:	55                   	push   %ebp
80104e95:	31 c0                	xor    %eax,%eax
80104e97:	89 e5                	mov    %esp,%ebp
80104e99:	53                   	push   %ebx
80104e9a:	8d 55 f4             	lea    -0xc(%ebp),%edx
80104e9d:	83 ec 14             	sub    $0x14,%esp
80104ea0:	e8 9b ff ff ff       	call   80104e40 <argfd.constprop.0>
80104ea5:	85 c0                	test   %eax,%eax
80104ea7:	78 27                	js     80104ed0 <sys_dup+0x40>
80104ea9:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104eac:	e8 2f fd ff ff       	call   80104be0 <fdalloc>
80104eb1:	89 c3                	mov    %eax,%ebx
80104eb3:	85 c0                	test   %eax,%eax
80104eb5:	78 19                	js     80104ed0 <sys_dup+0x40>
80104eb7:	83 ec 0c             	sub    $0xc,%esp
80104eba:	ff 75 f4             	pushl  -0xc(%ebp)
80104ebd:	e8 1e c0 ff ff       	call   80100ee0 <filedup>
80104ec2:	83 c4 10             	add    $0x10,%esp
80104ec5:	89 d8                	mov    %ebx,%eax
80104ec7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104eca:	c9                   	leave  
80104ecb:	c3                   	ret    
80104ecc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104ed0:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104ed5:	eb ee                	jmp    80104ec5 <sys_dup+0x35>
80104ed7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104ede:	66 90                	xchg   %ax,%ax

80104ee0 <sys_read>:
80104ee0:	f3 0f 1e fb          	endbr32 
80104ee4:	55                   	push   %ebp
80104ee5:	31 c0                	xor    %eax,%eax
80104ee7:	89 e5                	mov    %esp,%ebp
80104ee9:	83 ec 18             	sub    $0x18,%esp
80104eec:	8d 55 ec             	lea    -0x14(%ebp),%edx
80104eef:	e8 4c ff ff ff       	call   80104e40 <argfd.constprop.0>
80104ef4:	85 c0                	test   %eax,%eax
80104ef6:	78 48                	js     80104f40 <sys_read+0x60>
80104ef8:	83 ec 08             	sub    $0x8,%esp
80104efb:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104efe:	50                   	push   %eax
80104eff:	6a 02                	push   $0x2
80104f01:	e8 9a fb ff ff       	call   80104aa0 <argint>
80104f06:	83 c4 10             	add    $0x10,%esp
80104f09:	85 c0                	test   %eax,%eax
80104f0b:	78 33                	js     80104f40 <sys_read+0x60>
80104f0d:	83 ec 04             	sub    $0x4,%esp
80104f10:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104f13:	ff 75 f0             	pushl  -0x10(%ebp)
80104f16:	50                   	push   %eax
80104f17:	6a 01                	push   $0x1
80104f19:	e8 b2 fb ff ff       	call   80104ad0 <argptr>
80104f1e:	83 c4 10             	add    $0x10,%esp
80104f21:	85 c0                	test   %eax,%eax
80104f23:	78 1b                	js     80104f40 <sys_read+0x60>
80104f25:	83 ec 04             	sub    $0x4,%esp
80104f28:	ff 75 f0             	pushl  -0x10(%ebp)
80104f2b:	ff 75 f4             	pushl  -0xc(%ebp)
80104f2e:	ff 75 ec             	pushl  -0x14(%ebp)
80104f31:	e8 2a c1 ff ff       	call   80101060 <fileread>
80104f36:	83 c4 10             	add    $0x10,%esp
80104f39:	c9                   	leave  
80104f3a:	c3                   	ret    
80104f3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104f3f:	90                   	nop
80104f40:	c9                   	leave  
80104f41:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104f46:	c3                   	ret    
80104f47:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104f4e:	66 90                	xchg   %ax,%ax

80104f50 <sys_write>:
80104f50:	f3 0f 1e fb          	endbr32 
80104f54:	55                   	push   %ebp
80104f55:	31 c0                	xor    %eax,%eax
80104f57:	89 e5                	mov    %esp,%ebp
80104f59:	83 ec 18             	sub    $0x18,%esp
80104f5c:	8d 55 ec             	lea    -0x14(%ebp),%edx
80104f5f:	e8 dc fe ff ff       	call   80104e40 <argfd.constprop.0>
80104f64:	85 c0                	test   %eax,%eax
80104f66:	78 48                	js     80104fb0 <sys_write+0x60>
80104f68:	83 ec 08             	sub    $0x8,%esp
80104f6b:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104f6e:	50                   	push   %eax
80104f6f:	6a 02                	push   $0x2
80104f71:	e8 2a fb ff ff       	call   80104aa0 <argint>
80104f76:	83 c4 10             	add    $0x10,%esp
80104f79:	85 c0                	test   %eax,%eax
80104f7b:	78 33                	js     80104fb0 <sys_write+0x60>
80104f7d:	83 ec 04             	sub    $0x4,%esp
80104f80:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104f83:	ff 75 f0             	pushl  -0x10(%ebp)
80104f86:	50                   	push   %eax
80104f87:	6a 01                	push   $0x1
80104f89:	e8 42 fb ff ff       	call   80104ad0 <argptr>
80104f8e:	83 c4 10             	add    $0x10,%esp
80104f91:	85 c0                	test   %eax,%eax
80104f93:	78 1b                	js     80104fb0 <sys_write+0x60>
80104f95:	83 ec 04             	sub    $0x4,%esp
80104f98:	ff 75 f0             	pushl  -0x10(%ebp)
80104f9b:	ff 75 f4             	pushl  -0xc(%ebp)
80104f9e:	ff 75 ec             	pushl  -0x14(%ebp)
80104fa1:	e8 5a c1 ff ff       	call   80101100 <filewrite>
80104fa6:	83 c4 10             	add    $0x10,%esp
80104fa9:	c9                   	leave  
80104faa:	c3                   	ret    
80104fab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104faf:	90                   	nop
80104fb0:	c9                   	leave  
80104fb1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104fb6:	c3                   	ret    
80104fb7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104fbe:	66 90                	xchg   %ax,%ax

80104fc0 <sys_close>:
80104fc0:	f3 0f 1e fb          	endbr32 
80104fc4:	55                   	push   %ebp
80104fc5:	89 e5                	mov    %esp,%ebp
80104fc7:	83 ec 18             	sub    $0x18,%esp
80104fca:	8d 55 f4             	lea    -0xc(%ebp),%edx
80104fcd:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104fd0:	e8 6b fe ff ff       	call   80104e40 <argfd.constprop.0>
80104fd5:	85 c0                	test   %eax,%eax
80104fd7:	78 27                	js     80105000 <sys_close+0x40>
80104fd9:	e8 42 eb ff ff       	call   80103b20 <myproc>
80104fde:	8b 55 f0             	mov    -0x10(%ebp),%edx
80104fe1:	83 ec 0c             	sub    $0xc,%esp
80104fe4:	c7 44 90 28 00 00 00 	movl   $0x0,0x28(%eax,%edx,4)
80104feb:	00 
80104fec:	ff 75 f4             	pushl  -0xc(%ebp)
80104fef:	e8 3c bf ff ff       	call   80100f30 <fileclose>
80104ff4:	83 c4 10             	add    $0x10,%esp
80104ff7:	31 c0                	xor    %eax,%eax
80104ff9:	c9                   	leave  
80104ffa:	c3                   	ret    
80104ffb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104fff:	90                   	nop
80105000:	c9                   	leave  
80105001:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105006:	c3                   	ret    
80105007:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010500e:	66 90                	xchg   %ax,%ax

80105010 <sys_fstat>:
80105010:	f3 0f 1e fb          	endbr32 
80105014:	55                   	push   %ebp
80105015:	31 c0                	xor    %eax,%eax
80105017:	89 e5                	mov    %esp,%ebp
80105019:	83 ec 18             	sub    $0x18,%esp
8010501c:	8d 55 f0             	lea    -0x10(%ebp),%edx
8010501f:	e8 1c fe ff ff       	call   80104e40 <argfd.constprop.0>
80105024:	85 c0                	test   %eax,%eax
80105026:	78 30                	js     80105058 <sys_fstat+0x48>
80105028:	83 ec 04             	sub    $0x4,%esp
8010502b:	8d 45 f4             	lea    -0xc(%ebp),%eax
8010502e:	6a 14                	push   $0x14
80105030:	50                   	push   %eax
80105031:	6a 01                	push   $0x1
80105033:	e8 98 fa ff ff       	call   80104ad0 <argptr>
80105038:	83 c4 10             	add    $0x10,%esp
8010503b:	85 c0                	test   %eax,%eax
8010503d:	78 19                	js     80105058 <sys_fstat+0x48>
8010503f:	83 ec 08             	sub    $0x8,%esp
80105042:	ff 75 f4             	pushl  -0xc(%ebp)
80105045:	ff 75 f0             	pushl  -0x10(%ebp)
80105048:	e8 c3 bf ff ff       	call   80101010 <filestat>
8010504d:	83 c4 10             	add    $0x10,%esp
80105050:	c9                   	leave  
80105051:	c3                   	ret    
80105052:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80105058:	c9                   	leave  
80105059:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010505e:	c3                   	ret    
8010505f:	90                   	nop

80105060 <sys_link>:
80105060:	f3 0f 1e fb          	endbr32 
80105064:	55                   	push   %ebp
80105065:	89 e5                	mov    %esp,%ebp
80105067:	57                   	push   %edi
80105068:	56                   	push   %esi
80105069:	8d 45 d4             	lea    -0x2c(%ebp),%eax
8010506c:	53                   	push   %ebx
8010506d:	83 ec 34             	sub    $0x34,%esp
80105070:	50                   	push   %eax
80105071:	6a 00                	push   $0x0
80105073:	e8 b8 fa ff ff       	call   80104b30 <argstr>
80105078:	83 c4 10             	add    $0x10,%esp
8010507b:	85 c0                	test   %eax,%eax
8010507d:	0f 88 ff 00 00 00    	js     80105182 <sys_link+0x122>
80105083:	83 ec 08             	sub    $0x8,%esp
80105086:	8d 45 d0             	lea    -0x30(%ebp),%eax
80105089:	50                   	push   %eax
8010508a:	6a 01                	push   $0x1
8010508c:	e8 9f fa ff ff       	call   80104b30 <argstr>
80105091:	83 c4 10             	add    $0x10,%esp
80105094:	85 c0                	test   %eax,%eax
80105096:	0f 88 e6 00 00 00    	js     80105182 <sys_link+0x122>
8010509c:	e8 1f de ff ff       	call   80102ec0 <begin_op>
801050a1:	83 ec 0c             	sub    $0xc,%esp
801050a4:	ff 75 d4             	pushl  -0x2c(%ebp)
801050a7:	e8 c4 cf ff ff       	call   80102070 <namei>
801050ac:	83 c4 10             	add    $0x10,%esp
801050af:	89 c3                	mov    %eax,%ebx
801050b1:	85 c0                	test   %eax,%eax
801050b3:	0f 84 e8 00 00 00    	je     801051a1 <sys_link+0x141>
801050b9:	83 ec 0c             	sub    $0xc,%esp
801050bc:	50                   	push   %eax
801050bd:	e8 ae c8 ff ff       	call   80101970 <ilock>
801050c2:	83 c4 10             	add    $0x10,%esp
801050c5:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
801050ca:	0f 84 b9 00 00 00    	je     80105189 <sys_link+0x129>
801050d0:	83 ec 0c             	sub    $0xc,%esp
801050d3:	66 83 43 56 01       	addw   $0x1,0x56(%ebx)
801050d8:	8d 7d da             	lea    -0x26(%ebp),%edi
801050db:	53                   	push   %ebx
801050dc:	e8 ff c6 ff ff       	call   801017e0 <iupdate>
801050e1:	89 1c 24             	mov    %ebx,(%esp)
801050e4:	e8 67 c9 ff ff       	call   80101a50 <iunlock>
801050e9:	58                   	pop    %eax
801050ea:	5a                   	pop    %edx
801050eb:	57                   	push   %edi
801050ec:	ff 75 d0             	pushl  -0x30(%ebp)
801050ef:	e8 9c cf ff ff       	call   80102090 <nameiparent>
801050f4:	83 c4 10             	add    $0x10,%esp
801050f7:	89 c6                	mov    %eax,%esi
801050f9:	85 c0                	test   %eax,%eax
801050fb:	74 5f                	je     8010515c <sys_link+0xfc>
801050fd:	83 ec 0c             	sub    $0xc,%esp
80105100:	50                   	push   %eax
80105101:	e8 6a c8 ff ff       	call   80101970 <ilock>
80105106:	8b 03                	mov    (%ebx),%eax
80105108:	83 c4 10             	add    $0x10,%esp
8010510b:	39 06                	cmp    %eax,(%esi)
8010510d:	75 41                	jne    80105150 <sys_link+0xf0>
8010510f:	83 ec 04             	sub    $0x4,%esp
80105112:	ff 73 04             	pushl  0x4(%ebx)
80105115:	57                   	push   %edi
80105116:	56                   	push   %esi
80105117:	e8 94 ce ff ff       	call   80101fb0 <dirlink>
8010511c:	83 c4 10             	add    $0x10,%esp
8010511f:	85 c0                	test   %eax,%eax
80105121:	78 2d                	js     80105150 <sys_link+0xf0>
80105123:	83 ec 0c             	sub    $0xc,%esp
80105126:	56                   	push   %esi
80105127:	e8 24 ca ff ff       	call   80101b50 <iunlockput>
8010512c:	89 1c 24             	mov    %ebx,(%esp)
8010512f:	e8 6c c9 ff ff       	call   80101aa0 <iput>
80105134:	e8 f7 dd ff ff       	call   80102f30 <end_op>
80105139:	83 c4 10             	add    $0x10,%esp
8010513c:	31 c0                	xor    %eax,%eax
8010513e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105141:	5b                   	pop    %ebx
80105142:	5e                   	pop    %esi
80105143:	5f                   	pop    %edi
80105144:	5d                   	pop    %ebp
80105145:	c3                   	ret    
80105146:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010514d:	8d 76 00             	lea    0x0(%esi),%esi
80105150:	83 ec 0c             	sub    $0xc,%esp
80105153:	56                   	push   %esi
80105154:	e8 f7 c9 ff ff       	call   80101b50 <iunlockput>
80105159:	83 c4 10             	add    $0x10,%esp
8010515c:	83 ec 0c             	sub    $0xc,%esp
8010515f:	53                   	push   %ebx
80105160:	e8 0b c8 ff ff       	call   80101970 <ilock>
80105165:	66 83 6b 56 01       	subw   $0x1,0x56(%ebx)
8010516a:	89 1c 24             	mov    %ebx,(%esp)
8010516d:	e8 6e c6 ff ff       	call   801017e0 <iupdate>
80105172:	89 1c 24             	mov    %ebx,(%esp)
80105175:	e8 d6 c9 ff ff       	call   80101b50 <iunlockput>
8010517a:	e8 b1 dd ff ff       	call   80102f30 <end_op>
8010517f:	83 c4 10             	add    $0x10,%esp
80105182:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105187:	eb b5                	jmp    8010513e <sys_link+0xde>
80105189:	83 ec 0c             	sub    $0xc,%esp
8010518c:	53                   	push   %ebx
8010518d:	e8 be c9 ff ff       	call   80101b50 <iunlockput>
80105192:	e8 99 dd ff ff       	call   80102f30 <end_op>
80105197:	83 c4 10             	add    $0x10,%esp
8010519a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010519f:	eb 9d                	jmp    8010513e <sys_link+0xde>
801051a1:	e8 8a dd ff ff       	call   80102f30 <end_op>
801051a6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801051ab:	eb 91                	jmp    8010513e <sys_link+0xde>
801051ad:	8d 76 00             	lea    0x0(%esi),%esi

801051b0 <sys_unlink>:
801051b0:	f3 0f 1e fb          	endbr32 
801051b4:	55                   	push   %ebp
801051b5:	89 e5                	mov    %esp,%ebp
801051b7:	57                   	push   %edi
801051b8:	56                   	push   %esi
801051b9:	8d 45 c0             	lea    -0x40(%ebp),%eax
801051bc:	53                   	push   %ebx
801051bd:	83 ec 44             	sub    $0x44,%esp
801051c0:	50                   	push   %eax
801051c1:	6a 00                	push   $0x0
801051c3:	e8 68 f9 ff ff       	call   80104b30 <argstr>
801051c8:	83 c4 10             	add    $0x10,%esp
801051cb:	85 c0                	test   %eax,%eax
801051cd:	0f 88 5d 01 00 00    	js     80105330 <sys_unlink+0x180>
801051d3:	e8 e8 dc ff ff       	call   80102ec0 <begin_op>
801051d8:	8d 5d ca             	lea    -0x36(%ebp),%ebx
801051db:	83 ec 08             	sub    $0x8,%esp
801051de:	53                   	push   %ebx
801051df:	ff 75 c0             	pushl  -0x40(%ebp)
801051e2:	e8 a9 ce ff ff       	call   80102090 <nameiparent>
801051e7:	83 c4 10             	add    $0x10,%esp
801051ea:	89 c6                	mov    %eax,%esi
801051ec:	85 c0                	test   %eax,%eax
801051ee:	0f 84 43 01 00 00    	je     80105337 <sys_unlink+0x187>
801051f4:	83 ec 0c             	sub    $0xc,%esp
801051f7:	50                   	push   %eax
801051f8:	e8 73 c7 ff ff       	call   80101970 <ilock>
801051fd:	58                   	pop    %eax
801051fe:	5a                   	pop    %edx
801051ff:	68 e6 79 10 80       	push   $0x801079e6
80105204:	53                   	push   %ebx
80105205:	e8 d6 cb ff ff       	call   80101de0 <namecmp>
8010520a:	83 c4 10             	add    $0x10,%esp
8010520d:	85 c0                	test   %eax,%eax
8010520f:	0f 84 db 00 00 00    	je     801052f0 <sys_unlink+0x140>
80105215:	83 ec 08             	sub    $0x8,%esp
80105218:	68 e5 79 10 80       	push   $0x801079e5
8010521d:	53                   	push   %ebx
8010521e:	e8 bd cb ff ff       	call   80101de0 <namecmp>
80105223:	83 c4 10             	add    $0x10,%esp
80105226:	85 c0                	test   %eax,%eax
80105228:	0f 84 c2 00 00 00    	je     801052f0 <sys_unlink+0x140>
8010522e:	83 ec 04             	sub    $0x4,%esp
80105231:	8d 45 c4             	lea    -0x3c(%ebp),%eax
80105234:	50                   	push   %eax
80105235:	53                   	push   %ebx
80105236:	56                   	push   %esi
80105237:	e8 c4 cb ff ff       	call   80101e00 <dirlookup>
8010523c:	83 c4 10             	add    $0x10,%esp
8010523f:	89 c3                	mov    %eax,%ebx
80105241:	85 c0                	test   %eax,%eax
80105243:	0f 84 a7 00 00 00    	je     801052f0 <sys_unlink+0x140>
80105249:	83 ec 0c             	sub    $0xc,%esp
8010524c:	50                   	push   %eax
8010524d:	e8 1e c7 ff ff       	call   80101970 <ilock>
80105252:	83 c4 10             	add    $0x10,%esp
80105255:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
8010525a:	0f 8e f3 00 00 00    	jle    80105353 <sys_unlink+0x1a3>
80105260:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80105265:	74 69                	je     801052d0 <sys_unlink+0x120>
80105267:	83 ec 04             	sub    $0x4,%esp
8010526a:	8d 7d d8             	lea    -0x28(%ebp),%edi
8010526d:	6a 10                	push   $0x10
8010526f:	6a 00                	push   $0x0
80105271:	57                   	push   %edi
80105272:	e8 39 f5 ff ff       	call   801047b0 <memset>
80105277:	6a 10                	push   $0x10
80105279:	ff 75 c4             	pushl  -0x3c(%ebp)
8010527c:	57                   	push   %edi
8010527d:	56                   	push   %esi
8010527e:	e8 2d ca ff ff       	call   80101cb0 <writei>
80105283:	83 c4 20             	add    $0x20,%esp
80105286:	83 f8 10             	cmp    $0x10,%eax
80105289:	0f 85 b7 00 00 00    	jne    80105346 <sys_unlink+0x196>
8010528f:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80105294:	74 7a                	je     80105310 <sys_unlink+0x160>
80105296:	83 ec 0c             	sub    $0xc,%esp
80105299:	56                   	push   %esi
8010529a:	e8 b1 c8 ff ff       	call   80101b50 <iunlockput>
8010529f:	66 83 6b 56 01       	subw   $0x1,0x56(%ebx)
801052a4:	89 1c 24             	mov    %ebx,(%esp)
801052a7:	e8 34 c5 ff ff       	call   801017e0 <iupdate>
801052ac:	89 1c 24             	mov    %ebx,(%esp)
801052af:	e8 9c c8 ff ff       	call   80101b50 <iunlockput>
801052b4:	e8 77 dc ff ff       	call   80102f30 <end_op>
801052b9:	83 c4 10             	add    $0x10,%esp
801052bc:	31 c0                	xor    %eax,%eax
801052be:	8d 65 f4             	lea    -0xc(%ebp),%esp
801052c1:	5b                   	pop    %ebx
801052c2:	5e                   	pop    %esi
801052c3:	5f                   	pop    %edi
801052c4:	5d                   	pop    %ebp
801052c5:	c3                   	ret    
801052c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801052cd:	8d 76 00             	lea    0x0(%esi),%esi
801052d0:	89 d8                	mov    %ebx,%eax
801052d2:	e8 59 f9 ff ff       	call   80104c30 <isdirempty>
801052d7:	85 c0                	test   %eax,%eax
801052d9:	75 8c                	jne    80105267 <sys_unlink+0xb7>
801052db:	83 ec 0c             	sub    $0xc,%esp
801052de:	53                   	push   %ebx
801052df:	e8 6c c8 ff ff       	call   80101b50 <iunlockput>
801052e4:	83 c4 10             	add    $0x10,%esp
801052e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801052ee:	66 90                	xchg   %ax,%ax
801052f0:	83 ec 0c             	sub    $0xc,%esp
801052f3:	56                   	push   %esi
801052f4:	e8 57 c8 ff ff       	call   80101b50 <iunlockput>
801052f9:	e8 32 dc ff ff       	call   80102f30 <end_op>
801052fe:	83 c4 10             	add    $0x10,%esp
80105301:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105306:	eb b6                	jmp    801052be <sys_unlink+0x10e>
80105308:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010530f:	90                   	nop
80105310:	83 ec 0c             	sub    $0xc,%esp
80105313:	66 83 6e 56 01       	subw   $0x1,0x56(%esi)
80105318:	56                   	push   %esi
80105319:	e8 c2 c4 ff ff       	call   801017e0 <iupdate>
8010531e:	83 c4 10             	add    $0x10,%esp
80105321:	e9 70 ff ff ff       	jmp    80105296 <sys_unlink+0xe6>
80105326:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010532d:	8d 76 00             	lea    0x0(%esi),%esi
80105330:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105335:	eb 87                	jmp    801052be <sys_unlink+0x10e>
80105337:	e8 f4 db ff ff       	call   80102f30 <end_op>
8010533c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105341:	e9 78 ff ff ff       	jmp    801052be <sys_unlink+0x10e>
80105346:	83 ec 0c             	sub    $0xc,%esp
80105349:	68 0a 7a 10 80       	push   $0x80107a0a
8010534e:	e8 8d b0 ff ff       	call   801003e0 <panic>
80105353:	83 ec 0c             	sub    $0xc,%esp
80105356:	68 f8 79 10 80       	push   $0x801079f8
8010535b:	e8 80 b0 ff ff       	call   801003e0 <panic>

80105360 <sys_open>:
80105360:	f3 0f 1e fb          	endbr32 
80105364:	55                   	push   %ebp
80105365:	89 e5                	mov    %esp,%ebp
80105367:	57                   	push   %edi
80105368:	56                   	push   %esi
80105369:	8d 45 e0             	lea    -0x20(%ebp),%eax
8010536c:	53                   	push   %ebx
8010536d:	83 ec 24             	sub    $0x24,%esp
80105370:	50                   	push   %eax
80105371:	6a 00                	push   $0x0
80105373:	e8 b8 f7 ff ff       	call   80104b30 <argstr>
80105378:	83 c4 10             	add    $0x10,%esp
8010537b:	85 c0                	test   %eax,%eax
8010537d:	0f 88 0e 01 00 00    	js     80105491 <sys_open+0x131>
80105383:	83 ec 08             	sub    $0x8,%esp
80105386:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80105389:	50                   	push   %eax
8010538a:	6a 01                	push   $0x1
8010538c:	e8 0f f7 ff ff       	call   80104aa0 <argint>
80105391:	83 c4 10             	add    $0x10,%esp
80105394:	85 c0                	test   %eax,%eax
80105396:	0f 88 f5 00 00 00    	js     80105491 <sys_open+0x131>
8010539c:	e8 1f db ff ff       	call   80102ec0 <begin_op>
801053a1:	f6 45 e5 02          	testb  $0x2,-0x1b(%ebp)
801053a5:	0f 85 95 00 00 00    	jne    80105440 <sys_open+0xe0>
801053ab:	83 ec 0c             	sub    $0xc,%esp
801053ae:	ff 75 e0             	pushl  -0x20(%ebp)
801053b1:	e8 ba cc ff ff       	call   80102070 <namei>
801053b6:	83 c4 10             	add    $0x10,%esp
801053b9:	89 c6                	mov    %eax,%esi
801053bb:	85 c0                	test   %eax,%eax
801053bd:	0f 84 9e 00 00 00    	je     80105461 <sys_open+0x101>
801053c3:	83 ec 0c             	sub    $0xc,%esp
801053c6:	50                   	push   %eax
801053c7:	e8 a4 c5 ff ff       	call   80101970 <ilock>
801053cc:	83 c4 10             	add    $0x10,%esp
801053cf:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
801053d4:	0f 84 96 00 00 00    	je     80105470 <sys_open+0x110>
801053da:	e8 91 ba ff ff       	call   80100e70 <filealloc>
801053df:	89 c3                	mov    %eax,%ebx
801053e1:	85 c0                	test   %eax,%eax
801053e3:	0f 84 97 00 00 00    	je     80105480 <sys_open+0x120>
801053e9:	e8 f2 f7 ff ff       	call   80104be0 <fdalloc>
801053ee:	89 c7                	mov    %eax,%edi
801053f0:	85 c0                	test   %eax,%eax
801053f2:	0f 88 a8 00 00 00    	js     801054a0 <sys_open+0x140>
801053f8:	83 ec 0c             	sub    $0xc,%esp
801053fb:	56                   	push   %esi
801053fc:	e8 4f c6 ff ff       	call   80101a50 <iunlock>
80105401:	e8 2a db ff ff       	call   80102f30 <end_op>
80105406:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
8010540c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
8010540f:	83 c4 10             	add    $0x10,%esp
80105412:	89 73 10             	mov    %esi,0x10(%ebx)
80105415:	89 d0                	mov    %edx,%eax
80105417:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
8010541e:	f7 d0                	not    %eax
80105420:	83 e0 01             	and    $0x1,%eax
80105423:	83 e2 03             	and    $0x3,%edx
80105426:	88 43 08             	mov    %al,0x8(%ebx)
80105429:	0f 95 43 09          	setne  0x9(%ebx)
8010542d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105430:	89 f8                	mov    %edi,%eax
80105432:	5b                   	pop    %ebx
80105433:	5e                   	pop    %esi
80105434:	5f                   	pop    %edi
80105435:	5d                   	pop    %ebp
80105436:	c3                   	ret    
80105437:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010543e:	66 90                	xchg   %ax,%ax
80105440:	83 ec 0c             	sub    $0xc,%esp
80105443:	8b 45 e0             	mov    -0x20(%ebp),%eax
80105446:	31 c9                	xor    %ecx,%ecx
80105448:	ba 02 00 00 00       	mov    $0x2,%edx
8010544d:	6a 00                	push   $0x0
8010544f:	e8 4c f8 ff ff       	call   80104ca0 <create>
80105454:	83 c4 10             	add    $0x10,%esp
80105457:	89 c6                	mov    %eax,%esi
80105459:	85 c0                	test   %eax,%eax
8010545b:	0f 85 79 ff ff ff    	jne    801053da <sys_open+0x7a>
80105461:	e8 ca da ff ff       	call   80102f30 <end_op>
80105466:	bf ff ff ff ff       	mov    $0xffffffff,%edi
8010546b:	eb c0                	jmp    8010542d <sys_open+0xcd>
8010546d:	8d 76 00             	lea    0x0(%esi),%esi
80105470:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80105473:	85 c0                	test   %eax,%eax
80105475:	0f 84 5f ff ff ff    	je     801053da <sys_open+0x7a>
8010547b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010547f:	90                   	nop
80105480:	83 ec 0c             	sub    $0xc,%esp
80105483:	56                   	push   %esi
80105484:	e8 c7 c6 ff ff       	call   80101b50 <iunlockput>
80105489:	e8 a2 da ff ff       	call   80102f30 <end_op>
8010548e:	83 c4 10             	add    $0x10,%esp
80105491:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80105496:	eb 95                	jmp    8010542d <sys_open+0xcd>
80105498:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010549f:	90                   	nop
801054a0:	83 ec 0c             	sub    $0xc,%esp
801054a3:	53                   	push   %ebx
801054a4:	e8 87 ba ff ff       	call   80100f30 <fileclose>
801054a9:	83 c4 10             	add    $0x10,%esp
801054ac:	eb d2                	jmp    80105480 <sys_open+0x120>
801054ae:	66 90                	xchg   %ax,%ax

801054b0 <sys_mkdir>:
801054b0:	f3 0f 1e fb          	endbr32 
801054b4:	55                   	push   %ebp
801054b5:	89 e5                	mov    %esp,%ebp
801054b7:	83 ec 18             	sub    $0x18,%esp
801054ba:	e8 01 da ff ff       	call   80102ec0 <begin_op>
801054bf:	83 ec 08             	sub    $0x8,%esp
801054c2:	8d 45 f4             	lea    -0xc(%ebp),%eax
801054c5:	50                   	push   %eax
801054c6:	6a 00                	push   $0x0
801054c8:	e8 63 f6 ff ff       	call   80104b30 <argstr>
801054cd:	83 c4 10             	add    $0x10,%esp
801054d0:	85 c0                	test   %eax,%eax
801054d2:	78 34                	js     80105508 <sys_mkdir+0x58>
801054d4:	83 ec 0c             	sub    $0xc,%esp
801054d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
801054da:	31 c9                	xor    %ecx,%ecx
801054dc:	ba 01 00 00 00       	mov    $0x1,%edx
801054e1:	6a 00                	push   $0x0
801054e3:	e8 b8 f7 ff ff       	call   80104ca0 <create>
801054e8:	83 c4 10             	add    $0x10,%esp
801054eb:	85 c0                	test   %eax,%eax
801054ed:	74 19                	je     80105508 <sys_mkdir+0x58>
801054ef:	83 ec 0c             	sub    $0xc,%esp
801054f2:	50                   	push   %eax
801054f3:	e8 58 c6 ff ff       	call   80101b50 <iunlockput>
801054f8:	e8 33 da ff ff       	call   80102f30 <end_op>
801054fd:	83 c4 10             	add    $0x10,%esp
80105500:	31 c0                	xor    %eax,%eax
80105502:	c9                   	leave  
80105503:	c3                   	ret    
80105504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105508:	e8 23 da ff ff       	call   80102f30 <end_op>
8010550d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105512:	c9                   	leave  
80105513:	c3                   	ret    
80105514:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010551b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010551f:	90                   	nop

80105520 <sys_mknod>:
80105520:	f3 0f 1e fb          	endbr32 
80105524:	55                   	push   %ebp
80105525:	89 e5                	mov    %esp,%ebp
80105527:	83 ec 18             	sub    $0x18,%esp
8010552a:	e8 91 d9 ff ff       	call   80102ec0 <begin_op>
8010552f:	83 ec 08             	sub    $0x8,%esp
80105532:	8d 45 ec             	lea    -0x14(%ebp),%eax
80105535:	50                   	push   %eax
80105536:	6a 00                	push   $0x0
80105538:	e8 f3 f5 ff ff       	call   80104b30 <argstr>
8010553d:	83 c4 10             	add    $0x10,%esp
80105540:	85 c0                	test   %eax,%eax
80105542:	78 64                	js     801055a8 <sys_mknod+0x88>
80105544:	83 ec 08             	sub    $0x8,%esp
80105547:	8d 45 f0             	lea    -0x10(%ebp),%eax
8010554a:	50                   	push   %eax
8010554b:	6a 01                	push   $0x1
8010554d:	e8 4e f5 ff ff       	call   80104aa0 <argint>
80105552:	83 c4 10             	add    $0x10,%esp
80105555:	85 c0                	test   %eax,%eax
80105557:	78 4f                	js     801055a8 <sys_mknod+0x88>
80105559:	83 ec 08             	sub    $0x8,%esp
8010555c:	8d 45 f4             	lea    -0xc(%ebp),%eax
8010555f:	50                   	push   %eax
80105560:	6a 02                	push   $0x2
80105562:	e8 39 f5 ff ff       	call   80104aa0 <argint>
80105567:	83 c4 10             	add    $0x10,%esp
8010556a:	85 c0                	test   %eax,%eax
8010556c:	78 3a                	js     801055a8 <sys_mknod+0x88>
8010556e:	0f bf 45 f4          	movswl -0xc(%ebp),%eax
80105572:	83 ec 0c             	sub    $0xc,%esp
80105575:	0f bf 4d f0          	movswl -0x10(%ebp),%ecx
80105579:	ba 03 00 00 00       	mov    $0x3,%edx
8010557e:	50                   	push   %eax
8010557f:	8b 45 ec             	mov    -0x14(%ebp),%eax
80105582:	e8 19 f7 ff ff       	call   80104ca0 <create>
80105587:	83 c4 10             	add    $0x10,%esp
8010558a:	85 c0                	test   %eax,%eax
8010558c:	74 1a                	je     801055a8 <sys_mknod+0x88>
8010558e:	83 ec 0c             	sub    $0xc,%esp
80105591:	50                   	push   %eax
80105592:	e8 b9 c5 ff ff       	call   80101b50 <iunlockput>
80105597:	e8 94 d9 ff ff       	call   80102f30 <end_op>
8010559c:	83 c4 10             	add    $0x10,%esp
8010559f:	31 c0                	xor    %eax,%eax
801055a1:	c9                   	leave  
801055a2:	c3                   	ret    
801055a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801055a7:	90                   	nop
801055a8:	e8 83 d9 ff ff       	call   80102f30 <end_op>
801055ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801055b2:	c9                   	leave  
801055b3:	c3                   	ret    
801055b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801055bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801055bf:	90                   	nop

801055c0 <sys_chdir>:
801055c0:	f3 0f 1e fb          	endbr32 
801055c4:	55                   	push   %ebp
801055c5:	89 e5                	mov    %esp,%ebp
801055c7:	56                   	push   %esi
801055c8:	53                   	push   %ebx
801055c9:	83 ec 10             	sub    $0x10,%esp
801055cc:	e8 4f e5 ff ff       	call   80103b20 <myproc>
801055d1:	89 c6                	mov    %eax,%esi
801055d3:	e8 e8 d8 ff ff       	call   80102ec0 <begin_op>
801055d8:	83 ec 08             	sub    $0x8,%esp
801055db:	8d 45 f4             	lea    -0xc(%ebp),%eax
801055de:	50                   	push   %eax
801055df:	6a 00                	push   $0x0
801055e1:	e8 4a f5 ff ff       	call   80104b30 <argstr>
801055e6:	83 c4 10             	add    $0x10,%esp
801055e9:	85 c0                	test   %eax,%eax
801055eb:	78 73                	js     80105660 <sys_chdir+0xa0>
801055ed:	83 ec 0c             	sub    $0xc,%esp
801055f0:	ff 75 f4             	pushl  -0xc(%ebp)
801055f3:	e8 78 ca ff ff       	call   80102070 <namei>
801055f8:	83 c4 10             	add    $0x10,%esp
801055fb:	89 c3                	mov    %eax,%ebx
801055fd:	85 c0                	test   %eax,%eax
801055ff:	74 5f                	je     80105660 <sys_chdir+0xa0>
80105601:	83 ec 0c             	sub    $0xc,%esp
80105604:	50                   	push   %eax
80105605:	e8 66 c3 ff ff       	call   80101970 <ilock>
8010560a:	83 c4 10             	add    $0x10,%esp
8010560d:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80105612:	75 2c                	jne    80105640 <sys_chdir+0x80>
80105614:	83 ec 0c             	sub    $0xc,%esp
80105617:	53                   	push   %ebx
80105618:	e8 33 c4 ff ff       	call   80101a50 <iunlock>
8010561d:	58                   	pop    %eax
8010561e:	ff 76 68             	pushl  0x68(%esi)
80105621:	e8 7a c4 ff ff       	call   80101aa0 <iput>
80105626:	e8 05 d9 ff ff       	call   80102f30 <end_op>
8010562b:	89 5e 68             	mov    %ebx,0x68(%esi)
8010562e:	83 c4 10             	add    $0x10,%esp
80105631:	31 c0                	xor    %eax,%eax
80105633:	8d 65 f8             	lea    -0x8(%ebp),%esp
80105636:	5b                   	pop    %ebx
80105637:	5e                   	pop    %esi
80105638:	5d                   	pop    %ebp
80105639:	c3                   	ret    
8010563a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80105640:	83 ec 0c             	sub    $0xc,%esp
80105643:	53                   	push   %ebx
80105644:	e8 07 c5 ff ff       	call   80101b50 <iunlockput>
80105649:	e8 e2 d8 ff ff       	call   80102f30 <end_op>
8010564e:	83 c4 10             	add    $0x10,%esp
80105651:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105656:	eb db                	jmp    80105633 <sys_chdir+0x73>
80105658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010565f:	90                   	nop
80105660:	e8 cb d8 ff ff       	call   80102f30 <end_op>
80105665:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010566a:	eb c7                	jmp    80105633 <sys_chdir+0x73>
8010566c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80105670 <sys_exec>:
80105670:	f3 0f 1e fb          	endbr32 
80105674:	55                   	push   %ebp
80105675:	89 e5                	mov    %esp,%ebp
80105677:	57                   	push   %edi
80105678:	56                   	push   %esi
80105679:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
8010567f:	53                   	push   %ebx
80105680:	81 ec a4 00 00 00    	sub    $0xa4,%esp
80105686:	50                   	push   %eax
80105687:	6a 00                	push   $0x0
80105689:	e8 a2 f4 ff ff       	call   80104b30 <argstr>
8010568e:	83 c4 10             	add    $0x10,%esp
80105691:	85 c0                	test   %eax,%eax
80105693:	0f 88 8b 00 00 00    	js     80105724 <sys_exec+0xb4>
80105699:	83 ec 08             	sub    $0x8,%esp
8010569c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
801056a2:	50                   	push   %eax
801056a3:	6a 01                	push   $0x1
801056a5:	e8 f6 f3 ff ff       	call   80104aa0 <argint>
801056aa:	83 c4 10             	add    $0x10,%esp
801056ad:	85 c0                	test   %eax,%eax
801056af:	78 73                	js     80105724 <sys_exec+0xb4>
801056b1:	83 ec 04             	sub    $0x4,%esp
801056b4:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
801056ba:	31 db                	xor    %ebx,%ebx
801056bc:	68 80 00 00 00       	push   $0x80
801056c1:	8d bd 64 ff ff ff    	lea    -0x9c(%ebp),%edi
801056c7:	6a 00                	push   $0x0
801056c9:	50                   	push   %eax
801056ca:	e8 e1 f0 ff ff       	call   801047b0 <memset>
801056cf:	83 c4 10             	add    $0x10,%esp
801056d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801056d8:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
801056de:	8d 34 9d 00 00 00 00 	lea    0x0(,%ebx,4),%esi
801056e5:	83 ec 08             	sub    $0x8,%esp
801056e8:	57                   	push   %edi
801056e9:	01 f0                	add    %esi,%eax
801056eb:	50                   	push   %eax
801056ec:	e8 0f f3 ff ff       	call   80104a00 <fetchint>
801056f1:	83 c4 10             	add    $0x10,%esp
801056f4:	85 c0                	test   %eax,%eax
801056f6:	78 2c                	js     80105724 <sys_exec+0xb4>
801056f8:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
801056fe:	85 c0                	test   %eax,%eax
80105700:	74 36                	je     80105738 <sys_exec+0xc8>
80105702:	8d 8d 68 ff ff ff    	lea    -0x98(%ebp),%ecx
80105708:	83 ec 08             	sub    $0x8,%esp
8010570b:	8d 14 31             	lea    (%ecx,%esi,1),%edx
8010570e:	52                   	push   %edx
8010570f:	50                   	push   %eax
80105710:	e8 2b f3 ff ff       	call   80104a40 <fetchstr>
80105715:	83 c4 10             	add    $0x10,%esp
80105718:	85 c0                	test   %eax,%eax
8010571a:	78 08                	js     80105724 <sys_exec+0xb4>
8010571c:	83 c3 01             	add    $0x1,%ebx
8010571f:	83 fb 20             	cmp    $0x20,%ebx
80105722:	75 b4                	jne    801056d8 <sys_exec+0x68>
80105724:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105727:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010572c:	5b                   	pop    %ebx
8010572d:	5e                   	pop    %esi
8010572e:	5f                   	pop    %edi
8010572f:	5d                   	pop    %ebp
80105730:	c3                   	ret    
80105731:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105738:	83 ec 08             	sub    $0x8,%esp
8010573b:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
80105741:	c7 84 9d 68 ff ff ff 	movl   $0x0,-0x98(%ebp,%ebx,4)
80105748:	00 00 00 00 
8010574c:	50                   	push   %eax
8010574d:	ff b5 5c ff ff ff    	pushl  -0xa4(%ebp)
80105753:	e8 98 b3 ff ff       	call   80100af0 <exec>
80105758:	83 c4 10             	add    $0x10,%esp
8010575b:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010575e:	5b                   	pop    %ebx
8010575f:	5e                   	pop    %esi
80105760:	5f                   	pop    %edi
80105761:	5d                   	pop    %ebp
80105762:	c3                   	ret    
80105763:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010576a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80105770 <sys_pipe>:
80105770:	f3 0f 1e fb          	endbr32 
80105774:	55                   	push   %ebp
80105775:	89 e5                	mov    %esp,%ebp
80105777:	53                   	push   %ebx
80105778:	8d 45 ec             	lea    -0x14(%ebp),%eax
8010577b:	83 ec 18             	sub    $0x18,%esp
8010577e:	6a 08                	push   $0x8
80105780:	50                   	push   %eax
80105781:	6a 00                	push   $0x0
80105783:	e8 48 f3 ff ff       	call   80104ad0 <argptr>
80105788:	83 c4 10             	add    $0x10,%esp
8010578b:	85 c0                	test   %eax,%eax
8010578d:	78 67                	js     801057f6 <sys_pipe+0x86>
8010578f:	83 ec 08             	sub    $0x8,%esp
80105792:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105795:	50                   	push   %eax
80105796:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105799:	50                   	push   %eax
8010579a:	e8 b1 dd ff ff       	call   80103550 <pipealloc>
8010579f:	83 c4 10             	add    $0x10,%esp
801057a2:	85 c0                	test   %eax,%eax
801057a4:	78 50                	js     801057f6 <sys_pipe+0x86>
801057a6:	8b 45 f0             	mov    -0x10(%ebp),%eax
801057a9:	e8 32 f4 ff ff       	call   80104be0 <fdalloc>
801057ae:	89 c3                	mov    %eax,%ebx
801057b0:	85 c0                	test   %eax,%eax
801057b2:	78 2b                	js     801057df <sys_pipe+0x6f>
801057b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
801057b7:	e8 24 f4 ff ff       	call   80104be0 <fdalloc>
801057bc:	85 c0                	test   %eax,%eax
801057be:	78 12                	js     801057d2 <sys_pipe+0x62>
801057c0:	8b 55 ec             	mov    -0x14(%ebp),%edx
801057c3:	89 1a                	mov    %ebx,(%edx)
801057c5:	8b 55 ec             	mov    -0x14(%ebp),%edx
801057c8:	89 42 04             	mov    %eax,0x4(%edx)
801057cb:	31 c0                	xor    %eax,%eax
801057cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801057d0:	c9                   	leave  
801057d1:	c3                   	ret    
801057d2:	e8 49 e3 ff ff       	call   80103b20 <myproc>
801057d7:	c7 44 98 28 00 00 00 	movl   $0x0,0x28(%eax,%ebx,4)
801057de:	00 
801057df:	83 ec 0c             	sub    $0xc,%esp
801057e2:	ff 75 f0             	pushl  -0x10(%ebp)
801057e5:	e8 46 b7 ff ff       	call   80100f30 <fileclose>
801057ea:	58                   	pop    %eax
801057eb:	ff 75 f4             	pushl  -0xc(%ebp)
801057ee:	e8 3d b7 ff ff       	call   80100f30 <fileclose>
801057f3:	83 c4 10             	add    $0x10,%esp
801057f6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801057fb:	eb d0                	jmp    801057cd <sys_pipe+0x5d>
801057fd:	66 90                	xchg   %ax,%ax
801057ff:	90                   	nop

80105800 <sys_fork>:
80105800:	f3 0f 1e fb          	endbr32 
80105804:	e9 b7 e4 ff ff       	jmp    80103cc0 <fork>
80105809:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80105810 <sys_exit>:
80105810:	f3 0f 1e fb          	endbr32 
80105814:	55                   	push   %ebp
80105815:	89 e5                	mov    %esp,%ebp
80105817:	83 ec 08             	sub    $0x8,%esp
8010581a:	e8 11 e7 ff ff       	call   80103f30 <exit>
8010581f:	31 c0                	xor    %eax,%eax
80105821:	c9                   	leave  
80105822:	c3                   	ret    
80105823:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010582a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80105830 <sys_wait>:
80105830:	f3 0f 1e fb          	endbr32 
80105834:	e9 e7 e8 ff ff       	jmp    80104120 <wait>
80105839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80105840 <sys_kill>:
80105840:	f3 0f 1e fb          	endbr32 
80105844:	55                   	push   %ebp
80105845:	89 e5                	mov    %esp,%ebp
80105847:	83 ec 20             	sub    $0x20,%esp
8010584a:	8d 45 f4             	lea    -0xc(%ebp),%eax
8010584d:	50                   	push   %eax
8010584e:	6a 00                	push   $0x0
80105850:	e8 4b f2 ff ff       	call   80104aa0 <argint>
80105855:	83 c4 10             	add    $0x10,%esp
80105858:	85 c0                	test   %eax,%eax
8010585a:	78 14                	js     80105870 <sys_kill+0x30>
8010585c:	83 ec 0c             	sub    $0xc,%esp
8010585f:	ff 75 f4             	pushl  -0xc(%ebp)
80105862:	e8 e9 e9 ff ff       	call   80104250 <kill>
80105867:	83 c4 10             	add    $0x10,%esp
8010586a:	c9                   	leave  
8010586b:	c3                   	ret    
8010586c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105870:	c9                   	leave  
80105871:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105876:	c3                   	ret    
80105877:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010587e:	66 90                	xchg   %ax,%ax

80105880 <sys_getpid>:
80105880:	f3 0f 1e fb          	endbr32 
80105884:	55                   	push   %ebp
80105885:	89 e5                	mov    %esp,%ebp
80105887:	83 ec 08             	sub    $0x8,%esp
8010588a:	e8 91 e2 ff ff       	call   80103b20 <myproc>
8010588f:	8b 40 10             	mov    0x10(%eax),%eax
80105892:	c9                   	leave  
80105893:	c3                   	ret    
80105894:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010589b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010589f:	90                   	nop

801058a0 <sys_sbrk>:
801058a0:	f3 0f 1e fb          	endbr32 
801058a4:	55                   	push   %ebp
801058a5:	89 e5                	mov    %esp,%ebp
801058a7:	53                   	push   %ebx
801058a8:	8d 45 f4             	lea    -0xc(%ebp),%eax
801058ab:	83 ec 1c             	sub    $0x1c,%esp
801058ae:	50                   	push   %eax
801058af:	6a 00                	push   $0x0
801058b1:	e8 ea f1 ff ff       	call   80104aa0 <argint>
801058b6:	83 c4 10             	add    $0x10,%esp
801058b9:	85 c0                	test   %eax,%eax
801058bb:	78 23                	js     801058e0 <sys_sbrk+0x40>
801058bd:	e8 5e e2 ff ff       	call   80103b20 <myproc>
801058c2:	83 ec 0c             	sub    $0xc,%esp
801058c5:	8b 18                	mov    (%eax),%ebx
801058c7:	ff 75 f4             	pushl  -0xc(%ebp)
801058ca:	e8 81 e3 ff ff       	call   80103c50 <growproc>
801058cf:	83 c4 10             	add    $0x10,%esp
801058d2:	85 c0                	test   %eax,%eax
801058d4:	78 0a                	js     801058e0 <sys_sbrk+0x40>
801058d6:	89 d8                	mov    %ebx,%eax
801058d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801058db:	c9                   	leave  
801058dc:	c3                   	ret    
801058dd:	8d 76 00             	lea    0x0(%esi),%esi
801058e0:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801058e5:	eb ef                	jmp    801058d6 <sys_sbrk+0x36>
801058e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801058ee:	66 90                	xchg   %ax,%ax

801058f0 <sys_sleep>:
801058f0:	f3 0f 1e fb          	endbr32 
801058f4:	55                   	push   %ebp
801058f5:	89 e5                	mov    %esp,%ebp
801058f7:	53                   	push   %ebx
801058f8:	8d 45 f4             	lea    -0xc(%ebp),%eax
801058fb:	83 ec 1c             	sub    $0x1c,%esp
801058fe:	50                   	push   %eax
801058ff:	6a 00                	push   $0x0
80105901:	e8 9a f1 ff ff       	call   80104aa0 <argint>
80105906:	83 c4 10             	add    $0x10,%esp
80105909:	85 c0                	test   %eax,%eax
8010590b:	0f 88 86 00 00 00    	js     80105997 <sys_sleep+0xa7>
80105911:	83 ec 0c             	sub    $0xc,%esp
80105914:	68 60 4c 11 80       	push   $0x80114c60
80105919:	e8 b2 ed ff ff       	call   801046d0 <acquire>
8010591e:	8b 55 f4             	mov    -0xc(%ebp),%edx
80105921:	8b 1d a0 54 11 80    	mov    0x801154a0,%ebx
80105927:	83 c4 10             	add    $0x10,%esp
8010592a:	85 d2                	test   %edx,%edx
8010592c:	75 23                	jne    80105951 <sys_sleep+0x61>
8010592e:	eb 50                	jmp    80105980 <sys_sleep+0x90>
80105930:	83 ec 08             	sub    $0x8,%esp
80105933:	68 60 4c 11 80       	push   $0x80114c60
80105938:	68 a0 54 11 80       	push   $0x801154a0
8010593d:	e8 1e e7 ff ff       	call   80104060 <sleep>
80105942:	a1 a0 54 11 80       	mov    0x801154a0,%eax
80105947:	83 c4 10             	add    $0x10,%esp
8010594a:	29 d8                	sub    %ebx,%eax
8010594c:	3b 45 f4             	cmp    -0xc(%ebp),%eax
8010594f:	73 2f                	jae    80105980 <sys_sleep+0x90>
80105951:	e8 ca e1 ff ff       	call   80103b20 <myproc>
80105956:	8b 40 24             	mov    0x24(%eax),%eax
80105959:	85 c0                	test   %eax,%eax
8010595b:	74 d3                	je     80105930 <sys_sleep+0x40>
8010595d:	83 ec 0c             	sub    $0xc,%esp
80105960:	68 60 4c 11 80       	push   $0x80114c60
80105965:	e8 d6 ed ff ff       	call   80104740 <release>
8010596a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010596d:	83 c4 10             	add    $0x10,%esp
80105970:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105975:	c9                   	leave  
80105976:	c3                   	ret    
80105977:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010597e:	66 90                	xchg   %ax,%ax
80105980:	83 ec 0c             	sub    $0xc,%esp
80105983:	68 60 4c 11 80       	push   $0x80114c60
80105988:	e8 b3 ed ff ff       	call   80104740 <release>
8010598d:	83 c4 10             	add    $0x10,%esp
80105990:	31 c0                	xor    %eax,%eax
80105992:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80105995:	c9                   	leave  
80105996:	c3                   	ret    
80105997:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010599c:	eb f4                	jmp    80105992 <sys_sleep+0xa2>
8010599e:	66 90                	xchg   %ax,%ax

801059a0 <sys_uptime>:
801059a0:	f3 0f 1e fb          	endbr32 
801059a4:	55                   	push   %ebp
801059a5:	89 e5                	mov    %esp,%ebp
801059a7:	53                   	push   %ebx
801059a8:	83 ec 10             	sub    $0x10,%esp
801059ab:	68 60 4c 11 80       	push   $0x80114c60
801059b0:	e8 1b ed ff ff       	call   801046d0 <acquire>
801059b5:	8b 1d a0 54 11 80    	mov    0x801154a0,%ebx
801059bb:	c7 04 24 60 4c 11 80 	movl   $0x80114c60,(%esp)
801059c2:	e8 79 ed ff ff       	call   80104740 <release>
801059c7:	89 d8                	mov    %ebx,%eax
801059c9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801059cc:	c9                   	leave  
801059cd:	c3                   	ret    

801059ce <alltraps>:
801059ce:	1e                   	push   %ds
801059cf:	06                   	push   %es
801059d0:	0f a0                	push   %fs
801059d2:	0f a8                	push   %gs
801059d4:	60                   	pusha  
801059d5:	66 b8 10 00          	mov    $0x10,%ax
801059d9:	8e d8                	mov    %eax,%ds
801059db:	8e c0                	mov    %eax,%es
801059dd:	54                   	push   %esp
801059de:	e8 ed 00 00 00       	call   80105ad0 <trap>
801059e3:	83 c4 04             	add    $0x4,%esp

801059e6 <trapret>:
801059e6:	61                   	popa   
801059e7:	0f a9                	pop    %gs
801059e9:	0f a1                	pop    %fs
801059eb:	07                   	pop    %es
801059ec:	1f                   	pop    %ds
801059ed:	83 c4 08             	add    $0x8,%esp
801059f0:	cf                   	iret   
801059f1:	66 90                	xchg   %ax,%ax
801059f3:	66 90                	xchg   %ax,%ax
801059f5:	66 90                	xchg   %ax,%ax
801059f7:	66 90                	xchg   %ax,%ax
801059f9:	66 90                	xchg   %ax,%ax
801059fb:	66 90                	xchg   %ax,%ax
801059fd:	66 90                	xchg   %ax,%ax
801059ff:	90                   	nop

80105a00 <rcr2>:
80105a00:	0f 20 d0             	mov    %cr2,%eax
80105a03:	c3                   	ret    
80105a04:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105a0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105a0f:	90                   	nop

80105a10 <lidt.constprop.0>:
80105a10:	55                   	push   %ebp
80105a11:	b8 ff 07 00 00       	mov    $0x7ff,%eax
80105a16:	89 e5                	mov    %esp,%ebp
80105a18:	83 ec 10             	sub    $0x10,%esp
80105a1b:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
80105a1f:	b8 a0 4c 11 80       	mov    $0x80114ca0,%eax
80105a24:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
80105a28:	c1 e8 10             	shr    $0x10,%eax
80105a2b:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
80105a2f:	8d 45 fa             	lea    -0x6(%ebp),%eax
80105a32:	0f 01 18             	lidtl  (%eax)
80105a35:	c9                   	leave  
80105a36:	c3                   	ret    
80105a37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105a3e:	66 90                	xchg   %ax,%ax

80105a40 <tvinit>:
80105a40:	f3 0f 1e fb          	endbr32 
80105a44:	55                   	push   %ebp
80105a45:	31 c0                	xor    %eax,%eax
80105a47:	89 e5                	mov    %esp,%ebp
80105a49:	83 ec 08             	sub    $0x8,%esp
80105a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105a50:	8b 14 85 08 a0 10 80 	mov    -0x7fef5ff8(,%eax,4),%edx
80105a57:	c7 04 c5 a2 4c 11 80 	movl   $0x8e000008,-0x7feeb35e(,%eax,8)
80105a5e:	08 00 00 8e 
80105a62:	66 89 14 c5 a0 4c 11 	mov    %dx,-0x7feeb360(,%eax,8)
80105a69:	80 
80105a6a:	c1 ea 10             	shr    $0x10,%edx
80105a6d:	66 89 14 c5 a6 4c 11 	mov    %dx,-0x7feeb35a(,%eax,8)
80105a74:	80 
80105a75:	83 c0 01             	add    $0x1,%eax
80105a78:	3d 00 01 00 00       	cmp    $0x100,%eax
80105a7d:	75 d1                	jne    80105a50 <tvinit+0x10>
80105a7f:	83 ec 08             	sub    $0x8,%esp
80105a82:	a1 08 a1 10 80       	mov    0x8010a108,%eax
80105a87:	c7 05 a2 4e 11 80 08 	movl   $0xef000008,0x80114ea2
80105a8e:	00 00 ef 
80105a91:	68 19 7a 10 80       	push   $0x80107a19
80105a96:	68 60 4c 11 80       	push   $0x80114c60
80105a9b:	66 a3 a0 4e 11 80    	mov    %ax,0x80114ea0
80105aa1:	c1 e8 10             	shr    $0x10,%eax
80105aa4:	66 a3 a6 4e 11 80    	mov    %ax,0x80114ea6
80105aaa:	e8 81 ea ff ff       	call   80104530 <initlock>
80105aaf:	83 c4 10             	add    $0x10,%esp
80105ab2:	c9                   	leave  
80105ab3:	c3                   	ret    
80105ab4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105abb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105abf:	90                   	nop

80105ac0 <idtinit>:
80105ac0:	f3 0f 1e fb          	endbr32 
80105ac4:	e9 47 ff ff ff       	jmp    80105a10 <lidt.constprop.0>
80105ac9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80105ad0 <trap>:
80105ad0:	f3 0f 1e fb          	endbr32 
80105ad4:	55                   	push   %ebp
80105ad5:	89 e5                	mov    %esp,%ebp
80105ad7:	57                   	push   %edi
80105ad8:	56                   	push   %esi
80105ad9:	53                   	push   %ebx
80105ada:	83 ec 1c             	sub    $0x1c,%esp
80105add:	8b 5d 08             	mov    0x8(%ebp),%ebx
80105ae0:	8b 43 30             	mov    0x30(%ebx),%eax
80105ae3:	83 f8 40             	cmp    $0x40,%eax
80105ae6:	0f 84 c4 01 00 00    	je     80105cb0 <trap+0x1e0>
80105aec:	83 e8 20             	sub    $0x20,%eax
80105aef:	83 f8 1f             	cmp    $0x1f,%eax
80105af2:	77 08                	ja     80105afc <trap+0x2c>
80105af4:	3e ff 24 85 c0 7a 10 	notrack jmp *-0x7fef8540(,%eax,4)
80105afb:	80 
80105afc:	e8 1f e0 ff ff       	call   80103b20 <myproc>
80105b01:	85 c0                	test   %eax,%eax
80105b03:	0f 84 f6 01 00 00    	je     80105cff <trap+0x22f>
80105b09:	f6 43 3c 03          	testb  $0x3,0x3c(%ebx)
80105b0d:	0f 84 ec 01 00 00    	je     80105cff <trap+0x22f>
80105b13:	e8 e8 fe ff ff       	call   80105a00 <rcr2>
80105b18:	8b 4b 38             	mov    0x38(%ebx),%ecx
80105b1b:	89 45 d8             	mov    %eax,-0x28(%ebp)
80105b1e:	89 4d dc             	mov    %ecx,-0x24(%ebp)
80105b21:	e8 da df ff ff       	call   80103b00 <cpuid>
80105b26:	8b 73 30             	mov    0x30(%ebx),%esi
80105b29:	89 c7                	mov    %eax,%edi
80105b2b:	8b 43 34             	mov    0x34(%ebx),%eax
80105b2e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80105b31:	e8 ea df ff ff       	call   80103b20 <myproc>
80105b36:	89 45 e0             	mov    %eax,-0x20(%ebp)
80105b39:	e8 e2 df ff ff       	call   80103b20 <myproc>
80105b3e:	8b 55 d8             	mov    -0x28(%ebp),%edx
80105b41:	8b 4d dc             	mov    -0x24(%ebp),%ecx
80105b44:	52                   	push   %edx
80105b45:	51                   	push   %ecx
80105b46:	57                   	push   %edi
80105b47:	ff 75 e4             	pushl  -0x1c(%ebp)
80105b4a:	56                   	push   %esi
80105b4b:	8b 75 e0             	mov    -0x20(%ebp),%esi
80105b4e:	83 c6 6c             	add    $0x6c,%esi
80105b51:	56                   	push   %esi
80105b52:	ff 70 10             	pushl  0x10(%eax)
80105b55:	68 7c 7a 10 80       	push   $0x80107a7c
80105b5a:	e8 f1 ab ff ff       	call   80100750 <cprintf>
80105b5f:	83 c4 20             	add    $0x20,%esp
80105b62:	e8 b9 df ff ff       	call   80103b20 <myproc>
80105b67:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
80105b6e:	e8 ad df ff ff       	call   80103b20 <myproc>
80105b73:	85 c0                	test   %eax,%eax
80105b75:	74 1d                	je     80105b94 <trap+0xc4>
80105b77:	e8 a4 df ff ff       	call   80103b20 <myproc>
80105b7c:	8b 50 24             	mov    0x24(%eax),%edx
80105b7f:	85 d2                	test   %edx,%edx
80105b81:	74 11                	je     80105b94 <trap+0xc4>
80105b83:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
80105b87:	83 e0 03             	and    $0x3,%eax
80105b8a:	66 83 f8 03          	cmp    $0x3,%ax
80105b8e:	0f 84 54 01 00 00    	je     80105ce8 <trap+0x218>
80105b94:	e8 87 df ff ff       	call   80103b20 <myproc>
80105b99:	85 c0                	test   %eax,%eax
80105b9b:	74 0f                	je     80105bac <trap+0xdc>
80105b9d:	e8 7e df ff ff       	call   80103b20 <myproc>
80105ba2:	83 78 0c 04          	cmpl   $0x4,0xc(%eax)
80105ba6:	0f 84 ec 00 00 00    	je     80105c98 <trap+0x1c8>
80105bac:	e8 6f df ff ff       	call   80103b20 <myproc>
80105bb1:	85 c0                	test   %eax,%eax
80105bb3:	74 1d                	je     80105bd2 <trap+0x102>
80105bb5:	e8 66 df ff ff       	call   80103b20 <myproc>
80105bba:	8b 40 24             	mov    0x24(%eax),%eax
80105bbd:	85 c0                	test   %eax,%eax
80105bbf:	74 11                	je     80105bd2 <trap+0x102>
80105bc1:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
80105bc5:	83 e0 03             	and    $0x3,%eax
80105bc8:	66 83 f8 03          	cmp    $0x3,%ax
80105bcc:	0f 84 07 01 00 00    	je     80105cd9 <trap+0x209>
80105bd2:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105bd5:	5b                   	pop    %ebx
80105bd6:	5e                   	pop    %esi
80105bd7:	5f                   	pop    %edi
80105bd8:	5d                   	pop    %ebp
80105bd9:	c3                   	ret    
80105bda:	e8 c1 c6 ff ff       	call   801022a0 <ideintr>
80105bdf:	e8 2c ce ff ff       	call   80102a10 <lapiceoi>
80105be4:	e8 37 df ff ff       	call   80103b20 <myproc>
80105be9:	85 c0                	test   %eax,%eax
80105beb:	75 8a                	jne    80105b77 <trap+0xa7>
80105bed:	eb a5                	jmp    80105b94 <trap+0xc4>
80105bef:	e8 0c df ff ff       	call   80103b00 <cpuid>
80105bf4:	85 c0                	test   %eax,%eax
80105bf6:	75 e7                	jne    80105bdf <trap+0x10f>
80105bf8:	83 ec 0c             	sub    $0xc,%esp
80105bfb:	68 60 4c 11 80       	push   $0x80114c60
80105c00:	e8 cb ea ff ff       	call   801046d0 <acquire>
80105c05:	c7 04 24 a0 54 11 80 	movl   $0x801154a0,(%esp)
80105c0c:	83 05 a0 54 11 80 01 	addl   $0x1,0x801154a0
80105c13:	e8 f8 e5 ff ff       	call   80104210 <wakeup>
80105c18:	c7 04 24 60 4c 11 80 	movl   $0x80114c60,(%esp)
80105c1f:	e8 1c eb ff ff       	call   80104740 <release>
80105c24:	83 c4 10             	add    $0x10,%esp
80105c27:	eb b6                	jmp    80105bdf <trap+0x10f>
80105c29:	e8 d2 cb ff ff       	call   80102800 <kbdintr>
80105c2e:	e8 dd cd ff ff       	call   80102a10 <lapiceoi>
80105c33:	e8 e8 de ff ff       	call   80103b20 <myproc>
80105c38:	85 c0                	test   %eax,%eax
80105c3a:	0f 85 37 ff ff ff    	jne    80105b77 <trap+0xa7>
80105c40:	e9 4f ff ff ff       	jmp    80105b94 <trap+0xc4>
80105c45:	e8 76 02 00 00       	call   80105ec0 <uartintr>
80105c4a:	e8 c1 cd ff ff       	call   80102a10 <lapiceoi>
80105c4f:	e8 cc de ff ff       	call   80103b20 <myproc>
80105c54:	85 c0                	test   %eax,%eax
80105c56:	0f 85 1b ff ff ff    	jne    80105b77 <trap+0xa7>
80105c5c:	e9 33 ff ff ff       	jmp    80105b94 <trap+0xc4>
80105c61:	8b 7b 38             	mov    0x38(%ebx),%edi
80105c64:	0f b7 73 3c          	movzwl 0x3c(%ebx),%esi
80105c68:	e8 93 de ff ff       	call   80103b00 <cpuid>
80105c6d:	57                   	push   %edi
80105c6e:	56                   	push   %esi
80105c6f:	50                   	push   %eax
80105c70:	68 24 7a 10 80       	push   $0x80107a24
80105c75:	e8 d6 aa ff ff       	call   80100750 <cprintf>
80105c7a:	e8 91 cd ff ff       	call   80102a10 <lapiceoi>
80105c7f:	83 c4 10             	add    $0x10,%esp
80105c82:	e8 99 de ff ff       	call   80103b20 <myproc>
80105c87:	85 c0                	test   %eax,%eax
80105c89:	0f 85 e8 fe ff ff    	jne    80105b77 <trap+0xa7>
80105c8f:	e9 00 ff ff ff       	jmp    80105b94 <trap+0xc4>
80105c94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105c98:	83 7b 30 20          	cmpl   $0x20,0x30(%ebx)
80105c9c:	0f 85 0a ff ff ff    	jne    80105bac <trap+0xdc>
80105ca2:	e8 79 e3 ff ff       	call   80104020 <yield>
80105ca7:	e9 00 ff ff ff       	jmp    80105bac <trap+0xdc>
80105cac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105cb0:	e8 6b de ff ff       	call   80103b20 <myproc>
80105cb5:	8b 70 24             	mov    0x24(%eax),%esi
80105cb8:	85 f6                	test   %esi,%esi
80105cba:	75 3c                	jne    80105cf8 <trap+0x228>
80105cbc:	e8 5f de ff ff       	call   80103b20 <myproc>
80105cc1:	89 58 18             	mov    %ebx,0x18(%eax)
80105cc4:	e8 a7 ee ff ff       	call   80104b70 <syscall>
80105cc9:	e8 52 de ff ff       	call   80103b20 <myproc>
80105cce:	8b 48 24             	mov    0x24(%eax),%ecx
80105cd1:	85 c9                	test   %ecx,%ecx
80105cd3:	0f 84 f9 fe ff ff    	je     80105bd2 <trap+0x102>
80105cd9:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105cdc:	5b                   	pop    %ebx
80105cdd:	5e                   	pop    %esi
80105cde:	5f                   	pop    %edi
80105cdf:	5d                   	pop    %ebp
80105ce0:	e9 4b e2 ff ff       	jmp    80103f30 <exit>
80105ce5:	8d 76 00             	lea    0x0(%esi),%esi
80105ce8:	e8 43 e2 ff ff       	call   80103f30 <exit>
80105ced:	e9 a2 fe ff ff       	jmp    80105b94 <trap+0xc4>
80105cf2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80105cf8:	e8 33 e2 ff ff       	call   80103f30 <exit>
80105cfd:	eb bd                	jmp    80105cbc <trap+0x1ec>
80105cff:	e8 fc fc ff ff       	call   80105a00 <rcr2>
80105d04:	8b 7b 38             	mov    0x38(%ebx),%edi
80105d07:	89 c6                	mov    %eax,%esi
80105d09:	e8 f2 dd ff ff       	call   80103b00 <cpuid>
80105d0e:	83 ec 0c             	sub    $0xc,%esp
80105d11:	56                   	push   %esi
80105d12:	57                   	push   %edi
80105d13:	50                   	push   %eax
80105d14:	ff 73 30             	pushl  0x30(%ebx)
80105d17:	68 48 7a 10 80       	push   $0x80107a48
80105d1c:	e8 2f aa ff ff       	call   80100750 <cprintf>
80105d21:	83 c4 14             	add    $0x14,%esp
80105d24:	68 1e 7a 10 80       	push   $0x80107a1e
80105d29:	e8 b2 a6 ff ff       	call   801003e0 <panic>
80105d2e:	66 90                	xchg   %ax,%ax

80105d30 <inb>:
80105d30:	89 c2                	mov    %eax,%edx
80105d32:	ec                   	in     (%dx),%al
80105d33:	c3                   	ret    
80105d34:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105d3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105d3f:	90                   	nop

80105d40 <outb>:
80105d40:	89 c1                	mov    %eax,%ecx
80105d42:	89 d0                	mov    %edx,%eax
80105d44:	89 ca                	mov    %ecx,%edx
80105d46:	ee                   	out    %al,(%dx)
80105d47:	c3                   	ret    
80105d48:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105d4f:	90                   	nop

80105d50 <uartgetc>:
80105d50:	f3 0f 1e fb          	endbr32 
80105d54:	a1 bc a5 10 80       	mov    0x8010a5bc,%eax
80105d59:	85 c0                	test   %eax,%eax
80105d5b:	74 2a                	je     80105d87 <uartgetc+0x37>
80105d5d:	55                   	push   %ebp
80105d5e:	b8 fd 03 00 00       	mov    $0x3fd,%eax
80105d63:	89 e5                	mov    %esp,%ebp
80105d65:	83 ec 08             	sub    $0x8,%esp
80105d68:	e8 c3 ff ff ff       	call   80105d30 <inb>
80105d6d:	a8 01                	test   $0x1,%al
80105d6f:	74 0f                	je     80105d80 <uartgetc+0x30>
80105d71:	b8 f8 03 00 00       	mov    $0x3f8,%eax
80105d76:	e8 b5 ff ff ff       	call   80105d30 <inb>
80105d7b:	c9                   	leave  
80105d7c:	0f b6 c0             	movzbl %al,%eax
80105d7f:	c3                   	ret    
80105d80:	c9                   	leave  
80105d81:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105d86:	c3                   	ret    
80105d87:	83 c8 ff             	or     $0xffffffff,%eax
80105d8a:	c3                   	ret    
80105d8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105d8f:	90                   	nop

80105d90 <uartputc>:
80105d90:	f3 0f 1e fb          	endbr32 
80105d94:	55                   	push   %ebp
80105d95:	a1 bc a5 10 80       	mov    0x8010a5bc,%eax
80105d9a:	89 e5                	mov    %esp,%ebp
80105d9c:	56                   	push   %esi
80105d9d:	8b 75 08             	mov    0x8(%ebp),%esi
80105da0:	53                   	push   %ebx
80105da1:	bb 80 00 00 00       	mov    $0x80,%ebx
80105da6:	85 c0                	test   %eax,%eax
80105da8:	75 18                	jne    80105dc2 <uartputc+0x32>
80105daa:	eb 3c                	jmp    80105de8 <uartputc+0x58>
80105dac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105db0:	83 ec 0c             	sub    $0xc,%esp
80105db3:	6a 0a                	push   $0xa
80105db5:	e8 86 cc ff ff       	call   80102a40 <microdelay>
80105dba:	83 c4 10             	add    $0x10,%esp
80105dbd:	83 eb 01             	sub    $0x1,%ebx
80105dc0:	74 0e                	je     80105dd0 <uartputc+0x40>
80105dc2:	b8 fd 03 00 00       	mov    $0x3fd,%eax
80105dc7:	e8 64 ff ff ff       	call   80105d30 <inb>
80105dcc:	a8 20                	test   $0x20,%al
80105dce:	74 e0                	je     80105db0 <uartputc+0x20>
80105dd0:	89 f0                	mov    %esi,%eax
80105dd2:	8d 65 f8             	lea    -0x8(%ebp),%esp
80105dd5:	5b                   	pop    %ebx
80105dd6:	0f b6 d0             	movzbl %al,%edx
80105dd9:	5e                   	pop    %esi
80105dda:	b8 f8 03 00 00       	mov    $0x3f8,%eax
80105ddf:	5d                   	pop    %ebp
80105de0:	e9 5b ff ff ff       	jmp    80105d40 <outb>
80105de5:	8d 76 00             	lea    0x0(%esi),%esi
80105de8:	8d 65 f8             	lea    -0x8(%ebp),%esp
80105deb:	5b                   	pop    %ebx
80105dec:	5e                   	pop    %esi
80105ded:	5d                   	pop    %ebp
80105dee:	c3                   	ret    
80105def:	90                   	nop

80105df0 <uartinit>:
80105df0:	f3 0f 1e fb          	endbr32 
80105df4:	55                   	push   %ebp
80105df5:	31 d2                	xor    %edx,%edx
80105df7:	b8 fa 03 00 00       	mov    $0x3fa,%eax
80105dfc:	89 e5                	mov    %esp,%ebp
80105dfe:	53                   	push   %ebx
80105dff:	83 ec 04             	sub    $0x4,%esp
80105e02:	e8 39 ff ff ff       	call   80105d40 <outb>
80105e07:	ba 80 00 00 00       	mov    $0x80,%edx
80105e0c:	b8 fb 03 00 00       	mov    $0x3fb,%eax
80105e11:	e8 2a ff ff ff       	call   80105d40 <outb>
80105e16:	ba 0c 00 00 00       	mov    $0xc,%edx
80105e1b:	b8 f8 03 00 00       	mov    $0x3f8,%eax
80105e20:	e8 1b ff ff ff       	call   80105d40 <outb>
80105e25:	31 d2                	xor    %edx,%edx
80105e27:	b8 f9 03 00 00       	mov    $0x3f9,%eax
80105e2c:	e8 0f ff ff ff       	call   80105d40 <outb>
80105e31:	ba 03 00 00 00       	mov    $0x3,%edx
80105e36:	b8 fb 03 00 00       	mov    $0x3fb,%eax
80105e3b:	e8 00 ff ff ff       	call   80105d40 <outb>
80105e40:	31 d2                	xor    %edx,%edx
80105e42:	b8 fc 03 00 00       	mov    $0x3fc,%eax
80105e47:	e8 f4 fe ff ff       	call   80105d40 <outb>
80105e4c:	b8 f9 03 00 00       	mov    $0x3f9,%eax
80105e51:	ba 01 00 00 00       	mov    $0x1,%edx
80105e56:	e8 e5 fe ff ff       	call   80105d40 <outb>
80105e5b:	b8 fd 03 00 00       	mov    $0x3fd,%eax
80105e60:	e8 cb fe ff ff       	call   80105d30 <inb>
80105e65:	3c ff                	cmp    $0xff,%al
80105e67:	74 4d                	je     80105eb6 <uartinit+0xc6>
80105e69:	b8 fa 03 00 00       	mov    $0x3fa,%eax
80105e6e:	bb 40 7b 10 80       	mov    $0x80107b40,%ebx
80105e73:	c7 05 bc a5 10 80 01 	movl   $0x1,0x8010a5bc
80105e7a:	00 00 00 
80105e7d:	e8 ae fe ff ff       	call   80105d30 <inb>
80105e82:	b8 f8 03 00 00       	mov    $0x3f8,%eax
80105e87:	e8 a4 fe ff ff       	call   80105d30 <inb>
80105e8c:	83 ec 08             	sub    $0x8,%esp
80105e8f:	6a 00                	push   $0x0
80105e91:	6a 04                	push   $0x4
80105e93:	e8 68 c6 ff ff       	call   80102500 <ioapicenable>
80105e98:	83 c4 10             	add    $0x10,%esp
80105e9b:	b8 78 00 00 00       	mov    $0x78,%eax
80105ea0:	83 ec 0c             	sub    $0xc,%esp
80105ea3:	83 c3 01             	add    $0x1,%ebx
80105ea6:	50                   	push   %eax
80105ea7:	e8 e4 fe ff ff       	call   80105d90 <uartputc>
80105eac:	0f be 03             	movsbl (%ebx),%eax
80105eaf:	83 c4 10             	add    $0x10,%esp
80105eb2:	84 c0                	test   %al,%al
80105eb4:	75 ea                	jne    80105ea0 <uartinit+0xb0>
80105eb6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80105eb9:	c9                   	leave  
80105eba:	c3                   	ret    
80105ebb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105ebf:	90                   	nop

80105ec0 <uartintr>:
80105ec0:	f3 0f 1e fb          	endbr32 
80105ec4:	55                   	push   %ebp
80105ec5:	89 e5                	mov    %esp,%ebp
80105ec7:	83 ec 14             	sub    $0x14,%esp
80105eca:	68 50 5d 10 80       	push   $0x80105d50
80105ecf:	e8 2c aa ff ff       	call   80100900 <consoleintr>
80105ed4:	83 c4 10             	add    $0x10,%esp
80105ed7:	c9                   	leave  
80105ed8:	c3                   	ret    

80105ed9 <vector0>:
80105ed9:	6a 00                	push   $0x0
80105edb:	6a 00                	push   $0x0
80105edd:	e9 ec fa ff ff       	jmp    801059ce <alltraps>

80105ee2 <vector1>:
80105ee2:	6a 00                	push   $0x0
80105ee4:	6a 01                	push   $0x1
80105ee6:	e9 e3 fa ff ff       	jmp    801059ce <alltraps>

80105eeb <vector2>:
80105eeb:	6a 00                	push   $0x0
80105eed:	6a 02                	push   $0x2
80105eef:	e9 da fa ff ff       	jmp    801059ce <alltraps>

80105ef4 <vector3>:
80105ef4:	6a 00                	push   $0x0
80105ef6:	6a 03                	push   $0x3
80105ef8:	e9 d1 fa ff ff       	jmp    801059ce <alltraps>

80105efd <vector4>:
80105efd:	6a 00                	push   $0x0
80105eff:	6a 04                	push   $0x4
80105f01:	e9 c8 fa ff ff       	jmp    801059ce <alltraps>

80105f06 <vector5>:
80105f06:	6a 00                	push   $0x0
80105f08:	6a 05                	push   $0x5
80105f0a:	e9 bf fa ff ff       	jmp    801059ce <alltraps>

80105f0f <vector6>:
80105f0f:	6a 00                	push   $0x0
80105f11:	6a 06                	push   $0x6
80105f13:	e9 b6 fa ff ff       	jmp    801059ce <alltraps>

80105f18 <vector7>:
80105f18:	6a 00                	push   $0x0
80105f1a:	6a 07                	push   $0x7
80105f1c:	e9 ad fa ff ff       	jmp    801059ce <alltraps>

80105f21 <vector8>:
80105f21:	6a 08                	push   $0x8
80105f23:	e9 a6 fa ff ff       	jmp    801059ce <alltraps>

80105f28 <vector9>:
80105f28:	6a 00                	push   $0x0
80105f2a:	6a 09                	push   $0x9
80105f2c:	e9 9d fa ff ff       	jmp    801059ce <alltraps>

80105f31 <vector10>:
80105f31:	6a 0a                	push   $0xa
80105f33:	e9 96 fa ff ff       	jmp    801059ce <alltraps>

80105f38 <vector11>:
80105f38:	6a 0b                	push   $0xb
80105f3a:	e9 8f fa ff ff       	jmp    801059ce <alltraps>

80105f3f <vector12>:
80105f3f:	6a 0c                	push   $0xc
80105f41:	e9 88 fa ff ff       	jmp    801059ce <alltraps>

80105f46 <vector13>:
80105f46:	6a 0d                	push   $0xd
80105f48:	e9 81 fa ff ff       	jmp    801059ce <alltraps>

80105f4d <vector14>:
80105f4d:	6a 0e                	push   $0xe
80105f4f:	e9 7a fa ff ff       	jmp    801059ce <alltraps>

80105f54 <vector15>:
80105f54:	6a 00                	push   $0x0
80105f56:	6a 0f                	push   $0xf
80105f58:	e9 71 fa ff ff       	jmp    801059ce <alltraps>

80105f5d <vector16>:
80105f5d:	6a 00                	push   $0x0
80105f5f:	6a 10                	push   $0x10
80105f61:	e9 68 fa ff ff       	jmp    801059ce <alltraps>

80105f66 <vector17>:
80105f66:	6a 11                	push   $0x11
80105f68:	e9 61 fa ff ff       	jmp    801059ce <alltraps>

80105f6d <vector18>:
80105f6d:	6a 00                	push   $0x0
80105f6f:	6a 12                	push   $0x12
80105f71:	e9 58 fa ff ff       	jmp    801059ce <alltraps>

80105f76 <vector19>:
80105f76:	6a 00                	push   $0x0
80105f78:	6a 13                	push   $0x13
80105f7a:	e9 4f fa ff ff       	jmp    801059ce <alltraps>

80105f7f <vector20>:
80105f7f:	6a 00                	push   $0x0
80105f81:	6a 14                	push   $0x14
80105f83:	e9 46 fa ff ff       	jmp    801059ce <alltraps>

80105f88 <vector21>:
80105f88:	6a 00                	push   $0x0
80105f8a:	6a 15                	push   $0x15
80105f8c:	e9 3d fa ff ff       	jmp    801059ce <alltraps>

80105f91 <vector22>:
80105f91:	6a 00                	push   $0x0
80105f93:	6a 16                	push   $0x16
80105f95:	e9 34 fa ff ff       	jmp    801059ce <alltraps>

80105f9a <vector23>:
80105f9a:	6a 00                	push   $0x0
80105f9c:	6a 17                	push   $0x17
80105f9e:	e9 2b fa ff ff       	jmp    801059ce <alltraps>

80105fa3 <vector24>:
80105fa3:	6a 00                	push   $0x0
80105fa5:	6a 18                	push   $0x18
80105fa7:	e9 22 fa ff ff       	jmp    801059ce <alltraps>

80105fac <vector25>:
80105fac:	6a 00                	push   $0x0
80105fae:	6a 19                	push   $0x19
80105fb0:	e9 19 fa ff ff       	jmp    801059ce <alltraps>

80105fb5 <vector26>:
80105fb5:	6a 00                	push   $0x0
80105fb7:	6a 1a                	push   $0x1a
80105fb9:	e9 10 fa ff ff       	jmp    801059ce <alltraps>

80105fbe <vector27>:
80105fbe:	6a 00                	push   $0x0
80105fc0:	6a 1b                	push   $0x1b
80105fc2:	e9 07 fa ff ff       	jmp    801059ce <alltraps>

80105fc7 <vector28>:
80105fc7:	6a 00                	push   $0x0
80105fc9:	6a 1c                	push   $0x1c
80105fcb:	e9 fe f9 ff ff       	jmp    801059ce <alltraps>

80105fd0 <vector29>:
80105fd0:	6a 00                	push   $0x0
80105fd2:	6a 1d                	push   $0x1d
80105fd4:	e9 f5 f9 ff ff       	jmp    801059ce <alltraps>

80105fd9 <vector30>:
80105fd9:	6a 00                	push   $0x0
80105fdb:	6a 1e                	push   $0x1e
80105fdd:	e9 ec f9 ff ff       	jmp    801059ce <alltraps>

80105fe2 <vector31>:
80105fe2:	6a 00                	push   $0x0
80105fe4:	6a 1f                	push   $0x1f
80105fe6:	e9 e3 f9 ff ff       	jmp    801059ce <alltraps>

80105feb <vector32>:
80105feb:	6a 00                	push   $0x0
80105fed:	6a 20                	push   $0x20
80105fef:	e9 da f9 ff ff       	jmp    801059ce <alltraps>

80105ff4 <vector33>:
80105ff4:	6a 00                	push   $0x0
80105ff6:	6a 21                	push   $0x21
80105ff8:	e9 d1 f9 ff ff       	jmp    801059ce <alltraps>

80105ffd <vector34>:
80105ffd:	6a 00                	push   $0x0
80105fff:	6a 22                	push   $0x22
80106001:	e9 c8 f9 ff ff       	jmp    801059ce <alltraps>

80106006 <vector35>:
80106006:	6a 00                	push   $0x0
80106008:	6a 23                	push   $0x23
8010600a:	e9 bf f9 ff ff       	jmp    801059ce <alltraps>

8010600f <vector36>:
8010600f:	6a 00                	push   $0x0
80106011:	6a 24                	push   $0x24
80106013:	e9 b6 f9 ff ff       	jmp    801059ce <alltraps>

80106018 <vector37>:
80106018:	6a 00                	push   $0x0
8010601a:	6a 25                	push   $0x25
8010601c:	e9 ad f9 ff ff       	jmp    801059ce <alltraps>

80106021 <vector38>:
80106021:	6a 00                	push   $0x0
80106023:	6a 26                	push   $0x26
80106025:	e9 a4 f9 ff ff       	jmp    801059ce <alltraps>

8010602a <vector39>:
8010602a:	6a 00                	push   $0x0
8010602c:	6a 27                	push   $0x27
8010602e:	e9 9b f9 ff ff       	jmp    801059ce <alltraps>

80106033 <vector40>:
80106033:	6a 00                	push   $0x0
80106035:	6a 28                	push   $0x28
80106037:	e9 92 f9 ff ff       	jmp    801059ce <alltraps>

8010603c <vector41>:
8010603c:	6a 00                	push   $0x0
8010603e:	6a 29                	push   $0x29
80106040:	e9 89 f9 ff ff       	jmp    801059ce <alltraps>

80106045 <vector42>:
80106045:	6a 00                	push   $0x0
80106047:	6a 2a                	push   $0x2a
80106049:	e9 80 f9 ff ff       	jmp    801059ce <alltraps>

8010604e <vector43>:
8010604e:	6a 00                	push   $0x0
80106050:	6a 2b                	push   $0x2b
80106052:	e9 77 f9 ff ff       	jmp    801059ce <alltraps>

80106057 <vector44>:
80106057:	6a 00                	push   $0x0
80106059:	6a 2c                	push   $0x2c
8010605b:	e9 6e f9 ff ff       	jmp    801059ce <alltraps>

80106060 <vector45>:
80106060:	6a 00                	push   $0x0
80106062:	6a 2d                	push   $0x2d
80106064:	e9 65 f9 ff ff       	jmp    801059ce <alltraps>

80106069 <vector46>:
80106069:	6a 00                	push   $0x0
8010606b:	6a 2e                	push   $0x2e
8010606d:	e9 5c f9 ff ff       	jmp    801059ce <alltraps>

80106072 <vector47>:
80106072:	6a 00                	push   $0x0
80106074:	6a 2f                	push   $0x2f
80106076:	e9 53 f9 ff ff       	jmp    801059ce <alltraps>

8010607b <vector48>:
8010607b:	6a 00                	push   $0x0
8010607d:	6a 30                	push   $0x30
8010607f:	e9 4a f9 ff ff       	jmp    801059ce <alltraps>

80106084 <vector49>:
80106084:	6a 00                	push   $0x0
80106086:	6a 31                	push   $0x31
80106088:	e9 41 f9 ff ff       	jmp    801059ce <alltraps>

8010608d <vector50>:
8010608d:	6a 00                	push   $0x0
8010608f:	6a 32                	push   $0x32
80106091:	e9 38 f9 ff ff       	jmp    801059ce <alltraps>

80106096 <vector51>:
80106096:	6a 00                	push   $0x0
80106098:	6a 33                	push   $0x33
8010609a:	e9 2f f9 ff ff       	jmp    801059ce <alltraps>

8010609f <vector52>:
8010609f:	6a 00                	push   $0x0
801060a1:	6a 34                	push   $0x34
801060a3:	e9 26 f9 ff ff       	jmp    801059ce <alltraps>

801060a8 <vector53>:
801060a8:	6a 00                	push   $0x0
801060aa:	6a 35                	push   $0x35
801060ac:	e9 1d f9 ff ff       	jmp    801059ce <alltraps>

801060b1 <vector54>:
801060b1:	6a 00                	push   $0x0
801060b3:	6a 36                	push   $0x36
801060b5:	e9 14 f9 ff ff       	jmp    801059ce <alltraps>

801060ba <vector55>:
801060ba:	6a 00                	push   $0x0
801060bc:	6a 37                	push   $0x37
801060be:	e9 0b f9 ff ff       	jmp    801059ce <alltraps>

801060c3 <vector56>:
801060c3:	6a 00                	push   $0x0
801060c5:	6a 38                	push   $0x38
801060c7:	e9 02 f9 ff ff       	jmp    801059ce <alltraps>

801060cc <vector57>:
801060cc:	6a 00                	push   $0x0
801060ce:	6a 39                	push   $0x39
801060d0:	e9 f9 f8 ff ff       	jmp    801059ce <alltraps>

801060d5 <vector58>:
801060d5:	6a 00                	push   $0x0
801060d7:	6a 3a                	push   $0x3a
801060d9:	e9 f0 f8 ff ff       	jmp    801059ce <alltraps>

801060de <vector59>:
801060de:	6a 00                	push   $0x0
801060e0:	6a 3b                	push   $0x3b
801060e2:	e9 e7 f8 ff ff       	jmp    801059ce <alltraps>

801060e7 <vector60>:
801060e7:	6a 00                	push   $0x0
801060e9:	6a 3c                	push   $0x3c
801060eb:	e9 de f8 ff ff       	jmp    801059ce <alltraps>

801060f0 <vector61>:
801060f0:	6a 00                	push   $0x0
801060f2:	6a 3d                	push   $0x3d
801060f4:	e9 d5 f8 ff ff       	jmp    801059ce <alltraps>

801060f9 <vector62>:
801060f9:	6a 00                	push   $0x0
801060fb:	6a 3e                	push   $0x3e
801060fd:	e9 cc f8 ff ff       	jmp    801059ce <alltraps>

80106102 <vector63>:
80106102:	6a 00                	push   $0x0
80106104:	6a 3f                	push   $0x3f
80106106:	e9 c3 f8 ff ff       	jmp    801059ce <alltraps>

8010610b <vector64>:
8010610b:	6a 00                	push   $0x0
8010610d:	6a 40                	push   $0x40
8010610f:	e9 ba f8 ff ff       	jmp    801059ce <alltraps>

80106114 <vector65>:
80106114:	6a 00                	push   $0x0
80106116:	6a 41                	push   $0x41
80106118:	e9 b1 f8 ff ff       	jmp    801059ce <alltraps>

8010611d <vector66>:
8010611d:	6a 00                	push   $0x0
8010611f:	6a 42                	push   $0x42
80106121:	e9 a8 f8 ff ff       	jmp    801059ce <alltraps>

80106126 <vector67>:
80106126:	6a 00                	push   $0x0
80106128:	6a 43                	push   $0x43
8010612a:	e9 9f f8 ff ff       	jmp    801059ce <alltraps>

8010612f <vector68>:
8010612f:	6a 00                	push   $0x0
80106131:	6a 44                	push   $0x44
80106133:	e9 96 f8 ff ff       	jmp    801059ce <alltraps>

80106138 <vector69>:
80106138:	6a 00                	push   $0x0
8010613a:	6a 45                	push   $0x45
8010613c:	e9 8d f8 ff ff       	jmp    801059ce <alltraps>

80106141 <vector70>:
80106141:	6a 00                	push   $0x0
80106143:	6a 46                	push   $0x46
80106145:	e9 84 f8 ff ff       	jmp    801059ce <alltraps>

8010614a <vector71>:
8010614a:	6a 00                	push   $0x0
8010614c:	6a 47                	push   $0x47
8010614e:	e9 7b f8 ff ff       	jmp    801059ce <alltraps>

80106153 <vector72>:
80106153:	6a 00                	push   $0x0
80106155:	6a 48                	push   $0x48
80106157:	e9 72 f8 ff ff       	jmp    801059ce <alltraps>

8010615c <vector73>:
8010615c:	6a 00                	push   $0x0
8010615e:	6a 49                	push   $0x49
80106160:	e9 69 f8 ff ff       	jmp    801059ce <alltraps>

80106165 <vector74>:
80106165:	6a 00                	push   $0x0
80106167:	6a 4a                	push   $0x4a
80106169:	e9 60 f8 ff ff       	jmp    801059ce <alltraps>

8010616e <vector75>:
8010616e:	6a 00                	push   $0x0
80106170:	6a 4b                	push   $0x4b
80106172:	e9 57 f8 ff ff       	jmp    801059ce <alltraps>

80106177 <vector76>:
80106177:	6a 00                	push   $0x0
80106179:	6a 4c                	push   $0x4c
8010617b:	e9 4e f8 ff ff       	jmp    801059ce <alltraps>

80106180 <vector77>:
80106180:	6a 00                	push   $0x0
80106182:	6a 4d                	push   $0x4d
80106184:	e9 45 f8 ff ff       	jmp    801059ce <alltraps>

80106189 <vector78>:
80106189:	6a 00                	push   $0x0
8010618b:	6a 4e                	push   $0x4e
8010618d:	e9 3c f8 ff ff       	jmp    801059ce <alltraps>

80106192 <vector79>:
80106192:	6a 00                	push   $0x0
80106194:	6a 4f                	push   $0x4f
80106196:	e9 33 f8 ff ff       	jmp    801059ce <alltraps>

8010619b <vector80>:
8010619b:	6a 00                	push   $0x0
8010619d:	6a 50                	push   $0x50
8010619f:	e9 2a f8 ff ff       	jmp    801059ce <alltraps>

801061a4 <vector81>:
801061a4:	6a 00                	push   $0x0
801061a6:	6a 51                	push   $0x51
801061a8:	e9 21 f8 ff ff       	jmp    801059ce <alltraps>

801061ad <vector82>:
801061ad:	6a 00                	push   $0x0
801061af:	6a 52                	push   $0x52
801061b1:	e9 18 f8 ff ff       	jmp    801059ce <alltraps>

801061b6 <vector83>:
801061b6:	6a 00                	push   $0x0
801061b8:	6a 53                	push   $0x53
801061ba:	e9 0f f8 ff ff       	jmp    801059ce <alltraps>

801061bf <vector84>:
801061bf:	6a 00                	push   $0x0
801061c1:	6a 54                	push   $0x54
801061c3:	e9 06 f8 ff ff       	jmp    801059ce <alltraps>

801061c8 <vector85>:
801061c8:	6a 00                	push   $0x0
801061ca:	6a 55                	push   $0x55
801061cc:	e9 fd f7 ff ff       	jmp    801059ce <alltraps>

801061d1 <vector86>:
801061d1:	6a 00                	push   $0x0
801061d3:	6a 56                	push   $0x56
801061d5:	e9 f4 f7 ff ff       	jmp    801059ce <alltraps>

801061da <vector87>:
801061da:	6a 00                	push   $0x0
801061dc:	6a 57                	push   $0x57
801061de:	e9 eb f7 ff ff       	jmp    801059ce <alltraps>

801061e3 <vector88>:
801061e3:	6a 00                	push   $0x0
801061e5:	6a 58                	push   $0x58
801061e7:	e9 e2 f7 ff ff       	jmp    801059ce <alltraps>

801061ec <vector89>:
801061ec:	6a 00                	push   $0x0
801061ee:	6a 59                	push   $0x59
801061f0:	e9 d9 f7 ff ff       	jmp    801059ce <alltraps>

801061f5 <vector90>:
801061f5:	6a 00                	push   $0x0
801061f7:	6a 5a                	push   $0x5a
801061f9:	e9 d0 f7 ff ff       	jmp    801059ce <alltraps>

801061fe <vector91>:
801061fe:	6a 00                	push   $0x0
80106200:	6a 5b                	push   $0x5b
80106202:	e9 c7 f7 ff ff       	jmp    801059ce <alltraps>

80106207 <vector92>:
80106207:	6a 00                	push   $0x0
80106209:	6a 5c                	push   $0x5c
8010620b:	e9 be f7 ff ff       	jmp    801059ce <alltraps>

80106210 <vector93>:
80106210:	6a 00                	push   $0x0
80106212:	6a 5d                	push   $0x5d
80106214:	e9 b5 f7 ff ff       	jmp    801059ce <alltraps>

80106219 <vector94>:
80106219:	6a 00                	push   $0x0
8010621b:	6a 5e                	push   $0x5e
8010621d:	e9 ac f7 ff ff       	jmp    801059ce <alltraps>

80106222 <vector95>:
80106222:	6a 00                	push   $0x0
80106224:	6a 5f                	push   $0x5f
80106226:	e9 a3 f7 ff ff       	jmp    801059ce <alltraps>

8010622b <vector96>:
8010622b:	6a 00                	push   $0x0
8010622d:	6a 60                	push   $0x60
8010622f:	e9 9a f7 ff ff       	jmp    801059ce <alltraps>

80106234 <vector97>:
80106234:	6a 00                	push   $0x0
80106236:	6a 61                	push   $0x61
80106238:	e9 91 f7 ff ff       	jmp    801059ce <alltraps>

8010623d <vector98>:
8010623d:	6a 00                	push   $0x0
8010623f:	6a 62                	push   $0x62
80106241:	e9 88 f7 ff ff       	jmp    801059ce <alltraps>

80106246 <vector99>:
80106246:	6a 00                	push   $0x0
80106248:	6a 63                	push   $0x63
8010624a:	e9 7f f7 ff ff       	jmp    801059ce <alltraps>

8010624f <vector100>:
8010624f:	6a 00                	push   $0x0
80106251:	6a 64                	push   $0x64
80106253:	e9 76 f7 ff ff       	jmp    801059ce <alltraps>

80106258 <vector101>:
80106258:	6a 00                	push   $0x0
8010625a:	6a 65                	push   $0x65
8010625c:	e9 6d f7 ff ff       	jmp    801059ce <alltraps>

80106261 <vector102>:
80106261:	6a 00                	push   $0x0
80106263:	6a 66                	push   $0x66
80106265:	e9 64 f7 ff ff       	jmp    801059ce <alltraps>

8010626a <vector103>:
8010626a:	6a 00                	push   $0x0
8010626c:	6a 67                	push   $0x67
8010626e:	e9 5b f7 ff ff       	jmp    801059ce <alltraps>

80106273 <vector104>:
80106273:	6a 00                	push   $0x0
80106275:	6a 68                	push   $0x68
80106277:	e9 52 f7 ff ff       	jmp    801059ce <alltraps>

8010627c <vector105>:
8010627c:	6a 00                	push   $0x0
8010627e:	6a 69                	push   $0x69
80106280:	e9 49 f7 ff ff       	jmp    801059ce <alltraps>

80106285 <vector106>:
80106285:	6a 00                	push   $0x0
80106287:	6a 6a                	push   $0x6a
80106289:	e9 40 f7 ff ff       	jmp    801059ce <alltraps>

8010628e <vector107>:
8010628e:	6a 00                	push   $0x0
80106290:	6a 6b                	push   $0x6b
80106292:	e9 37 f7 ff ff       	jmp    801059ce <alltraps>

80106297 <vector108>:
80106297:	6a 00                	push   $0x0
80106299:	6a 6c                	push   $0x6c
8010629b:	e9 2e f7 ff ff       	jmp    801059ce <alltraps>

801062a0 <vector109>:
801062a0:	6a 00                	push   $0x0
801062a2:	6a 6d                	push   $0x6d
801062a4:	e9 25 f7 ff ff       	jmp    801059ce <alltraps>

801062a9 <vector110>:
801062a9:	6a 00                	push   $0x0
801062ab:	6a 6e                	push   $0x6e
801062ad:	e9 1c f7 ff ff       	jmp    801059ce <alltraps>

801062b2 <vector111>:
801062b2:	6a 00                	push   $0x0
801062b4:	6a 6f                	push   $0x6f
801062b6:	e9 13 f7 ff ff       	jmp    801059ce <alltraps>

801062bb <vector112>:
801062bb:	6a 00                	push   $0x0
801062bd:	6a 70                	push   $0x70
801062bf:	e9 0a f7 ff ff       	jmp    801059ce <alltraps>

801062c4 <vector113>:
801062c4:	6a 00                	push   $0x0
801062c6:	6a 71                	push   $0x71
801062c8:	e9 01 f7 ff ff       	jmp    801059ce <alltraps>

801062cd <vector114>:
801062cd:	6a 00                	push   $0x0
801062cf:	6a 72                	push   $0x72
801062d1:	e9 f8 f6 ff ff       	jmp    801059ce <alltraps>

801062d6 <vector115>:
801062d6:	6a 00                	push   $0x0
801062d8:	6a 73                	push   $0x73
801062da:	e9 ef f6 ff ff       	jmp    801059ce <alltraps>

801062df <vector116>:
801062df:	6a 00                	push   $0x0
801062e1:	6a 74                	push   $0x74
801062e3:	e9 e6 f6 ff ff       	jmp    801059ce <alltraps>

801062e8 <vector117>:
801062e8:	6a 00                	push   $0x0
801062ea:	6a 75                	push   $0x75
801062ec:	e9 dd f6 ff ff       	jmp    801059ce <alltraps>

801062f1 <vector118>:
801062f1:	6a 00                	push   $0x0
801062f3:	6a 76                	push   $0x76
801062f5:	e9 d4 f6 ff ff       	jmp    801059ce <alltraps>

801062fa <vector119>:
801062fa:	6a 00                	push   $0x0
801062fc:	6a 77                	push   $0x77
801062fe:	e9 cb f6 ff ff       	jmp    801059ce <alltraps>

80106303 <vector120>:
80106303:	6a 00                	push   $0x0
80106305:	6a 78                	push   $0x78
80106307:	e9 c2 f6 ff ff       	jmp    801059ce <alltraps>

8010630c <vector121>:
8010630c:	6a 00                	push   $0x0
8010630e:	6a 79                	push   $0x79
80106310:	e9 b9 f6 ff ff       	jmp    801059ce <alltraps>

80106315 <vector122>:
80106315:	6a 00                	push   $0x0
80106317:	6a 7a                	push   $0x7a
80106319:	e9 b0 f6 ff ff       	jmp    801059ce <alltraps>

8010631e <vector123>:
8010631e:	6a 00                	push   $0x0
80106320:	6a 7b                	push   $0x7b
80106322:	e9 a7 f6 ff ff       	jmp    801059ce <alltraps>

80106327 <vector124>:
80106327:	6a 00                	push   $0x0
80106329:	6a 7c                	push   $0x7c
8010632b:	e9 9e f6 ff ff       	jmp    801059ce <alltraps>

80106330 <vector125>:
80106330:	6a 00                	push   $0x0
80106332:	6a 7d                	push   $0x7d
80106334:	e9 95 f6 ff ff       	jmp    801059ce <alltraps>

80106339 <vector126>:
80106339:	6a 00                	push   $0x0
8010633b:	6a 7e                	push   $0x7e
8010633d:	e9 8c f6 ff ff       	jmp    801059ce <alltraps>

80106342 <vector127>:
80106342:	6a 00                	push   $0x0
80106344:	6a 7f                	push   $0x7f
80106346:	e9 83 f6 ff ff       	jmp    801059ce <alltraps>

8010634b <vector128>:
8010634b:	6a 00                	push   $0x0
8010634d:	68 80 00 00 00       	push   $0x80
80106352:	e9 77 f6 ff ff       	jmp    801059ce <alltraps>

80106357 <vector129>:
80106357:	6a 00                	push   $0x0
80106359:	68 81 00 00 00       	push   $0x81
8010635e:	e9 6b f6 ff ff       	jmp    801059ce <alltraps>

80106363 <vector130>:
80106363:	6a 00                	push   $0x0
80106365:	68 82 00 00 00       	push   $0x82
8010636a:	e9 5f f6 ff ff       	jmp    801059ce <alltraps>

8010636f <vector131>:
8010636f:	6a 00                	push   $0x0
80106371:	68 83 00 00 00       	push   $0x83
80106376:	e9 53 f6 ff ff       	jmp    801059ce <alltraps>

8010637b <vector132>:
8010637b:	6a 00                	push   $0x0
8010637d:	68 84 00 00 00       	push   $0x84
80106382:	e9 47 f6 ff ff       	jmp    801059ce <alltraps>

80106387 <vector133>:
80106387:	6a 00                	push   $0x0
80106389:	68 85 00 00 00       	push   $0x85
8010638e:	e9 3b f6 ff ff       	jmp    801059ce <alltraps>

80106393 <vector134>:
80106393:	6a 00                	push   $0x0
80106395:	68 86 00 00 00       	push   $0x86
8010639a:	e9 2f f6 ff ff       	jmp    801059ce <alltraps>

8010639f <vector135>:
8010639f:	6a 00                	push   $0x0
801063a1:	68 87 00 00 00       	push   $0x87
801063a6:	e9 23 f6 ff ff       	jmp    801059ce <alltraps>

801063ab <vector136>:
801063ab:	6a 00                	push   $0x0
801063ad:	68 88 00 00 00       	push   $0x88
801063b2:	e9 17 f6 ff ff       	jmp    801059ce <alltraps>

801063b7 <vector137>:
801063b7:	6a 00                	push   $0x0
801063b9:	68 89 00 00 00       	push   $0x89
801063be:	e9 0b f6 ff ff       	jmp    801059ce <alltraps>

801063c3 <vector138>:
801063c3:	6a 00                	push   $0x0
801063c5:	68 8a 00 00 00       	push   $0x8a
801063ca:	e9 ff f5 ff ff       	jmp    801059ce <alltraps>

801063cf <vector139>:
801063cf:	6a 00                	push   $0x0
801063d1:	68 8b 00 00 00       	push   $0x8b
801063d6:	e9 f3 f5 ff ff       	jmp    801059ce <alltraps>

801063db <vector140>:
801063db:	6a 00                	push   $0x0
801063dd:	68 8c 00 00 00       	push   $0x8c
801063e2:	e9 e7 f5 ff ff       	jmp    801059ce <alltraps>

801063e7 <vector141>:
801063e7:	6a 00                	push   $0x0
801063e9:	68 8d 00 00 00       	push   $0x8d
801063ee:	e9 db f5 ff ff       	jmp    801059ce <alltraps>

801063f3 <vector142>:
801063f3:	6a 00                	push   $0x0
801063f5:	68 8e 00 00 00       	push   $0x8e
801063fa:	e9 cf f5 ff ff       	jmp    801059ce <alltraps>

801063ff <vector143>:
801063ff:	6a 00                	push   $0x0
80106401:	68 8f 00 00 00       	push   $0x8f
80106406:	e9 c3 f5 ff ff       	jmp    801059ce <alltraps>

8010640b <vector144>:
8010640b:	6a 00                	push   $0x0
8010640d:	68 90 00 00 00       	push   $0x90
80106412:	e9 b7 f5 ff ff       	jmp    801059ce <alltraps>

80106417 <vector145>:
80106417:	6a 00                	push   $0x0
80106419:	68 91 00 00 00       	push   $0x91
8010641e:	e9 ab f5 ff ff       	jmp    801059ce <alltraps>

80106423 <vector146>:
80106423:	6a 00                	push   $0x0
80106425:	68 92 00 00 00       	push   $0x92
8010642a:	e9 9f f5 ff ff       	jmp    801059ce <alltraps>

8010642f <vector147>:
8010642f:	6a 00                	push   $0x0
80106431:	68 93 00 00 00       	push   $0x93
80106436:	e9 93 f5 ff ff       	jmp    801059ce <alltraps>

8010643b <vector148>:
8010643b:	6a 00                	push   $0x0
8010643d:	68 94 00 00 00       	push   $0x94
80106442:	e9 87 f5 ff ff       	jmp    801059ce <alltraps>

80106447 <vector149>:
80106447:	6a 00                	push   $0x0
80106449:	68 95 00 00 00       	push   $0x95
8010644e:	e9 7b f5 ff ff       	jmp    801059ce <alltraps>

80106453 <vector150>:
80106453:	6a 00                	push   $0x0
80106455:	68 96 00 00 00       	push   $0x96
8010645a:	e9 6f f5 ff ff       	jmp    801059ce <alltraps>

8010645f <vector151>:
8010645f:	6a 00                	push   $0x0
80106461:	68 97 00 00 00       	push   $0x97
80106466:	e9 63 f5 ff ff       	jmp    801059ce <alltraps>

8010646b <vector152>:
8010646b:	6a 00                	push   $0x0
8010646d:	68 98 00 00 00       	push   $0x98
80106472:	e9 57 f5 ff ff       	jmp    801059ce <alltraps>

80106477 <vector153>:
80106477:	6a 00                	push   $0x0
80106479:	68 99 00 00 00       	push   $0x99
8010647e:	e9 4b f5 ff ff       	jmp    801059ce <alltraps>

80106483 <vector154>:
80106483:	6a 00                	push   $0x0
80106485:	68 9a 00 00 00       	push   $0x9a
8010648a:	e9 3f f5 ff ff       	jmp    801059ce <alltraps>

8010648f <vector155>:
8010648f:	6a 00                	push   $0x0
80106491:	68 9b 00 00 00       	push   $0x9b
80106496:	e9 33 f5 ff ff       	jmp    801059ce <alltraps>

8010649b <vector156>:
8010649b:	6a 00                	push   $0x0
8010649d:	68 9c 00 00 00       	push   $0x9c
801064a2:	e9 27 f5 ff ff       	jmp    801059ce <alltraps>

801064a7 <vector157>:
801064a7:	6a 00                	push   $0x0
801064a9:	68 9d 00 00 00       	push   $0x9d
801064ae:	e9 1b f5 ff ff       	jmp    801059ce <alltraps>

801064b3 <vector158>:
801064b3:	6a 00                	push   $0x0
801064b5:	68 9e 00 00 00       	push   $0x9e
801064ba:	e9 0f f5 ff ff       	jmp    801059ce <alltraps>

801064bf <vector159>:
801064bf:	6a 00                	push   $0x0
801064c1:	68 9f 00 00 00       	push   $0x9f
801064c6:	e9 03 f5 ff ff       	jmp    801059ce <alltraps>

801064cb <vector160>:
801064cb:	6a 00                	push   $0x0
801064cd:	68 a0 00 00 00       	push   $0xa0
801064d2:	e9 f7 f4 ff ff       	jmp    801059ce <alltraps>

801064d7 <vector161>:
801064d7:	6a 00                	push   $0x0
801064d9:	68 a1 00 00 00       	push   $0xa1
801064de:	e9 eb f4 ff ff       	jmp    801059ce <alltraps>

801064e3 <vector162>:
801064e3:	6a 00                	push   $0x0
801064e5:	68 a2 00 00 00       	push   $0xa2
801064ea:	e9 df f4 ff ff       	jmp    801059ce <alltraps>

801064ef <vector163>:
801064ef:	6a 00                	push   $0x0
801064f1:	68 a3 00 00 00       	push   $0xa3
801064f6:	e9 d3 f4 ff ff       	jmp    801059ce <alltraps>

801064fb <vector164>:
801064fb:	6a 00                	push   $0x0
801064fd:	68 a4 00 00 00       	push   $0xa4
80106502:	e9 c7 f4 ff ff       	jmp    801059ce <alltraps>

80106507 <vector165>:
80106507:	6a 00                	push   $0x0
80106509:	68 a5 00 00 00       	push   $0xa5
8010650e:	e9 bb f4 ff ff       	jmp    801059ce <alltraps>

80106513 <vector166>:
80106513:	6a 00                	push   $0x0
80106515:	68 a6 00 00 00       	push   $0xa6
8010651a:	e9 af f4 ff ff       	jmp    801059ce <alltraps>

8010651f <vector167>:
8010651f:	6a 00                	push   $0x0
80106521:	68 a7 00 00 00       	push   $0xa7
80106526:	e9 a3 f4 ff ff       	jmp    801059ce <alltraps>

8010652b <vector168>:
8010652b:	6a 00                	push   $0x0
8010652d:	68 a8 00 00 00       	push   $0xa8
80106532:	e9 97 f4 ff ff       	jmp    801059ce <alltraps>

80106537 <vector169>:
80106537:	6a 00                	push   $0x0
80106539:	68 a9 00 00 00       	push   $0xa9
8010653e:	e9 8b f4 ff ff       	jmp    801059ce <alltraps>

80106543 <vector170>:
80106543:	6a 00                	push   $0x0
80106545:	68 aa 00 00 00       	push   $0xaa
8010654a:	e9 7f f4 ff ff       	jmp    801059ce <alltraps>

8010654f <vector171>:
8010654f:	6a 00                	push   $0x0
80106551:	68 ab 00 00 00       	push   $0xab
80106556:	e9 73 f4 ff ff       	jmp    801059ce <alltraps>

8010655b <vector172>:
8010655b:	6a 00                	push   $0x0
8010655d:	68 ac 00 00 00       	push   $0xac
80106562:	e9 67 f4 ff ff       	jmp    801059ce <alltraps>

80106567 <vector173>:
80106567:	6a 00                	push   $0x0
80106569:	68 ad 00 00 00       	push   $0xad
8010656e:	e9 5b f4 ff ff       	jmp    801059ce <alltraps>

80106573 <vector174>:
80106573:	6a 00                	push   $0x0
80106575:	68 ae 00 00 00       	push   $0xae
8010657a:	e9 4f f4 ff ff       	jmp    801059ce <alltraps>

8010657f <vector175>:
8010657f:	6a 00                	push   $0x0
80106581:	68 af 00 00 00       	push   $0xaf
80106586:	e9 43 f4 ff ff       	jmp    801059ce <alltraps>

8010658b <vector176>:
8010658b:	6a 00                	push   $0x0
8010658d:	68 b0 00 00 00       	push   $0xb0
80106592:	e9 37 f4 ff ff       	jmp    801059ce <alltraps>

80106597 <vector177>:
80106597:	6a 00                	push   $0x0
80106599:	68 b1 00 00 00       	push   $0xb1
8010659e:	e9 2b f4 ff ff       	jmp    801059ce <alltraps>

801065a3 <vector178>:
801065a3:	6a 00                	push   $0x0
801065a5:	68 b2 00 00 00       	push   $0xb2
801065aa:	e9 1f f4 ff ff       	jmp    801059ce <alltraps>

801065af <vector179>:
801065af:	6a 00                	push   $0x0
801065b1:	68 b3 00 00 00       	push   $0xb3
801065b6:	e9 13 f4 ff ff       	jmp    801059ce <alltraps>

801065bb <vector180>:
801065bb:	6a 00                	push   $0x0
801065bd:	68 b4 00 00 00       	push   $0xb4
801065c2:	e9 07 f4 ff ff       	jmp    801059ce <alltraps>

801065c7 <vector181>:
801065c7:	6a 00                	push   $0x0
801065c9:	68 b5 00 00 00       	push   $0xb5
801065ce:	e9 fb f3 ff ff       	jmp    801059ce <alltraps>

801065d3 <vector182>:
801065d3:	6a 00                	push   $0x0
801065d5:	68 b6 00 00 00       	push   $0xb6
801065da:	e9 ef f3 ff ff       	jmp    801059ce <alltraps>

801065df <vector183>:
801065df:	6a 00                	push   $0x0
801065e1:	68 b7 00 00 00       	push   $0xb7
801065e6:	e9 e3 f3 ff ff       	jmp    801059ce <alltraps>

801065eb <vector184>:
801065eb:	6a 00                	push   $0x0
801065ed:	68 b8 00 00 00       	push   $0xb8
801065f2:	e9 d7 f3 ff ff       	jmp    801059ce <alltraps>

801065f7 <vector185>:
801065f7:	6a 00                	push   $0x0
801065f9:	68 b9 00 00 00       	push   $0xb9
801065fe:	e9 cb f3 ff ff       	jmp    801059ce <alltraps>

80106603 <vector186>:
80106603:	6a 00                	push   $0x0
80106605:	68 ba 00 00 00       	push   $0xba
8010660a:	e9 bf f3 ff ff       	jmp    801059ce <alltraps>

8010660f <vector187>:
8010660f:	6a 00                	push   $0x0
80106611:	68 bb 00 00 00       	push   $0xbb
80106616:	e9 b3 f3 ff ff       	jmp    801059ce <alltraps>

8010661b <vector188>:
8010661b:	6a 00                	push   $0x0
8010661d:	68 bc 00 00 00       	push   $0xbc
80106622:	e9 a7 f3 ff ff       	jmp    801059ce <alltraps>

80106627 <vector189>:
80106627:	6a 00                	push   $0x0
80106629:	68 bd 00 00 00       	push   $0xbd
8010662e:	e9 9b f3 ff ff       	jmp    801059ce <alltraps>

80106633 <vector190>:
80106633:	6a 00                	push   $0x0
80106635:	68 be 00 00 00       	push   $0xbe
8010663a:	e9 8f f3 ff ff       	jmp    801059ce <alltraps>

8010663f <vector191>:
8010663f:	6a 00                	push   $0x0
80106641:	68 bf 00 00 00       	push   $0xbf
80106646:	e9 83 f3 ff ff       	jmp    801059ce <alltraps>

8010664b <vector192>:
8010664b:	6a 00                	push   $0x0
8010664d:	68 c0 00 00 00       	push   $0xc0
80106652:	e9 77 f3 ff ff       	jmp    801059ce <alltraps>

80106657 <vector193>:
80106657:	6a 00                	push   $0x0
80106659:	68 c1 00 00 00       	push   $0xc1
8010665e:	e9 6b f3 ff ff       	jmp    801059ce <alltraps>

80106663 <vector194>:
80106663:	6a 00                	push   $0x0
80106665:	68 c2 00 00 00       	push   $0xc2
8010666a:	e9 5f f3 ff ff       	jmp    801059ce <alltraps>

8010666f <vector195>:
8010666f:	6a 00                	push   $0x0
80106671:	68 c3 00 00 00       	push   $0xc3
80106676:	e9 53 f3 ff ff       	jmp    801059ce <alltraps>

8010667b <vector196>:
8010667b:	6a 00                	push   $0x0
8010667d:	68 c4 00 00 00       	push   $0xc4
80106682:	e9 47 f3 ff ff       	jmp    801059ce <alltraps>

80106687 <vector197>:
80106687:	6a 00                	push   $0x0
80106689:	68 c5 00 00 00       	push   $0xc5
8010668e:	e9 3b f3 ff ff       	jmp    801059ce <alltraps>

80106693 <vector198>:
80106693:	6a 00                	push   $0x0
80106695:	68 c6 00 00 00       	push   $0xc6
8010669a:	e9 2f f3 ff ff       	jmp    801059ce <alltraps>

8010669f <vector199>:
8010669f:	6a 00                	push   $0x0
801066a1:	68 c7 00 00 00       	push   $0xc7
801066a6:	e9 23 f3 ff ff       	jmp    801059ce <alltraps>

801066ab <vector200>:
801066ab:	6a 00                	push   $0x0
801066ad:	68 c8 00 00 00       	push   $0xc8
801066b2:	e9 17 f3 ff ff       	jmp    801059ce <alltraps>

801066b7 <vector201>:
801066b7:	6a 00                	push   $0x0
801066b9:	68 c9 00 00 00       	push   $0xc9
801066be:	e9 0b f3 ff ff       	jmp    801059ce <alltraps>

801066c3 <vector202>:
801066c3:	6a 00                	push   $0x0
801066c5:	68 ca 00 00 00       	push   $0xca
801066ca:	e9 ff f2 ff ff       	jmp    801059ce <alltraps>

801066cf <vector203>:
801066cf:	6a 00                	push   $0x0
801066d1:	68 cb 00 00 00       	push   $0xcb
801066d6:	e9 f3 f2 ff ff       	jmp    801059ce <alltraps>

801066db <vector204>:
801066db:	6a 00                	push   $0x0
801066dd:	68 cc 00 00 00       	push   $0xcc
801066e2:	e9 e7 f2 ff ff       	jmp    801059ce <alltraps>

801066e7 <vector205>:
801066e7:	6a 00                	push   $0x0
801066e9:	68 cd 00 00 00       	push   $0xcd
801066ee:	e9 db f2 ff ff       	jmp    801059ce <alltraps>

801066f3 <vector206>:
801066f3:	6a 00                	push   $0x0
801066f5:	68 ce 00 00 00       	push   $0xce
801066fa:	e9 cf f2 ff ff       	jmp    801059ce <alltraps>

801066ff <vector207>:
801066ff:	6a 00                	push   $0x0
80106701:	68 cf 00 00 00       	push   $0xcf
80106706:	e9 c3 f2 ff ff       	jmp    801059ce <alltraps>

8010670b <vector208>:
8010670b:	6a 00                	push   $0x0
8010670d:	68 d0 00 00 00       	push   $0xd0
80106712:	e9 b7 f2 ff ff       	jmp    801059ce <alltraps>

80106717 <vector209>:
80106717:	6a 00                	push   $0x0
80106719:	68 d1 00 00 00       	push   $0xd1
8010671e:	e9 ab f2 ff ff       	jmp    801059ce <alltraps>

80106723 <vector210>:
80106723:	6a 00                	push   $0x0
80106725:	68 d2 00 00 00       	push   $0xd2
8010672a:	e9 9f f2 ff ff       	jmp    801059ce <alltraps>

8010672f <vector211>:
8010672f:	6a 00                	push   $0x0
80106731:	68 d3 00 00 00       	push   $0xd3
80106736:	e9 93 f2 ff ff       	jmp    801059ce <alltraps>

8010673b <vector212>:
8010673b:	6a 00                	push   $0x0
8010673d:	68 d4 00 00 00       	push   $0xd4
80106742:	e9 87 f2 ff ff       	jmp    801059ce <alltraps>

80106747 <vector213>:
80106747:	6a 00                	push   $0x0
80106749:	68 d5 00 00 00       	push   $0xd5
8010674e:	e9 7b f2 ff ff       	jmp    801059ce <alltraps>

80106753 <vector214>:
80106753:	6a 00                	push   $0x0
80106755:	68 d6 00 00 00       	push   $0xd6
8010675a:	e9 6f f2 ff ff       	jmp    801059ce <alltraps>

8010675f <vector215>:
8010675f:	6a 00                	push   $0x0
80106761:	68 d7 00 00 00       	push   $0xd7
80106766:	e9 63 f2 ff ff       	jmp    801059ce <alltraps>

8010676b <vector216>:
8010676b:	6a 00                	push   $0x0
8010676d:	68 d8 00 00 00       	push   $0xd8
80106772:	e9 57 f2 ff ff       	jmp    801059ce <alltraps>

80106777 <vector217>:
80106777:	6a 00                	push   $0x0
80106779:	68 d9 00 00 00       	push   $0xd9
8010677e:	e9 4b f2 ff ff       	jmp    801059ce <alltraps>

80106783 <vector218>:
80106783:	6a 00                	push   $0x0
80106785:	68 da 00 00 00       	push   $0xda
8010678a:	e9 3f f2 ff ff       	jmp    801059ce <alltraps>

8010678f <vector219>:
8010678f:	6a 00                	push   $0x0
80106791:	68 db 00 00 00       	push   $0xdb
80106796:	e9 33 f2 ff ff       	jmp    801059ce <alltraps>

8010679b <vector220>:
8010679b:	6a 00                	push   $0x0
8010679d:	68 dc 00 00 00       	push   $0xdc
801067a2:	e9 27 f2 ff ff       	jmp    801059ce <alltraps>

801067a7 <vector221>:
801067a7:	6a 00                	push   $0x0
801067a9:	68 dd 00 00 00       	push   $0xdd
801067ae:	e9 1b f2 ff ff       	jmp    801059ce <alltraps>

801067b3 <vector222>:
801067b3:	6a 00                	push   $0x0
801067b5:	68 de 00 00 00       	push   $0xde
801067ba:	e9 0f f2 ff ff       	jmp    801059ce <alltraps>

801067bf <vector223>:
801067bf:	6a 00                	push   $0x0
801067c1:	68 df 00 00 00       	push   $0xdf
801067c6:	e9 03 f2 ff ff       	jmp    801059ce <alltraps>

801067cb <vector224>:
801067cb:	6a 00                	push   $0x0
801067cd:	68 e0 00 00 00       	push   $0xe0
801067d2:	e9 f7 f1 ff ff       	jmp    801059ce <alltraps>

801067d7 <vector225>:
801067d7:	6a 00                	push   $0x0
801067d9:	68 e1 00 00 00       	push   $0xe1
801067de:	e9 eb f1 ff ff       	jmp    801059ce <alltraps>

801067e3 <vector226>:
801067e3:	6a 00                	push   $0x0
801067e5:	68 e2 00 00 00       	push   $0xe2
801067ea:	e9 df f1 ff ff       	jmp    801059ce <alltraps>

801067ef <vector227>:
801067ef:	6a 00                	push   $0x0
801067f1:	68 e3 00 00 00       	push   $0xe3
801067f6:	e9 d3 f1 ff ff       	jmp    801059ce <alltraps>

801067fb <vector228>:
801067fb:	6a 00                	push   $0x0
801067fd:	68 e4 00 00 00       	push   $0xe4
80106802:	e9 c7 f1 ff ff       	jmp    801059ce <alltraps>

80106807 <vector229>:
80106807:	6a 00                	push   $0x0
80106809:	68 e5 00 00 00       	push   $0xe5
8010680e:	e9 bb f1 ff ff       	jmp    801059ce <alltraps>

80106813 <vector230>:
80106813:	6a 00                	push   $0x0
80106815:	68 e6 00 00 00       	push   $0xe6
8010681a:	e9 af f1 ff ff       	jmp    801059ce <alltraps>

8010681f <vector231>:
8010681f:	6a 00                	push   $0x0
80106821:	68 e7 00 00 00       	push   $0xe7
80106826:	e9 a3 f1 ff ff       	jmp    801059ce <alltraps>

8010682b <vector232>:
8010682b:	6a 00                	push   $0x0
8010682d:	68 e8 00 00 00       	push   $0xe8
80106832:	e9 97 f1 ff ff       	jmp    801059ce <alltraps>

80106837 <vector233>:
80106837:	6a 00                	push   $0x0
80106839:	68 e9 00 00 00       	push   $0xe9
8010683e:	e9 8b f1 ff ff       	jmp    801059ce <alltraps>

80106843 <vector234>:
80106843:	6a 00                	push   $0x0
80106845:	68 ea 00 00 00       	push   $0xea
8010684a:	e9 7f f1 ff ff       	jmp    801059ce <alltraps>

8010684f <vector235>:
8010684f:	6a 00                	push   $0x0
80106851:	68 eb 00 00 00       	push   $0xeb
80106856:	e9 73 f1 ff ff       	jmp    801059ce <alltraps>

8010685b <vector236>:
8010685b:	6a 00                	push   $0x0
8010685d:	68 ec 00 00 00       	push   $0xec
80106862:	e9 67 f1 ff ff       	jmp    801059ce <alltraps>

80106867 <vector237>:
80106867:	6a 00                	push   $0x0
80106869:	68 ed 00 00 00       	push   $0xed
8010686e:	e9 5b f1 ff ff       	jmp    801059ce <alltraps>

80106873 <vector238>:
80106873:	6a 00                	push   $0x0
80106875:	68 ee 00 00 00       	push   $0xee
8010687a:	e9 4f f1 ff ff       	jmp    801059ce <alltraps>

8010687f <vector239>:
8010687f:	6a 00                	push   $0x0
80106881:	68 ef 00 00 00       	push   $0xef
80106886:	e9 43 f1 ff ff       	jmp    801059ce <alltraps>

8010688b <vector240>:
8010688b:	6a 00                	push   $0x0
8010688d:	68 f0 00 00 00       	push   $0xf0
80106892:	e9 37 f1 ff ff       	jmp    801059ce <alltraps>

80106897 <vector241>:
80106897:	6a 00                	push   $0x0
80106899:	68 f1 00 00 00       	push   $0xf1
8010689e:	e9 2b f1 ff ff       	jmp    801059ce <alltraps>

801068a3 <vector242>:
801068a3:	6a 00                	push   $0x0
801068a5:	68 f2 00 00 00       	push   $0xf2
801068aa:	e9 1f f1 ff ff       	jmp    801059ce <alltraps>

801068af <vector243>:
801068af:	6a 00                	push   $0x0
801068b1:	68 f3 00 00 00       	push   $0xf3
801068b6:	e9 13 f1 ff ff       	jmp    801059ce <alltraps>

801068bb <vector244>:
801068bb:	6a 00                	push   $0x0
801068bd:	68 f4 00 00 00       	push   $0xf4
801068c2:	e9 07 f1 ff ff       	jmp    801059ce <alltraps>

801068c7 <vector245>:
801068c7:	6a 00                	push   $0x0
801068c9:	68 f5 00 00 00       	push   $0xf5
801068ce:	e9 fb f0 ff ff       	jmp    801059ce <alltraps>

801068d3 <vector246>:
801068d3:	6a 00                	push   $0x0
801068d5:	68 f6 00 00 00       	push   $0xf6
801068da:	e9 ef f0 ff ff       	jmp    801059ce <alltraps>

801068df <vector247>:
801068df:	6a 00                	push   $0x0
801068e1:	68 f7 00 00 00       	push   $0xf7
801068e6:	e9 e3 f0 ff ff       	jmp    801059ce <alltraps>

801068eb <vector248>:
801068eb:	6a 00                	push   $0x0
801068ed:	68 f8 00 00 00       	push   $0xf8
801068f2:	e9 d7 f0 ff ff       	jmp    801059ce <alltraps>

801068f7 <vector249>:
801068f7:	6a 00                	push   $0x0
801068f9:	68 f9 00 00 00       	push   $0xf9
801068fe:	e9 cb f0 ff ff       	jmp    801059ce <alltraps>

80106903 <vector250>:
80106903:	6a 00                	push   $0x0
80106905:	68 fa 00 00 00       	push   $0xfa
8010690a:	e9 bf f0 ff ff       	jmp    801059ce <alltraps>

8010690f <vector251>:
8010690f:	6a 00                	push   $0x0
80106911:	68 fb 00 00 00       	push   $0xfb
80106916:	e9 b3 f0 ff ff       	jmp    801059ce <alltraps>

8010691b <vector252>:
8010691b:	6a 00                	push   $0x0
8010691d:	68 fc 00 00 00       	push   $0xfc
80106922:	e9 a7 f0 ff ff       	jmp    801059ce <alltraps>

80106927 <vector253>:
80106927:	6a 00                	push   $0x0
80106929:	68 fd 00 00 00       	push   $0xfd
8010692e:	e9 9b f0 ff ff       	jmp    801059ce <alltraps>

80106933 <vector254>:
80106933:	6a 00                	push   $0x0
80106935:	68 fe 00 00 00       	push   $0xfe
8010693a:	e9 8f f0 ff ff       	jmp    801059ce <alltraps>

8010693f <vector255>:
8010693f:	6a 00                	push   $0x0
80106941:	68 ff 00 00 00       	push   $0xff
80106946:	e9 83 f0 ff ff       	jmp    801059ce <alltraps>
8010694b:	66 90                	xchg   %ax,%ax
8010694d:	66 90                	xchg   %ax,%ax
8010694f:	90                   	nop

80106950 <lcr3>:
80106950:	0f 22 d8             	mov    %eax,%cr3
80106953:	c3                   	ret    
80106954:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010695b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010695f:	90                   	nop

80106960 <walkpgdir>:
80106960:	55                   	push   %ebp
80106961:	89 e5                	mov    %esp,%ebp
80106963:	57                   	push   %edi
80106964:	56                   	push   %esi
80106965:	89 d6                	mov    %edx,%esi
80106967:	c1 ea 16             	shr    $0x16,%edx
8010696a:	53                   	push   %ebx
8010696b:	8d 3c 90             	lea    (%eax,%edx,4),%edi
8010696e:	83 ec 0c             	sub    $0xc,%esp
80106971:	8b 1f                	mov    (%edi),%ebx
80106973:	f6 c3 01             	test   $0x1,%bl
80106976:	74 28                	je     801069a0 <walkpgdir+0x40>
80106978:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
8010697e:	81 c3 00 00 00 80    	add    $0x80000000,%ebx
80106984:	89 f0                	mov    %esi,%eax
80106986:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106989:	c1 e8 0a             	shr    $0xa,%eax
8010698c:	25 fc 0f 00 00       	and    $0xffc,%eax
80106991:	01 d8                	add    %ebx,%eax
80106993:	5b                   	pop    %ebx
80106994:	5e                   	pop    %esi
80106995:	5f                   	pop    %edi
80106996:	5d                   	pop    %ebp
80106997:	c3                   	ret    
80106998:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010699f:	90                   	nop
801069a0:	85 c9                	test   %ecx,%ecx
801069a2:	74 2c                	je     801069d0 <walkpgdir+0x70>
801069a4:	e8 e7 bc ff ff       	call   80102690 <kalloc>
801069a9:	89 c3                	mov    %eax,%ebx
801069ab:	85 c0                	test   %eax,%eax
801069ad:	74 21                	je     801069d0 <walkpgdir+0x70>
801069af:	83 ec 04             	sub    $0x4,%esp
801069b2:	68 00 10 00 00       	push   $0x1000
801069b7:	6a 00                	push   $0x0
801069b9:	50                   	push   %eax
801069ba:	e8 f1 dd ff ff       	call   801047b0 <memset>
801069bf:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801069c5:	83 c4 10             	add    $0x10,%esp
801069c8:	83 c8 07             	or     $0x7,%eax
801069cb:	89 07                	mov    %eax,(%edi)
801069cd:	eb b5                	jmp    80106984 <walkpgdir+0x24>
801069cf:	90                   	nop
801069d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
801069d3:	31 c0                	xor    %eax,%eax
801069d5:	5b                   	pop    %ebx
801069d6:	5e                   	pop    %esi
801069d7:	5f                   	pop    %edi
801069d8:	5d                   	pop    %ebp
801069d9:	c3                   	ret    
801069da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

801069e0 <mappages>:
801069e0:	55                   	push   %ebp
801069e1:	89 e5                	mov    %esp,%ebp
801069e3:	57                   	push   %edi
801069e4:	89 c7                	mov    %eax,%edi
801069e6:	8d 44 0a ff          	lea    -0x1(%edx,%ecx,1),%eax
801069ea:	56                   	push   %esi
801069eb:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801069f0:	89 d6                	mov    %edx,%esi
801069f2:	53                   	push   %ebx
801069f3:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
801069f9:	83 ec 1c             	sub    $0x1c,%esp
801069fc:	89 45 e0             	mov    %eax,-0x20(%ebp)
801069ff:	8b 45 08             	mov    0x8(%ebp),%eax
80106a02:	29 f0                	sub    %esi,%eax
80106a04:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106a07:	eb 1f                	jmp    80106a28 <mappages+0x48>
80106a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106a10:	f6 00 01             	testb  $0x1,(%eax)
80106a13:	75 45                	jne    80106a5a <mappages+0x7a>
80106a15:	0b 5d 0c             	or     0xc(%ebp),%ebx
80106a18:	83 cb 01             	or     $0x1,%ebx
80106a1b:	89 18                	mov    %ebx,(%eax)
80106a1d:	3b 75 e0             	cmp    -0x20(%ebp),%esi
80106a20:	74 2e                	je     80106a50 <mappages+0x70>
80106a22:	81 c6 00 10 00 00    	add    $0x1000,%esi
80106a28:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106a2b:	b9 01 00 00 00       	mov    $0x1,%ecx
80106a30:	89 f2                	mov    %esi,%edx
80106a32:	8d 1c 06             	lea    (%esi,%eax,1),%ebx
80106a35:	89 f8                	mov    %edi,%eax
80106a37:	e8 24 ff ff ff       	call   80106960 <walkpgdir>
80106a3c:	85 c0                	test   %eax,%eax
80106a3e:	75 d0                	jne    80106a10 <mappages+0x30>
80106a40:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106a43:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106a48:	5b                   	pop    %ebx
80106a49:	5e                   	pop    %esi
80106a4a:	5f                   	pop    %edi
80106a4b:	5d                   	pop    %ebp
80106a4c:	c3                   	ret    
80106a4d:	8d 76 00             	lea    0x0(%esi),%esi
80106a50:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106a53:	31 c0                	xor    %eax,%eax
80106a55:	5b                   	pop    %ebx
80106a56:	5e                   	pop    %esi
80106a57:	5f                   	pop    %edi
80106a58:	5d                   	pop    %ebp
80106a59:	c3                   	ret    
80106a5a:	83 ec 0c             	sub    $0xc,%esp
80106a5d:	68 48 7b 10 80       	push   $0x80107b48
80106a62:	e8 79 99 ff ff       	call   801003e0 <panic>
80106a67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106a6e:	66 90                	xchg   %ax,%ax

80106a70 <ltr.constprop.0>:
80106a70:	b8 28 00 00 00       	mov    $0x28,%eax
80106a75:	0f 00 d8             	ltr    %ax
80106a78:	c3                   	ret    
80106a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80106a80 <lgdt.constprop.0>:
80106a80:	55                   	push   %ebp
80106a81:	ba 2f 00 00 00       	mov    $0x2f,%edx
80106a86:	89 e5                	mov    %esp,%ebp
80106a88:	83 ec 10             	sub    $0x10,%esp
80106a8b:	66 89 55 fa          	mov    %dx,-0x6(%ebp)
80106a8f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
80106a93:	c1 e8 10             	shr    $0x10,%eax
80106a96:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
80106a9a:	8d 45 fa             	lea    -0x6(%ebp),%eax
80106a9d:	0f 01 10             	lgdtl  (%eax)
80106aa0:	c9                   	leave  
80106aa1:	c3                   	ret    
80106aa2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80106ab0 <seginit>:
80106ab0:	f3 0f 1e fb          	endbr32 
80106ab4:	55                   	push   %ebp
80106ab5:	89 e5                	mov    %esp,%ebp
80106ab7:	83 ec 08             	sub    $0x8,%esp
80106aba:	e8 41 d0 ff ff       	call   80103b00 <cpuid>
80106abf:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
80106ac5:	c7 80 f8 27 11 80 ff 	movl   $0xffff,-0x7feed808(%eax)
80106acc:	ff 00 00 
80106acf:	c7 80 fc 27 11 80 00 	movl   $0xcf9a00,-0x7feed804(%eax)
80106ad6:	9a cf 00 
80106ad9:	c7 80 00 28 11 80 ff 	movl   $0xffff,-0x7feed800(%eax)
80106ae0:	ff 00 00 
80106ae3:	c7 80 04 28 11 80 00 	movl   $0xcf9200,-0x7feed7fc(%eax)
80106aea:	92 cf 00 
80106aed:	c7 80 08 28 11 80 ff 	movl   $0xffff,-0x7feed7f8(%eax)
80106af4:	ff 00 00 
80106af7:	c7 80 0c 28 11 80 00 	movl   $0xcffa00,-0x7feed7f4(%eax)
80106afe:	fa cf 00 
80106b01:	c7 80 10 28 11 80 ff 	movl   $0xffff,-0x7feed7f0(%eax)
80106b08:	ff 00 00 
80106b0b:	c7 80 14 28 11 80 00 	movl   $0xcff200,-0x7feed7ec(%eax)
80106b12:	f2 cf 00 
80106b15:	05 f0 27 11 80       	add    $0x801127f0,%eax
80106b1a:	c9                   	leave  
80106b1b:	e9 60 ff ff ff       	jmp    80106a80 <lgdt.constprop.0>

80106b20 <switchkvm>:
80106b20:	f3 0f 1e fb          	endbr32 
80106b24:	a1 a4 54 11 80       	mov    0x801154a4,%eax
80106b29:	05 00 00 00 80       	add    $0x80000000,%eax
80106b2e:	e9 1d fe ff ff       	jmp    80106950 <lcr3>
80106b33:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80106b40 <switchuvm>:
80106b40:	f3 0f 1e fb          	endbr32 
80106b44:	55                   	push   %ebp
80106b45:	89 e5                	mov    %esp,%ebp
80106b47:	57                   	push   %edi
80106b48:	56                   	push   %esi
80106b49:	53                   	push   %ebx
80106b4a:	83 ec 1c             	sub    $0x1c,%esp
80106b4d:	8b 75 08             	mov    0x8(%ebp),%esi
80106b50:	85 f6                	test   %esi,%esi
80106b52:	0f 84 ca 00 00 00    	je     80106c22 <switchuvm+0xe2>
80106b58:	8b 46 08             	mov    0x8(%esi),%eax
80106b5b:	85 c0                	test   %eax,%eax
80106b5d:	0f 84 d9 00 00 00    	je     80106c3c <switchuvm+0xfc>
80106b63:	8b 46 04             	mov    0x4(%esi),%eax
80106b66:	85 c0                	test   %eax,%eax
80106b68:	0f 84 c1 00 00 00    	je     80106c2f <switchuvm+0xef>
80106b6e:	e8 3d da ff ff       	call   801045b0 <pushcli>
80106b73:	e8 18 cf ff ff       	call   80103a90 <mycpu>
80106b78:	89 c3                	mov    %eax,%ebx
80106b7a:	e8 11 cf ff ff       	call   80103a90 <mycpu>
80106b7f:	89 c7                	mov    %eax,%edi
80106b81:	e8 0a cf ff ff       	call   80103a90 <mycpu>
80106b86:	83 c7 08             	add    $0x8,%edi
80106b89:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106b8c:	e8 ff ce ff ff       	call   80103a90 <mycpu>
80106b91:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80106b94:	ba 67 00 00 00       	mov    $0x67,%edx
80106b99:	66 89 bb 9a 00 00 00 	mov    %di,0x9a(%ebx)
80106ba0:	83 c0 08             	add    $0x8,%eax
80106ba3:	66 89 93 98 00 00 00 	mov    %dx,0x98(%ebx)
80106baa:	bf ff ff ff ff       	mov    $0xffffffff,%edi
80106baf:	83 c1 08             	add    $0x8,%ecx
80106bb2:	c1 e8 18             	shr    $0x18,%eax
80106bb5:	c1 e9 10             	shr    $0x10,%ecx
80106bb8:	88 83 9f 00 00 00    	mov    %al,0x9f(%ebx)
80106bbe:	88 8b 9c 00 00 00    	mov    %cl,0x9c(%ebx)
80106bc4:	b9 99 40 00 00       	mov    $0x4099,%ecx
80106bc9:	66 89 8b 9d 00 00 00 	mov    %cx,0x9d(%ebx)
80106bd0:	bb 10 00 00 00       	mov    $0x10,%ebx
80106bd5:	e8 b6 ce ff ff       	call   80103a90 <mycpu>
80106bda:	80 a0 9d 00 00 00 ef 	andb   $0xef,0x9d(%eax)
80106be1:	e8 aa ce ff ff       	call   80103a90 <mycpu>
80106be6:	66 89 58 10          	mov    %bx,0x10(%eax)
80106bea:	8b 5e 08             	mov    0x8(%esi),%ebx
80106bed:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80106bf3:	e8 98 ce ff ff       	call   80103a90 <mycpu>
80106bf8:	89 58 0c             	mov    %ebx,0xc(%eax)
80106bfb:	e8 90 ce ff ff       	call   80103a90 <mycpu>
80106c00:	66 89 78 6e          	mov    %di,0x6e(%eax)
80106c04:	e8 67 fe ff ff       	call   80106a70 <ltr.constprop.0>
80106c09:	8b 46 04             	mov    0x4(%esi),%eax
80106c0c:	05 00 00 00 80       	add    $0x80000000,%eax
80106c11:	e8 3a fd ff ff       	call   80106950 <lcr3>
80106c16:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106c19:	5b                   	pop    %ebx
80106c1a:	5e                   	pop    %esi
80106c1b:	5f                   	pop    %edi
80106c1c:	5d                   	pop    %ebp
80106c1d:	e9 ee d9 ff ff       	jmp    80104610 <popcli>
80106c22:	83 ec 0c             	sub    $0xc,%esp
80106c25:	68 4e 7b 10 80       	push   $0x80107b4e
80106c2a:	e8 b1 97 ff ff       	call   801003e0 <panic>
80106c2f:	83 ec 0c             	sub    $0xc,%esp
80106c32:	68 79 7b 10 80       	push   $0x80107b79
80106c37:	e8 a4 97 ff ff       	call   801003e0 <panic>
80106c3c:	83 ec 0c             	sub    $0xc,%esp
80106c3f:	68 64 7b 10 80       	push   $0x80107b64
80106c44:	e8 97 97 ff ff       	call   801003e0 <panic>
80106c49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80106c50 <inituvm>:
80106c50:	f3 0f 1e fb          	endbr32 
80106c54:	55                   	push   %ebp
80106c55:	89 e5                	mov    %esp,%ebp
80106c57:	57                   	push   %edi
80106c58:	56                   	push   %esi
80106c59:	53                   	push   %ebx
80106c5a:	83 ec 1c             	sub    $0x1c,%esp
80106c5d:	8b 45 0c             	mov    0xc(%ebp),%eax
80106c60:	8b 75 10             	mov    0x10(%ebp),%esi
80106c63:	8b 7d 08             	mov    0x8(%ebp),%edi
80106c66:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106c69:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
80106c6f:	77 4b                	ja     80106cbc <inituvm+0x6c>
80106c71:	e8 1a ba ff ff       	call   80102690 <kalloc>
80106c76:	83 ec 04             	sub    $0x4,%esp
80106c79:	68 00 10 00 00       	push   $0x1000
80106c7e:	89 c3                	mov    %eax,%ebx
80106c80:	6a 00                	push   $0x0
80106c82:	50                   	push   %eax
80106c83:	e8 28 db ff ff       	call   801047b0 <memset>
80106c88:	58                   	pop    %eax
80106c89:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80106c8f:	5a                   	pop    %edx
80106c90:	6a 06                	push   $0x6
80106c92:	b9 00 10 00 00       	mov    $0x1000,%ecx
80106c97:	31 d2                	xor    %edx,%edx
80106c99:	50                   	push   %eax
80106c9a:	89 f8                	mov    %edi,%eax
80106c9c:	e8 3f fd ff ff       	call   801069e0 <mappages>
80106ca1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106ca4:	89 75 10             	mov    %esi,0x10(%ebp)
80106ca7:	83 c4 10             	add    $0x10,%esp
80106caa:	89 5d 08             	mov    %ebx,0x8(%ebp)
80106cad:	89 45 0c             	mov    %eax,0xc(%ebp)
80106cb0:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106cb3:	5b                   	pop    %ebx
80106cb4:	5e                   	pop    %esi
80106cb5:	5f                   	pop    %edi
80106cb6:	5d                   	pop    %ebp
80106cb7:	e9 a4 db ff ff       	jmp    80104860 <memmove>
80106cbc:	83 ec 0c             	sub    $0xc,%esp
80106cbf:	68 8d 7b 10 80       	push   $0x80107b8d
80106cc4:	e8 17 97 ff ff       	call   801003e0 <panic>
80106cc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80106cd0 <loaduvm>:
80106cd0:	f3 0f 1e fb          	endbr32 
80106cd4:	55                   	push   %ebp
80106cd5:	89 e5                	mov    %esp,%ebp
80106cd7:	57                   	push   %edi
80106cd8:	56                   	push   %esi
80106cd9:	53                   	push   %ebx
80106cda:	83 ec 1c             	sub    $0x1c,%esp
80106cdd:	8b 45 0c             	mov    0xc(%ebp),%eax
80106ce0:	8b 75 18             	mov    0x18(%ebp),%esi
80106ce3:	a9 ff 0f 00 00       	test   $0xfff,%eax
80106ce8:	0f 85 99 00 00 00    	jne    80106d87 <loaduvm+0xb7>
80106cee:	01 f0                	add    %esi,%eax
80106cf0:	89 f3                	mov    %esi,%ebx
80106cf2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106cf5:	8b 45 14             	mov    0x14(%ebp),%eax
80106cf8:	01 f0                	add    %esi,%eax
80106cfa:	89 45 e0             	mov    %eax,-0x20(%ebp)
80106cfd:	85 f6                	test   %esi,%esi
80106cff:	75 15                	jne    80106d16 <loaduvm+0x46>
80106d01:	eb 6d                	jmp    80106d70 <loaduvm+0xa0>
80106d03:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106d07:	90                   	nop
80106d08:	81 eb 00 10 00 00    	sub    $0x1000,%ebx
80106d0e:	89 f0                	mov    %esi,%eax
80106d10:	29 d8                	sub    %ebx,%eax
80106d12:	39 c6                	cmp    %eax,%esi
80106d14:	76 5a                	jbe    80106d70 <loaduvm+0xa0>
80106d16:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80106d19:	8b 45 08             	mov    0x8(%ebp),%eax
80106d1c:	31 c9                	xor    %ecx,%ecx
80106d1e:	29 da                	sub    %ebx,%edx
80106d20:	e8 3b fc ff ff       	call   80106960 <walkpgdir>
80106d25:	85 c0                	test   %eax,%eax
80106d27:	74 51                	je     80106d7a <loaduvm+0xaa>
80106d29:	8b 00                	mov    (%eax),%eax
80106d2b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
80106d2e:	bf 00 10 00 00       	mov    $0x1000,%edi
80106d33:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106d38:	81 fb ff 0f 00 00    	cmp    $0xfff,%ebx
80106d3e:	0f 46 fb             	cmovbe %ebx,%edi
80106d41:	29 d9                	sub    %ebx,%ecx
80106d43:	05 00 00 00 80       	add    $0x80000000,%eax
80106d48:	57                   	push   %edi
80106d49:	51                   	push   %ecx
80106d4a:	50                   	push   %eax
80106d4b:	ff 75 10             	pushl  0x10(%ebp)
80106d4e:	e8 5d ae ff ff       	call   80101bb0 <readi>
80106d53:	83 c4 10             	add    $0x10,%esp
80106d56:	39 f8                	cmp    %edi,%eax
80106d58:	74 ae                	je     80106d08 <loaduvm+0x38>
80106d5a:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106d5d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106d62:	5b                   	pop    %ebx
80106d63:	5e                   	pop    %esi
80106d64:	5f                   	pop    %edi
80106d65:	5d                   	pop    %ebp
80106d66:	c3                   	ret    
80106d67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106d6e:	66 90                	xchg   %ax,%ax
80106d70:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106d73:	31 c0                	xor    %eax,%eax
80106d75:	5b                   	pop    %ebx
80106d76:	5e                   	pop    %esi
80106d77:	5f                   	pop    %edi
80106d78:	5d                   	pop    %ebp
80106d79:	c3                   	ret    
80106d7a:	83 ec 0c             	sub    $0xc,%esp
80106d7d:	68 a7 7b 10 80       	push   $0x80107ba7
80106d82:	e8 59 96 ff ff       	call   801003e0 <panic>
80106d87:	83 ec 0c             	sub    $0xc,%esp
80106d8a:	68 48 7c 10 80       	push   $0x80107c48
80106d8f:	e8 4c 96 ff ff       	call   801003e0 <panic>
80106d94:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106d9b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106d9f:	90                   	nop

80106da0 <deallocuvm>:
80106da0:	f3 0f 1e fb          	endbr32 
80106da4:	55                   	push   %ebp
80106da5:	89 e5                	mov    %esp,%ebp
80106da7:	57                   	push   %edi
80106da8:	56                   	push   %esi
80106da9:	53                   	push   %ebx
80106daa:	83 ec 0c             	sub    $0xc,%esp
80106dad:	8b 5d 0c             	mov    0xc(%ebp),%ebx
80106db0:	8b 75 08             	mov    0x8(%ebp),%esi
80106db3:	89 d8                	mov    %ebx,%eax
80106db5:	39 5d 10             	cmp    %ebx,0x10(%ebp)
80106db8:	73 6c                	jae    80106e26 <deallocuvm+0x86>
80106dba:	8b 45 10             	mov    0x10(%ebp),%eax
80106dbd:	8d 90 ff 0f 00 00    	lea    0xfff(%eax),%edx
80106dc3:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
80106dc9:	89 d7                	mov    %edx,%edi
80106dcb:	39 d3                	cmp    %edx,%ebx
80106dcd:	76 54                	jbe    80106e23 <deallocuvm+0x83>
80106dcf:	89 5d 0c             	mov    %ebx,0xc(%ebp)
80106dd2:	eb 0f                	jmp    80106de3 <deallocuvm+0x43>
80106dd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106dd8:	81 c7 00 10 00 00    	add    $0x1000,%edi
80106dde:	39 7d 0c             	cmp    %edi,0xc(%ebp)
80106de1:	76 40                	jbe    80106e23 <deallocuvm+0x83>
80106de3:	31 c9                	xor    %ecx,%ecx
80106de5:	89 fa                	mov    %edi,%edx
80106de7:	89 f0                	mov    %esi,%eax
80106de9:	e8 72 fb ff ff       	call   80106960 <walkpgdir>
80106dee:	89 c3                	mov    %eax,%ebx
80106df0:	85 c0                	test   %eax,%eax
80106df2:	74 3c                	je     80106e30 <deallocuvm+0x90>
80106df4:	8b 00                	mov    (%eax),%eax
80106df6:	a8 01                	test   $0x1,%al
80106df8:	74 de                	je     80106dd8 <deallocuvm+0x38>
80106dfa:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106dff:	74 3f                	je     80106e40 <deallocuvm+0xa0>
80106e01:	83 ec 0c             	sub    $0xc,%esp
80106e04:	05 00 00 00 80       	add    $0x80000000,%eax
80106e09:	81 c7 00 10 00 00    	add    $0x1000,%edi
80106e0f:	50                   	push   %eax
80106e10:	e8 1b b7 ff ff       	call   80102530 <kfree>
80106e15:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80106e1b:	83 c4 10             	add    $0x10,%esp
80106e1e:	39 7d 0c             	cmp    %edi,0xc(%ebp)
80106e21:	77 c0                	ja     80106de3 <deallocuvm+0x43>
80106e23:	8b 45 10             	mov    0x10(%ebp),%eax
80106e26:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106e29:	5b                   	pop    %ebx
80106e2a:	5e                   	pop    %esi
80106e2b:	5f                   	pop    %edi
80106e2c:	5d                   	pop    %ebp
80106e2d:	c3                   	ret    
80106e2e:	66 90                	xchg   %ax,%ax
80106e30:	89 fa                	mov    %edi,%edx
80106e32:	81 e2 00 00 c0 ff    	and    $0xffc00000,%edx
80106e38:	8d ba 00 00 40 00    	lea    0x400000(%edx),%edi
80106e3e:	eb 9e                	jmp    80106dde <deallocuvm+0x3e>
80106e40:	83 ec 0c             	sub    $0xc,%esp
80106e43:	68 06 75 10 80       	push   $0x80107506
80106e48:	e8 93 95 ff ff       	call   801003e0 <panic>
80106e4d:	8d 76 00             	lea    0x0(%esi),%esi

80106e50 <allocuvm>:
80106e50:	f3 0f 1e fb          	endbr32 
80106e54:	55                   	push   %ebp
80106e55:	89 e5                	mov    %esp,%ebp
80106e57:	57                   	push   %edi
80106e58:	56                   	push   %esi
80106e59:	53                   	push   %ebx
80106e5a:	83 ec 1c             	sub    $0x1c,%esp
80106e5d:	8b 45 10             	mov    0x10(%ebp),%eax
80106e60:	8b 7d 08             	mov    0x8(%ebp),%edi
80106e63:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106e66:	85 c0                	test   %eax,%eax
80106e68:	0f 88 b2 00 00 00    	js     80106f20 <allocuvm+0xd0>
80106e6e:	3b 45 0c             	cmp    0xc(%ebp),%eax
80106e71:	8b 45 0c             	mov    0xc(%ebp),%eax
80106e74:	0f 82 96 00 00 00    	jb     80106f10 <allocuvm+0xc0>
80106e7a:	8d b0 ff 0f 00 00    	lea    0xfff(%eax),%esi
80106e80:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80106e86:	39 75 10             	cmp    %esi,0x10(%ebp)
80106e89:	77 40                	ja     80106ecb <allocuvm+0x7b>
80106e8b:	e9 83 00 00 00       	jmp    80106f13 <allocuvm+0xc3>
80106e90:	83 ec 04             	sub    $0x4,%esp
80106e93:	68 00 10 00 00       	push   $0x1000
80106e98:	6a 00                	push   $0x0
80106e9a:	50                   	push   %eax
80106e9b:	e8 10 d9 ff ff       	call   801047b0 <memset>
80106ea0:	58                   	pop    %eax
80106ea1:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80106ea7:	5a                   	pop    %edx
80106ea8:	6a 06                	push   $0x6
80106eaa:	b9 00 10 00 00       	mov    $0x1000,%ecx
80106eaf:	89 f2                	mov    %esi,%edx
80106eb1:	50                   	push   %eax
80106eb2:	89 f8                	mov    %edi,%eax
80106eb4:	e8 27 fb ff ff       	call   801069e0 <mappages>
80106eb9:	83 c4 10             	add    $0x10,%esp
80106ebc:	85 c0                	test   %eax,%eax
80106ebe:	78 78                	js     80106f38 <allocuvm+0xe8>
80106ec0:	81 c6 00 10 00 00    	add    $0x1000,%esi
80106ec6:	39 75 10             	cmp    %esi,0x10(%ebp)
80106ec9:	76 48                	jbe    80106f13 <allocuvm+0xc3>
80106ecb:	e8 c0 b7 ff ff       	call   80102690 <kalloc>
80106ed0:	89 c3                	mov    %eax,%ebx
80106ed2:	85 c0                	test   %eax,%eax
80106ed4:	75 ba                	jne    80106e90 <allocuvm+0x40>
80106ed6:	83 ec 0c             	sub    $0xc,%esp
80106ed9:	68 c5 7b 10 80       	push   $0x80107bc5
80106ede:	e8 6d 98 ff ff       	call   80100750 <cprintf>
80106ee3:	83 c4 0c             	add    $0xc,%esp
80106ee6:	ff 75 0c             	pushl  0xc(%ebp)
80106ee9:	ff 75 10             	pushl  0x10(%ebp)
80106eec:	57                   	push   %edi
80106eed:	e8 ae fe ff ff       	call   80106da0 <deallocuvm>
80106ef2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106ef9:	83 c4 10             	add    $0x10,%esp
80106efc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106eff:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106f02:	5b                   	pop    %ebx
80106f03:	5e                   	pop    %esi
80106f04:	5f                   	pop    %edi
80106f05:	5d                   	pop    %ebp
80106f06:	c3                   	ret    
80106f07:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106f0e:	66 90                	xchg   %ax,%ax
80106f10:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106f13:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106f16:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106f19:	5b                   	pop    %ebx
80106f1a:	5e                   	pop    %esi
80106f1b:	5f                   	pop    %edi
80106f1c:	5d                   	pop    %ebp
80106f1d:	c3                   	ret    
80106f1e:	66 90                	xchg   %ax,%ax
80106f20:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106f27:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106f2a:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106f2d:	5b                   	pop    %ebx
80106f2e:	5e                   	pop    %esi
80106f2f:	5f                   	pop    %edi
80106f30:	5d                   	pop    %ebp
80106f31:	c3                   	ret    
80106f32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80106f38:	83 ec 0c             	sub    $0xc,%esp
80106f3b:	68 dd 7b 10 80       	push   $0x80107bdd
80106f40:	e8 0b 98 ff ff       	call   80100750 <cprintf>
80106f45:	83 c4 0c             	add    $0xc,%esp
80106f48:	ff 75 0c             	pushl  0xc(%ebp)
80106f4b:	ff 75 10             	pushl  0x10(%ebp)
80106f4e:	57                   	push   %edi
80106f4f:	e8 4c fe ff ff       	call   80106da0 <deallocuvm>
80106f54:	89 1c 24             	mov    %ebx,(%esp)
80106f57:	e8 d4 b5 ff ff       	call   80102530 <kfree>
80106f5c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106f63:	83 c4 10             	add    $0x10,%esp
80106f66:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106f69:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106f6c:	5b                   	pop    %ebx
80106f6d:	5e                   	pop    %esi
80106f6e:	5f                   	pop    %edi
80106f6f:	5d                   	pop    %ebp
80106f70:	c3                   	ret    
80106f71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106f78:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106f7f:	90                   	nop

80106f80 <freevm>:
80106f80:	f3 0f 1e fb          	endbr32 
80106f84:	55                   	push   %ebp
80106f85:	89 e5                	mov    %esp,%ebp
80106f87:	57                   	push   %edi
80106f88:	56                   	push   %esi
80106f89:	53                   	push   %ebx
80106f8a:	83 ec 0c             	sub    $0xc,%esp
80106f8d:	8b 75 08             	mov    0x8(%ebp),%esi
80106f90:	85 f6                	test   %esi,%esi
80106f92:	74 5d                	je     80106ff1 <freevm+0x71>
80106f94:	83 ec 04             	sub    $0x4,%esp
80106f97:	89 f3                	mov    %esi,%ebx
80106f99:	8d be 00 10 00 00    	lea    0x1000(%esi),%edi
80106f9f:	6a 00                	push   $0x0
80106fa1:	68 00 00 00 80       	push   $0x80000000
80106fa6:	56                   	push   %esi
80106fa7:	e8 f4 fd ff ff       	call   80106da0 <deallocuvm>
80106fac:	83 c4 10             	add    $0x10,%esp
80106faf:	eb 0e                	jmp    80106fbf <freevm+0x3f>
80106fb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106fb8:	83 c3 04             	add    $0x4,%ebx
80106fbb:	39 fb                	cmp    %edi,%ebx
80106fbd:	74 23                	je     80106fe2 <freevm+0x62>
80106fbf:	8b 03                	mov    (%ebx),%eax
80106fc1:	a8 01                	test   $0x1,%al
80106fc3:	74 f3                	je     80106fb8 <freevm+0x38>
80106fc5:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106fca:	83 ec 0c             	sub    $0xc,%esp
80106fcd:	83 c3 04             	add    $0x4,%ebx
80106fd0:	05 00 00 00 80       	add    $0x80000000,%eax
80106fd5:	50                   	push   %eax
80106fd6:	e8 55 b5 ff ff       	call   80102530 <kfree>
80106fdb:	83 c4 10             	add    $0x10,%esp
80106fde:	39 fb                	cmp    %edi,%ebx
80106fe0:	75 dd                	jne    80106fbf <freevm+0x3f>
80106fe2:	89 75 08             	mov    %esi,0x8(%ebp)
80106fe5:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106fe8:	5b                   	pop    %ebx
80106fe9:	5e                   	pop    %esi
80106fea:	5f                   	pop    %edi
80106feb:	5d                   	pop    %ebp
80106fec:	e9 3f b5 ff ff       	jmp    80102530 <kfree>
80106ff1:	83 ec 0c             	sub    $0xc,%esp
80106ff4:	68 f9 7b 10 80       	push   $0x80107bf9
80106ff9:	e8 e2 93 ff ff       	call   801003e0 <panic>
80106ffe:	66 90                	xchg   %ax,%ax

80107000 <setupkvm>:
80107000:	f3 0f 1e fb          	endbr32 
80107004:	55                   	push   %ebp
80107005:	89 e5                	mov    %esp,%ebp
80107007:	56                   	push   %esi
80107008:	53                   	push   %ebx
80107009:	e8 82 b6 ff ff       	call   80102690 <kalloc>
8010700e:	89 c6                	mov    %eax,%esi
80107010:	85 c0                	test   %eax,%eax
80107012:	74 42                	je     80107056 <setupkvm+0x56>
80107014:	83 ec 04             	sub    $0x4,%esp
80107017:	bb 20 a4 10 80       	mov    $0x8010a420,%ebx
8010701c:	68 00 10 00 00       	push   $0x1000
80107021:	6a 00                	push   $0x0
80107023:	50                   	push   %eax
80107024:	e8 87 d7 ff ff       	call   801047b0 <memset>
80107029:	83 c4 10             	add    $0x10,%esp
8010702c:	8b 43 04             	mov    0x4(%ebx),%eax
8010702f:	83 ec 08             	sub    $0x8,%esp
80107032:	8b 4b 08             	mov    0x8(%ebx),%ecx
80107035:	ff 73 0c             	pushl  0xc(%ebx)
80107038:	8b 13                	mov    (%ebx),%edx
8010703a:	50                   	push   %eax
8010703b:	29 c1                	sub    %eax,%ecx
8010703d:	89 f0                	mov    %esi,%eax
8010703f:	e8 9c f9 ff ff       	call   801069e0 <mappages>
80107044:	83 c4 10             	add    $0x10,%esp
80107047:	85 c0                	test   %eax,%eax
80107049:	78 15                	js     80107060 <setupkvm+0x60>
8010704b:	83 c3 10             	add    $0x10,%ebx
8010704e:	81 fb 60 a4 10 80    	cmp    $0x8010a460,%ebx
80107054:	75 d6                	jne    8010702c <setupkvm+0x2c>
80107056:	8d 65 f8             	lea    -0x8(%ebp),%esp
80107059:	89 f0                	mov    %esi,%eax
8010705b:	5b                   	pop    %ebx
8010705c:	5e                   	pop    %esi
8010705d:	5d                   	pop    %ebp
8010705e:	c3                   	ret    
8010705f:	90                   	nop
80107060:	83 ec 0c             	sub    $0xc,%esp
80107063:	56                   	push   %esi
80107064:	31 f6                	xor    %esi,%esi
80107066:	e8 15 ff ff ff       	call   80106f80 <freevm>
8010706b:	83 c4 10             	add    $0x10,%esp
8010706e:	8d 65 f8             	lea    -0x8(%ebp),%esp
80107071:	89 f0                	mov    %esi,%eax
80107073:	5b                   	pop    %ebx
80107074:	5e                   	pop    %esi
80107075:	5d                   	pop    %ebp
80107076:	c3                   	ret    
80107077:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010707e:	66 90                	xchg   %ax,%ax

80107080 <kvmalloc>:
80107080:	f3 0f 1e fb          	endbr32 
80107084:	55                   	push   %ebp
80107085:	89 e5                	mov    %esp,%ebp
80107087:	83 ec 08             	sub    $0x8,%esp
8010708a:	e8 71 ff ff ff       	call   80107000 <setupkvm>
8010708f:	a3 a4 54 11 80       	mov    %eax,0x801154a4
80107094:	c9                   	leave  
80107095:	e9 86 fa ff ff       	jmp    80106b20 <switchkvm>
8010709a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

801070a0 <clearpteu>:
801070a0:	f3 0f 1e fb          	endbr32 
801070a4:	55                   	push   %ebp
801070a5:	31 c9                	xor    %ecx,%ecx
801070a7:	89 e5                	mov    %esp,%ebp
801070a9:	83 ec 08             	sub    $0x8,%esp
801070ac:	8b 55 0c             	mov    0xc(%ebp),%edx
801070af:	8b 45 08             	mov    0x8(%ebp),%eax
801070b2:	e8 a9 f8 ff ff       	call   80106960 <walkpgdir>
801070b7:	85 c0                	test   %eax,%eax
801070b9:	74 05                	je     801070c0 <clearpteu+0x20>
801070bb:	83 20 fb             	andl   $0xfffffffb,(%eax)
801070be:	c9                   	leave  
801070bf:	c3                   	ret    
801070c0:	83 ec 0c             	sub    $0xc,%esp
801070c3:	68 0a 7c 10 80       	push   $0x80107c0a
801070c8:	e8 13 93 ff ff       	call   801003e0 <panic>
801070cd:	8d 76 00             	lea    0x0(%esi),%esi

801070d0 <copyuvm>:
801070d0:	f3 0f 1e fb          	endbr32 
801070d4:	55                   	push   %ebp
801070d5:	89 e5                	mov    %esp,%ebp
801070d7:	57                   	push   %edi
801070d8:	56                   	push   %esi
801070d9:	53                   	push   %ebx
801070da:	83 ec 1c             	sub    $0x1c,%esp
801070dd:	e8 1e ff ff ff       	call   80107000 <setupkvm>
801070e2:	89 45 e0             	mov    %eax,-0x20(%ebp)
801070e5:	85 c0                	test   %eax,%eax
801070e7:	0f 84 9b 00 00 00    	je     80107188 <copyuvm+0xb8>
801070ed:	8b 4d 0c             	mov    0xc(%ebp),%ecx
801070f0:	85 c9                	test   %ecx,%ecx
801070f2:	0f 84 90 00 00 00    	je     80107188 <copyuvm+0xb8>
801070f8:	31 f6                	xor    %esi,%esi
801070fa:	eb 46                	jmp    80107142 <copyuvm+0x72>
801070fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80107100:	83 ec 04             	sub    $0x4,%esp
80107103:	81 c7 00 00 00 80    	add    $0x80000000,%edi
80107109:	68 00 10 00 00       	push   $0x1000
8010710e:	57                   	push   %edi
8010710f:	50                   	push   %eax
80107110:	e8 4b d7 ff ff       	call   80104860 <memmove>
80107115:	58                   	pop    %eax
80107116:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
8010711c:	5a                   	pop    %edx
8010711d:	ff 75 e4             	pushl  -0x1c(%ebp)
80107120:	b9 00 10 00 00       	mov    $0x1000,%ecx
80107125:	89 f2                	mov    %esi,%edx
80107127:	50                   	push   %eax
80107128:	8b 45 e0             	mov    -0x20(%ebp),%eax
8010712b:	e8 b0 f8 ff ff       	call   801069e0 <mappages>
80107130:	83 c4 10             	add    $0x10,%esp
80107133:	85 c0                	test   %eax,%eax
80107135:	78 61                	js     80107198 <copyuvm+0xc8>
80107137:	81 c6 00 10 00 00    	add    $0x1000,%esi
8010713d:	39 75 0c             	cmp    %esi,0xc(%ebp)
80107140:	76 46                	jbe    80107188 <copyuvm+0xb8>
80107142:	8b 45 08             	mov    0x8(%ebp),%eax
80107145:	31 c9                	xor    %ecx,%ecx
80107147:	89 f2                	mov    %esi,%edx
80107149:	e8 12 f8 ff ff       	call   80106960 <walkpgdir>
8010714e:	85 c0                	test   %eax,%eax
80107150:	74 61                	je     801071b3 <copyuvm+0xe3>
80107152:	8b 00                	mov    (%eax),%eax
80107154:	a8 01                	test   $0x1,%al
80107156:	74 4e                	je     801071a6 <copyuvm+0xd6>
80107158:	89 c7                	mov    %eax,%edi
8010715a:	25 ff 0f 00 00       	and    $0xfff,%eax
8010715f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80107162:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
80107168:	e8 23 b5 ff ff       	call   80102690 <kalloc>
8010716d:	89 c3                	mov    %eax,%ebx
8010716f:	85 c0                	test   %eax,%eax
80107171:	75 8d                	jne    80107100 <copyuvm+0x30>
80107173:	83 ec 0c             	sub    $0xc,%esp
80107176:	ff 75 e0             	pushl  -0x20(%ebp)
80107179:	e8 02 fe ff ff       	call   80106f80 <freevm>
8010717e:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
80107185:	83 c4 10             	add    $0x10,%esp
80107188:	8b 45 e0             	mov    -0x20(%ebp),%eax
8010718b:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010718e:	5b                   	pop    %ebx
8010718f:	5e                   	pop    %esi
80107190:	5f                   	pop    %edi
80107191:	5d                   	pop    %ebp
80107192:	c3                   	ret    
80107193:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80107197:	90                   	nop
80107198:	83 ec 0c             	sub    $0xc,%esp
8010719b:	53                   	push   %ebx
8010719c:	e8 8f b3 ff ff       	call   80102530 <kfree>
801071a1:	83 c4 10             	add    $0x10,%esp
801071a4:	eb cd                	jmp    80107173 <copyuvm+0xa3>
801071a6:	83 ec 0c             	sub    $0xc,%esp
801071a9:	68 2e 7c 10 80       	push   $0x80107c2e
801071ae:	e8 2d 92 ff ff       	call   801003e0 <panic>
801071b3:	83 ec 0c             	sub    $0xc,%esp
801071b6:	68 14 7c 10 80       	push   $0x80107c14
801071bb:	e8 20 92 ff ff       	call   801003e0 <panic>

801071c0 <uva2ka>:
801071c0:	f3 0f 1e fb          	endbr32 
801071c4:	55                   	push   %ebp
801071c5:	31 c9                	xor    %ecx,%ecx
801071c7:	89 e5                	mov    %esp,%ebp
801071c9:	83 ec 08             	sub    $0x8,%esp
801071cc:	8b 55 0c             	mov    0xc(%ebp),%edx
801071cf:	8b 45 08             	mov    0x8(%ebp),%eax
801071d2:	e8 89 f7 ff ff       	call   80106960 <walkpgdir>
801071d7:	8b 00                	mov    (%eax),%eax
801071d9:	c9                   	leave  
801071da:	89 c2                	mov    %eax,%edx
801071dc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801071e1:	83 e2 05             	and    $0x5,%edx
801071e4:	05 00 00 00 80       	add    $0x80000000,%eax
801071e9:	83 fa 05             	cmp    $0x5,%edx
801071ec:	ba 00 00 00 00       	mov    $0x0,%edx
801071f1:	0f 45 c2             	cmovne %edx,%eax
801071f4:	c3                   	ret    
801071f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801071fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80107200 <copyout>:
80107200:	f3 0f 1e fb          	endbr32 
80107204:	55                   	push   %ebp
80107205:	89 e5                	mov    %esp,%ebp
80107207:	57                   	push   %edi
80107208:	56                   	push   %esi
80107209:	53                   	push   %ebx
8010720a:	83 ec 0c             	sub    $0xc,%esp
8010720d:	8b 75 14             	mov    0x14(%ebp),%esi
80107210:	8b 55 0c             	mov    0xc(%ebp),%edx
80107213:	85 f6                	test   %esi,%esi
80107215:	75 3c                	jne    80107253 <copyout+0x53>
80107217:	eb 67                	jmp    80107280 <copyout+0x80>
80107219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80107220:	8b 55 0c             	mov    0xc(%ebp),%edx
80107223:	89 fb                	mov    %edi,%ebx
80107225:	29 d3                	sub    %edx,%ebx
80107227:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010722d:	39 f3                	cmp    %esi,%ebx
8010722f:	0f 47 de             	cmova  %esi,%ebx
80107232:	29 fa                	sub    %edi,%edx
80107234:	83 ec 04             	sub    $0x4,%esp
80107237:	01 c2                	add    %eax,%edx
80107239:	53                   	push   %ebx
8010723a:	ff 75 10             	pushl  0x10(%ebp)
8010723d:	52                   	push   %edx
8010723e:	e8 1d d6 ff ff       	call   80104860 <memmove>
80107243:	01 5d 10             	add    %ebx,0x10(%ebp)
80107246:	8d 97 00 10 00 00    	lea    0x1000(%edi),%edx
8010724c:	83 c4 10             	add    $0x10,%esp
8010724f:	29 de                	sub    %ebx,%esi
80107251:	74 2d                	je     80107280 <copyout+0x80>
80107253:	89 d7                	mov    %edx,%edi
80107255:	83 ec 08             	sub    $0x8,%esp
80107258:	89 55 0c             	mov    %edx,0xc(%ebp)
8010725b:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
80107261:	57                   	push   %edi
80107262:	ff 75 08             	pushl  0x8(%ebp)
80107265:	e8 56 ff ff ff       	call   801071c0 <uva2ka>
8010726a:	83 c4 10             	add    $0x10,%esp
8010726d:	85 c0                	test   %eax,%eax
8010726f:	75 af                	jne    80107220 <copyout+0x20>
80107271:	8d 65 f4             	lea    -0xc(%ebp),%esp
80107274:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80107279:	5b                   	pop    %ebx
8010727a:	5e                   	pop    %esi
8010727b:	5f                   	pop    %edi
8010727c:	5d                   	pop    %ebp
8010727d:	c3                   	ret    
8010727e:	66 90                	xchg   %ax,%ax
80107280:	8d 65 f4             	lea    -0xc(%ebp),%esp
80107283:	31 c0                	xor    %eax,%eax
80107285:	5b                   	pop    %ebx
80107286:	5e                   	pop    %esi
80107287:	5f                   	pop    %edi
80107288:	5d                   	pop    %ebp
80107289:	c3                   	ret    
