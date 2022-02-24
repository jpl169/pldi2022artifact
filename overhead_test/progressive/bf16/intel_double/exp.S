
exp:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 c1 7f 00 00 	mov    0x7fc1(%rip),%rax        # 408fd0 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 7f 00 00    	pushq  0x7fe2(%rip)        # 409008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 7f 00 00    	jmpq   *0x7fe4(%rip)        # 409010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <getenv@plt>:
  401030:	ff 25 e2 7f 00 00    	jmpq   *0x7fe2(%rip)        # 409018 <getenv@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <__snprintf_chk@plt>:
  401040:	ff 25 da 7f 00 00    	jmpq   *0x7fda(%rip)        # 409020 <__snprintf_chk@GLIBC_2.3.4>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <__errno_location@plt>:
  401050:	ff 25 d2 7f 00 00    	jmpq   *0x7fd2(%rip)        # 409028 <__errno_location@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <strncpy@plt>:
  401060:	ff 25 ca 7f 00 00    	jmpq   *0x7fca(%rip)        # 409030 <strncpy@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <setenv@plt>:
  401070:	ff 25 c2 7f 00 00    	jmpq   *0x7fc2(%rip)        # 409038 <setenv@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <__stack_chk_fail@plt>:
  401080:	ff 25 ba 7f 00 00    	jmpq   *0x7fba(%rip)        # 409040 <__stack_chk_fail@GLIBC_2.4>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <strchr@plt>:
  401090:	ff 25 b2 7f 00 00    	jmpq   *0x7fb2(%rip)        # 409048 <strchr@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <printf@plt>:
  4010a0:	ff 25 aa 7f 00 00    	jmpq   *0x7faa(%rip)        # 409050 <printf@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <fputs@plt>:
  4010b0:	ff 25 a2 7f 00 00    	jmpq   *0x7fa2(%rip)        # 409058 <fputs@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <catopen@plt>:
  4010c0:	ff 25 9a 7f 00 00    	jmpq   *0x7f9a(%rip)        # 409060 <catopen@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <__vsnprintf_chk@plt>:
  4010d0:	ff 25 92 7f 00 00    	jmpq   *0x7f92(%rip)        # 409068 <__vsnprintf_chk@GLIBC_2.3.4>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <catgets@plt>:
  4010e0:	ff 25 8a 7f 00 00    	jmpq   *0x7f8a(%rip)        # 409070 <catgets@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

Disassembly of section .plt.got:

00000000004010f0 <__cxa_finalize@plt>:
  4010f0:	ff 25 f2 7e 00 00    	jmpq   *0x7ef2(%rip)        # 408fe8 <__cxa_finalize@GLIBC_2.2.5>
  4010f6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000401100 <_start>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	31 ed                	xor    %ebp,%ebp
  401106:	49 89 d1             	mov    %rdx,%r9
  401109:	5e                   	pop    %rsi
  40110a:	48 89 e2             	mov    %rsp,%rdx
  40110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401111:	50                   	push   %rax
  401112:	54                   	push   %rsp
  401113:	49 c7 c0 70 41 40 00 	mov    $0x404170,%r8
  40111a:	48 c7 c1 00 41 40 00 	mov    $0x404100,%rcx
  401121:	48 c7 c7 53 13 40 00 	mov    $0x401353,%rdi
  401128:	ff 15 9a 7e 00 00    	callq  *0x7e9a(%rip)        # 408fc8 <__libc_start_main@GLIBC_2.2.5>
  40112e:	f4                   	hlt    
  40112f:	90                   	nop

0000000000401130 <deregister_tm_clones>:
  401130:	48 8d 3d e9 7f 00 00 	lea    0x7fe9(%rip),%rdi        # 409120 <__TMC_END__>
  401137:	48 8d 05 e2 7f 00 00 	lea    0x7fe2(%rip),%rax        # 409120 <__TMC_END__>
  40113e:	48 39 f8             	cmp    %rdi,%rax
  401141:	74 15                	je     401158 <deregister_tm_clones+0x28>
  401143:	48 8b 05 76 7e 00 00 	mov    0x7e76(%rip),%rax        # 408fc0 <_ITM_deregisterTMCloneTable>
  40114a:	48 85 c0             	test   %rax,%rax
  40114d:	74 09                	je     401158 <deregister_tm_clones+0x28>
  40114f:	ff e0                	jmpq   *%rax
  401151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401158:	c3                   	retq   
  401159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401160 <register_tm_clones>:
  401160:	48 8d 3d b9 7f 00 00 	lea    0x7fb9(%rip),%rdi        # 409120 <__TMC_END__>
  401167:	48 8d 35 b2 7f 00 00 	lea    0x7fb2(%rip),%rsi        # 409120 <__TMC_END__>
  40116e:	48 29 fe             	sub    %rdi,%rsi
  401171:	48 89 f0             	mov    %rsi,%rax
  401174:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401178:	48 c1 f8 03          	sar    $0x3,%rax
  40117c:	48 01 c6             	add    %rax,%rsi
  40117f:	48 d1 fe             	sar    %rsi
  401182:	74 14                	je     401198 <register_tm_clones+0x38>
  401184:	48 8b 05 55 7e 00 00 	mov    0x7e55(%rip),%rax        # 408fe0 <_ITM_registerTMCloneTable>
  40118b:	48 85 c0             	test   %rax,%rax
  40118e:	74 08                	je     401198 <register_tm_clones+0x38>
  401190:	ff e0                	jmpq   *%rax
  401192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401198:	c3                   	retq   
  401199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004011a0 <__do_global_dtors_aux>:
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	80 3d 95 7f 00 00 00 	cmpb   $0x0,0x7f95(%rip)        # 409140 <completed.8060>
  4011ab:	75 2b                	jne    4011d8 <__do_global_dtors_aux+0x38>
  4011ad:	55                   	push   %rbp
  4011ae:	48 83 3d 32 7e 00 00 	cmpq   $0x0,0x7e32(%rip)        # 408fe8 <__cxa_finalize@GLIBC_2.2.5>
  4011b5:	00 
  4011b6:	48 89 e5             	mov    %rsp,%rbp
  4011b9:	74 0c                	je     4011c7 <__do_global_dtors_aux+0x27>
  4011bb:	48 8b 3d c6 7e 00 00 	mov    0x7ec6(%rip),%rdi        # 409088 <__dso_handle>
  4011c2:	e8 29 ff ff ff       	callq  4010f0 <__cxa_finalize@plt>
  4011c7:	e8 64 ff ff ff       	callq  401130 <deregister_tm_clones>
  4011cc:	c6 05 6d 7f 00 00 01 	movb   $0x1,0x7f6d(%rip)        # 409140 <completed.8060>
  4011d3:	5d                   	pop    %rbp
  4011d4:	c3                   	retq   
  4011d5:	0f 1f 00             	nopl   (%rax)
  4011d8:	c3                   	retq   
  4011d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004011e0 <frame_dummy>:
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	e9 77 ff ff ff       	jmpq   401160 <register_tm_clones>
  4011e9:	0f 1f 00             	nopl   (%rax)

00000000004011ec <RunTest>:
  4011ec:	55                   	push   %rbp
  4011ed:	48 89 e5             	mov    %rsp,%rbp
  4011f0:	48 83 ec 60          	sub    $0x60,%rsp
  4011f4:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  4011f8:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
  4011ff:	00 
  401200:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  401207:	00 
  401208:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
  40120f:	8b 45 a0             	mov    -0x60(%rbp),%eax
  401212:	3d 7d 01 00 00       	cmp    $0x17d,%eax
  401217:	7c 12                	jl     40122b <RunTest+0x3f>
  401219:	e9 c1 00 00 00       	jmpq   4012df <RunTest+0xf3>
  40121e:	b8 01 00 00 00       	mov    $0x1,%eax
  401223:	03 45 a0             	add    -0x60(%rbp),%eax
  401226:	89 45 a0             	mov    %eax,-0x60(%rbp)
  401229:	eb e4                	jmp    40120f <RunTest+0x23>
  40122b:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  401232:	00 
  401233:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401237:	48 3d 00 00 02 00    	cmp    $0x20000,%rax
  40123d:	73 df                	jae    40121e <RunTest+0x32>
  40123f:	8b 45 c8             	mov    -0x38(%rbp),%eax
  401242:	c1 e0 10             	shl    $0x10,%eax
  401245:	89 45 a8             	mov    %eax,-0x58(%rbp)
  401248:	f3 0f 10 45 a8       	movss  -0x58(%rbp),%xmm0
  40124d:	f3 0f 11 45 ac       	movss  %xmm0,-0x54(%rbp)
  401252:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401256:	48 89 c7             	mov    %rax,%rdi
  401259:	0f 01 f9             	rdtscp 
  40125c:	48 c1 e2 20          	shl    $0x20,%rdx
  401260:	48 0b c2             	or     %rdx,%rax
  401263:	89 0f                	mov    %ecx,(%rdi)
  401265:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  401269:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40126d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  401271:	f3 0f 10 45 ac       	movss  -0x54(%rbp),%xmm0
  401276:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  40127a:	e8 01 01 00 00       	callq  401380 <exp>
  40127f:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
  401284:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
  401289:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
  40128e:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401292:	48 89 c7             	mov    %rax,%rdi
  401295:	0f 01 f9             	rdtscp 
  401298:	48 c1 e2 20          	shl    $0x20,%rdx
  40129c:	48 0b c2             	or     %rdx,%rax
  40129f:	89 0f                	mov    %ecx,(%rdi)
  4012a1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4012a5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4012a9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4012ad:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4012b1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4012b5:	48 3b c2             	cmp    %rdx,%rax
  4012b8:	73 98                	jae    401252 <RunTest+0x66>
  4012ba:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4012be:	48 f7 d8             	neg    %rax
  4012c1:	48 03 45 f8          	add    -0x8(%rbp),%rax
  4012c5:	48 03 45 c0          	add    -0x40(%rbp),%rax
  4012c9:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  4012cd:	b8 01 00 00 00       	mov    $0x1,%eax
  4012d2:	48 03 45 c8          	add    -0x38(%rbp),%rax
  4012d6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4012da:	e9 54 ff ff ff       	jmpq   401233 <RunTest+0x47>
  4012df:	b8 04 50 40 00       	mov    $0x405004,%eax
  4012e4:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4012e8:	48 89 c7             	mov    %rax,%rdi
  4012eb:	48 89 d6             	mov    %rdx,%rsi
  4012ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f3:	e8 a8 fd ff ff       	callq  4010a0 <printf@plt>
  4012f8:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  4012fb:	c9                   	leaveq 
  4012fc:	c3                   	retq   

00000000004012fd <additionallyIgnoreThisInput>:
  4012fd:	55                   	push   %rbp
  4012fe:	48 89 e5             	mov    %rsp,%rbp
  401301:	48 83 ec 10          	sub    $0x10,%rsp
  401305:	f3 0f 11 45 f8       	movss  %xmm0,-0x8(%rbp)
  40130a:	f3 0f 10 45 f8       	movss  -0x8(%rbp),%xmm0
  40130f:	f3 0f 11 45 f0       	movss  %xmm0,-0x10(%rbp)
  401314:	b8 e8 8d 4e bd       	mov    $0xbd4e8de8,%eax
  401319:	03 45 f0             	add    -0x10(%rbp),%eax
  40131c:	3d e8 8d 4e 70       	cmp    $0x704e8de8,%eax
  401321:	77 07                	ja     40132a <additionallyIgnoreThisInput+0x2d>
  401323:	b8 01 00 00 00       	mov    $0x1,%eax
  401328:	c9                   	leaveq 
  401329:	c3                   	retq   
  40132a:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40132d:	3d ff ff 7f 33       	cmp    $0x337fffff,%eax
  401332:	77 07                	ja     40133b <additionallyIgnoreThisInput+0x3e>
  401334:	b8 01 00 00 00       	mov    $0x1,%eax
  401339:	c9                   	leaveq 
  40133a:	c3                   	retq   
  40133b:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40133e:	3d 18 f2 cf c2       	cmp    $0xc2cff218,%eax
  401343:	72 07                	jb     40134c <additionallyIgnoreThisInput+0x4f>
  401345:	b8 01 00 00 00       	mov    $0x1,%eax
  40134a:	c9                   	leaveq 
  40134b:	c3                   	retq   
  40134c:	b8 00 00 00 00       	mov    $0x0,%eax
  401351:	c9                   	leaveq 
  401352:	c3                   	retq   

0000000000401353 <main>:
  401353:	55                   	push   %rbp
  401354:	48 89 e5             	mov    %rsp,%rbp
  401357:	48 83 ec 10          	sub    $0x10,%rsp
  40135b:	89 7d f0             	mov    %edi,-0x10(%rbp)
  40135e:	48 89 75 f8          	mov    %rsi,-0x8(%rbp)
  401362:	b8 08 00 00 00       	mov    $0x8,%eax
  401367:	48 03 45 f8          	add    -0x8(%rbp),%rax
  40136b:	48 8b 00             	mov    (%rax),%rax
  40136e:	48 89 c7             	mov    %rax,%rdi
  401371:	e8 76 fe ff ff       	callq  4011ec <RunTest>
  401376:	b8 00 00 00 00       	mov    $0x0,%eax
  40137b:	c9                   	leaveq 
  40137c:	c3                   	retq   
  40137d:	90                   	nop
  40137e:	90                   	nop
  40137f:	90                   	nop

0000000000401380 <exp>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	48 8d 05 35 7d 00 00 	lea    0x7d35(%rip),%rax        # 4090c0 <__libm_exp_chosen_core_func>
  40138b:	48 8b 10             	mov    (%rax),%rdx
  40138e:	ff e2                	jmpq   *%rdx

0000000000401390 <__libm_exp>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	48 8d 05 25 7d 00 00 	lea    0x7d25(%rip),%rax        # 4090c0 <__libm_exp_chosen_core_func>
  40139b:	48 8b 10             	mov    (%rax),%rdx
  40139e:	ff e2                	jmpq   *%rdx

00000000004013a0 <__libm_exp_dispatch_table_init>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	48 83 ec 18          	sub    $0x18,%rsp
  4013a8:	48 8d 05 d1 7d 00 00 	lea    0x7dd1(%rip),%rax        # 409180 <__libm_feature_flag>
  4013af:	48 63 10             	movslq (%rax),%rdx
  4013b2:	48 85 d2             	test   %rdx,%rdx
  4013b5:	74 40                	je     4013f7 <__libm_exp_dispatch_table_init+0x57>
  4013b7:	48 8d 0d 62 79 00 00 	lea    0x7962(%rip),%rcx        # 408d20 <__libm_exp_dispatch_table>
  4013be:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  4013c3:	48 8d 3d f6 7c 00 00 	lea    0x7cf6(%rip),%rdi        # 4090c0 <__libm_exp_chosen_core_func>
  4013ca:	48 8d 05 cf ff ff ff 	lea    -0x31(%rip),%rax        # 4013a0 <__libm_exp_dispatch_table_init>
  4013d1:	48 89 06             	mov    %rax,(%rsi)
  4013d4:	48 8b 0c d1          	mov    (%rcx,%rdx,8),%rcx
  4013d8:	48 8b 06             	mov    (%rsi),%rax
  4013db:	f0 48 0f b1 0f       	lock cmpxchg %rcx,(%rdi)
  4013e0:	48 89 06             	mov    %rax,(%rsi)
  4013e3:	0f 94 c0             	sete   %al
  4013e6:	0f b6 c0             	movzbl %al,%eax
  4013e9:	48 8d 05 d0 7c 00 00 	lea    0x7cd0(%rip),%rax        # 4090c0 <__libm_exp_chosen_core_func>
  4013f0:	ff 10                	callq  *(%rax)
  4013f2:	48 83 c4 18          	add    $0x18,%rsp
  4013f6:	c3                   	retq   
  4013f7:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  4013fd:	4c 89 24 24          	mov    %r12,(%rsp)
  401401:	49 89 c4             	mov    %rax,%r12
  401404:	e8 17 00 00 00       	callq  401420 <__libm_feature_flag_init>
  401409:	49 63 14 24          	movslq (%r12),%rdx
  40140d:	48 85 d2             	test   %rdx,%rdx
  401410:	74 f2                	je     401404 <__libm_exp_dispatch_table_init+0x64>
  401412:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
  401418:	4c 8b 24 24          	mov    (%rsp),%r12
  40141c:	eb 99                	jmp    4013b7 <__libm_exp_dispatch_table_init+0x17>
  40141e:	66 90                	xchg   %ax,%ax

0000000000401420 <__libm_feature_flag_init>:
  401420:	f3 0f 1e fa          	endbr64 
  401424:	56                   	push   %rsi
  401425:	48 8d 05 54 7d 00 00 	lea    0x7d54(%rip),%rax        # 409180 <__libm_feature_flag>
  40142c:	83 38 00             	cmpl   $0x0,(%rax)
  40142f:	75 44                	jne    401475 <__libm_feature_flag_init+0x55>
  401431:	c7 04 24 00 00 00 00 	movl   $0x0,(%rsp)
  401438:	48 b9 00 00 00 09 64 	movabs $0x6409000000,%rcx
  40143f:	00 00 00 
  401442:	48 8d 15 4f 84 00 00 	lea    0x844f(%rip),%rdx        # 409898 <__intel_cpu_feature_indicator_x>
  401449:	48 89 c8             	mov    %rcx,%rax
  40144c:	48 8b 32             	mov    (%rdx),%rsi
  40144f:	48 23 c6             	and    %rsi,%rax
  401452:	48 3b c1             	cmp    %rcx,%rax
  401455:	75 20                	jne    401477 <__libm_feature_flag_init+0x57>
  401457:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40145c:	48 8d 3d 1d 7d 00 00 	lea    0x7d1d(%rip),%rdi        # 409180 <__libm_feature_flag>
  401463:	48 8d 34 24          	lea    (%rsp),%rsi
  401467:	8b 06                	mov    (%rsi),%eax
  401469:	f0 0f b1 0f          	lock cmpxchg %ecx,(%rdi)
  40146d:	89 06                	mov    %eax,(%rsi)
  40146f:	0f 94 c0             	sete   %al
  401472:	0f b6 c0             	movzbl %al,%eax
  401475:	59                   	pop    %rcx
  401476:	c3                   	retq   
  401477:	48 85 f6             	test   %rsi,%rsi
  40147a:	75 08                	jne    401484 <__libm_feature_flag_init+0x64>
  40147c:	ff 15 56 7b 00 00    	callq  *0x7b56(%rip)        # 408fd8 <.got+0x18>
  401482:	eb c5                	jmp    401449 <__libm_feature_flag_init+0x29>
  401484:	48 b9 00 00 00 08 07 	movabs $0x708000000,%rcx
  40148b:	00 00 00 
  40148e:	48 89 c8             	mov    %rcx,%rax
  401491:	48 23 c6             	and    %rsi,%rax
  401494:	48 3b c1             	cmp    %rcx,%rax
  401497:	75 07                	jne    4014a0 <__libm_feature_flag_init+0x80>
  401499:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40149e:	eb bc                	jmp    40145c <__libm_feature_flag_init+0x3c>
  4014a0:	48 85 f6             	test   %rsi,%rsi
  4014a3:	75 0b                	jne    4014b0 <__libm_feature_flag_init+0x90>
  4014a5:	ff 15 2d 7b 00 00    	callq  *0x7b2d(%rip)        # 408fd8 <.got+0x18>
  4014ab:	48 8b 32             	mov    (%rdx),%rsi
  4014ae:	eb de                	jmp    40148e <__libm_feature_flag_init+0x6e>
  4014b0:	48 89 f0             	mov    %rsi,%rax
  4014b3:	48 25 00 20 9c 00    	and    $0x9c2000,%rax
  4014b9:	48 3d 00 20 9c 00    	cmp    $0x9c2000,%rax
  4014bf:	75 07                	jne    4014c8 <__libm_feature_flag_init+0xa8>
  4014c1:	b9 0a 00 00 00       	mov    $0xa,%ecx
  4014c6:	eb 94                	jmp    40145c <__libm_feature_flag_init+0x3c>
  4014c8:	48 85 f6             	test   %rsi,%rsi
  4014cb:	75 0b                	jne    4014d8 <__libm_feature_flag_init+0xb8>
  4014cd:	ff 15 05 7b 00 00    	callq  *0x7b05(%rip)        # 408fd8 <.got+0x18>
  4014d3:	48 8b 32             	mov    (%rdx),%rsi
  4014d6:	eb d8                	jmp    4014b0 <__libm_feature_flag_init+0x90>
  4014d8:	48 f7 c6 00 00 01 00 	test   $0x10000,%rsi
  4014df:	74 0a                	je     4014eb <__libm_feature_flag_init+0xcb>
  4014e1:	b9 09 00 00 00       	mov    $0x9,%ecx
  4014e6:	e9 71 ff ff ff       	jmpq   40145c <__libm_feature_flag_init+0x3c>
  4014eb:	48 85 f6             	test   %rsi,%rsi
  4014ee:	75 0b                	jne    4014fb <__libm_feature_flag_init+0xdb>
  4014f0:	ff 15 e2 7a 00 00    	callq  *0x7ae2(%rip)        # 408fd8 <.got+0x18>
  4014f6:	48 8b 32             	mov    (%rdx),%rsi
  4014f9:	eb dd                	jmp    4014d8 <__libm_feature_flag_init+0xb8>
  4014fb:	48 f7 c6 00 04 00 00 	test   $0x400,%rsi
  401502:	74 0a                	je     40150e <__libm_feature_flag_init+0xee>
  401504:	b9 08 00 00 00       	mov    $0x8,%ecx
  401509:	e9 4e ff ff ff       	jmpq   40145c <__libm_feature_flag_init+0x3c>
  40150e:	48 85 f6             	test   %rsi,%rsi
  401511:	75 0b                	jne    40151e <__libm_feature_flag_init+0xfe>
  401513:	ff 15 bf 7a 00 00    	callq  *0x7abf(%rip)        # 408fd8 <.got+0x18>
  401519:	48 8b 32             	mov    (%rdx),%rsi
  40151c:	eb dd                	jmp    4014fb <__libm_feature_flag_init+0xdb>
  40151e:	48 f7 c6 00 02 00 00 	test   $0x200,%rsi
  401525:	74 0a                	je     401531 <__libm_feature_flag_init+0x111>
  401527:	b9 07 00 00 00       	mov    $0x7,%ecx
  40152c:	e9 2b ff ff ff       	jmpq   40145c <__libm_feature_flag_init+0x3c>
  401531:	48 85 f6             	test   %rsi,%rsi
  401534:	75 0b                	jne    401541 <__libm_feature_flag_init+0x121>
  401536:	ff 15 9c 7a 00 00    	callq  *0x7a9c(%rip)        # 408fd8 <.got+0x18>
  40153c:	48 8b 32             	mov    (%rdx),%rsi
  40153f:	eb dd                	jmp    40151e <__libm_feature_flag_init+0xfe>
  401541:	48 f7 c6 00 01 00 00 	test   $0x100,%rsi
  401548:	74 0a                	je     401554 <__libm_feature_flag_init+0x134>
  40154a:	b9 06 00 00 00       	mov    $0x6,%ecx
  40154f:	e9 08 ff ff ff       	jmpq   40145c <__libm_feature_flag_init+0x3c>
  401554:	48 85 f6             	test   %rsi,%rsi
  401557:	75 0b                	jne    401564 <__libm_feature_flag_init+0x144>
  401559:	ff 15 79 7a 00 00    	callq  *0x7a79(%rip)        # 408fd8 <.got+0x18>
  40155f:	48 8b 32             	mov    (%rdx),%rsi
  401562:	eb dd                	jmp    401541 <__libm_feature_flag_init+0x121>
  401564:	48 f7 c6 80 00 00 00 	test   $0x80,%rsi
  40156b:	74 0a                	je     401577 <__libm_feature_flag_init+0x157>
  40156d:	b9 05 00 00 00       	mov    $0x5,%ecx
  401572:	e9 e5 fe ff ff       	jmpq   40145c <__libm_feature_flag_init+0x3c>
  401577:	48 85 f6             	test   %rsi,%rsi
  40157a:	75 0b                	jne    401587 <__libm_feature_flag_init+0x167>
  40157c:	ff 15 56 7a 00 00    	callq  *0x7a56(%rip)        # 408fd8 <.got+0x18>
  401582:	48 8b 32             	mov    (%rdx),%rsi
  401585:	eb dd                	jmp    401564 <__libm_feature_flag_init+0x144>
  401587:	48 f7 c6 40 00 00 00 	test   $0x40,%rsi
  40158e:	74 0a                	je     40159a <__libm_feature_flag_init+0x17a>
  401590:	b9 04 00 00 00       	mov    $0x4,%ecx
  401595:	e9 c2 fe ff ff       	jmpq   40145c <__libm_feature_flag_init+0x3c>
  40159a:	48 85 f6             	test   %rsi,%rsi
  40159d:	75 0b                	jne    4015aa <__libm_feature_flag_init+0x18a>
  40159f:	ff 15 33 7a 00 00    	callq  *0x7a33(%rip)        # 408fd8 <.got+0x18>
  4015a5:	48 8b 32             	mov    (%rdx),%rsi
  4015a8:	eb dd                	jmp    401587 <__libm_feature_flag_init+0x167>
  4015aa:	48 f7 c6 20 00 00 00 	test   $0x20,%rsi
  4015b1:	74 0a                	je     4015bd <__libm_feature_flag_init+0x19d>
  4015b3:	b9 03 00 00 00       	mov    $0x3,%ecx
  4015b8:	e9 9f fe ff ff       	jmpq   40145c <__libm_feature_flag_init+0x3c>
  4015bd:	48 85 f6             	test   %rsi,%rsi
  4015c0:	75 0b                	jne    4015cd <__libm_feature_flag_init+0x1ad>
  4015c2:	ff 15 10 7a 00 00    	callq  *0x7a10(%rip)        # 408fd8 <.got+0x18>
  4015c8:	48 8b 32             	mov    (%rdx),%rsi
  4015cb:	eb dd                	jmp    4015aa <__libm_feature_flag_init+0x18a>
  4015cd:	48 f7 c6 02 00 00 00 	test   $0x2,%rsi
  4015d4:	74 17                	je     4015ed <__libm_feature_flag_init+0x1cd>
  4015d6:	ba 01 00 00 00       	mov    $0x1,%edx
  4015db:	33 c0                	xor    %eax,%eax
  4015dd:	b9 01 00 00 00       	mov    $0x1,%ecx
  4015e2:	48 3b c2             	cmp    %rdx,%rax
  4015e5:	83 d1 00             	adc    $0x0,%ecx
  4015e8:	e9 6f fe ff ff       	jmpq   40145c <__libm_feature_flag_init+0x3c>
  4015ed:	48 85 f6             	test   %rsi,%rsi
  4015f0:	75 0b                	jne    4015fd <__libm_feature_flag_init+0x1dd>
  4015f2:	ff 15 e0 79 00 00    	callq  *0x79e0(%rip)        # 408fd8 <.got+0x18>
  4015f8:	48 8b 32             	mov    (%rdx),%rsi
  4015fb:	eb d0                	jmp    4015cd <__libm_feature_flag_init+0x1ad>
  4015fd:	33 d2                	xor    %edx,%edx
  4015ff:	eb da                	jmp    4015db <__libm_feature_flag_init+0x1bb>
  401601:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401608:	00 
  401609:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401610 <__libm_exp_ex>:
  401610:	f3 0f 1e fa          	endbr64 
  401614:	48 83 ec 18          	sub    $0x18,%rsp
  401618:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
  40161d:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  401621:	66 0f 28 0d f7 39 00 	movapd 0x39f7(%rip),%xmm1        # 405020 <cv>
  401628:	00 
  401629:	66 0f 28 35 4f 3a 00 	movapd 0x3a4f(%rip),%xmm6        # 405080 <Shifter>
  401630:	00 
  401631:	66 0f 28 15 f7 39 00 	movapd 0x39f7(%rip),%xmm2        # 405030 <cv+0x10>
  401638:	00 
  401639:	66 0f 28 1d ff 39 00 	movapd 0x39ff(%rip),%xmm3        # 405040 <cv+0x20>
  401640:	00 
  401641:	66 0f c5 c0 03       	pextrw $0x3,%xmm0,%eax
  401646:	25 ff 7f 00 00       	and    $0x7fff,%eax
  40164b:	ba 8f 40 00 00       	mov    $0x408f,%edx
  401650:	2b d0                	sub    %eax,%edx
  401652:	2d 90 3c 00 00       	sub    $0x3c90,%eax
  401657:	0b d0                	or     %eax,%edx
  401659:	81 fa 00 00 00 80    	cmp    $0x80000000,%edx
  40165f:	0f 83 5a 02 00 00    	jae    4018bf <__libm_exp_ex+0x2af>
  401665:	4c 8d 05 24 3a 00 00 	lea    0x3a24(%rip),%r8        # 405090 <Tbl_addr>
  40166c:	66 0f 59 c8          	mulpd  %xmm0,%xmm1
  401670:	66 0f 58 ce          	addpd  %xmm6,%xmm1
  401674:	66 0f 28 f9          	movapd %xmm1,%xmm7
  401678:	66 0f 5c ce          	subpd  %xmm6,%xmm1
  40167c:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
  401680:	66 0f 28 25 d8 39 00 	movapd 0x39d8(%rip),%xmm4        # 405060 <cv+0x40>
  401687:	00 
  401688:	66 0f 59 d9          	mulpd  %xmm1,%xmm3
  40168c:	66 0f 28 2d dc 39 00 	movapd 0x39dc(%rip),%xmm5        # 405070 <cv+0x50>
  401693:	00 
  401694:	66 0f 5c c2          	subpd  %xmm2,%xmm0
  401698:	66 0f 7e f8          	movd   %xmm7,%eax
  40169c:	89 c1                	mov    %eax,%ecx
  40169e:	83 e1 3f             	and    $0x3f,%ecx
  4016a1:	c1 e1 04             	shl    $0x4,%ecx
  4016a4:	c1 f8 06             	sar    $0x6,%eax
  4016a7:	89 c2                	mov    %eax,%edx
  4016a9:	66 0f 6f 35 df 3d 00 	movdqa 0x3ddf(%rip),%xmm6        # 405490 <mmask>
  4016b0:	00 
  4016b1:	66 0f db fe          	pand   %xmm6,%xmm7
  4016b5:	66 0f 6f 35 e3 3d 00 	movdqa 0x3de3(%rip),%xmm6        # 4054a0 <bias>
  4016bc:	00 
  4016bd:	66 0f d4 fe          	paddq  %xmm6,%xmm7
  4016c1:	66 0f 73 f7 2e       	psllq  $0x2e,%xmm7
  4016c6:	66 0f 5c c3          	subpd  %xmm3,%xmm0
  4016ca:	66 42 0f 28 14 01    	movapd (%rcx,%r8,1),%xmm2
  4016d0:	66 0f 59 e0          	mulpd  %xmm0,%xmm4
  4016d4:	66 0f 28 f0          	movapd %xmm0,%xmm6
  4016d8:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4016dc:	66 0f 59 f6          	mulpd  %xmm6,%xmm6
  4016e0:	66 0f 59 c6          	mulpd  %xmm6,%xmm0
  4016e4:	66 0f 58 ec          	addpd  %xmm4,%xmm5
  4016e8:	f2 0f 59 c6          	mulsd  %xmm6,%xmm0
  4016ec:	66 0f 59 35 5c 39 00 	mulpd  0x395c(%rip),%xmm6        # 405050 <cv+0x30>
  4016f3:	00 
  4016f4:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
  4016f8:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
  4016fc:	66 0f 59 c5          	mulpd  %xmm5,%xmm0
  401700:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  401704:	66 0f 56 d7          	orpd   %xmm7,%xmm2
  401708:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
  40170c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401710:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
  401714:	81 c2 7e 03 00 00    	add    $0x37e,%edx
  40171a:	81 fa 7c 07 00 00    	cmp    $0x77c,%edx
  401720:	77 0d                	ja     40172f <__libm_exp_ex+0x11f>
  401722:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  401726:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
  40172a:	e9 d4 01 00 00       	jmpq   401903 <__libm_exp_ex+0x2f3>
  40172f:	66 0f 57 db          	xorpd  %xmm3,%xmm3
  401733:	66 0f 28 25 75 3d 00 	movapd 0x3d75(%rip),%xmm4        # 4054b0 <ALLONES>
  40173a:	00 
  40173b:	ba 02 fc ff ff       	mov    $0xfffffc02,%edx
  401740:	2b d0                	sub    %eax,%edx
  401742:	66 0f 6e ea          	movd   %edx,%xmm5
  401746:	66 0f f3 e5          	psllq  %xmm5,%xmm4
  40174a:	89 c1                	mov    %eax,%ecx
  40174c:	d1 f8                	sar    %eax
  40174e:	66 0f c4 d8 03       	pinsrw $0x3,%eax,%xmm3
  401753:	66 0f 28 35 65 3d 00 	movapd 0x3d65(%rip),%xmm6        # 4054c0 <ebias>
  40175a:	00 
  40175b:	66 0f 73 f3 04       	psllq  $0x4,%xmm3
  401760:	66 0f fa d3          	psubd  %xmm3,%xmm2
  401764:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  401768:	83 fa 34             	cmp    $0x34,%edx
  40176b:	0f 8f be 00 00 00    	jg     40182f <__libm_exp_ex+0x21f>
  401771:	66 0f 54 e2          	andpd  %xmm2,%xmm4
  401775:	66 0f fe de          	paddd  %xmm6,%xmm3
  401779:	f2 0f 5c d4          	subsd  %xmm4,%xmm2
  40177d:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
  401781:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
  401787:	0f 8d 82 00 00 00    	jge    40180f <__libm_exp_ex+0x1ff>
  40178d:	66 0f c5 c8 03       	pextrw $0x3,%xmm0,%ecx
  401792:	81 e1 00 80 00 00    	and    $0x8000,%ecx
  401798:	0b d1                	or     %ecx,%edx
  40179a:	83 fa 00             	cmp    $0x0,%edx
  40179d:	74 63                	je     401802 <__libm_exp_ex+0x1f2>
  40179f:	66 0f 28 f0          	movapd %xmm0,%xmm6
  4017a3:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
  4017a7:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
  4017ab:	66 0f c5 c8 03       	pextrw $0x3,%xmm0,%ecx
  4017b0:	81 e1 f0 7f 00 00    	and    $0x7ff0,%ecx
  4017b6:	83 f9 00             	cmp    $0x0,%ecx
  4017b9:	74 05                	je     4017c0 <__libm_exp_ex+0x1b0>
  4017bb:	e9 43 01 00 00       	jmpq   401903 <__libm_exp_ex+0x2f3>
  4017c0:	f2 0f 59 f3          	mulsd  %xmm3,%xmm6
  4017c4:	f2 0f 59 e3          	mulsd  %xmm3,%xmm4
  4017c8:	f2 0f 10 c6          	movsd  %xmm6,%xmm0
  4017cc:	66 0f ef f4          	pxor   %xmm4,%xmm6
  4017d0:	66 0f 72 e6 1f       	psrad  $0x1f,%xmm6
  4017d5:	66 0f 70 f6 55       	pshufd $0x55,%xmm6,%xmm6
  4017da:	66 0f 73 f0 01       	psllq  $0x1,%xmm0
  4017df:	66 0f 73 d0 01       	psrlq  $0x1,%xmm0
  4017e4:	66 0f ef c6          	pxor   %xmm6,%xmm0
  4017e8:	66 0f 73 d6 3f       	psrlq  $0x3f,%xmm6
  4017ed:	66 0f d4 c6          	paddq  %xmm6,%xmm0
  4017f1:	66 0f d4 c4          	paddq  %xmm4,%xmm0
  4017f5:	c7 44 24 10 0f 00 00 	movl   $0xf,0x10(%rsp)
  4017fc:	00 
  4017fd:	e9 e0 00 00 00       	jmpq   4018e2 <__libm_exp_ex+0x2d2>
  401802:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
  401806:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
  40180a:	e9 f4 00 00 00       	jmpq   401903 <__libm_exp_ex+0x2f3>
  40180f:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
  401813:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
  401817:	66 0f c5 c8 03       	pextrw $0x3,%xmm0,%ecx
  40181c:	81 e1 f0 7f 00 00    	and    $0x7ff0,%ecx
  401822:	81 f9 f0 7f 00 00    	cmp    $0x7ff0,%ecx
  401828:	73 3c                	jae    401866 <__libm_exp_ex+0x256>
  40182a:	e9 d4 00 00 00       	jmpq   401903 <__libm_exp_ex+0x2f3>
  40182f:	66 0f fe de          	paddd  %xmm6,%xmm3
  401833:	66 0f 58 c2          	addpd  %xmm2,%xmm0
  401837:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
  40183b:	c7 44 24 10 0f 00 00 	movl   $0xf,0x10(%rsp)
  401842:	00 
  401843:	e9 9a 00 00 00       	jmpq   4018e2 <__libm_exp_ex+0x2d2>
  401848:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
  40184d:	73 37                	jae    401886 <__libm_exp_ex+0x276>
  40184f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401853:	3d 00 00 00 80       	cmp    $0x80000000,%eax
  401858:	73 16                	jae    401870 <__libm_exp_ex+0x260>
  40185a:	f2 0f 10 05 6e 3c 00 	movsd  0x3c6e(%rip),%xmm0        # 4054d0 <XMAX>
  401861:	00 
  401862:	f2 0f 59 c0          	mulsd  %xmm0,%xmm0
  401866:	c7 44 24 10 0e 00 00 	movl   $0xe,0x10(%rsp)
  40186d:	00 
  40186e:	eb 72                	jmp    4018e2 <__libm_exp_ex+0x2d2>
  401870:	f2 0f 10 05 60 3c 00 	movsd  0x3c60(%rip),%xmm0        # 4054d8 <XMIN>
  401877:	00 
  401878:	f2 0f 59 c0          	mulsd  %xmm0,%xmm0
  40187c:	c7 44 24 10 0f 00 00 	movl   $0xf,0x10(%rsp)
  401883:	00 
  401884:	eb 5c                	jmp    4018e2 <__libm_exp_ex+0x2d2>
  401886:	8b 14 24             	mov    (%rsp),%edx
  401889:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
  40188e:	77 24                	ja     4018b4 <__libm_exp_ex+0x2a4>
  401890:	83 fa 00             	cmp    $0x0,%edx
  401893:	75 1f                	jne    4018b4 <__libm_exp_ex+0x2a4>
  401895:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401899:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
  40189e:	75 0a                	jne    4018aa <__libm_exp_ex+0x29a>
  4018a0:	f2 0f 10 05 38 3c 00 	movsd  0x3c38(%rip),%xmm0        # 4054e0 <INF>
  4018a7:	00 
  4018a8:	eb 59                	jmp    401903 <__libm_exp_ex+0x2f3>
  4018aa:	f2 0f 10 05 36 3c 00 	movsd  0x3c36(%rip),%xmm0        # 4054e8 <ZERO>
  4018b1:	00 
  4018b2:	eb 4f                	jmp    401903 <__libm_exp_ex+0x2f3>
  4018b4:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
  4018b9:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  4018bd:	eb 44                	jmp    401903 <__libm_exp_ex+0x2f3>
  4018bf:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018c3:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
  4018c8:	3d 00 00 90 40       	cmp    $0x40900000,%eax
  4018cd:	0f 83 75 ff ff ff    	jae    401848 <__libm_exp_ex+0x238>
  4018d3:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
  4018d8:	f2 0f 58 05 10 3c 00 	addsd  0x3c10(%rip),%xmm0        # 4054f0 <ONE_val>
  4018df:	00 
  4018e0:	eb 21                	jmp    401903 <__libm_exp_ex+0x2f3>
  4018e2:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  4018e8:	8b 4c 24 10          	mov    0x10(%rsp),%ecx
  4018ec:	48 8d 3c 24          	lea    (%rsp),%rdi
  4018f0:	48 89 fe             	mov    %rdi,%rsi
  4018f3:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  4018f8:	e8 93 06 00 00       	callq  401f90 <__libm_error_support>
  4018fd:	f3 0f 7e 44 24 08    	movq   0x8(%rsp),%xmm0
  401903:	f3 0f 1e fa          	endbr64 
  401907:	48 83 c4 18          	add    $0x18,%rsp
  40190b:	c3                   	retq   
  40190c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401910 <__libm_exp_e7>:
  401910:	f3 0f 1e fa          	endbr64 
  401914:	48 83 ec 18          	sub    $0x18,%rsp
  401918:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
  40191d:	66 0f 14 c0          	unpcklpd %xmm0,%xmm0
  401921:	66 0f 28 0d d7 3b 00 	movapd 0x3bd7(%rip),%xmm1        # 405500 <cv>
  401928:	00 
  401929:	66 0f 28 35 2f 3c 00 	movapd 0x3c2f(%rip),%xmm6        # 405560 <Shifter>
  401930:	00 
  401931:	66 0f 28 15 d7 3b 00 	movapd 0x3bd7(%rip),%xmm2        # 405510 <cv+0x10>
  401938:	00 
  401939:	66 0f 28 1d df 3b 00 	movapd 0x3bdf(%rip),%xmm3        # 405520 <cv+0x20>
  401940:	00 
  401941:	66 0f c5 c0 03       	pextrw $0x3,%xmm0,%eax
  401946:	25 ff 7f 00 00       	and    $0x7fff,%eax
  40194b:	ba 8f 40 00 00       	mov    $0x408f,%edx
  401950:	2b d0                	sub    %eax,%edx
  401952:	2d 90 3c 00 00       	sub    $0x3c90,%eax
  401957:	0b d0                	or     %eax,%edx
  401959:	81 fa 00 00 00 80    	cmp    $0x80000000,%edx
  40195f:	0f 83 5a 02 00 00    	jae    401bbf <__libm_exp_e7+0x2af>
  401965:	66 0f 59 c8          	mulpd  %xmm0,%xmm1
  401969:	66 0f 58 ce          	addpd  %xmm6,%xmm1
  40196d:	66 0f 28 f9          	movapd %xmm1,%xmm7
  401971:	66 0f 5c ce          	subpd  %xmm6,%xmm1
  401975:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
  401979:	66 0f 28 25 bf 3b 00 	movapd 0x3bbf(%rip),%xmm4        # 405540 <cv+0x40>
  401980:	00 
  401981:	66 0f 59 d9          	mulpd  %xmm1,%xmm3
  401985:	66 0f 28 2d c3 3b 00 	movapd 0x3bc3(%rip),%xmm5        # 405550 <cv+0x50>
  40198c:	00 
  40198d:	66 0f 5c c2          	subpd  %xmm2,%xmm0
  401991:	66 0f 7e f8          	movd   %xmm7,%eax
  401995:	89 c1                	mov    %eax,%ecx
  401997:	83 e1 3f             	and    $0x3f,%ecx
  40199a:	c1 e1 04             	shl    $0x4,%ecx
  40199d:	c1 f8 06             	sar    $0x6,%eax
  4019a0:	89 c2                	mov    %eax,%edx
  4019a2:	66 0f 6f 35 c6 3b 00 	movdqa 0x3bc6(%rip),%xmm6        # 405570 <mmask>
  4019a9:	00 
  4019aa:	66 0f db fe          	pand   %xmm6,%xmm7
  4019ae:	66 0f 6f 35 ca 3b 00 	movdqa 0x3bca(%rip),%xmm6        # 405580 <bias>
  4019b5:	00 
  4019b6:	66 0f d4 fe          	paddq  %xmm6,%xmm7
  4019ba:	66 0f 73 f7 2e       	psllq  $0x2e,%xmm7
  4019bf:	66 0f 5c c3          	subpd  %xmm3,%xmm0
  4019c3:	4c 8d 05 c6 3b 00 00 	lea    0x3bc6(%rip),%r8        # 405590 <Tbl_addr>
  4019ca:	66 42 0f 28 14 01    	movapd (%rcx,%r8,1),%xmm2
  4019d0:	66 0f 59 e0          	mulpd  %xmm0,%xmm4
  4019d4:	66 0f 28 f0          	movapd %xmm0,%xmm6
  4019d8:	66 0f 28 c8          	movapd %xmm0,%xmm1
  4019dc:	66 0f 59 f6          	mulpd  %xmm6,%xmm6
  4019e0:	66 0f 59 c6          	mulpd  %xmm6,%xmm0
  4019e4:	66 0f 58 ec          	addpd  %xmm4,%xmm5
  4019e8:	f2 0f 59 c6          	mulsd  %xmm6,%xmm0
  4019ec:	66 0f 59 35 3c 3b 00 	mulpd  0x3b3c(%rip),%xmm6        # 405530 <cv+0x30>
  4019f3:	00 
  4019f4:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
  4019f8:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
  4019fc:	66 0f 59 c5          	mulpd  %xmm5,%xmm0
  401a00:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  401a04:	66 0f 56 d7          	orpd   %xmm7,%xmm2
  401a08:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
  401a0c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  401a10:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
  401a14:	81 c2 7e 03 00 00    	add    $0x37e,%edx
  401a1a:	81 fa 7c 07 00 00    	cmp    $0x77c,%edx
  401a20:	77 0d                	ja     401a2f <__libm_exp_e7+0x11f>
  401a22:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  401a26:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
  401a2a:	e9 d4 01 00 00       	jmpq   401c03 <__libm_exp_e7+0x2f3>
  401a2f:	66 0f 57 db          	xorpd  %xmm3,%xmm3
  401a33:	66 0f 28 25 55 3f 00 	movapd 0x3f55(%rip),%xmm4        # 405990 <ALLONES>
  401a3a:	00 
  401a3b:	ba 02 fc ff ff       	mov    $0xfffffc02,%edx
  401a40:	2b d0                	sub    %eax,%edx
  401a42:	66 0f 6e ea          	movd   %edx,%xmm5
  401a46:	66 0f f3 e5          	psllq  %xmm5,%xmm4
  401a4a:	89 c1                	mov    %eax,%ecx
  401a4c:	d1 f8                	sar    %eax
  401a4e:	66 0f c4 d8 03       	pinsrw $0x3,%eax,%xmm3
  401a53:	66 0f 28 35 45 3f 00 	movapd 0x3f45(%rip),%xmm6        # 4059a0 <ebias>
  401a5a:	00 
  401a5b:	66 0f 73 f3 04       	psllq  $0x4,%xmm3
  401a60:	66 0f fa d3          	psubd  %xmm3,%xmm2
  401a64:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  401a68:	83 fa 34             	cmp    $0x34,%edx
  401a6b:	0f 8f be 00 00 00    	jg     401b2f <__libm_exp_e7+0x21f>
  401a71:	66 0f 54 e2          	andpd  %xmm2,%xmm4
  401a75:	66 0f fe de          	paddd  %xmm6,%xmm3
  401a79:	f2 0f 5c d4          	subsd  %xmm4,%xmm2
  401a7d:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
  401a81:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
  401a87:	0f 8d 82 00 00 00    	jge    401b0f <__libm_exp_e7+0x1ff>
  401a8d:	66 0f c5 c8 03       	pextrw $0x3,%xmm0,%ecx
  401a92:	81 e1 00 80 00 00    	and    $0x8000,%ecx
  401a98:	0b d1                	or     %ecx,%edx
  401a9a:	83 fa 00             	cmp    $0x0,%edx
  401a9d:	74 63                	je     401b02 <__libm_exp_e7+0x1f2>
  401a9f:	66 0f 28 f0          	movapd %xmm0,%xmm6
  401aa3:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
  401aa7:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
  401aab:	66 0f c5 c8 03       	pextrw $0x3,%xmm0,%ecx
  401ab0:	81 e1 f0 7f 00 00    	and    $0x7ff0,%ecx
  401ab6:	83 f9 00             	cmp    $0x0,%ecx
  401ab9:	74 05                	je     401ac0 <__libm_exp_e7+0x1b0>
  401abb:	e9 43 01 00 00       	jmpq   401c03 <__libm_exp_e7+0x2f3>
  401ac0:	f2 0f 59 f3          	mulsd  %xmm3,%xmm6
  401ac4:	f2 0f 59 e3          	mulsd  %xmm3,%xmm4
  401ac8:	f3 0f 7e c6          	movq   %xmm6,%xmm0
  401acc:	66 0f ef f4          	pxor   %xmm4,%xmm6
  401ad0:	66 0f 72 e6 1f       	psrad  $0x1f,%xmm6
  401ad5:	66 0f 70 f6 55       	pshufd $0x55,%xmm6,%xmm6
  401ada:	66 0f 73 f0 01       	psllq  $0x1,%xmm0
  401adf:	66 0f 73 d0 01       	psrlq  $0x1,%xmm0
  401ae4:	66 0f ef c6          	pxor   %xmm6,%xmm0
  401ae8:	66 0f 73 d6 3f       	psrlq  $0x3f,%xmm6
  401aed:	66 0f d4 c6          	paddq  %xmm6,%xmm0
  401af1:	66 0f d4 c4          	paddq  %xmm4,%xmm0
  401af5:	c7 44 24 10 0f 00 00 	movl   $0xf,0x10(%rsp)
  401afc:	00 
  401afd:	e9 e0 00 00 00       	jmpq   401be2 <__libm_exp_e7+0x2d2>
  401b02:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
  401b06:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
  401b0a:	e9 f4 00 00 00       	jmpq   401c03 <__libm_exp_e7+0x2f3>
  401b0f:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
  401b13:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
  401b17:	66 0f c5 c8 03       	pextrw $0x3,%xmm0,%ecx
  401b1c:	81 e1 f0 7f 00 00    	and    $0x7ff0,%ecx
  401b22:	81 f9 f0 7f 00 00    	cmp    $0x7ff0,%ecx
  401b28:	73 3c                	jae    401b66 <__libm_exp_e7+0x256>
  401b2a:	e9 d4 00 00 00       	jmpq   401c03 <__libm_exp_e7+0x2f3>
  401b2f:	66 0f fe de          	paddd  %xmm6,%xmm3
  401b33:	66 0f 58 c2          	addpd  %xmm2,%xmm0
  401b37:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
  401b3b:	c7 44 24 10 0f 00 00 	movl   $0xf,0x10(%rsp)
  401b42:	00 
  401b43:	e9 9a 00 00 00       	jmpq   401be2 <__libm_exp_e7+0x2d2>
  401b48:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
  401b4d:	73 37                	jae    401b86 <__libm_exp_e7+0x276>
  401b4f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b53:	3d 00 00 00 80       	cmp    $0x80000000,%eax
  401b58:	73 16                	jae    401b70 <__libm_exp_e7+0x260>
  401b5a:	f2 0f 10 05 4e 3e 00 	movsd  0x3e4e(%rip),%xmm0        # 4059b0 <XMAX>
  401b61:	00 
  401b62:	f2 0f 59 c0          	mulsd  %xmm0,%xmm0
  401b66:	c7 44 24 10 0e 00 00 	movl   $0xe,0x10(%rsp)
  401b6d:	00 
  401b6e:	eb 72                	jmp    401be2 <__libm_exp_e7+0x2d2>
  401b70:	f2 0f 10 05 40 3e 00 	movsd  0x3e40(%rip),%xmm0        # 4059b8 <XMIN>
  401b77:	00 
  401b78:	f2 0f 59 c0          	mulsd  %xmm0,%xmm0
  401b7c:	c7 44 24 10 0f 00 00 	movl   $0xf,0x10(%rsp)
  401b83:	00 
  401b84:	eb 5c                	jmp    401be2 <__libm_exp_e7+0x2d2>
  401b86:	8b 14 24             	mov    (%rsp),%edx
  401b89:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
  401b8e:	77 24                	ja     401bb4 <__libm_exp_e7+0x2a4>
  401b90:	83 fa 00             	cmp    $0x0,%edx
  401b93:	75 1f                	jne    401bb4 <__libm_exp_e7+0x2a4>
  401b95:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b99:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
  401b9e:	75 0a                	jne    401baa <__libm_exp_e7+0x29a>
  401ba0:	f2 0f 10 05 18 3e 00 	movsd  0x3e18(%rip),%xmm0        # 4059c0 <INF>
  401ba7:	00 
  401ba8:	eb 59                	jmp    401c03 <__libm_exp_e7+0x2f3>
  401baa:	f2 0f 10 05 16 3e 00 	movsd  0x3e16(%rip),%xmm0        # 4059c8 <ZERO>
  401bb1:	00 
  401bb2:	eb 4f                	jmp    401c03 <__libm_exp_e7+0x2f3>
  401bb4:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
  401bb9:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  401bbd:	eb 44                	jmp    401c03 <__libm_exp_e7+0x2f3>
  401bbf:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401bc3:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
  401bc8:	3d 00 00 90 40       	cmp    $0x40900000,%eax
  401bcd:	0f 83 75 ff ff ff    	jae    401b48 <__libm_exp_e7+0x238>
  401bd3:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
  401bd8:	f2 0f 58 05 f0 3d 00 	addsd  0x3df0(%rip),%xmm0        # 4059d0 <ONE_val>
  401bdf:	00 
  401be0:	eb 21                	jmp    401c03 <__libm_exp_e7+0x2f3>
  401be2:	66 0f d6 44 24 08    	movq   %xmm0,0x8(%rsp)
  401be8:	8b 4c 24 10          	mov    0x10(%rsp),%ecx
  401bec:	48 8d 3c 24          	lea    (%rsp),%rdi
  401bf0:	48 89 fe             	mov    %rdi,%rsi
  401bf3:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  401bf8:	e8 93 03 00 00       	callq  401f90 <__libm_error_support>
  401bfd:	f3 0f 7e 44 24 08    	movq   0x8(%rsp),%xmm0
  401c03:	f3 0f 1e fa          	endbr64 
  401c07:	48 83 c4 18          	add    $0x18,%rsp
  401c0b:	c3                   	retq   
  401c0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401c10 <write_message>:
  401c10:	41 57                	push   %r15
  401c12:	53                   	push   %rbx
  401c13:	48 81 ec d8 04 00 00 	sub    $0x4d8,%rsp
  401c1a:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  401c1f:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  401c24:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  401c29:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
  401c2e:	4c 89 4c 24 28       	mov    %r9,0x28(%rsp)
  401c33:	44 0f b6 d8          	movzbl %al,%r11d
  401c37:	4a 8d 04 9d 00 00 00 	lea    0x0(,%r11,4),%rax
  401c3e:	00 
  401c3f:	4c 8d 1d 2f 00 00 00 	lea    0x2f(%rip),%r11        # 401c75 <write_message+0x65>
  401c46:	4c 2b d8             	sub    %rax,%r11
  401c49:	48 8d 84 24 af 00 00 	lea    0xaf(%rsp),%rax
  401c50:	00 
  401c51:	3e 41 ff e3          	notrack jmpq *%r11
  401c55:	0f 29 78 f1          	movaps %xmm7,-0xf(%rax)
  401c59:	0f 29 70 e1          	movaps %xmm6,-0x1f(%rax)
  401c5d:	0f 29 68 d1          	movaps %xmm5,-0x2f(%rax)
  401c61:	0f 29 60 c1          	movaps %xmm4,-0x3f(%rax)
  401c65:	0f 29 58 b1          	movaps %xmm3,-0x4f(%rax)
  401c69:	0f 29 50 a1          	movaps %xmm2,-0x5f(%rax)
  401c6d:	0f 29 48 91          	movaps %xmm1,-0x6f(%rax)
  401c71:	0f 29 40 81          	movaps %xmm0,-0x7f(%rax)
  401c75:	41 89 ff             	mov    %edi,%r15d
  401c78:	4d 63 ff             	movslq %r15d,%r15
  401c7b:	48 8d 0d 76 70 00 00 	lea    0x7076(%rip),%rcx        # 408cf8 <__libm_message_table>
  401c82:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c89:	00 00 
  401c8b:	48 33 c4             	xor    %rsp,%rax
  401c8e:	48 89 84 24 c8 04 00 	mov    %rax,0x4c8(%rsp)
  401c95:	00 
  401c96:	4a 8b 1c f9          	mov    (%rcx,%r15,8),%rbx
  401c9a:	83 3d 77 74 00 00 00 	cmpl   $0x0,0x7477(%rip)        # 409118 <use_message_catalog>
  401ca1:	74 23                	je     401cc6 <write_message+0xb6>
  401ca3:	48 8b 3d 16 75 00 00 	mov    0x7516(%rip),%rdi        # 4091c0 <message_catalog>
  401caa:	48 85 ff             	test   %rdi,%rdi
  401cad:	0f 84 a5 00 00 00    	je     401d58 <write_message+0x148>
  401cb3:	be 01 00 00 00       	mov    $0x1,%esi
  401cb8:	44 89 fa             	mov    %r15d,%edx
  401cbb:	48 89 d9             	mov    %rbx,%rcx
  401cbe:	e8 1d f4 ff ff       	callq  4010e0 <catgets@plt>
  401cc3:	48 89 c3             	mov    %rax,%rbx
  401cc6:	c7 84 24 b0 00 00 00 	movl   $0x8,0xb0(%rsp)
  401ccd:	08 00 00 00 
  401cd1:	48 8d 84 24 f0 04 00 	lea    0x4f0(%rsp),%rax
  401cd8:	00 
  401cd9:	c7 84 24 b4 00 00 00 	movl   $0x30,0xb4(%rsp)
  401ce0:	30 00 00 00 
  401ce4:	48 8d 14 24          	lea    (%rsp),%rdx
  401ce8:	48 89 82 b8 00 00 00 	mov    %rax,0xb8(%rdx)
  401cef:	48 89 92 c0 00 00 00 	mov    %rdx,0xc0(%rdx)
  401cf6:	be 00 02 00 00       	mov    $0x200,%esi
  401cfb:	48 8d bc 24 c8 02 00 	lea    0x2c8(%rsp),%rdi
  401d02:	00 
  401d03:	ba 01 00 00 00       	mov    $0x1,%edx
  401d08:	48 89 f1             	mov    %rsi,%rcx
  401d0b:	49 89 d8             	mov    %rbx,%r8
  401d0e:	4c 8d 8c 24 b0 00 00 	lea    0xb0(%rsp),%r9
  401d15:	00 
  401d16:	e8 b5 f3 ff ff       	callq  4010d0 <__vsnprintf_chk@plt>
  401d1b:	48 8b 05 ce 72 00 00 	mov    0x72ce(%rip),%rax        # 408ff0 <stderr@GLIBC_2.2.5>
  401d22:	48 8d bc 24 c8 02 00 	lea    0x2c8(%rsp),%rdi
  401d29:	00 
  401d2a:	48 8b 30             	mov    (%rax),%rsi
  401d2d:	e8 7e f3 ff ff       	callq  4010b0 <fputs@plt>
  401d32:	48 8b 84 24 c8 04 00 	mov    0x4c8(%rsp),%rax
  401d39:	00 
  401d3a:	48 33 c4             	xor    %rsp,%rax
  401d3d:	64 48 3b 04 25 28 00 	cmp    %fs:0x28,%rax
  401d44:	00 00 
  401d46:	75 0b                	jne    401d53 <write_message+0x143>
  401d48:	48 81 c4 d8 04 00 00 	add    $0x4d8,%rsp
  401d4f:	5b                   	pop    %rbx
  401d50:	41 5f                	pop    %r15
  401d52:	c3                   	retq   
  401d53:	e8 28 f3 ff ff       	callq  401080 <__stack_chk_fail@plt>
  401d58:	48 8d 3d 09 3d 00 00 	lea    0x3d09(%rip),%rdi        # 405a68 <ONE_val+0x98>
  401d5f:	33 f6                	xor    %esi,%esi
  401d61:	e8 5a f3 ff ff       	callq  4010c0 <catopen@plt>
  401d66:	48 89 c7             	mov    %rax,%rdi
  401d69:	48 89 3d 50 74 00 00 	mov    %rdi,0x7450(%rip)        # 4091c0 <message_catalog>
  401d70:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
  401d74:	0f 85 39 ff ff ff    	jne    401cb3 <write_message+0xa3>
  401d7a:	48 8d 3d f3 3c 00 00 	lea    0x3cf3(%rip),%rdi        # 405a74 <ONE_val+0xa4>
  401d81:	e8 aa f2 ff ff       	callq  401030 <getenv@plt>
  401d86:	48 89 c6             	mov    %rax,%rsi
  401d89:	48 8d bc 24 c8 00 00 	lea    0xc8(%rsp),%rdi
  401d90:	00 
  401d91:	ba 00 02 00 00       	mov    $0x200,%edx
  401d96:	e8 c5 f2 ff ff       	callq  401060 <strncpy@plt>
  401d9b:	be 2e 00 00 00       	mov    $0x2e,%esi
  401da0:	48 8d bc 24 c8 00 00 	lea    0xc8(%rsp),%rdi
  401da7:	00 
  401da8:	e8 e3 f2 ff ff       	callq  401090 <strchr@plt>
  401dad:	48 85 c0             	test   %rax,%rax
  401db0:	74 3f                	je     401df1 <write_message+0x1e1>
  401db2:	48 8d 3d bb 3c 00 00 	lea    0x3cbb(%rip),%rdi        # 405a74 <ONE_val+0xa4>
  401db9:	48 8d b4 24 c8 00 00 	lea    0xc8(%rsp),%rsi
  401dc0:	00 
  401dc1:	ba 01 00 00 00       	mov    $0x1,%edx
  401dc6:	c6 00 00             	movb   $0x0,(%rax)
  401dc9:	e8 a2 f2 ff ff       	callq  401070 <setenv@plt>
  401dce:	48 8d 3d 93 3c 00 00 	lea    0x3c93(%rip),%rdi        # 405a68 <ONE_val+0x98>
  401dd5:	33 f6                	xor    %esi,%esi
  401dd7:	e8 e4 f2 ff ff       	callq  4010c0 <catopen@plt>
  401ddc:	48 89 c7             	mov    %rax,%rdi
  401ddf:	48 89 3d da 73 00 00 	mov    %rdi,0x73da(%rip)        # 4091c0 <message_catalog>
  401de6:	48 83 ff ff          	cmp    $0xffffffffffffffff,%rdi
  401dea:	74 11                	je     401dfd <write_message+0x1ed>
  401dec:	e9 c2 fe ff ff       	jmpq   401cb3 <write_message+0xa3>
  401df1:	48 8b 3d c8 73 00 00 	mov    0x73c8(%rip),%rdi        # 4091c0 <message_catalog>
  401df8:	e9 b6 fe ff ff       	jmpq   401cb3 <write_message+0xa3>
  401dfd:	be 00 02 00 00       	mov    $0x200,%esi
  401e02:	48 8d bc 24 c8 00 00 	lea    0xc8(%rsp),%rdi
  401e09:	00 
  401e0a:	ba 01 00 00 00       	mov    $0x1,%edx
  401e0f:	48 89 f1             	mov    %rsi,%rcx
  401e12:	4c 8d 05 63 3c 00 00 	lea    0x3c63(%rip),%r8        # 405a7c <ONE_val+0xac>
  401e19:	4c 8d 0d 48 3c 00 00 	lea    0x3c48(%rip),%r9        # 405a68 <ONE_val+0x98>
  401e20:	33 c0                	xor    %eax,%eax
  401e22:	e8 19 f2 ff ff       	callq  401040 <__snprintf_chk@plt>
  401e27:	48 8b 05 c2 71 00 00 	mov    0x71c2(%rip),%rax        # 408ff0 <stderr@GLIBC_2.2.5>
  401e2e:	48 8d bc 24 c8 00 00 	lea    0xc8(%rsp),%rdi
  401e35:	00 
  401e36:	48 8b 30             	mov    (%rax),%rsi
  401e39:	e8 72 f2 ff ff       	callq  4010b0 <fputs@plt>
  401e3e:	48 c7 05 77 73 00 00 	movq   $0x0,0x7377(%rip)        # 4091c0 <message_catalog>
  401e45:	00 00 00 00 
  401e49:	c7 05 c5 72 00 00 00 	movl   $0x0,0x72c5(%rip)        # 409118 <use_message_catalog>
  401e50:	00 00 00 
  401e53:	e9 6e fe ff ff       	jmpq   401cc6 <write_message+0xb6>
  401e58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401e5f:	00 

0000000000401e60 <__libm_copy_value>:
  401e60:	f3 0f 1e fa          	endbr64 
  401e64:	49 89 f0             	mov    %rsi,%r8
  401e67:	85 d2                	test   %edx,%edx
  401e69:	0f 8e 17 01 00 00    	jle    401f86 <__libm_copy_value+0x126>
  401e6f:	83 fa 06             	cmp    $0x6,%edx
  401e72:	0f 8e ca 00 00 00    	jle    401f42 <__libm_copy_value+0xe2>
  401e78:	48 63 f2             	movslq %edx,%rsi
  401e7b:	48 89 f8             	mov    %rdi,%rax
  401e7e:	49 2b c0             	sub    %r8,%rax
  401e81:	48 8d 0c 36          	lea    (%rsi,%rsi,1),%rcx
  401e85:	48 3b c1             	cmp    %rcx,%rax
  401e88:	7d 0c                	jge    401e96 <__libm_copy_value+0x36>
  401e8a:	48 f7 d8             	neg    %rax
  401e8d:	48 3b c1             	cmp    %rcx,%rax
  401e90:	0f 8c ac 00 00 00    	jl     401f42 <__libm_copy_value+0xe2>
  401e96:	48 83 fe 08          	cmp    $0x8,%rsi
  401e9a:	0f 8c e7 00 00 00    	jl     401f87 <__libm_copy_value+0x127>
  401ea0:	48 89 f9             	mov    %rdi,%rcx
  401ea3:	48 83 e1 0f          	and    $0xf,%rcx
  401ea7:	85 c9                	test   %ecx,%ecx
  401ea9:	74 10                	je     401ebb <__libm_copy_value+0x5b>
  401eab:	f6 c1 01             	test   $0x1,%cl
  401eae:	0f 85 d3 00 00 00    	jne    401f87 <__libm_copy_value+0x127>
  401eb4:	f7 d9                	neg    %ecx
  401eb6:	83 c1 10             	add    $0x10,%ecx
  401eb9:	d1 e9                	shr    %ecx
  401ebb:	89 c8                	mov    %ecx,%eax
  401ebd:	4c 8d 48 08          	lea    0x8(%rax),%r9
  401ec1:	49 3b f1             	cmp    %r9,%rsi
  401ec4:	0f 8c bd 00 00 00    	jl     401f87 <__libm_copy_value+0x127>
  401eca:	41 89 d1             	mov    %edx,%r9d
  401ecd:	44 2b c9             	sub    %ecx,%r9d
  401ed0:	41 83 e1 07          	and    $0x7,%r9d
  401ed4:	41 2b d1             	sub    %r9d,%edx
  401ed7:	45 33 c9             	xor    %r9d,%r9d
  401eda:	48 63 d2             	movslq %edx,%rdx
  401edd:	85 c9                	test   %ecx,%ecx
  401edf:	76 12                	jbe    401ef3 <__libm_copy_value+0x93>
  401ee1:	43 0f b7 0c 48       	movzwl (%r8,%r9,2),%ecx
  401ee6:	66 42 89 0c 4f       	mov    %cx,(%rdi,%r9,2)
  401eeb:	49 ff c1             	inc    %r9
  401eee:	4c 3b c8             	cmp    %rax,%r9
  401ef1:	72 ee                	jb     401ee1 <__libm_copy_value+0x81>
  401ef3:	49 8d 0c 40          	lea    (%r8,%rax,2),%rcx
  401ef7:	48 f7 c1 0f 00 00 00 	test   $0xf,%rcx
  401efe:	74 16                	je     401f16 <__libm_copy_value+0xb6>
  401f00:	f3 41 0f 6f 04 40    	movdqu (%r8,%rax,2),%xmm0
  401f06:	f3 0f 7f 04 47       	movdqu %xmm0,(%rdi,%rax,2)
  401f0b:	48 83 c0 08          	add    $0x8,%rax
  401f0f:	48 3b c2             	cmp    %rdx,%rax
  401f12:	72 ec                	jb     401f00 <__libm_copy_value+0xa0>
  401f14:	eb 14                	jmp    401f2a <__libm_copy_value+0xca>
  401f16:	f3 41 0f 6f 04 40    	movdqu (%r8,%rax,2),%xmm0
  401f1c:	f3 0f 7f 04 47       	movdqu %xmm0,(%rdi,%rax,2)
  401f21:	48 83 c0 08          	add    $0x8,%rax
  401f25:	48 3b c2             	cmp    %rdx,%rax
  401f28:	72 ec                	jb     401f16 <__libm_copy_value+0xb6>
  401f2a:	48 3b d6             	cmp    %rsi,%rdx
  401f2d:	73 57                	jae    401f86 <__libm_copy_value+0x126>
  401f2f:	41 0f b7 04 50       	movzwl (%r8,%rdx,2),%eax
  401f34:	66 89 04 57          	mov    %ax,(%rdi,%rdx,2)
  401f38:	48 ff c2             	inc    %rdx
  401f3b:	48 3b d6             	cmp    %rsi,%rdx
  401f3e:	72 ef                	jb     401f2f <__libm_copy_value+0xcf>
  401f40:	eb 44                	jmp    401f86 <__libm_copy_value+0x126>
  401f42:	89 d0                	mov    %edx,%eax
  401f44:	be 01 00 00 00       	mov    $0x1,%esi
  401f49:	33 c9                	xor    %ecx,%ecx
  401f4b:	d1 e8                	shr    %eax
  401f4d:	74 21                	je     401f70 <__libm_copy_value+0x110>
  401f4f:	41 0f b7 34 88       	movzwl (%r8,%rcx,4),%esi
  401f54:	66 89 34 8f          	mov    %si,(%rdi,%rcx,4)
  401f58:	45 0f b7 4c 88 02    	movzwl 0x2(%r8,%rcx,4),%r9d
  401f5e:	66 44 89 4c 8f 02    	mov    %r9w,0x2(%rdi,%rcx,4)
  401f64:	48 ff c1             	inc    %rcx
  401f67:	48 3b c8             	cmp    %rax,%rcx
  401f6a:	72 e3                	jb     401f4f <__libm_copy_value+0xef>
  401f6c:	8d 74 09 01          	lea    0x1(%rcx,%rcx,1),%esi
  401f70:	8d 46 ff             	lea    -0x1(%rsi),%eax
  401f73:	3b c2                	cmp    %edx,%eax
  401f75:	73 0f                	jae    401f86 <__libm_copy_value+0x126>
  401f77:	48 63 f6             	movslq %esi,%rsi
  401f7a:	45 0f b7 44 70 fe    	movzwl -0x2(%r8,%rsi,2),%r8d
  401f80:	66 44 89 44 77 fe    	mov    %r8w,-0x2(%rdi,%rsi,2)
  401f86:	c3                   	retq   
  401f87:	33 d2                	xor    %edx,%edx
  401f89:	eb 9f                	jmp    401f2a <__libm_copy_value+0xca>
  401f8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401f90 <__libm_error_support>:
  401f90:	f3 0f 1e fa          	endbr64 
  401f94:	41 54                	push   %r12
  401f96:	41 55                	push   %r13
  401f98:	41 56                	push   %r14
  401f9a:	41 57                	push   %r15
  401f9c:	53                   	push   %rbx
  401f9d:	55                   	push   %rbp
  401f9e:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  401fa5:	49 89 fa             	mov    %rdi,%r10
  401fa8:	48 89 94 24 a0 00 00 	mov    %rdx,0xa0(%rsp)
  401faf:	00 
  401fb0:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401fb4:	48 89 b4 24 a8 00 00 	mov    %rsi,0xa8(%rsp)
  401fbb:	00 
  401fbc:	89 c9                	mov    %ecx,%ecx
  401fbe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401fc5:	00 00 
  401fc7:	48 33 c4             	xor    %rsp,%rax
  401fca:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
  401fd1:	00 
  401fd2:	f3 0f 7f 44 24 50    	movdqu %xmm0,0x50(%rsp)
  401fd8:	f3 0f 7f 44 24 60    	movdqu %xmm0,0x60(%rsp)
  401fde:	48 8d 3d 63 3f 00 00 	lea    0x3f63(%rip),%rdi        # 405f48 <__libm_err_code_mapping_table>
  401fe5:	4c 8d 3d ac 45 00 00 	lea    0x45ac(%rip),%r15        # 406598 <__libm_err_data_table>
  401fec:	4c 8d 25 29 71 00 00 	lea    0x7129(%rip),%r12        # 40911c <_LIB_VERSIONIMF>
  401ff3:	45 33 ed             	xor    %r13d,%r13d
  401ff6:	48 8d 35 03 71 00 00 	lea    0x7103(%rip),%rsi        # 409100 <__libm_pmatherrf>
  401ffd:	45 33 f6             	xor    %r14d,%r14d
  402000:	48 8d 1d 01 71 00 00 	lea    0x7101(%rip),%rbx        # 409108 <__libm_pmatherr>
  402007:	44 8a 04 8f          	mov    (%rdi,%rcx,4),%r8b
  40200b:	45 8b 1c 24          	mov    (%r12),%r11d
  40200f:	41 80 e0 7f          	and    $0x7f,%r8b
  402013:	41 0f b6 e8          	movzbl %r8b,%ebp
  402017:	44 0f b7 0c 8f       	movzwl (%rdi,%rcx,4),%r9d
  40201c:	8a 44 8f 01          	mov    0x1(%rdi,%rcx,4),%al
  402020:	47 8d 24 5b          	lea    (%r11,%r11,2),%r12d
  402024:	48 8d 15 e5 70 00 00 	lea    0x70e5(%rip),%rdx        # 409110 <__libm_pmatherrl>
  40202b:	43 8d 4c 24 06       	lea    0x6(%r12,%r12,1),%ecx
  402030:	41 0f b6 3c af       	movzbl (%r15,%rbp,4),%edi
  402035:	41 81 e1 80 01 00 00 	and    $0x180,%r9d
  40203c:	41 8b 2c af          	mov    (%r15,%rbp,4),%ebp
  402040:	24 fe                	and    $0xfe,%al
  402042:	d3 fd                	sar    %cl,%ebp
  402044:	48 8d 0d f5 45 00 00 	lea    0x45f5(%rip),%rcx        # 406640 <__libm_err_response_table>
  40204b:	83 e5 3f             	and    $0x3f,%ebp
  40204e:	41 89 f8             	mov    %edi,%r8d
  402051:	83 e7 38             	and    $0x38,%edi
  402054:	41 83 e0 07          	and    $0x7,%r8d
  402058:	41 c1 e9 07          	shr    $0x7,%r9d
  40205c:	44 0f b6 24 a9       	movzbl (%rcx,%rbp,4),%r12d
  402061:	45 89 e7             	mov    %r12d,%r15d
  402064:	0f b7 0c a9          	movzwl (%rcx,%rbp,4),%ecx
  402068:	48 8d 2d 41 3e 00 00 	lea    0x3e41(%rip),%rbp        # 405eb0 <__libm_action_list>
  40206f:	81 e1 e0 03 00 00    	and    $0x3e0,%ecx
  402075:	41 83 e4 18          	and    $0x18,%r12d
  402079:	c1 e9 05             	shr    $0x5,%ecx
  40207c:	41 83 e7 07          	and    $0x7,%r15d
  402080:	d0 e8                	shr    %al
  402082:	c1 ef 03             	shr    $0x3,%edi
  402085:	41 c1 ec 03          	shr    $0x3,%r12d
  402089:	48 8b 36             	mov    (%rsi),%rsi
  40208c:	48 8b 1b             	mov    (%rbx),%rbx
  40208f:	48 8b 12             	mov    (%rdx),%rdx
  402092:	48 8b 6c cd 00       	mov    0x0(%rbp,%rcx,8),%rbp
  402097:	41 83 fb ff          	cmp    $0xffffffff,%r11d
  40209b:	0f 84 17 03 00 00    	je     4023b8 <__libm_error_support+0x428>
  4020a1:	48 89 e9             	mov    %rbp,%rcx
  4020a4:	48 83 e1 0f          	and    $0xf,%rcx
  4020a8:	48 c1 fd 04          	sar    $0x4,%rbp
  4020ac:	85 c9                	test   %ecx,%ecx
  4020ae:	0f 84 d7 02 00 00    	je     40238b <__libm_error_support+0x3fb>
  4020b4:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
  4020b9:	0f b6 d0             	movzbl %al,%edx
  4020bc:	44 89 c0             	mov    %r8d,%eax
  4020bf:	48 89 5c 24 58       	mov    %rbx,0x58(%rsp)
  4020c4:	4b 8d 1c 49          	lea    (%r9,%r9,2),%rbx
  4020c8:	48 89 74 24 50       	mov    %rsi,0x50(%rsp)
  4020cd:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
  4020d4:	00 
  4020d5:	48 89 94 24 98 00 00 	mov    %rdx,0x98(%rsp)
  4020dc:	00 
  4020dd:	89 7c 24 70          	mov    %edi,0x70(%rsp)
  4020e1:	44 89 44 24 78       	mov    %r8d,0x78(%rsp)
  4020e6:	4c 89 8c 24 88 00 00 	mov    %r9,0x88(%rsp)
  4020ed:	00 
  4020ee:	4c 89 94 24 90 00 00 	mov    %r10,0x90(%rsp)
  4020f5:	00 
  4020f6:	ff c9                	dec    %ecx
  4020f8:	83 f9 0b             	cmp    $0xb,%ecx
  4020fb:	0f 87 77 02 00 00    	ja     402378 <__libm_error_support+0x3e8>
  402101:	48 8d 15 90 3d 00 00 	lea    0x3d90(%rip),%rdx        # 405e98 <__libm_errno_table.377.0.11+0x8>
  402108:	0f b7 14 4a          	movzwl (%rdx,%rcx,2),%edx
  40210c:	48 8d 05 06 00 00 00 	lea    0x6(%rip),%rax        # 402119 <__libm_error_support+0x189>
  402113:	48 03 c2             	add    %rdx,%rax
  402116:	3e ff e0             	notrack jmpq *%rax
  402119:	4c 8d 1d 80 67 00 00 	lea    0x6780(%rip),%r11        # 4088a0 <__libm_type_info_table.377.0.11>
  402120:	48 83 c4 f0          	add    $0xfffffffffffffff0,%rsp
  402124:	4c 8d 15 15 68 00 00 	lea    0x6815(%rip),%r10        # 408940 <__libm_func_names>
  40212b:	be 14 00 00 00       	mov    $0x14,%esi
  402130:	48 89 f1             	mov    %rsi,%rcx
  402133:	48 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%rdi
  40213a:	00 
  40213b:	4c 8d 05 02 3d 00 00 	lea    0x3d02(%rip),%r8        # 405e44 <ONE_val+0x474>
  402142:	49 8b 14 db          	mov    (%r11,%rbx,8),%rdx
  402146:	48 89 14 24          	mov    %rdx,(%rsp)
  40214a:	ba 01 00 00 00       	mov    $0x1,%edx
  40214f:	48 8b 47 e8          	mov    -0x18(%rdi),%rax
  402153:	4d 8b 0c c2          	mov    (%r10,%rax,8),%r9
  402157:	33 c0                	xor    %eax,%eax
  402159:	e8 e2 ee ff ff       	callq  401040 <__snprintf_chk@plt>
  40215e:	48 83 c4 10          	add    $0x10,%rsp
  402162:	4c 8d 05 3f 67 00 00 	lea    0x673f(%rip),%r8        # 4088a8 <__libm_type_info_table.377.0.11+0x8>
  402169:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40216e:	8b 47 68             	mov    0x68(%rdi),%eax
  402171:	48 8d 8c 24 b0 00 00 	lea    0xb0(%rsp),%rcx
  402178:	00 
  402179:	48 8b 71 e0          	mov    -0x20(%rcx),%rsi
  40217d:	89 04 24             	mov    %eax,(%rsp)
  402180:	41 0f be 14 d8       	movsbl (%r8,%rbx,8),%edx
  402185:	89 51 98             	mov    %edx,-0x68(%rcx)
  402188:	48 89 4f f8          	mov    %rcx,-0x8(%rdi)
  40218c:	e8 cf fc ff ff       	callq  401e60 <__libm_copy_value>
  402191:	48 8d 05 11 67 00 00 	lea    0x6711(%rip),%rax        # 4088a9 <__libm_type_info_table.377.0.11+0x9>
  402198:	48 8b b4 24 a8 00 00 	mov    0xa8(%rsp),%rsi
  40219f:	00 
  4021a0:	8b 54 24 48          	mov    0x48(%rsp),%edx
  4021a4:	48 0f be 0c d8       	movsbq (%rax,%rbx,8),%rcx
  4021a9:	48 89 4c 24 40       	mov    %rcx,0x40(%rsp)
  4021ae:	48 8d 7c 4c 10       	lea    0x10(%rsp,%rcx,2),%rdi
  4021b3:	e8 a8 fc ff ff       	callq  401e60 <__libm_copy_value>
  4021b8:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  4021bd:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
  4021c4:	00 
  4021c5:	8b 54 24 48          	mov    0x48(%rsp),%edx
  4021c9:	48 8d 7c 84 10       	lea    0x10(%rsp,%rax,4),%rdi
  4021ce:	e8 8d fc ff ff       	callq  401e60 <__libm_copy_value>
  4021d3:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
  4021da:	00 
  4021db:	48 8d 3c 24          	lea    (%rsp),%rdi
  4021df:	ff 54 c4 50          	callq  *0x50(%rsp,%rax,8)
  4021e3:	89 c2                	mov    %eax,%edx
  4021e5:	48 89 e8             	mov    %rbp,%rax
  4021e8:	48 c1 e0 04          	shl    $0x4,%rax
  4021ec:	85 d2                	test   %edx,%edx
  4021ee:	48 0f 45 e8          	cmovne %rax,%rbp
  4021f2:	e9 81 01 00 00       	jmpq   402378 <__libm_error_support+0x3e8>
  4021f7:	4c 8d 1d 02 67 00 00 	lea    0x6702(%rip),%r11        # 408900 <__libm_errtype_names.377.0.11>
  4021fe:	4c 8d 15 9b 66 00 00 	lea    0x669b(%rip),%r10        # 4088a0 <__libm_type_info_table.377.0.11>
  402205:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  40220c:	00 
  40220d:	4c 8d 05 2c 67 00 00 	lea    0x672c(%rip),%r8        # 408940 <__libm_func_names>
  402214:	4c 8b 8c 24 98 00 00 	mov    0x98(%rsp),%r9
  40221b:	00 
  40221c:	8b 7c 24 70          	mov    0x70(%rsp),%edi
  402220:	49 8b 0c c3          	mov    (%r11,%rax,8),%rcx
  402224:	33 c0                	xor    %eax,%eax
  402226:	4b 8b 34 c8          	mov    (%r8,%r9,8),%rsi
  40222a:	49 8b 14 da          	mov    (%r10,%rbx,8),%rdx
  40222e:	e8 dd f9 ff ff       	callq  401c10 <write_message>
  402233:	e9 40 01 00 00       	jmpq   402378 <__libm_error_support+0x3e8>
  402238:	48 c1 e5 0c          	shl    $0xc,%rbp
  40223c:	48 81 c5 76 03 00 00 	add    $0x376,%rbp
  402243:	e9 30 01 00 00       	jmpq   402378 <__libm_error_support+0x3e8>
  402248:	48 8d 05 59 66 00 00 	lea    0x6659(%rip),%rax        # 4088a8 <__libm_type_info_table.377.0.11+0x8>
  40224f:	33 c9                	xor    %ecx,%ecx
  402251:	33 d2                	xor    %edx,%edx
  402253:	48 0f be 04 d8       	movsbq (%rax,%rbx,8),%rax
  402258:	48 85 c0             	test   %rax,%rax
  40225b:	7e 22                	jle    40227f <__libm_error_support+0x2ef>
  40225d:	48 8b bc 24 90 00 00 	mov    0x90(%rsp),%rdi
  402264:	00 
  402265:	0f b7 34 57          	movzwl (%rdi,%rdx,2),%esi
  402269:	48 ff c2             	inc    %rdx
  40226c:	0b ce                	or     %esi,%ecx
  40226e:	48 3b d0             	cmp    %rax,%rdx
  402271:	7c f2                	jl     402265 <__libm_error_support+0x2d5>
  402273:	48 89 bc 24 90 00 00 	mov    %rdi,0x90(%rsp)
  40227a:	00 
  40227b:	85 c9                	test   %ecx,%ecx
  40227d:	75 06                	jne    402285 <__libm_error_support+0x2f5>
  40227f:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  402285:	48 c1 e5 0c          	shl    $0xc,%rbp
  402289:	48 81 c5 75 03 00 00 	add    $0x375,%rbp
  402290:	e9 e3 00 00 00       	jmpq   402378 <__libm_error_support+0x3e8>
  402295:	48 8d 05 14 66 00 00 	lea    0x6614(%rip),%rax        # 4088b0 <__libm_type_info_table.377.0.11+0x10>
  40229c:	48 63 14 d8          	movslq (%rax,%rbx,8),%rdx
  4022a0:	41 0f b7 0c 56       	movzwl (%r14,%rdx,2),%ecx
  4022a5:	81 e1 00 80 00 00    	and    $0x8000,%ecx
  4022ab:	c1 e9 0f             	shr    $0xf,%ecx
  4022ae:	44 0b e9             	or     %ecx,%r13d
  4022b1:	45 33 fd             	xor    %r13d,%r15d
  4022b4:	e9 bf 00 00 00       	jmpq   402378 <__libm_error_support+0x3e8>
  4022b9:	4c 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%r14
  4022c0:	00 
  4022c1:	e9 b2 00 00 00       	jmpq   402378 <__libm_error_support+0x3e8>
  4022c6:	4c 8b b4 24 90 00 00 	mov    0x90(%rsp),%r14
  4022cd:	00 
  4022ce:	e9 a5 00 00 00       	jmpq   402378 <__libm_error_support+0x3e8>
  4022d3:	48 8d 05 ce 65 00 00 	lea    0x65ce(%rip),%rax        # 4088a8 <__libm_type_info_table.377.0.11+0x8>
  4022da:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  4022e1:	00 
  4022e2:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
  4022e9:	00 
  4022ea:	0f be 14 d8          	movsbl (%rax,%rbx,8),%edx
  4022ee:	e8 6d fb ff ff       	callq  401e60 <__libm_copy_value>
  4022f3:	e9 80 00 00 00       	jmpq   402378 <__libm_error_support+0x3e8>
  4022f8:	48 8d 05 ab 65 00 00 	lea    0x65ab(%rip),%rax        # 4088aa <__libm_type_info_table.377.0.11+0xa>
  4022ff:	44 89 f9             	mov    %r15d,%ecx
  402302:	4c 8d 0d d3 43 00 00 	lea    0x43d3(%rip),%r9        # 4066dc <__libm_key_value>
  402309:	48 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%rdi
  402310:	00 
  402311:	0f be 54 d8 fe       	movsbl -0x2(%rax,%rbx,8),%edx
  402316:	0f af ca             	imul   %edx,%ecx
  402319:	44 0f be 04 d8       	movsbl (%rax,%rbx,8),%r8d
  40231e:	44 03 c1             	add    %ecx,%r8d
  402321:	4d 63 c0             	movslq %r8d,%r8
  402324:	4b 8d 34 41          	lea    (%r9,%r8,2),%rsi
  402328:	e8 33 fb ff ff       	callq  401e60 <__libm_copy_value>
  40232d:	eb 49                	jmp    402378 <__libm_error_support+0x3e8>
  40232f:	48 8d 15 76 65 00 00 	lea    0x6576(%rip),%rdx        # 4088ac <__libm_type_info_table.377.0.11+0xc>
  402336:	49 89 e8             	mov    %rbp,%r8
  402339:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  402340:	00 
  402341:	33 ff                	xor    %edi,%edi
  402343:	49 c1 e0 04          	shl    $0x4,%r8
  402347:	49 ff c0             	inc    %r8
  40234a:	48 8b 30             	mov    (%rax),%rsi
  40234d:	8b 0c da             	mov    (%rdx,%rbx,8),%ecx
  402350:	48 d3 e6             	shl    %cl,%rsi
  402353:	48 85 f6             	test   %rsi,%rsi
  402356:	44 0f 44 e7          	cmove  %edi,%r12d
  40235a:	49 0f 44 e8          	cmove  %r8,%rbp
  40235e:	eb 18                	jmp    402378 <__libm_error_support+0x3e8>
  402360:	e8 eb ec ff ff       	callq  401050 <__errno_location@plt>
  402365:	4d 63 e4             	movslq %r12d,%r12
  402368:	48 89 c1             	mov    %rax,%rcx
  40236b:	48 8d 05 1e 3b 00 00 	lea    0x3b1e(%rip),%rax        # 405e90 <__libm_errno_table.377.0.11>
  402372:	42 8b 14 a0          	mov    (%rax,%r12,4),%edx
  402376:	89 11                	mov    %edx,(%rcx)
  402378:	48 89 e9             	mov    %rbp,%rcx
  40237b:	48 83 e1 0f          	and    $0xf,%rcx
  40237f:	48 c1 fd 04          	sar    $0x4,%rbp
  402383:	85 c9                	test   %ecx,%ecx
  402385:	0f 85 6b fd ff ff    	jne    4020f6 <__libm_error_support+0x166>
  40238b:	48 8b 84 24 c8 00 00 	mov    0xc8(%rsp),%rax
  402392:	00 
  402393:	48 33 c4             	xor    %rsp,%rax
  402396:	64 48 3b 04 25 28 00 	cmp    %fs:0x28,%rax
  40239d:	00 00 
  40239f:	75 12                	jne    4023b3 <__libm_error_support+0x423>
  4023a1:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  4023a8:	5d                   	pop    %rbp
  4023a9:	5b                   	pop    %rbx
  4023aa:	41 5f                	pop    %r15
  4023ac:	41 5e                	pop    %r14
  4023ae:	41 5d                	pop    %r13
  4023b0:	41 5c                	pop    %r12
  4023b2:	c3                   	retq   
  4023b3:	e8 c8 ec ff ff       	callq  401080 <__stack_chk_fail@plt>
  4023b8:	48 8b 84 24 c8 00 00 	mov    0xc8(%rsp),%rax
  4023bf:	00 
  4023c0:	48 33 c4             	xor    %rsp,%rax
  4023c3:	64 48 3b 04 25 28 00 	cmp    %fs:0x28,%rax
  4023ca:	00 00 
  4023cc:	75 e5                	jne    4023b3 <__libm_error_support+0x423>
  4023ce:	eb d1                	jmp    4023a1 <__libm_error_support+0x411>

00000000004023d0 <__libm_setusermatherrl>:
  4023d0:	f3 0f 1e fa          	endbr64 
  4023d4:	48 85 ff             	test   %rdi,%rdi
  4023d7:	74 0b                	je     4023e4 <__libm_setusermatherrl+0x14>
  4023d9:	48 8d 05 30 6d 00 00 	lea    0x6d30(%rip),%rax        # 409110 <__libm_pmatherrl>
  4023e0:	48 89 38             	mov    %rdi,(%rax)
  4023e3:	c3                   	retq   
  4023e4:	48 8d 15 25 6d 00 00 	lea    0x6d25(%rip),%rdx        # 409110 <__libm_pmatherrl>
  4023eb:	48 8d 05 ae 02 00 00 	lea    0x2ae(%rip),%rax        # 4026a0 <__libm_matherrl>
  4023f2:	48 89 02             	mov    %rax,(%rdx)
  4023f5:	c3                   	retq   
  4023f6:	0f 1f 00             	nopl   (%rax)
  4023f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402400 <__libm_setusermatherr>:
  402400:	f3 0f 1e fa          	endbr64 
  402404:	48 85 ff             	test   %rdi,%rdi
  402407:	74 0b                	je     402414 <__libm_setusermatherr+0x14>
  402409:	48 8d 05 f8 6c 00 00 	lea    0x6cf8(%rip),%rax        # 409108 <__libm_pmatherr>
  402410:	48 89 38             	mov    %rdi,(%rax)
  402413:	c3                   	retq   
  402414:	48 8d 15 ed 6c 00 00 	lea    0x6ced(%rip),%rdx        # 409108 <__libm_pmatherr>
  40241b:	48 8d 05 5e 02 00 00 	lea    0x25e(%rip),%rax        # 402680 <__libm_matherr>
  402422:	48 89 02             	mov    %rax,(%rdx)
  402425:	c3                   	retq   
  402426:	0f 1f 00             	nopl   (%rax)
  402429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402430 <__libm_setusermatherrf>:
  402430:	f3 0f 1e fa          	endbr64 
  402434:	48 85 ff             	test   %rdi,%rdi
  402437:	74 0b                	je     402444 <__libm_setusermatherrf+0x14>
  402439:	48 8d 05 c0 6c 00 00 	lea    0x6cc0(%rip),%rax        # 409100 <__libm_pmatherrf>
  402440:	48 89 38             	mov    %rdi,(%rax)
  402443:	c3                   	retq   
  402444:	48 8d 15 b5 6c 00 00 	lea    0x6cb5(%rip),%rdx        # 409100 <__libm_pmatherrf>
  40244b:	48 8d 05 3e 02 00 00 	lea    0x23e(%rip),%rax        # 402690 <__libm_matherrf>
  402452:	48 89 02             	mov    %rax,(%rdx)
  402455:	c3                   	retq   
  402456:	0f 1f 00             	nopl   (%rax)
  402459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402460 <__libm_exp_l9>:
  402460:	f3 0f 1e fa          	endbr64 
  402464:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  402469:	48 c1 e8 20          	shr    $0x20,%rax
  40246d:	c1 e8 10             	shr    $0x10,%eax
  402470:	25 ff 7f 00 00       	and    $0x7fff,%eax
  402475:	8d 90 80 c3 ff ff    	lea    -0x3c80(%rax),%edx
  40247b:	81 fa 04 04 00 00    	cmp    $0x404,%edx
  402481:	72 15                	jb     402498 <__libm_exp_l9+0x38>
  402483:	3d 80 3c 00 00       	cmp    $0x3c80,%eax
  402488:	73 09                	jae    402493 <__libm_exp_l9+0x33>
  40248a:	c5 fb 58 05 e6 43 00 	vaddsd 0x43e6(%rip),%xmm0,%xmm0        # 406878 <__libm_key_value+0x19c>
  402491:	00 
  402492:	c3                   	retq   
  402493:	e9 78 f4 ff ff       	jmpq   401910 <__libm_exp_e7>
  402498:	c5 f8 ae 5c 24 f8    	vstmxcsr -0x8(%rsp)
  40249e:	8b 44 24 f8          	mov    -0x8(%rsp),%eax
  4024a2:	89 c6                	mov    %eax,%esi
  4024a4:	81 e6 00 60 00 00    	and    $0x6000,%esi
  4024aa:	74 0f                	je     4024bb <__libm_exp_l9+0x5b>
  4024ac:	25 ff 9f ff ff       	and    $0xffff9fff,%eax
  4024b1:	89 44 24 f8          	mov    %eax,-0x8(%rsp)
  4024b5:	c5 f8 ae 54 24 f8    	vldmxcsr -0x8(%rsp)
  4024bb:	c5 fb 10 0d 4d 43 00 	vmovsd 0x434d(%rip),%xmm1        # 406810 <__libm_key_value+0x134>
  4024c2:	00 
  4024c3:	48 8d 0d b6 43 00 00 	lea    0x43b6(%rip),%rcx        # 406880 <__Tbl_addr>
  4024ca:	c4 e2 f9 a9 0d 4d 43 	vfmadd213sd 0x434d(%rip),%xmm0,%xmm1        # 406820 <__libm_key_value+0x144>
  4024d1:	00 00 
  4024d3:	c5 fb 10 15 55 43 00 	vmovsd 0x4355(%rip),%xmm2        # 406830 <__libm_key_value+0x154>
  4024da:	00 
  4024db:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  4024df:	c5 fb 10 3d 71 43 00 	vmovsd 0x4371(%rip),%xmm7        # 406858 <__libm_key_value+0x17c>
  4024e6:	00 
  4024e7:	c5 7b 10 0d 79 43 00 	vmovsd 0x4379(%rip),%xmm9        # 406868 <__libm_key_value+0x18c>
  4024ee:	00 
  4024ef:	c5 73 5c 05 59 43 00 	vsubsd 0x4359(%rip),%xmm1,%xmm8        # 406850 <__libm_key_value+0x174>
  4024f6:	00 
  4024f7:	c5 f9 7e ca          	vmovd  %xmm1,%edx
  4024fb:	c4 c2 e9 bd c0       	vfnmadd231sd %xmm8,%xmm2,%xmm0
  402500:	89 d0                	mov    %edx,%eax
  402502:	c4 62 f9 9d 05 35 43 	vfnmadd132sd 0x4335(%rip),%xmm0,%xmm8        # 406840 <__libm_key_value+0x164>
  402509:	00 00 
  40250b:	83 e0 3f             	and    $0x3f,%eax
  40250e:	c4 e2 b9 a9 3d 49 43 	vfmadd213sd 0x4349(%rip),%xmm8,%xmm7        # 406860 <__libm_key_value+0x184>
  402515:	00 00 
  402517:	83 e2 c0             	and    $0xffffffc0,%edx
  40251a:	c4 62 b9 a9 0d 4d 43 	vfmadd213sd 0x434d(%rip),%xmm8,%xmm9        # 406870 <__libm_key_value+0x194>
  402521:	00 00 
  402523:	c4 41 3b 59 d8       	vmulsd %xmm8,%xmm8,%xmm11
  402528:	48 c1 e0 04          	shl    $0x4,%rax
  40252c:	c4 42 c1 b9 cb       	vfmadd231sd %xmm11,%xmm7,%xmm9
  402531:	c5 fb 10 34 08       	vmovsd (%rax,%rcx,1),%xmm6
  402536:	c5 3b 58 54 01 08    	vaddsd 0x8(%rcx,%rax,1),%xmm8,%xmm10
  40253c:	48 63 d2             	movslq %edx,%rdx
  40253f:	c4 42 b1 a9 da       	vfmadd213sd %xmm10,%xmm9,%xmm11
  402544:	c4 e1 f9 6e c2       	vmovq  %rdx,%xmm0
  402549:	c5 e3 10 e0          	vmovsd %xmm0,%xmm3,%xmm4
  40254d:	c5 d1 73 f4 2e       	vpsllq $0x2e,%xmm4,%xmm5
  402552:	c5 d1 56 c6          	vorpd  %xmm6,%xmm5,%xmm0
  402556:	c4 e2 a1 b9 c0       	vfmadd231sd %xmm0,%xmm11,%xmm0
  40255b:	85 f6                	test   %esi,%esi
  40255d:	74 16                	je     402575 <__libm_exp_l9+0x115>
  40255f:	c5 f8 ae 5c 24 f8    	vstmxcsr -0x8(%rsp)
  402565:	8b 44 24 f8          	mov    -0x8(%rsp),%eax
  402569:	0b c6                	or     %esi,%eax
  40256b:	89 44 24 f8          	mov    %eax,-0x8(%rsp)
  40256f:	c5 f8 ae 54 24 f8    	vldmxcsr -0x8(%rsp)
  402575:	c3                   	retq   
  402576:	0f 1f 00             	nopl   (%rax)
  402579:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402580 <__libm_exp_b3>:
  402580:	f3 0f 1e fa          	endbr64 
  402584:	c4 e1 f9 7e c0       	vmovq  %xmm0,%rax
  402589:	48 c1 e8 20          	shr    $0x20,%rax
  40258d:	c1 e8 10             	shr    $0x10,%eax
  402590:	25 ff 7f 00 00       	and    $0x7fff,%eax
  402595:	8d 90 80 c3 ff ff    	lea    -0x3c80(%rax),%edx
  40259b:	81 fa 04 04 00 00    	cmp    $0x404,%edx
  4025a1:	72 15                	jb     4025b8 <__libm_exp_b3+0x38>
  4025a3:	3d 80 3c 00 00       	cmp    $0x3c80,%eax
  4025a8:	73 09                	jae    4025b3 <__libm_exp_b3+0x33>
  4025aa:	c5 fb 58 05 36 47 00 	vaddsd 0x4736(%rip),%xmm0,%xmm0        # 406ce8 <__Tbl_addr+0x468>
  4025b1:	00 
  4025b2:	c3                   	retq   
  4025b3:	e9 58 f3 ff ff       	jmpq   401910 <__libm_exp_e7>
  4025b8:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
  4025bc:	c5 f9 10 0d cc 46 00 	vmovupd 0x46cc(%rip),%xmm1        # 406c90 <__Tbl_addr+0x410>
  4025c3:	00 
  4025c4:	62 e1 ff 08 10 1d fa 	vmovsd 0x46fa(%rip),%xmm19        # 406cc8 <__Tbl_addr+0x448>
  4025cb:	46 00 00 
  4025ce:	48 8d 0d 1b 47 00 00 	lea    0x471b(%rip),%rcx        # 406cf0 <__Tbl_addr>
  4025d5:	62 e1 cf 08 10 c8    	vmovsd %xmm0,%xmm6,%xmm17
  4025db:	62 b1 fd 48 28 d1    	vmovapd %zmm17,%zmm2
  4025e1:	c5 f9 10 05 97 46 00 	vmovupd 0x4697(%rip),%xmm0        # 406c80 <__Tbl_addr+0x400>
  4025e8:	00 
  4025e9:	c5 7b 10 15 e7 46 00 	vmovsd 0x46e7(%rip),%xmm10        # 406cd8 <__Tbl_addr+0x458>
  4025f0:	00 
  4025f1:	62 f2 fd 18 a9 d1    	vfmadd213sd {rn-sae},%xmm1,%xmm0,%xmm2
  4025f7:	62 e1 ef 08 5c 05 bf 	vsubsd 0x46bf(%rip),%xmm2,%xmm16        # 406cc0 <__Tbl_addr+0x440>
  4025fe:	46 00 00 
  402601:	c5 f9 7e d2          	vmovd  %xmm2,%edx
  402605:	89 d0                	mov    %edx,%eax
  402607:	83 e2 c0             	and    $0xffffffc0,%edx
  40260a:	83 e0 3f             	and    $0x3f,%eax
  40260d:	48 c1 e0 04          	shl    $0x4,%rax
  402611:	62 b1 cf 08 10 e0    	vmovsd %xmm16,%xmm6,%xmm4
  402617:	c5 7b 10 0c 08       	vmovsd (%rax,%rcx,1),%xmm9
  40261c:	48 63 d2             	movslq %edx,%rdx
  40261f:	c5 f9 28 dc          	vmovapd %xmm4,%xmm3
  402623:	c4 e1 f9 6e ea       	vmovq  %rdx,%xmm5
  402628:	c5 cb 10 fd          	vmovsd %xmm5,%xmm6,%xmm7
  40262c:	62 f2 f5 00 9d 1d 6a 	vfnmadd132sd 0x466a(%rip),%xmm17,%xmm3        # 406ca0 <__Tbl_addr+0x420>
  402633:	46 00 00 
  402636:	62 e1 cf 08 10 d3    	vmovsd %xmm3,%xmm6,%xmm18
  40263c:	c5 b9 73 f7 2e       	vpsllq $0x2e,%xmm7,%xmm8
  402641:	62 f2 ed 00 9d 25 65 	vfnmadd132sd 0x4665(%rip),%xmm18,%xmm4        # 406cb0 <__Tbl_addr+0x430>
  402648:	46 00 00 
  40264b:	62 e2 dd 08 a9 1d 7b 	vfmadd213sd 0x467b(%rip),%xmm4,%xmm19        # 406cd0 <__Tbl_addr+0x450>
  402652:	46 00 00 
  402655:	c5 5b 59 e4          	vmulsd %xmm4,%xmm4,%xmm12
  402659:	c4 c1 39 56 c1       	vorpd  %xmm9,%xmm8,%xmm0
  40265e:	c4 62 d9 a9 15 79 46 	vfmadd213sd 0x4679(%rip),%xmm4,%xmm10        # 406ce0 <__Tbl_addr+0x460>
  402665:	00 00 
  402667:	c5 5b 58 5c 01 08    	vaddsd 0x8(%rcx,%rax,1),%xmm4,%xmm11
  40266d:	62 52 e5 00 b9 d4    	vfmadd231sd %xmm12,%xmm19,%xmm10
  402673:	c4 42 a9 a9 e3       	vfmadd213sd %xmm11,%xmm10,%xmm12
  402678:	c4 e2 99 b9 c0       	vfmadd231sd %xmm0,%xmm12,%xmm0
  40267d:	c3                   	retq   
  40267e:	66 90                	xchg   %ax,%ax

0000000000402680 <__libm_matherr>:
  402680:	f3 0f 1e fa          	endbr64 
  402684:	e9 27 00 00 00       	jmpq   4026b0 <__libm_matherr_ex>
  402689:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402690 <__libm_matherrf>:
  402690:	f3 0f 1e fa          	endbr64 
  402694:	e9 27 00 00 00       	jmpq   4026c0 <__libm_matherrf_ex>
  402699:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004026a0 <__libm_matherrl>:
  4026a0:	f3 0f 1e fa          	endbr64 
  4026a4:	e9 27 00 00 00       	jmpq   4026d0 <__libm_matherrl_ex>
  4026a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004026b0 <__libm_matherr_ex>:
  4026b0:	f3 0f 1e fa          	endbr64 
  4026b4:	b8 01 00 00 00       	mov    $0x1,%eax
  4026b9:	c3                   	retq   
  4026ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004026c0 <__libm_matherrf_ex>:
  4026c0:	f3 0f 1e fa          	endbr64 
  4026c4:	b8 01 00 00 00       	mov    $0x1,%eax
  4026c9:	c3                   	retq   
  4026ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004026d0 <__libm_matherrl_ex>:
  4026d0:	f3 0f 1e fa          	endbr64 
  4026d4:	b8 01 00 00 00       	mov    $0x1,%eax
  4026d9:	c3                   	retq   
  4026da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004026e0 <__libirc_get_feature_name>:
  4026e0:	f3 0f 1e fa          	endbr64 
  4026e4:	56                   	push   %rsi
  4026e5:	83 3d bc 71 00 00 00 	cmpl   $0x0,0x71bc(%rip)        # 4098a8 <__libirc_isa_info_initialized>
  4026ec:	74 13                	je     402701 <__libirc_get_feature_name+0x21>
  4026ee:	89 ff                	mov    %edi,%edi
  4026f0:	48 8d 05 e9 6a 00 00 	lea    0x6ae9(%rip),%rax        # 4091e0 <proc_info_features>
  4026f7:	48 8d 14 7f          	lea    (%rdi,%rdi,2),%rdx
  4026fb:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
  4026ff:	59                   	pop    %rcx
  402700:	c3                   	retq   
  402701:	e8 fa 02 00 00       	callq  402a00 <__libirc_isa_init_once>
  402706:	85 c0                	test   %eax,%eax
  402708:	75 e4                	jne    4026ee <__libirc_get_feature_name+0xe>
  40270a:	33 c0                	xor    %eax,%eax
  40270c:	59                   	pop    %rcx
  40270d:	c3                   	retq   
  40270e:	66 90                	xchg   %ax,%ax

0000000000402710 <__libirc_get_feature_bitpos>:
  402710:	f3 0f 1e fa          	endbr64 
  402714:	55                   	push   %rbp
  402715:	89 c5                	mov    %eax,%ebp
  402717:	83 3d 8a 71 00 00 00 	cmpl   $0x0,0x718a(%rip)        # 4098a8 <__libirc_isa_info_initialized>
  40271e:	74 25                	je     402745 <__libirc_get_feature_bitpos+0x35>
  402720:	48 8d 05 c1 6a 00 00 	lea    0x6ac1(%rip),%rax        # 4091e8 <proc_info_features+0x8>
  402727:	4c 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%r10
  40272c:	42 8b 04 d0          	mov    (%rax,%r10,8),%eax
  402730:	83 f8 ff             	cmp    $0xffffffff,%eax
  402733:	7c 09                	jl     40273e <__libirc_get_feature_bitpos+0x2e>
  402735:	3d 80 00 00 00       	cmp    $0x80,%eax
  40273a:	7d 02                	jge    40273e <__libirc_get_feature_bitpos+0x2e>
  40273c:	5d                   	pop    %rbp
  40273d:	c3                   	retq   
  40273e:	b8 fd ff ff ff       	mov    $0xfffffffd,%eax
  402743:	5d                   	pop    %rbp
  402744:	c3                   	retq   
  402745:	e8 b6 02 00 00       	callq  402a00 <__libirc_isa_init_once>
  40274a:	85 c0                	test   %eax,%eax
  40274c:	75 d2                	jne    402720 <__libirc_get_feature_bitpos+0x10>
  40274e:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
  402753:	5d                   	pop    %rbp
  402754:	c3                   	retq   
  402755:	0f 1f 40 00          	nopl   0x0(%rax)
  402759:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402760 <__libirc_get_disable_mask>:
  402760:	48 83 ec 28          	sub    $0x28,%rsp
  402764:	49 89 f9             	mov    %rdi,%r9
  402767:	4d 89 c8             	mov    %r9,%r8
  40276a:	33 ff                	xor    %edi,%edi
  40276c:	49 f7 d8             	neg    %r8
  40276f:	33 d2                	xor    %edx,%edx
  402771:	4d 85 c9             	test   %r9,%r9
  402774:	0f 84 7d 01 00 00    	je     4028f7 <__libirc_get_disable_mask+0x197>
  40277a:	48 85 f6             	test   %rsi,%rsi
  40277d:	0f 84 74 01 00 00    	je     4028f7 <__libirc_get_disable_mask+0x197>
  402783:	41 8a 09             	mov    (%r9),%cl
  402786:	84 c9                	test   %cl,%cl
  402788:	0f 84 40 01 00 00    	je     4028ce <__libirc_get_disable_mask+0x16e>
  40278e:	80 f9 2c             	cmp    $0x2c,%cl
  402791:	74 15                	je     4027a8 <__libirc_get_disable_mask+0x48>
  402793:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  402798:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
  40279d:	48 89 1c 24          	mov    %rbx,(%rsp)
  4027a1:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  4027a6:	eb 4b                	jmp    4027f3 <__libirc_get_disable_mask+0x93>
  4027a8:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
  4027ad:	4c 89 7c 24 10       	mov    %r15,0x10(%rsp)
  4027b2:	48 89 1c 24          	mov    %rbx,(%rsp)
  4027b6:	48 89 6c 24 08       	mov    %rbp,0x8(%rsp)
  4027bb:	49 ff c1             	inc    %r9
  4027be:	49 ff c8             	dec    %r8
  4027c1:	41 8a 09             	mov    (%r9),%cl
  4027c4:	80 f9 2c             	cmp    $0x2c,%cl
  4027c7:	75 2a                	jne    4027f3 <__libirc_get_disable_mask+0x93>
  4027c9:	49 ff c1             	inc    %r9
  4027cc:	49 ff c8             	dec    %r8
  4027cf:	41 8a 09             	mov    (%r9),%cl
  4027d2:	80 f9 2c             	cmp    $0x2c,%cl
  4027d5:	75 1c                	jne    4027f3 <__libirc_get_disable_mask+0x93>
  4027d7:	49 ff c1             	inc    %r9
  4027da:	49 ff c8             	dec    %r8
  4027dd:	41 8a 09             	mov    (%r9),%cl
  4027e0:	80 f9 2c             	cmp    $0x2c,%cl
  4027e3:	75 0e                	jne    4027f3 <__libirc_get_disable_mask+0x93>
  4027e5:	49 ff c1             	inc    %r9
  4027e8:	49 ff c8             	dec    %r8
  4027eb:	41 8a 09             	mov    (%r9),%cl
  4027ee:	80 f9 2c             	cmp    $0x2c,%cl
  4027f1:	74 f2                	je     4027e5 <__libirc_get_disable_mask+0x85>
  4027f3:	84 c9                	test   %cl,%cl
  4027f5:	0f 84 c0 00 00 00    	je     4028bb <__libirc_get_disable_mask+0x15b>
  4027fb:	4d 89 cf             	mov    %r9,%r15
  4027fe:	49 ff c1             	inc    %r9
  402801:	4c 89 c1             	mov    %r8,%rcx
  402804:	49 ff c8             	dec    %r8
  402807:	41 8a 19             	mov    (%r9),%bl
  40280a:	80 fb 2c             	cmp    $0x2c,%bl
  40280d:	74 19                	je     402828 <__libirc_get_disable_mask+0xc8>
  40280f:	84 db                	test   %bl,%bl
  402811:	0f 84 cc 00 00 00    	je     4028e3 <__libirc_get_disable_mask+0x183>
  402817:	4c 89 cf             	mov    %r9,%rdi
  40281a:	49 ff c1             	inc    %r9
  40281d:	49 ff c8             	dec    %r8
  402820:	41 8a 19             	mov    (%r9),%bl
  402823:	80 fb 2c             	cmp    $0x2c,%bl
  402826:	75 e7                	jne    40280f <__libirc_get_disable_mask+0xaf>
  402828:	4c 8d 74 39 01       	lea    0x1(%rcx,%rdi,1),%r14
  40282d:	4d 85 ff             	test   %r15,%r15
  402830:	74 89                	je     4027bb <__libirc_get_disable_mask+0x5b>
  402832:	4d 85 f6             	test   %r14,%r14
  402835:	74 84                	je     4027bb <__libirc_get_disable_mask+0x5b>
  402837:	83 3d 6a 70 00 00 00 	cmpl   $0x0,0x706a(%rip)        # 4098a8 <__libirc_isa_info_initialized>
  40283e:	0f 84 91 00 00 00    	je     4028d5 <__libirc_get_disable_mask+0x175>
  402844:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  40284a:	b9 01 00 00 00       	mov    $0x1,%ecx
  40284f:	48 8d 2d 9a 69 00 00 	lea    0x699a(%rip),%rbp        # 4091f0 <proc_info_features+0x10>
  402856:	4f 8d 14 52          	lea    (%r10,%r10,2),%r10
  40285a:	4e 8b 5c d5 00       	mov    0x0(%rbp,%r10,8),%r11
  40285f:	4d 85 db             	test   %r11,%r11
  402862:	74 21                	je     402885 <__libirc_get_disable_mask+0x125>
  402864:	45 33 d2             	xor    %r10d,%r10d
  402867:	4d 85 f6             	test   %r14,%r14
  40286a:	76 12                	jbe    40287e <__libirc_get_disable_mask+0x11e>
  40286c:	43 8a 04 3a          	mov    (%r10,%r15,1),%al
  402870:	43 3a 04 1a          	cmp    (%r10,%r11,1),%al
  402874:	75 0f                	jne    402885 <__libirc_get_disable_mask+0x125>
  402876:	49 ff c2             	inc    %r10
  402879:	4d 3b d6             	cmp    %r14,%r10
  40287c:	72 ee                	jb     40286c <__libirc_get_disable_mask+0x10c>
  40287e:	43 80 3c 33 00       	cmpb   $0x0,(%r11,%r14,1)
  402883:	74 0c                	je     402891 <__libirc_get_disable_mask+0x131>
  402885:	ff c1                	inc    %ecx
  402887:	41 89 ca             	mov    %ecx,%r10d
  40288a:	83 f9 47             	cmp    $0x47,%ecx
  40288d:	72 c7                	jb     402856 <__libirc_get_disable_mask+0xf6>
  40288f:	eb 18                	jmp    4028a9 <__libirc_get_disable_mask+0x149>
  402891:	85 c9                	test   %ecx,%ecx
  402893:	74 14                	je     4028a9 <__libirc_get_disable_mask+0x149>
  402895:	83 f9 01             	cmp    $0x1,%ecx
  402898:	74 0f                	je     4028a9 <__libirc_get_disable_mask+0x149>
  40289a:	48 89 f0             	mov    %rsi,%rax
  40289d:	e8 ee 00 00 00       	callq  402990 <__libirc_set_cpu_feature>
  4028a2:	83 f8 01             	cmp    $0x1,%eax
  4028a5:	48 83 d2 00          	adc    $0x0,%rdx
  4028a9:	84 db                	test   %bl,%bl
  4028ab:	74 0e                	je     4028bb <__libirc_get_disable_mask+0x15b>
  4028ad:	80 fb 2c             	cmp    $0x2c,%bl
  4028b0:	0f 85 45 ff ff ff    	jne    4027fb <__libirc_get_disable_mask+0x9b>
  4028b6:	e9 00 ff ff ff       	jmpq   4027bb <__libirc_get_disable_mask+0x5b>
  4028bb:	4c 8b 74 24 18       	mov    0x18(%rsp),%r14
  4028c0:	4c 8b 7c 24 10       	mov    0x10(%rsp),%r15
  4028c5:	48 8b 1c 24          	mov    (%rsp),%rbx
  4028c9:	48 8b 6c 24 08       	mov    0x8(%rsp),%rbp
  4028ce:	89 d0                	mov    %edx,%eax
  4028d0:	48 83 c4 28          	add    $0x28,%rsp
  4028d4:	c3                   	retq   
  4028d5:	e8 26 01 00 00       	callq  402a00 <__libirc_isa_init_once>
  4028da:	85 c0                	test   %eax,%eax
  4028dc:	74 cb                	je     4028a9 <__libirc_get_disable_mask+0x149>
  4028de:	e9 61 ff ff ff       	jmpq   402844 <__libirc_get_disable_mask+0xe4>
  4028e3:	4c 8d 74 39 01       	lea    0x1(%rcx,%rdi,1),%r14
  4028e8:	4d 85 ff             	test   %r15,%r15
  4028eb:	74 ce                	je     4028bb <__libirc_get_disable_mask+0x15b>
  4028ed:	4d 85 f6             	test   %r14,%r14
  4028f0:	74 c9                	je     4028bb <__libirc_get_disable_mask+0x15b>
  4028f2:	e9 40 ff ff ff       	jmpq   402837 <__libirc_get_disable_mask+0xd7>
  4028f7:	33 c0                	xor    %eax,%eax
  4028f9:	48 83 c4 28          	add    $0x28,%rsp
  4028fd:	c3                   	retq   
  4028fe:	66 90                	xchg   %ax,%ax

0000000000402900 <__libirc_get_cpu_feature>:
  402900:	f3 0f 1e fa          	endbr64 
  402904:	56                   	push   %rsi
  402905:	83 3d 9c 6f 00 00 00 	cmpl   $0x0,0x6f9c(%rip)        # 4098a8 <__libirc_isa_info_initialized>
  40290c:	74 49                	je     402957 <__libirc_get_cpu_feature+0x57>
  40290e:	89 f6                	mov    %esi,%esi
  402910:	48 8d 05 d1 68 00 00 	lea    0x68d1(%rip),%rax        # 4091e8 <proc_info_features+0x8>
  402917:	48 8d 14 76          	lea    (%rsi,%rsi,2),%rdx
  40291b:	44 8b 04 d0          	mov    (%rax,%rdx,8),%r8d
  40291f:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
  402923:	7c 27                	jl     40294c <__libirc_get_cpu_feature+0x4c>
  402925:	41 81 f8 80 00 00 00 	cmp    $0x80,%r8d
  40292c:	7d 1e                	jge    40294c <__libirc_get_cpu_feature+0x4c>
  40292e:	45 85 c0             	test   %r8d,%r8d
  402931:	7c 1f                	jl     402952 <__libirc_get_cpu_feature+0x52>
  402933:	49 63 d0             	movslq %r8d,%rdx
  402936:	33 c0                	xor    %eax,%eax
  402938:	48 c1 ea 06          	shr    $0x6,%rdx
  40293c:	48 63 ca             	movslq %edx,%rcx
  40293f:	48 8b 34 cf          	mov    (%rdi,%rcx,8),%rsi
  402943:	4c 0f a3 c6          	bt     %r8,%rsi
  402947:	0f 92 c0             	setb   %al
  40294a:	59                   	pop    %rcx
  40294b:	c3                   	retq   
  40294c:	41 b8 fd ff ff ff    	mov    $0xfffffffd,%r8d
  402952:	44 89 c0             	mov    %r8d,%eax
  402955:	59                   	pop    %rcx
  402956:	c3                   	retq   
  402957:	e8 a4 00 00 00       	callq  402a00 <__libirc_isa_init_once>
  40295c:	85 c0                	test   %eax,%eax
  40295e:	75 ae                	jne    40290e <__libirc_get_cpu_feature+0xe>
  402960:	41 b8 fe ff ff ff    	mov    $0xfffffffe,%r8d
  402966:	eb ea                	jmp    402952 <__libirc_get_cpu_feature+0x52>
  402968:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40296f:	00 

0000000000402970 <__intel_set_cpu_indicator>:
  402970:	4c 8b 51 08          	mov    0x8(%rcx),%r10
  402974:	4c 8b 19             	mov    (%rcx),%r11
  402977:	4c 89 50 08          	mov    %r10,0x8(%rax)
  40297b:	4c 89 18             	mov    %r11,(%rax)
  40297e:	33 c0                	xor    %eax,%eax
  402980:	c3                   	retq   
  402981:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402988:	00 
  402989:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402990 <__libirc_set_cpu_feature>:
  402990:	41 56                	push   %r14
  402992:	49 89 c6             	mov    %rax,%r14
  402995:	83 3d 0c 6f 00 00 00 	cmpl   $0x0,0x6f0c(%rip)        # 4098a8 <__libirc_isa_info_initialized>
  40299c:	74 44                	je     4029e2 <__libirc_set_cpu_feature+0x52>
  40299e:	89 c9                	mov    %ecx,%ecx
  4029a0:	48 8d 05 41 68 00 00 	lea    0x6841(%rip),%rax        # 4091e8 <proc_info_features+0x8>
  4029a7:	4c 8d 14 49          	lea    (%rcx,%rcx,2),%r10
  4029ab:	42 8b 04 d0          	mov    (%rax,%r10,8),%eax
  4029af:	83 f8 ff             	cmp    $0xffffffff,%eax
  4029b2:	7c 26                	jl     4029da <__libirc_set_cpu_feature+0x4a>
  4029b4:	3d 80 00 00 00       	cmp    $0x80,%eax
  4029b9:	7d 1f                	jge    4029da <__libirc_set_cpu_feature+0x4a>
  4029bb:	85 c0                	test   %eax,%eax
  4029bd:	7c 20                	jl     4029df <__libirc_set_cpu_feature+0x4f>
  4029bf:	48 63 c8             	movslq %eax,%rcx
  4029c2:	48 c1 e9 06          	shr    $0x6,%rcx
  4029c6:	4c 63 d9             	movslq %ecx,%r11
  4029c9:	4f 8b 14 de          	mov    (%r14,%r11,8),%r10
  4029cd:	49 0f ab c2          	bts    %rax,%r10
  4029d1:	33 c0                	xor    %eax,%eax
  4029d3:	4f 89 14 de          	mov    %r10,(%r14,%r11,8)
  4029d7:	41 5e                	pop    %r14
  4029d9:	c3                   	retq   
  4029da:	b8 fd ff ff ff       	mov    $0xfffffffd,%eax
  4029df:	41 5e                	pop    %r14
  4029e1:	c3                   	retq   
  4029e2:	e8 19 00 00 00       	callq  402a00 <__libirc_isa_init_once>
  4029e7:	85 c0                	test   %eax,%eax
  4029e9:	75 b3                	jne    40299e <__libirc_set_cpu_feature+0xe>
  4029eb:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
  4029f0:	41 5e                	pop    %r14
  4029f2:	c3                   	retq   
  4029f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4029f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4029ff:	00 

0000000000402a00 <__libirc_isa_init_once>:
  402a00:	83 3d a1 6e 00 00 00 	cmpl   $0x0,0x6ea1(%rip)        # 4098a8 <__libirc_isa_info_initialized>
  402a07:	74 06                	je     402a0f <__libirc_isa_init_once+0xf>
  402a09:	b8 01 00 00 00       	mov    $0x1,%eax
  402a0e:	c3                   	retq   
  402a0f:	48 89 54 24 f8       	mov    %rdx,-0x8(%rsp)
  402a14:	45 32 db             	xor    %r11b,%r11b
  402a17:	45 33 d2             	xor    %r10d,%r10d
  402a1a:	48 8d 05 f7 67 00 00 	lea    0x67f7(%rip),%rax        # 409218 <proc_info_features+0x38>
  402a21:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402a26:	41 fe c3             	inc    %r11b
  402a29:	41 89 54 02 e8       	mov    %edx,-0x18(%r10,%rax,1)
  402a2e:	41 89 14 02          	mov    %edx,(%r10,%rax,1)
  402a32:	49 83 c2 30          	add    $0x30,%r10
  402a36:	41 80 fb 23          	cmp    $0x23,%r11b
  402a3a:	72 ea                	jb     402a26 <__libirc_isa_init_once+0x26>
  402a3c:	4c 8d 15 ad 46 00 00 	lea    0x46ad(%rip),%r10        # 4070f0 <__Tbl_addr+0x400>
  402a43:	4c 8d 1d aa 46 00 00 	lea    0x46aa(%rip),%r11        # 4070f4 <__Tbl_addr+0x404>
  402a4a:	4c 89 15 bf 67 00 00 	mov    %r10,0x67bf(%rip)        # 409210 <proc_info_features+0x30>
  402a51:	4c 8d 15 a4 46 00 00 	lea    0x46a4(%rip),%r10        # 4070fc <__Tbl_addr+0x40c>
  402a58:	4c 89 1d c9 67 00 00 	mov    %r11,0x67c9(%rip)        # 409228 <proc_info_features+0x48>
  402a5f:	4c 8d 1d 9a 46 00 00 	lea    0x469a(%rip),%r11        # 407100 <__Tbl_addr+0x410>
  402a66:	4c 89 15 e3 67 00 00 	mov    %r10,0x67e3(%rip)        # 409250 <proc_info_features+0x70>
  402a6d:	4c 8d 15 90 46 00 00 	lea    0x4690(%rip),%r10        # 407104 <__Tbl_addr+0x414>
  402a74:	4c 89 1d c5 67 00 00 	mov    %r11,0x67c5(%rip)        # 409240 <proc_info_features+0x60>
  402a7b:	4c 8d 1d 8a 46 00 00 	lea    0x468a(%rip),%r11        # 40710c <__Tbl_addr+0x41c>
  402a82:	4c 89 15 cf 67 00 00 	mov    %r10,0x67cf(%rip)        # 409258 <proc_info_features+0x78>
  402a89:	4c 8d 15 80 46 00 00 	lea    0x4680(%rip),%r10        # 407110 <__Tbl_addr+0x420>
  402a90:	4c 89 1d e9 67 00 00 	mov    %r11,0x67e9(%rip)        # 409280 <proc_info_features+0xa0>
  402a97:	4c 8d 1d 76 46 00 00 	lea    0x4676(%rip),%r11        # 407114 <__Tbl_addr+0x424>
  402a9e:	4c 89 15 cb 67 00 00 	mov    %r10,0x67cb(%rip)        # 409270 <proc_info_features+0x90>
  402aa5:	4c 8d 15 70 46 00 00 	lea    0x4670(%rip),%r10        # 40711c <__Tbl_addr+0x42c>
  402aac:	4c 89 1d e5 67 00 00 	mov    %r11,0x67e5(%rip)        # 409298 <proc_info_features+0xb8>
  402ab3:	4c 8d 1d 6a 46 00 00 	lea    0x466a(%rip),%r11        # 407124 <__Tbl_addr+0x434>
  402aba:	4c 89 15 c7 67 00 00 	mov    %r10,0x67c7(%rip)        # 409288 <proc_info_features+0xa8>
  402ac1:	4c 8d 15 64 46 00 00 	lea    0x4664(%rip),%r10        # 40712c <__Tbl_addr+0x43c>
  402ac8:	4c 89 1d e1 67 00 00 	mov    %r11,0x67e1(%rip)        # 4092b0 <proc_info_features+0xd0>
  402acf:	4c 8d 1d 5e 46 00 00 	lea    0x465e(%rip),%r11        # 407134 <__Tbl_addr+0x444>
  402ad6:	4c 89 15 c3 67 00 00 	mov    %r10,0x67c3(%rip)        # 4092a0 <proc_info_features+0xc0>
  402add:	4c 8d 15 58 46 00 00 	lea    0x4658(%rip),%r10        # 40713c <__Tbl_addr+0x44c>
  402ae4:	4c 89 1d dd 67 00 00 	mov    %r11,0x67dd(%rip)        # 4092c8 <proc_info_features+0xe8>
  402aeb:	4c 8d 1d 52 46 00 00 	lea    0x4652(%rip),%r11        # 407144 <__Tbl_addr+0x454>
  402af2:	4c 89 15 bf 67 00 00 	mov    %r10,0x67bf(%rip)        # 4092b8 <proc_info_features+0xd8>
  402af9:	4c 8d 15 4c 46 00 00 	lea    0x464c(%rip),%r10        # 40714c <__Tbl_addr+0x45c>
  402b00:	4c 89 1d d9 67 00 00 	mov    %r11,0x67d9(%rip)        # 4092e0 <proc_info_features+0x100>
  402b07:	4c 8d 1d 46 46 00 00 	lea    0x4646(%rip),%r11        # 407154 <__Tbl_addr+0x464>
  402b0e:	4c 89 15 bb 67 00 00 	mov    %r10,0x67bb(%rip)        # 4092d0 <proc_info_features+0xf0>
  402b15:	4c 8d 15 40 46 00 00 	lea    0x4640(%rip),%r10        # 40715c <__Tbl_addr+0x46c>
  402b1c:	4c 89 1d d5 67 00 00 	mov    %r11,0x67d5(%rip)        # 4092f8 <proc_info_features+0x118>
  402b23:	4c 8d 1d 3a 46 00 00 	lea    0x463a(%rip),%r11        # 407164 <__Tbl_addr+0x474>
  402b2a:	4c 89 15 b7 67 00 00 	mov    %r10,0x67b7(%rip)        # 4092e8 <proc_info_features+0x108>
  402b31:	4c 8d 15 34 46 00 00 	lea    0x4634(%rip),%r10        # 40716c <__Tbl_addr+0x47c>
  402b38:	4c 89 1d d1 67 00 00 	mov    %r11,0x67d1(%rip)        # 409310 <proc_info_features+0x130>
  402b3f:	4c 8d 1d 2e 46 00 00 	lea    0x462e(%rip),%r11        # 407174 <__Tbl_addr+0x484>
  402b46:	4c 89 15 b3 67 00 00 	mov    %r10,0x67b3(%rip)        # 409300 <proc_info_features+0x120>
  402b4d:	4c 8d 15 28 46 00 00 	lea    0x4628(%rip),%r10        # 40717c <__Tbl_addr+0x48c>
  402b54:	4c 89 1d cd 67 00 00 	mov    %r11,0x67cd(%rip)        # 409328 <proc_info_features+0x148>
  402b5b:	4c 8d 1d 22 46 00 00 	lea    0x4622(%rip),%r11        # 407184 <__Tbl_addr+0x494>
  402b62:	4c 89 15 af 67 00 00 	mov    %r10,0x67af(%rip)        # 409318 <proc_info_features+0x138>
  402b69:	4c 8d 15 1c 46 00 00 	lea    0x461c(%rip),%r10        # 40718c <__Tbl_addr+0x49c>
  402b70:	4c 89 1d c9 67 00 00 	mov    %r11,0x67c9(%rip)        # 409340 <proc_info_features+0x160>
  402b77:	4c 8d 1d 1a 46 00 00 	lea    0x461a(%rip),%r11        # 407198 <__Tbl_addr+0x4a8>
  402b7e:	4c 89 15 ab 67 00 00 	mov    %r10,0x67ab(%rip)        # 409330 <proc_info_features+0x150>
  402b85:	4c 8d 15 10 46 00 00 	lea    0x4610(%rip),%r10        # 40719c <__Tbl_addr+0x4ac>
  402b8c:	4c 89 1d c5 67 00 00 	mov    %r11,0x67c5(%rip)        # 409358 <proc_info_features+0x178>
  402b93:	4c 8d 1d 06 46 00 00 	lea    0x4606(%rip),%r11        # 4071a0 <__Tbl_addr+0x4b0>
  402b9a:	4c 89 15 a7 67 00 00 	mov    %r10,0x67a7(%rip)        # 409348 <proc_info_features+0x168>
  402ba1:	4c 8d 15 fc 45 00 00 	lea    0x45fc(%rip),%r10        # 4071a4 <__Tbl_addr+0x4b4>
  402ba8:	4c 89 1d c1 67 00 00 	mov    %r11,0x67c1(%rip)        # 409370 <proc_info_features+0x190>
  402baf:	4c 8d 1d f2 45 00 00 	lea    0x45f2(%rip),%r11        # 4071a8 <__Tbl_addr+0x4b8>
  402bb6:	4c 89 15 a3 67 00 00 	mov    %r10,0x67a3(%rip)        # 409360 <proc_info_features+0x180>
  402bbd:	4c 8d 15 ec 45 00 00 	lea    0x45ec(%rip),%r10        # 4071b0 <__Tbl_addr+0x4c0>
  402bc4:	4c 89 1d bd 67 00 00 	mov    %r11,0x67bd(%rip)        # 409388 <proc_info_features+0x1a8>
  402bcb:	4c 8d 1d e6 45 00 00 	lea    0x45e6(%rip),%r11        # 4071b8 <__Tbl_addr+0x4c8>
  402bd2:	4c 89 15 9f 67 00 00 	mov    %r10,0x679f(%rip)        # 409378 <proc_info_features+0x198>
  402bd9:	4c 8d 15 e0 45 00 00 	lea    0x45e0(%rip),%r10        # 4071c0 <__Tbl_addr+0x4d0>
  402be0:	4c 89 1d b9 67 00 00 	mov    %r11,0x67b9(%rip)        # 4093a0 <proc_info_features+0x1c0>
  402be7:	4c 8d 1d da 45 00 00 	lea    0x45da(%rip),%r11        # 4071c8 <__Tbl_addr+0x4d8>
  402bee:	4c 89 15 9b 67 00 00 	mov    %r10,0x679b(%rip)        # 409390 <proc_info_features+0x1b0>
  402bf5:	4c 8d 15 d0 45 00 00 	lea    0x45d0(%rip),%r10        # 4071cc <__Tbl_addr+0x4dc>
  402bfc:	4c 89 1d b5 67 00 00 	mov    %r11,0x67b5(%rip)        # 4093b8 <proc_info_features+0x1d8>
  402c03:	4c 8d 1d c6 45 00 00 	lea    0x45c6(%rip),%r11        # 4071d0 <__Tbl_addr+0x4e0>
  402c0a:	4c 89 15 97 67 00 00 	mov    %r10,0x6797(%rip)        # 4093a8 <proc_info_features+0x1c8>
  402c11:	4c 8d 15 bc 45 00 00 	lea    0x45bc(%rip),%r10        # 4071d4 <__Tbl_addr+0x4e4>
  402c18:	4c 89 1d b1 67 00 00 	mov    %r11,0x67b1(%rip)        # 4093d0 <proc_info_features+0x1f0>
  402c1f:	4c 8d 1d b2 45 00 00 	lea    0x45b2(%rip),%r11        # 4071d8 <__Tbl_addr+0x4e8>
  402c26:	4c 89 15 93 67 00 00 	mov    %r10,0x6793(%rip)        # 4093c0 <proc_info_features+0x1e0>
  402c2d:	4c 8d 15 ac 45 00 00 	lea    0x45ac(%rip),%r10        # 4071e0 <__Tbl_addr+0x4f0>
  402c34:	4c 89 1d ad 67 00 00 	mov    %r11,0x67ad(%rip)        # 4093e8 <proc_info_features+0x208>
  402c3b:	4c 8d 1d a6 45 00 00 	lea    0x45a6(%rip),%r11        # 4071e8 <__Tbl_addr+0x4f8>
  402c42:	4c 89 15 8f 67 00 00 	mov    %r10,0x678f(%rip)        # 4093d8 <proc_info_features+0x1f8>
  402c49:	4c 8d 15 9c 45 00 00 	lea    0x459c(%rip),%r10        # 4071ec <__Tbl_addr+0x4fc>
  402c50:	4c 89 1d a9 67 00 00 	mov    %r11,0x67a9(%rip)        # 409400 <proc_info_features+0x220>
  402c57:	4c 8d 1d 92 45 00 00 	lea    0x4592(%rip),%r11        # 4071f0 <__Tbl_addr+0x500>
  402c5e:	4c 89 15 8b 67 00 00 	mov    %r10,0x678b(%rip)        # 4093f0 <proc_info_features+0x210>
  402c65:	4c 8d 15 88 45 00 00 	lea    0x4588(%rip),%r10        # 4071f4 <__Tbl_addr+0x504>
  402c6c:	4c 89 1d a5 67 00 00 	mov    %r11,0x67a5(%rip)        # 409418 <proc_info_features+0x238>
  402c73:	4c 8d 1d 7e 45 00 00 	lea    0x457e(%rip),%r11        # 4071f8 <__Tbl_addr+0x508>
  402c7a:	4c 89 15 87 67 00 00 	mov    %r10,0x6787(%rip)        # 409408 <proc_info_features+0x228>
  402c81:	4c 8d 15 78 45 00 00 	lea    0x4578(%rip),%r10        # 407200 <__Tbl_addr+0x510>
  402c88:	4c 89 1d a1 67 00 00 	mov    %r11,0x67a1(%rip)        # 409430 <proc_info_features+0x250>
  402c8f:	4c 8d 1d 72 45 00 00 	lea    0x4572(%rip),%r11        # 407208 <__Tbl_addr+0x518>
  402c96:	4c 89 15 83 67 00 00 	mov    %r10,0x6783(%rip)        # 409420 <proc_info_features+0x240>
  402c9d:	4c 8d 15 6c 45 00 00 	lea    0x456c(%rip),%r10        # 407210 <__Tbl_addr+0x520>
  402ca4:	4c 89 1d 9d 67 00 00 	mov    %r11,0x679d(%rip)        # 409448 <proc_info_features+0x268>
  402cab:	4c 8d 1d 66 45 00 00 	lea    0x4566(%rip),%r11        # 407218 <__Tbl_addr+0x528>
  402cb2:	4c 89 15 7f 67 00 00 	mov    %r10,0x677f(%rip)        # 409438 <proc_info_features+0x258>
  402cb9:	4c 8d 15 64 45 00 00 	lea    0x4564(%rip),%r10        # 407224 <__Tbl_addr+0x534>
  402cc0:	4c 89 1d 99 67 00 00 	mov    %r11,0x6799(%rip)        # 409460 <proc_info_features+0x280>
  402cc7:	4c 8d 1d 62 45 00 00 	lea    0x4562(%rip),%r11        # 407230 <__Tbl_addr+0x540>
  402cce:	4c 89 15 7b 67 00 00 	mov    %r10,0x677b(%rip)        # 409450 <proc_info_features+0x270>
  402cd5:	4c 8d 15 5c 45 00 00 	lea    0x455c(%rip),%r10        # 407238 <__Tbl_addr+0x548>
  402cdc:	4c 89 1d 95 67 00 00 	mov    %r11,0x6795(%rip)        # 409478 <proc_info_features+0x298>
  402ce3:	4c 8d 1d 56 45 00 00 	lea    0x4556(%rip),%r11        # 407240 <__Tbl_addr+0x550>
  402cea:	4c 89 15 77 67 00 00 	mov    %r10,0x6777(%rip)        # 409468 <proc_info_features+0x288>
  402cf1:	4c 8d 15 50 45 00 00 	lea    0x4550(%rip),%r10        # 407248 <__Tbl_addr+0x558>
  402cf8:	4c 89 1d 81 67 00 00 	mov    %r11,0x6781(%rip)        # 409480 <proc_info_features+0x2a0>
  402cff:	4c 8d 1d 46 45 00 00 	lea    0x4546(%rip),%r11        # 40724c <__Tbl_addr+0x55c>
  402d06:	4c 89 15 9b 67 00 00 	mov    %r10,0x679b(%rip)        # 4094a8 <proc_info_features+0x2c8>
  402d0d:	4c 8d 15 3c 45 00 00 	lea    0x453c(%rip),%r10        # 407250 <__Tbl_addr+0x560>
  402d14:	4c 89 1d 7d 67 00 00 	mov    %r11,0x677d(%rip)        # 409498 <proc_info_features+0x2b8>
  402d1b:	4c 8d 1d 36 45 00 00 	lea    0x4536(%rip),%r11        # 407258 <__Tbl_addr+0x568>
  402d22:	4c 89 15 97 67 00 00 	mov    %r10,0x6797(%rip)        # 4094c0 <proc_info_features+0x2e0>
  402d29:	4c 8d 15 30 45 00 00 	lea    0x4530(%rip),%r10        # 407260 <__Tbl_addr+0x570>
  402d30:	4c 89 1d 79 67 00 00 	mov    %r11,0x6779(%rip)        # 4094b0 <proc_info_features+0x2d0>
  402d37:	4c 8d 1d 2e 45 00 00 	lea    0x452e(%rip),%r11        # 40726c <__Tbl_addr+0x57c>
  402d3e:	4c 89 15 93 67 00 00 	mov    %r10,0x6793(%rip)        # 4094d8 <proc_info_features+0x2f8>
  402d45:	4c 8d 15 30 45 00 00 	lea    0x4530(%rip),%r10        # 40727c <__Tbl_addr+0x58c>
  402d4c:	4c 89 1d 75 67 00 00 	mov    %r11,0x6775(%rip)        # 4094c8 <proc_info_features+0x2e8>
  402d53:	4c 8d 1d 2e 45 00 00 	lea    0x452e(%rip),%r11        # 407288 <__Tbl_addr+0x598>
  402d5a:	4c 89 15 a7 67 00 00 	mov    %r10,0x67a7(%rip)        # 409508 <proc_info_features+0x328>
  402d61:	4c 8d 15 2c 45 00 00 	lea    0x452c(%rip),%r10        # 407294 <__Tbl_addr+0x5a4>
  402d68:	4c 89 1d 89 67 00 00 	mov    %r11,0x6789(%rip)        # 4094f8 <proc_info_features+0x318>
  402d6f:	4c 8d 1d 2a 45 00 00 	lea    0x452a(%rip),%r11        # 4072a0 <__Tbl_addr+0x5b0>
  402d76:	4c 89 15 a3 67 00 00 	mov    %r10,0x67a3(%rip)        # 409520 <proc_info_features+0x340>
  402d7d:	4c 8d 15 28 45 00 00 	lea    0x4528(%rip),%r10        # 4072ac <__Tbl_addr+0x5bc>
  402d84:	4c 89 1d 85 67 00 00 	mov    %r11,0x6785(%rip)        # 409510 <proc_info_features+0x330>
  402d8b:	4c 8d 1d 26 45 00 00 	lea    0x4526(%rip),%r11        # 4072b8 <__Tbl_addr+0x5c8>
  402d92:	4c 89 15 9f 67 00 00 	mov    %r10,0x679f(%rip)        # 409538 <proc_info_features+0x358>
  402d99:	4c 8d 15 24 45 00 00 	lea    0x4524(%rip),%r10        # 4072c4 <__Tbl_addr+0x5d4>
  402da0:	4c 89 1d 81 67 00 00 	mov    %r11,0x6781(%rip)        # 409528 <proc_info_features+0x348>
  402da7:	4c 8d 1d 1a 45 00 00 	lea    0x451a(%rip),%r11        # 4072c8 <__Tbl_addr+0x5d8>
  402dae:	4c 89 15 9b 67 00 00 	mov    %r10,0x679b(%rip)        # 409550 <proc_info_features+0x370>
  402db5:	4c 8d 15 10 45 00 00 	lea    0x4510(%rip),%r10        # 4072cc <__Tbl_addr+0x5dc>
  402dbc:	4c 89 1d 7d 67 00 00 	mov    %r11,0x677d(%rip)        # 409540 <proc_info_features+0x360>
  402dc3:	4c 8d 1d 06 45 00 00 	lea    0x4506(%rip),%r11        # 4072d0 <__Tbl_addr+0x5e0>
  402dca:	4c 89 15 97 67 00 00 	mov    %r10,0x6797(%rip)        # 409568 <proc_info_features+0x388>
  402dd1:	4c 8d 15 fc 44 00 00 	lea    0x44fc(%rip),%r10        # 4072d4 <__Tbl_addr+0x5e4>
  402dd8:	4c 89 1d 79 67 00 00 	mov    %r11,0x6779(%rip)        # 409558 <proc_info_features+0x378>
  402ddf:	4c 8d 1d fa 44 00 00 	lea    0x44fa(%rip),%r11        # 4072e0 <__Tbl_addr+0x5f0>
  402de6:	4c 89 15 93 67 00 00 	mov    %r10,0x6793(%rip)        # 409580 <proc_info_features+0x3a0>
  402ded:	4c 8d 15 f8 44 00 00 	lea    0x44f8(%rip),%r10        # 4072ec <__Tbl_addr+0x5fc>
  402df4:	4c 89 1d 75 67 00 00 	mov    %r11,0x6775(%rip)        # 409570 <proc_info_features+0x390>
  402dfb:	4c 8d 1d f6 44 00 00 	lea    0x44f6(%rip),%r11        # 4072f8 <__Tbl_addr+0x608>
  402e02:	4c 89 15 8f 67 00 00 	mov    %r10,0x678f(%rip)        # 409598 <proc_info_features+0x3b8>
  402e09:	4c 8d 15 f4 44 00 00 	lea    0x44f4(%rip),%r10        # 407304 <__Tbl_addr+0x614>
  402e10:	4c 89 1d 71 67 00 00 	mov    %r11,0x6771(%rip)        # 409588 <proc_info_features+0x3a8>
  402e17:	4c 8d 1d f2 44 00 00 	lea    0x44f2(%rip),%r11        # 407310 <__Tbl_addr+0x620>
  402e1e:	4c 89 15 8b 67 00 00 	mov    %r10,0x678b(%rip)        # 4095b0 <proc_info_features+0x3d0>
  402e25:	4c 8d 15 f0 44 00 00 	lea    0x44f0(%rip),%r10        # 40731c <__Tbl_addr+0x62c>
  402e2c:	4c 89 1d 6d 67 00 00 	mov    %r11,0x676d(%rip)        # 4095a0 <proc_info_features+0x3c0>
  402e33:	4c 8d 1d f2 44 00 00 	lea    0x44f2(%rip),%r11        # 40732c <__Tbl_addr+0x63c>
  402e3a:	4c 89 15 87 67 00 00 	mov    %r10,0x6787(%rip)        # 4095c8 <proc_info_features+0x3e8>
  402e41:	4c 8d 15 f4 44 00 00 	lea    0x44f4(%rip),%r10        # 40733c <__Tbl_addr+0x64c>
  402e48:	4c 89 1d 69 67 00 00 	mov    %r11,0x6769(%rip)        # 4095b8 <proc_info_features+0x3d8>
  402e4f:	4c 8d 1d f6 44 00 00 	lea    0x44f6(%rip),%r11        # 40734c <__Tbl_addr+0x65c>
  402e56:	4c 89 15 83 67 00 00 	mov    %r10,0x6783(%rip)        # 4095e0 <proc_info_features+0x400>
  402e5d:	4c 8d 15 f8 44 00 00 	lea    0x44f8(%rip),%r10        # 40735c <__Tbl_addr+0x66c>
  402e64:	4c 89 1d 65 67 00 00 	mov    %r11,0x6765(%rip)        # 4095d0 <proc_info_features+0x3f0>
  402e6b:	4c 8d 1d fa 44 00 00 	lea    0x44fa(%rip),%r11        # 40736c <__Tbl_addr+0x67c>
  402e72:	4c 89 15 7f 67 00 00 	mov    %r10,0x677f(%rip)        # 4095f8 <proc_info_features+0x418>
  402e79:	4c 8d 15 00 45 00 00 	lea    0x4500(%rip),%r10        # 407380 <__Tbl_addr+0x690>
  402e80:	4c 89 1d 61 67 00 00 	mov    %r11,0x6761(%rip)        # 4095e8 <proc_info_features+0x408>
  402e87:	4c 8d 1d 02 45 00 00 	lea    0x4502(%rip),%r11        # 407390 <__Tbl_addr+0x6a0>
  402e8e:	4c 89 15 7b 67 00 00 	mov    %r10,0x677b(%rip)        # 409610 <proc_info_features+0x430>
  402e95:	4c 8d 15 04 45 00 00 	lea    0x4504(%rip),%r10        # 4073a0 <__Tbl_addr+0x6b0>
  402e9c:	4c 89 1d 5d 67 00 00 	mov    %r11,0x675d(%rip)        # 409600 <proc_info_features+0x420>
  402ea3:	4c 8d 1d 02 45 00 00 	lea    0x4502(%rip),%r11        # 4073ac <__Tbl_addr+0x6bc>
  402eaa:	4c 89 15 77 67 00 00 	mov    %r10,0x6777(%rip)        # 409628 <proc_info_features+0x448>
  402eb1:	4c 8d 15 04 45 00 00 	lea    0x4504(%rip),%r10        # 4073bc <__Tbl_addr+0x6cc>
  402eb8:	4c 89 1d 59 67 00 00 	mov    %r11,0x6759(%rip)        # 409618 <proc_info_features+0x438>
  402ebf:	4c 8d 1d fe 44 00 00 	lea    0x44fe(%rip),%r11        # 4073c4 <__Tbl_addr+0x6d4>
  402ec6:	4c 89 15 73 67 00 00 	mov    %r10,0x6773(%rip)        # 409640 <proc_info_features+0x460>
  402ecd:	4c 8d 15 f8 44 00 00 	lea    0x44f8(%rip),%r10        # 4073cc <__Tbl_addr+0x6dc>
  402ed4:	4c 89 1d 55 67 00 00 	mov    %r11,0x6755(%rip)        # 409630 <proc_info_features+0x450>
  402edb:	4c 8d 1d f2 44 00 00 	lea    0x44f2(%rip),%r11        # 4073d4 <__Tbl_addr+0x6e4>
  402ee2:	4c 89 15 6f 67 00 00 	mov    %r10,0x676f(%rip)        # 409658 <proc_info_features+0x478>
  402ee9:	4c 8d 15 ec 44 00 00 	lea    0x44ec(%rip),%r10        # 4073dc <__Tbl_addr+0x6ec>
  402ef0:	4c 89 1d 51 67 00 00 	mov    %r11,0x6751(%rip)        # 409648 <proc_info_features+0x468>
  402ef7:	4c 8d 1d ea 44 00 00 	lea    0x44ea(%rip),%r11        # 4073e8 <__Tbl_addr+0x6f8>
  402efe:	4c 89 15 6b 67 00 00 	mov    %r10,0x676b(%rip)        # 409670 <proc_info_features+0x490>
  402f05:	4c 8d 15 e8 44 00 00 	lea    0x44e8(%rip),%r10        # 4073f4 <__Tbl_addr+0x704>
  402f0c:	4c 89 1d 4d 67 00 00 	mov    %r11,0x674d(%rip)        # 409660 <proc_info_features+0x480>
  402f13:	4c 8d 1d e6 44 00 00 	lea    0x44e6(%rip),%r11        # 407400 <__Tbl_addr+0x710>
  402f1a:	4c 89 15 67 67 00 00 	mov    %r10,0x6767(%rip)        # 409688 <proc_info_features+0x4a8>
  402f21:	4c 8d 15 e4 44 00 00 	lea    0x44e4(%rip),%r10        # 40740c <__Tbl_addr+0x71c>
  402f28:	4c 89 1d 49 67 00 00 	mov    %r11,0x6749(%rip)        # 409678 <proc_info_features+0x498>
  402f2f:	4c 8d 1d de 44 00 00 	lea    0x44de(%rip),%r11        # 407414 <__Tbl_addr+0x724>
  402f36:	4c 89 15 63 67 00 00 	mov    %r10,0x6763(%rip)        # 4096a0 <proc_info_features+0x4c0>
  402f3d:	4c 8d 15 d8 44 00 00 	lea    0x44d8(%rip),%r10        # 40741c <__Tbl_addr+0x72c>
  402f44:	4c 89 1d 45 67 00 00 	mov    %r11,0x6745(%rip)        # 409690 <proc_info_features+0x4b0>
  402f4b:	4c 8d 1d d2 44 00 00 	lea    0x44d2(%rip),%r11        # 407424 <__Tbl_addr+0x734>
  402f52:	4c 89 15 5f 67 00 00 	mov    %r10,0x675f(%rip)        # 4096b8 <proc_info_features+0x4d8>
  402f59:	4c 8d 15 cc 44 00 00 	lea    0x44cc(%rip),%r10        # 40742c <__Tbl_addr+0x73c>
  402f60:	4c 89 1d 41 67 00 00 	mov    %r11,0x6741(%rip)        # 4096a8 <proc_info_features+0x4c8>
  402f67:	4c 8d 1d c2 44 00 00 	lea    0x44c2(%rip),%r11        # 407430 <__Tbl_addr+0x740>
  402f6e:	4c 89 15 5b 67 00 00 	mov    %r10,0x675b(%rip)        # 4096d0 <proc_info_features+0x4f0>
  402f75:	4c 8d 15 b8 44 00 00 	lea    0x44b8(%rip),%r10        # 407434 <__Tbl_addr+0x744>
  402f7c:	4c 89 1d 3d 67 00 00 	mov    %r11,0x673d(%rip)        # 4096c0 <proc_info_features+0x4e0>
  402f83:	4c 8d 1d b2 44 00 00 	lea    0x44b2(%rip),%r11        # 40743c <__Tbl_addr+0x74c>
  402f8a:	4c 89 15 57 67 00 00 	mov    %r10,0x6757(%rip)        # 4096e8 <proc_info_features+0x508>
  402f91:	4c 8d 15 ac 44 00 00 	lea    0x44ac(%rip),%r10        # 407444 <__Tbl_addr+0x754>
  402f98:	4c 89 1d 39 67 00 00 	mov    %r11,0x6739(%rip)        # 4096d8 <proc_info_features+0x4f8>
  402f9f:	4c 8d 1d a2 44 00 00 	lea    0x44a2(%rip),%r11        # 407448 <__Tbl_addr+0x758>
  402fa6:	4c 89 15 53 67 00 00 	mov    %r10,0x6753(%rip)        # 409700 <proc_info_features+0x520>
  402fad:	4c 8d 15 98 44 00 00 	lea    0x4498(%rip),%r10        # 40744c <__Tbl_addr+0x75c>
  402fb4:	4c 89 1d 35 67 00 00 	mov    %r11,0x6735(%rip)        # 4096f0 <proc_info_features+0x510>
  402fbb:	4c 8d 1d 96 44 00 00 	lea    0x4496(%rip),%r11        # 407458 <__Tbl_addr+0x768>
  402fc2:	4c 89 15 4f 67 00 00 	mov    %r10,0x674f(%rip)        # 409718 <proc_info_features+0x538>
  402fc9:	4c 8d 15 94 44 00 00 	lea    0x4494(%rip),%r10        # 407464 <__Tbl_addr+0x774>
  402fd0:	4c 89 1d 31 67 00 00 	mov    %r11,0x6731(%rip)        # 409708 <proc_info_features+0x528>
  402fd7:	4c 8d 1d 8e 44 00 00 	lea    0x448e(%rip),%r11        # 40746c <__Tbl_addr+0x77c>
  402fde:	4c 89 15 4b 67 00 00 	mov    %r10,0x674b(%rip)        # 409730 <proc_info_features+0x550>
  402fe5:	4c 8d 15 88 44 00 00 	lea    0x4488(%rip),%r10        # 407474 <__Tbl_addr+0x784>
  402fec:	4c 89 1d 2d 67 00 00 	mov    %r11,0x672d(%rip)        # 409720 <proc_info_features+0x540>
  402ff3:	4c 8d 1d 8e 44 00 00 	lea    0x448e(%rip),%r11        # 407488 <__Tbl_addr+0x798>
  402ffa:	4c 89 15 47 67 00 00 	mov    %r10,0x6747(%rip)        # 409748 <proc_info_features+0x568>
  403001:	4c 8d 15 94 44 00 00 	lea    0x4494(%rip),%r10        # 40749c <__Tbl_addr+0x7ac>
  403008:	4c 89 1d 29 67 00 00 	mov    %r11,0x6729(%rip)        # 409738 <proc_info_features+0x558>
  40300f:	4c 8d 1d 92 44 00 00 	lea    0x4492(%rip),%r11        # 4074a8 <__Tbl_addr+0x7b8>
  403016:	4c 89 15 43 67 00 00 	mov    %r10,0x6743(%rip)        # 409760 <proc_info_features+0x580>
  40301d:	4c 8d 15 90 44 00 00 	lea    0x4490(%rip),%r10        # 4074b4 <__Tbl_addr+0x7c4>
  403024:	4c 89 1d 25 67 00 00 	mov    %r11,0x6725(%rip)        # 409750 <proc_info_features+0x570>
  40302b:	4c 8d 1d 8e 44 00 00 	lea    0x448e(%rip),%r11        # 4074c0 <__Tbl_addr+0x7d0>
  403032:	4c 89 15 3f 67 00 00 	mov    %r10,0x673f(%rip)        # 409778 <proc_info_features+0x598>
  403039:	4c 8d 15 8c 44 00 00 	lea    0x448c(%rip),%r10        # 4074cc <__Tbl_addr+0x7dc>
  403040:	4c 89 1d 21 67 00 00 	mov    %r11,0x6721(%rip)        # 409768 <proc_info_features+0x588>
  403047:	4c 8d 1d 86 44 00 00 	lea    0x4486(%rip),%r11        # 4074d4 <__Tbl_addr+0x7e4>
  40304e:	4c 89 15 3b 67 00 00 	mov    %r10,0x673b(%rip)        # 409790 <proc_info_features+0x5b0>
  403055:	4c 8d 15 80 44 00 00 	lea    0x4480(%rip),%r10        # 4074dc <__Tbl_addr+0x7ec>
  40305c:	4c 89 1d 1d 67 00 00 	mov    %r11,0x671d(%rip)        # 409780 <proc_info_features+0x5a0>
  403063:	4c 8d 1d 7e 44 00 00 	lea    0x447e(%rip),%r11        # 4074e8 <__Tbl_addr+0x7f8>
  40306a:	4c 89 15 37 67 00 00 	mov    %r10,0x6737(%rip)        # 4097a8 <proc_info_features+0x5c8>
  403071:	4c 8d 15 7c 44 00 00 	lea    0x447c(%rip),%r10        # 4074f4 <__Tbl_addr+0x804>
  403078:	4c 89 1d 19 67 00 00 	mov    %r11,0x6719(%rip)        # 409798 <proc_info_features+0x5b8>
  40307f:	4c 8d 1d 76 44 00 00 	lea    0x4476(%rip),%r11        # 4074fc <__Tbl_addr+0x80c>
  403086:	4c 89 15 33 67 00 00 	mov    %r10,0x6733(%rip)        # 4097c0 <proc_info_features+0x5e0>
  40308d:	4c 8d 15 70 44 00 00 	lea    0x4470(%rip),%r10        # 407504 <__Tbl_addr+0x814>
  403094:	4c 89 1d 15 67 00 00 	mov    %r11,0x6715(%rip)        # 4097b0 <proc_info_features+0x5d0>
  40309b:	4c 8d 1d 6e 44 00 00 	lea    0x446e(%rip),%r11        # 407510 <__Tbl_addr+0x820>
  4030a2:	4c 89 15 2f 67 00 00 	mov    %r10,0x672f(%rip)        # 4097d8 <proc_info_features+0x5f8>
  4030a9:	4c 8d 15 6c 44 00 00 	lea    0x446c(%rip),%r10        # 40751c <__Tbl_addr+0x82c>
  4030b0:	4c 89 1d 11 67 00 00 	mov    %r11,0x6711(%rip)        # 4097c8 <proc_info_features+0x5e8>
  4030b7:	4c 8d 1d 66 44 00 00 	lea    0x4466(%rip),%r11        # 407524 <__Tbl_addr+0x834>
  4030be:	4c 89 15 2b 67 00 00 	mov    %r10,0x672b(%rip)        # 4097f0 <proc_info_features+0x610>
  4030c5:	4c 8d 15 60 44 00 00 	lea    0x4460(%rip),%r10        # 40752c <__Tbl_addr+0x83c>
  4030cc:	4c 89 1d 0d 67 00 00 	mov    %r11,0x670d(%rip)        # 4097e0 <proc_info_features+0x600>
  4030d3:	4c 8d 1d 5a 44 00 00 	lea    0x445a(%rip),%r11        # 407534 <__Tbl_addr+0x844>
  4030da:	4c 89 15 27 67 00 00 	mov    %r10,0x6727(%rip)        # 409808 <proc_info_features+0x628>
  4030e1:	4c 8d 15 58 44 00 00 	lea    0x4458(%rip),%r10        # 407540 <__Tbl_addr+0x850>
  4030e8:	4c 89 1d 09 67 00 00 	mov    %r11,0x6709(%rip)        # 4097f8 <proc_info_features+0x618>
  4030ef:	4c 8d 1d 56 44 00 00 	lea    0x4456(%rip),%r11        # 40754c <__Tbl_addr+0x85c>
  4030f6:	4c 89 15 23 67 00 00 	mov    %r10,0x6723(%rip)        # 409820 <proc_info_features+0x640>
  4030fd:	4c 8d 15 54 44 00 00 	lea    0x4454(%rip),%r10        # 407558 <__Tbl_addr+0x868>
  403104:	4c 89 1d 05 67 00 00 	mov    %r11,0x6705(%rip)        # 409810 <proc_info_features+0x630>
  40310b:	48 8d 05 52 44 00 00 	lea    0x4452(%rip),%rax        # 407564 <__Tbl_addr+0x874>
  403112:	4c 89 15 1f 67 00 00 	mov    %r10,0x671f(%rip)        # 409838 <proc_info_features+0x658>
  403119:	4c 8d 1d 54 44 00 00 	lea    0x4454(%rip),%r11        # 407574 <__Tbl_addr+0x884>
  403120:	4c 8d 15 59 44 00 00 	lea    0x4459(%rip),%r10        # 407580 <__Tbl_addr+0x890>
  403127:	48 89 05 ca 60 00 00 	mov    %rax,0x60ca(%rip)        # 4091f8 <proc_info_features+0x18>
  40312e:	b8 01 00 00 00       	mov    $0x1,%eax
  403133:	4c 89 1d ee 66 00 00 	mov    %r11,0x66ee(%rip)        # 409828 <proc_info_features+0x648>
  40313a:	4c 8d 1d 4b 44 00 00 	lea    0x444b(%rip),%r11        # 40758c <__Tbl_addr+0x89c>
  403141:	4c 89 15 08 67 00 00 	mov    %r10,0x6708(%rip)        # 409850 <proc_info_features+0x670>
  403148:	4c 8d 15 49 44 00 00 	lea    0x4449(%rip),%r10        # 407598 <__Tbl_addr+0x8a8>
  40314f:	48 8b 54 24 f8       	mov    -0x8(%rsp),%rdx
  403154:	c7 05 a2 60 00 00 00 	movl   $0x0,0x60a2(%rip)        # 409200 <proc_info_features+0x20>
  40315b:	00 00 00 
  40315e:	89 05 b4 60 00 00    	mov    %eax,0x60b4(%rip)        # 409218 <proc_info_features+0x38>
  403164:	c7 05 c2 60 00 00 02 	movl   $0x2,0x60c2(%rip)        # 409230 <proc_info_features+0x50>
  40316b:	00 00 00 
  40316e:	c7 05 d0 60 00 00 03 	movl   $0x3,0x60d0(%rip)        # 409248 <proc_info_features+0x68>
  403175:	00 00 00 
  403178:	c7 05 de 60 00 00 04 	movl   $0x4,0x60de(%rip)        # 409260 <proc_info_features+0x80>
  40317f:	00 00 00 
  403182:	c7 05 ec 60 00 00 05 	movl   $0x5,0x60ec(%rip)        # 409278 <proc_info_features+0x98>
  403189:	00 00 00 
  40318c:	c7 05 fa 60 00 00 06 	movl   $0x6,0x60fa(%rip)        # 409290 <proc_info_features+0xb0>
  403193:	00 00 00 
  403196:	c7 05 08 61 00 00 07 	movl   $0x7,0x6108(%rip)        # 4092a8 <proc_info_features+0xc8>
  40319d:	00 00 00 
  4031a0:	c7 05 16 61 00 00 08 	movl   $0x8,0x6116(%rip)        # 4092c0 <proc_info_features+0xe0>
  4031a7:	00 00 00 
  4031aa:	c7 05 24 61 00 00 09 	movl   $0x9,0x6124(%rip)        # 4092d8 <proc_info_features+0xf8>
  4031b1:	00 00 00 
  4031b4:	c7 05 32 61 00 00 0a 	movl   $0xa,0x6132(%rip)        # 4092f0 <proc_info_features+0x110>
  4031bb:	00 00 00 
  4031be:	c7 05 40 61 00 00 0b 	movl   $0xb,0x6140(%rip)        # 409308 <proc_info_features+0x128>
  4031c5:	00 00 00 
  4031c8:	c7 05 4e 61 00 00 0c 	movl   $0xc,0x614e(%rip)        # 409320 <proc_info_features+0x140>
  4031cf:	00 00 00 
  4031d2:	c7 05 5c 61 00 00 0d 	movl   $0xd,0x615c(%rip)        # 409338 <proc_info_features+0x158>
  4031d9:	00 00 00 
  4031dc:	c7 05 6a 61 00 00 0e 	movl   $0xe,0x616a(%rip)        # 409350 <proc_info_features+0x170>
  4031e3:	00 00 00 
  4031e6:	c7 05 78 61 00 00 10 	movl   $0x10,0x6178(%rip)        # 409368 <proc_info_features+0x188>
  4031ed:	00 00 00 
  4031f0:	c7 05 86 61 00 00 0f 	movl   $0xf,0x6186(%rip)        # 409380 <proc_info_features+0x1a0>
  4031f7:	00 00 00 
  4031fa:	c7 05 94 61 00 00 11 	movl   $0x11,0x6194(%rip)        # 409398 <proc_info_features+0x1b8>
  403201:	00 00 00 
  403204:	c7 05 a2 61 00 00 12 	movl   $0x12,0x61a2(%rip)        # 4093b0 <proc_info_features+0x1d0>
  40320b:	00 00 00 
  40320e:	c7 05 b0 61 00 00 13 	movl   $0x13,0x61b0(%rip)        # 4093c8 <proc_info_features+0x1e8>
  403215:	00 00 00 
  403218:	c7 05 be 61 00 00 14 	movl   $0x14,0x61be(%rip)        # 4093e0 <proc_info_features+0x200>
  40321f:	00 00 00 
  403222:	c7 05 cc 61 00 00 15 	movl   $0x15,0x61cc(%rip)        # 4093f8 <proc_info_features+0x218>
  403229:	00 00 00 
  40322c:	c7 05 da 61 00 00 16 	movl   $0x16,0x61da(%rip)        # 409410 <proc_info_features+0x230>
  403233:	00 00 00 
  403236:	c7 05 e8 61 00 00 17 	movl   $0x17,0x61e8(%rip)        # 409428 <proc_info_features+0x248>
  40323d:	00 00 00 
  403240:	c7 05 f6 61 00 00 1b 	movl   $0x1b,0x61f6(%rip)        # 409440 <proc_info_features+0x260>
  403247:	00 00 00 
  40324a:	c7 05 04 62 00 00 18 	movl   $0x18,0x6204(%rip)        # 409458 <proc_info_features+0x278>
  403251:	00 00 00 
  403254:	c7 05 12 62 00 00 19 	movl   $0x19,0x6212(%rip)        # 409470 <proc_info_features+0x290>
  40325b:	00 00 00 
  40325e:	c7 05 20 62 00 00 1a 	movl   $0x1a,0x6220(%rip)        # 409488 <proc_info_features+0x2a8>
  403265:	00 00 00 
  403268:	c7 05 2e 62 00 00 1c 	movl   $0x1c,0x622e(%rip)        # 4094a0 <proc_info_features+0x2c0>
  40326f:	00 00 00 
  403272:	c7 05 3c 62 00 00 1d 	movl   $0x1d,0x623c(%rip)        # 4094b8 <proc_info_features+0x2d8>
  403279:	00 00 00 
  40327c:	c7 05 4a 62 00 00 1e 	movl   $0x1e,0x624a(%rip)        # 4094d0 <proc_info_features+0x2f0>
  403283:	00 00 00 
  403286:	c7 05 58 62 00 00 ff 	movl   $0xffffffff,0x6258(%rip)        # 4094e8 <proc_info_features+0x308>
  40328d:	ff ff ff 
  403290:	c7 05 66 62 00 00 20 	movl   $0x20,0x6266(%rip)        # 409500 <proc_info_features+0x320>
  403297:	00 00 00 
  40329a:	c7 05 74 62 00 00 21 	movl   $0x21,0x6274(%rip)        # 409518 <proc_info_features+0x338>
  4032a1:	00 00 00 
  4032a4:	c7 05 82 62 00 00 22 	movl   $0x22,0x6282(%rip)        # 409530 <proc_info_features+0x350>
  4032ab:	00 00 00 
  4032ae:	c7 05 90 62 00 00 23 	movl   $0x23,0x6290(%rip)        # 409548 <proc_info_features+0x368>
  4032b5:	00 00 00 
  4032b8:	c7 05 9e 62 00 00 24 	movl   $0x24,0x629e(%rip)        # 409560 <proc_info_features+0x380>
  4032bf:	00 00 00 
  4032c2:	c7 05 ac 62 00 00 25 	movl   $0x25,0x62ac(%rip)        # 409578 <proc_info_features+0x398>
  4032c9:	00 00 00 
  4032cc:	c7 05 ba 62 00 00 26 	movl   $0x26,0x62ba(%rip)        # 409590 <proc_info_features+0x3b0>
  4032d3:	00 00 00 
  4032d6:	c7 05 c8 62 00 00 27 	movl   $0x27,0x62c8(%rip)        # 4095a8 <proc_info_features+0x3c8>
  4032dd:	00 00 00 
  4032e0:	c7 05 d6 62 00 00 28 	movl   $0x28,0x62d6(%rip)        # 4095c0 <proc_info_features+0x3e0>
  4032e7:	00 00 00 
  4032ea:	c7 05 e4 62 00 00 29 	movl   $0x29,0x62e4(%rip)        # 4095d8 <proc_info_features+0x3f8>
  4032f1:	00 00 00 
  4032f4:	c7 05 f2 62 00 00 2a 	movl   $0x2a,0x62f2(%rip)        # 4095f0 <proc_info_features+0x410>
  4032fb:	00 00 00 
  4032fe:	c7 05 00 63 00 00 2b 	movl   $0x2b,0x6300(%rip)        # 409608 <proc_info_features+0x428>
  403305:	00 00 00 
  403308:	c7 05 0e 63 00 00 2c 	movl   $0x2c,0x630e(%rip)        # 409620 <proc_info_features+0x440>
  40330f:	00 00 00 
  403312:	c7 05 1c 63 00 00 2d 	movl   $0x2d,0x631c(%rip)        # 409638 <proc_info_features+0x458>
  403319:	00 00 00 
  40331c:	c7 05 2a 63 00 00 2e 	movl   $0x2e,0x632a(%rip)        # 409650 <proc_info_features+0x470>
  403323:	00 00 00 
  403326:	c7 05 38 63 00 00 2f 	movl   $0x2f,0x6338(%rip)        # 409668 <proc_info_features+0x488>
  40332d:	00 00 00 
  403330:	c7 05 46 63 00 00 30 	movl   $0x30,0x6346(%rip)        # 409680 <proc_info_features+0x4a0>
  403337:	00 00 00 
  40333a:	c7 05 54 63 00 00 31 	movl   $0x31,0x6354(%rip)        # 409698 <proc_info_features+0x4b8>
  403341:	00 00 00 
  403344:	c7 05 62 63 00 00 32 	movl   $0x32,0x6362(%rip)        # 4096b0 <proc_info_features+0x4d0>
  40334b:	00 00 00 
  40334e:	c7 05 70 63 00 00 33 	movl   $0x33,0x6370(%rip)        # 4096c8 <proc_info_features+0x4e8>
  403355:	00 00 00 
  403358:	c7 05 7e 63 00 00 34 	movl   $0x34,0x637e(%rip)        # 4096e0 <proc_info_features+0x500>
  40335f:	00 00 00 
  403362:	c7 05 8c 63 00 00 35 	movl   $0x35,0x638c(%rip)        # 4096f8 <proc_info_features+0x518>
  403369:	00 00 00 
  40336c:	c7 05 9a 63 00 00 36 	movl   $0x36,0x639a(%rip)        # 409710 <proc_info_features+0x530>
  403373:	00 00 00 
  403376:	c7 05 a8 63 00 00 37 	movl   $0x37,0x63a8(%rip)        # 409728 <proc_info_features+0x548>
  40337d:	00 00 00 
  403380:	c7 05 b6 63 00 00 38 	movl   $0x38,0x63b6(%rip)        # 409740 <proc_info_features+0x560>
  403387:	00 00 00 
  40338a:	c7 05 c4 63 00 00 3c 	movl   $0x3c,0x63c4(%rip)        # 409758 <proc_info_features+0x578>
  403391:	00 00 00 
  403394:	c7 05 d2 63 00 00 40 	movl   $0x40,0x63d2(%rip)        # 409770 <proc_info_features+0x590>
  40339b:	00 00 00 
  40339e:	c7 05 e0 63 00 00 41 	movl   $0x41,0x63e0(%rip)        # 409788 <proc_info_features+0x5a8>
  4033a5:	00 00 00 
  4033a8:	c7 05 ee 63 00 00 42 	movl   $0x42,0x63ee(%rip)        # 4097a0 <proc_info_features+0x5c0>
  4033af:	00 00 00 
  4033b2:	c7 05 fc 63 00 00 43 	movl   $0x43,0x63fc(%rip)        # 4097b8 <proc_info_features+0x5d8>
  4033b9:	00 00 00 
  4033bc:	c7 05 0a 64 00 00 44 	movl   $0x44,0x640a(%rip)        # 4097d0 <proc_info_features+0x5f0>
  4033c3:	00 00 00 
  4033c6:	c7 05 18 64 00 00 45 	movl   $0x45,0x6418(%rip)        # 4097e8 <proc_info_features+0x608>
  4033cd:	00 00 00 
  4033d0:	c7 05 26 64 00 00 46 	movl   $0x46,0x6426(%rip)        # 409800 <proc_info_features+0x620>
  4033d7:	00 00 00 
  4033da:	c7 05 34 64 00 00 47 	movl   $0x47,0x6434(%rip)        # 409818 <proc_info_features+0x638>
  4033e1:	00 00 00 
  4033e4:	c7 05 42 64 00 00 48 	movl   $0x48,0x6442(%rip)        # 409830 <proc_info_features+0x650>
  4033eb:	00 00 00 
  4033ee:	c7 05 50 64 00 00 49 	movl   $0x49,0x6450(%rip)        # 409848 <proc_info_features+0x668>
  4033f5:	00 00 00 
  4033f8:	4c 89 1d 41 64 00 00 	mov    %r11,0x6441(%rip)        # 409840 <proc_info_features+0x660>
  4033ff:	c7 05 57 64 00 00 4a 	movl   $0x4a,0x6457(%rip)        # 409860 <proc_info_features+0x680>
  403406:	00 00 00 
  403409:	4c 89 15 58 64 00 00 	mov    %r10,0x6458(%rip)        # 409868 <proc_info_features+0x688>
  403410:	4c 8d 15 85 41 00 00 	lea    0x4185(%rip),%r10        # 40759c <__Tbl_addr+0x8ac>
  403417:	4c 89 15 3a 64 00 00 	mov    %r10,0x643a(%rip)        # 409858 <proc_info_features+0x678>
  40341e:	4c 8d 15 7b 41 00 00 	lea    0x417b(%rip),%r10        # 4075a0 <__Tbl_addr+0x8b0>
  403425:	4c 8d 1d 7c 41 00 00 	lea    0x417c(%rip),%r11        # 4075a8 <__Tbl_addr+0x8b8>
  40342c:	c7 05 42 64 00 00 4b 	movl   $0x4b,0x6442(%rip)        # 409878 <proc_info_features+0x698>
  403433:	00 00 00 
  403436:	4c 89 15 43 64 00 00 	mov    %r10,0x6443(%rip)        # 409880 <proc_info_features+0x6a0>
  40343d:	4c 89 1d 2c 64 00 00 	mov    %r11,0x642c(%rip)        # 409870 <proc_info_features+0x690>
  403444:	89 05 5e 64 00 00    	mov    %eax,0x645e(%rip)        # 4098a8 <__libirc_isa_info_initialized>
  40344a:	c3                   	retq   
  40344b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403450 <__intel_cpu_features_init_x>:
  403450:	f3 0f 1e fa          	endbr64 
  403454:	33 c0                	xor    %eax,%eax
  403456:	e9 15 00 00 00       	jmpq   403470 <__intel_cpu_features_init_body>
  40345b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403460 <__intel_cpu_features_init>:
  403460:	f3 0f 1e fa          	endbr64 
  403464:	b8 01 00 00 00       	mov    $0x1,%eax
  403469:	e9 02 00 00 00       	jmpq   403470 <__intel_cpu_features_init_body>
  40346e:	66 90                	xchg   %ax,%ax

0000000000403470 <__intel_cpu_features_init_body>:
  403470:	52                   	push   %rdx
  403471:	51                   	push   %rcx
  403472:	53                   	push   %rbx
  403473:	56                   	push   %rsi
  403474:	57                   	push   %rdi
  403475:	41 50                	push   %r8
  403477:	41 51                	push   %r9
  403479:	41 54                	push   %r12
  40347b:	41 55                	push   %r13
  40347d:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
  403484:	41 89 c4             	mov    %eax,%r12d
  403487:	0f 11 84 24 f0 00 00 	movups %xmm0,0xf0(%rsp)
  40348e:	00 
  40348f:	45 32 ed             	xor    %r13b,%r13b
  403492:	44 0f 11 bc 24 10 01 	movups %xmm15,0x110(%rsp)
  403499:	00 00 
  40349b:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40349f:	44 0f 11 b4 24 00 01 	movups %xmm14,0x100(%rsp)
  4034a6:	00 00 
  4034a8:	44 0f 11 ac 24 e0 00 	movups %xmm13,0xe0(%rsp)
  4034af:	00 00 
  4034b1:	44 0f 11 a4 24 d0 00 	movups %xmm12,0xd0(%rsp)
  4034b8:	00 00 
  4034ba:	44 0f 11 9c 24 c0 00 	movups %xmm11,0xc0(%rsp)
  4034c1:	00 00 
  4034c3:	44 0f 11 94 24 b0 00 	movups %xmm10,0xb0(%rsp)
  4034ca:	00 00 
  4034cc:	44 0f 11 8c 24 a0 00 	movups %xmm9,0xa0(%rsp)
  4034d3:	00 00 
  4034d5:	44 0f 11 84 24 90 00 	movups %xmm8,0x90(%rsp)
  4034dc:	00 00 
  4034de:	0f 11 bc 24 80 00 00 	movups %xmm7,0x80(%rsp)
  4034e5:	00 
  4034e6:	0f 11 74 24 70       	movups %xmm6,0x70(%rsp)
  4034eb:	0f 11 6c 24 60       	movups %xmm5,0x60(%rsp)
  4034f0:	0f 11 64 24 50       	movups %xmm4,0x50(%rsp)
  4034f5:	0f 11 5c 24 40       	movups %xmm3,0x40(%rsp)
  4034fa:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
  4034ff:	0f 11 4c 24 20       	movups %xmm1,0x20(%rsp)
  403504:	f3 0f 7f 04 24       	movdqu %xmm0,(%rsp)
  403509:	f3 0f 7f 44 24 10    	movdqu %xmm0,0x10(%rsp)
  40350f:	b9 01 00 00 00       	mov    $0x1,%ecx
  403514:	48 8d 04 24          	lea    (%rsp),%rax
  403518:	e8 73 f4 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  40351d:	85 c0                	test   %eax,%eax
  40351f:	0f 85 70 09 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403525:	33 c0                	xor    %eax,%eax
  403527:	0f a2                	cpuid  
  403529:	89 84 24 20 01 00 00 	mov    %eax,0x120(%rsp)
  403530:	89 9c 24 24 01 00 00 	mov    %ebx,0x124(%rsp)
  403537:	89 8c 24 28 01 00 00 	mov    %ecx,0x128(%rsp)
  40353e:	89 94 24 2c 01 00 00 	mov    %edx,0x12c(%rsp)
  403545:	83 bc 24 20 01 00 00 	cmpl   $0x0,0x120(%rsp)
  40354c:	00 
  40354d:	0f 84 b4 0a 00 00    	je     404007 <__intel_cpu_features_init_body+0xb97>
  403553:	41 83 fc 01          	cmp    $0x1,%r12d
  403557:	0f 84 5c 0b 00 00    	je     4040b9 <__intel_cpu_features_init_body+0xc49>
  40355d:	b8 01 00 00 00       	mov    $0x1,%eax
  403562:	0f a2                	cpuid  
  403564:	89 ce                	mov    %ecx,%esi
  403566:	f6 c2 01             	test   $0x1,%dl
  403569:	74 16                	je     403581 <__intel_cpu_features_init_body+0x111>
  40356b:	b9 02 00 00 00       	mov    $0x2,%ecx
  403570:	48 8d 04 24          	lea    (%rsp),%rax
  403574:	e8 17 f4 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403579:	85 c0                	test   %eax,%eax
  40357b:	0f 85 14 09 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403581:	f7 c2 00 80 00 00    	test   $0x8000,%edx
  403587:	74 16                	je     40359f <__intel_cpu_features_init_body+0x12f>
  403589:	b9 03 00 00 00       	mov    $0x3,%ecx
  40358e:	48 8d 04 24          	lea    (%rsp),%rax
  403592:	e8 f9 f3 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403597:	85 c0                	test   %eax,%eax
  403599:	0f 85 f6 08 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  40359f:	f7 c2 00 00 80 00    	test   $0x800000,%edx
  4035a5:	74 16                	je     4035bd <__intel_cpu_features_init_body+0x14d>
  4035a7:	b9 04 00 00 00       	mov    $0x4,%ecx
  4035ac:	48 8d 04 24          	lea    (%rsp),%rax
  4035b0:	e8 db f3 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4035b5:	85 c0                	test   %eax,%eax
  4035b7:	0f 85 d8 08 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4035bd:	f7 c2 00 00 00 01    	test   $0x1000000,%edx
  4035c3:	75 11                	jne    4035d6 <__intel_cpu_features_init_body+0x166>
  4035c5:	f7 c6 00 00 00 40    	test   $0x40000000,%esi
  4035cb:	0f 85 82 01 00 00    	jne    403753 <__intel_cpu_features_init_body+0x2e3>
  4035d1:	e9 98 01 00 00       	jmpq   40376e <__intel_cpu_features_init_body+0x2fe>
  4035d6:	b9 05 00 00 00       	mov    $0x5,%ecx
  4035db:	48 8d 04 24          	lea    (%rsp),%rax
  4035df:	e8 ac f3 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4035e4:	85 c0                	test   %eax,%eax
  4035e6:	0f 85 a9 08 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4035ec:	f7 c2 00 00 00 02    	test   $0x2000000,%edx
  4035f2:	74 16                	je     40360a <__intel_cpu_features_init_body+0x19a>
  4035f4:	b9 06 00 00 00       	mov    $0x6,%ecx
  4035f9:	48 8d 04 24          	lea    (%rsp),%rax
  4035fd:	e8 8e f3 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403602:	85 c0                	test   %eax,%eax
  403604:	0f 85 8b 08 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  40360a:	f7 c2 00 00 00 04    	test   $0x4000000,%edx
  403610:	74 16                	je     403628 <__intel_cpu_features_init_body+0x1b8>
  403612:	b9 07 00 00 00       	mov    $0x7,%ecx
  403617:	48 8d 04 24          	lea    (%rsp),%rax
  40361b:	e8 70 f3 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403620:	85 c0                	test   %eax,%eax
  403622:	0f 85 6d 08 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403628:	f7 c6 01 00 00 00    	test   $0x1,%esi
  40362e:	74 16                	je     403646 <__intel_cpu_features_init_body+0x1d6>
  403630:	b9 08 00 00 00       	mov    $0x8,%ecx
  403635:	48 8d 04 24          	lea    (%rsp),%rax
  403639:	e8 52 f3 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  40363e:	85 c0                	test   %eax,%eax
  403640:	0f 85 4f 08 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403646:	f7 c6 00 02 00 00    	test   $0x200,%esi
  40364c:	74 16                	je     403664 <__intel_cpu_features_init_body+0x1f4>
  40364e:	b9 09 00 00 00       	mov    $0x9,%ecx
  403653:	48 8d 04 24          	lea    (%rsp),%rax
  403657:	e8 34 f3 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  40365c:	85 c0                	test   %eax,%eax
  40365e:	0f 85 31 08 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403664:	f7 c6 00 00 40 00    	test   $0x400000,%esi
  40366a:	74 16                	je     403682 <__intel_cpu_features_init_body+0x212>
  40366c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403671:	48 8d 04 24          	lea    (%rsp),%rax
  403675:	e8 16 f3 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  40367a:	85 c0                	test   %eax,%eax
  40367c:	0f 85 13 08 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403682:	f7 c6 00 00 08 00    	test   $0x80000,%esi
  403688:	74 16                	je     4036a0 <__intel_cpu_features_init_body+0x230>
  40368a:	b9 0a 00 00 00       	mov    $0xa,%ecx
  40368f:	48 8d 04 24          	lea    (%rsp),%rax
  403693:	e8 f8 f2 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403698:	85 c0                	test   %eax,%eax
  40369a:	0f 85 f5 07 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4036a0:	f7 c6 00 00 10 00    	test   $0x100000,%esi
  4036a6:	74 16                	je     4036be <__intel_cpu_features_init_body+0x24e>
  4036a8:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4036ad:	48 8d 04 24          	lea    (%rsp),%rax
  4036b1:	e8 da f2 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4036b6:	85 c0                	test   %eax,%eax
  4036b8:	0f 85 d7 07 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4036be:	f7 c6 00 00 80 00    	test   $0x800000,%esi
  4036c4:	74 16                	je     4036dc <__intel_cpu_features_init_body+0x26c>
  4036c6:	b9 0d 00 00 00       	mov    $0xd,%ecx
  4036cb:	48 8d 04 24          	lea    (%rsp),%rax
  4036cf:	e8 bc f2 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4036d4:	85 c0                	test   %eax,%eax
  4036d6:	0f 85 b9 07 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4036dc:	f7 c6 02 00 00 00    	test   $0x2,%esi
  4036e2:	74 16                	je     4036fa <__intel_cpu_features_init_body+0x28a>
  4036e4:	b9 0e 00 00 00       	mov    $0xe,%ecx
  4036e9:	48 8d 04 24          	lea    (%rsp),%rax
  4036ed:	e8 9e f2 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4036f2:	85 c0                	test   %eax,%eax
  4036f4:	0f 85 9b 07 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4036fa:	f7 c6 00 00 00 02    	test   $0x2000000,%esi
  403700:	74 16                	je     403718 <__intel_cpu_features_init_body+0x2a8>
  403702:	b9 0f 00 00 00       	mov    $0xf,%ecx
  403707:	48 8d 04 24          	lea    (%rsp),%rax
  40370b:	e8 80 f2 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403710:	85 c0                	test   %eax,%eax
  403712:	0f 85 7d 07 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403718:	b8 07 00 00 00       	mov    $0x7,%eax
  40371d:	33 c9                	xor    %ecx,%ecx
  40371f:	0f a2                	cpuid  
  403721:	41 b5 01             	mov    $0x1,%r13b
  403724:	41 89 d9             	mov    %ebx,%r9d
  403727:	89 d7                	mov    %edx,%edi
  403729:	41 89 c8             	mov    %ecx,%r8d
  40372c:	41 f7 c1 00 00 00 20 	test   $0x20000000,%r9d
  403733:	74 16                	je     40374b <__intel_cpu_features_init_body+0x2db>
  403735:	b9 24 00 00 00       	mov    $0x24,%ecx
  40373a:	48 8d 04 24          	lea    (%rsp),%rax
  40373e:	e8 4d f2 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403743:	85 c0                	test   %eax,%eax
  403745:	0f 85 4a 07 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  40374b:	f7 c6 00 00 00 40    	test   $0x40000000,%esi
  403751:	74 2c                	je     40377f <__intel_cpu_features_init_body+0x30f>
  403753:	b9 12 00 00 00       	mov    $0x12,%ecx
  403758:	48 8d 04 24          	lea    (%rsp),%rax
  40375c:	e8 2f f2 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403761:	85 c0                	test   %eax,%eax
  403763:	0f 85 2c 07 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403769:	45 84 ed             	test   %r13b,%r13b
  40376c:	75 11                	jne    40377f <__intel_cpu_features_init_body+0x30f>
  40376e:	b8 07 00 00 00       	mov    $0x7,%eax
  403773:	33 c9                	xor    %ecx,%ecx
  403775:	0f a2                	cpuid  
  403777:	89 d7                	mov    %edx,%edi
  403779:	41 89 c8             	mov    %ecx,%r8d
  40377c:	41 89 d9             	mov    %ebx,%r9d
  40377f:	44 89 c8             	mov    %r9d,%eax
  403782:	25 08 01 00 00       	and    $0x108,%eax
  403787:	3d 08 01 00 00       	cmp    $0x108,%eax
  40378c:	75 16                	jne    4037a4 <__intel_cpu_features_init_body+0x334>
  40378e:	b9 14 00 00 00       	mov    $0x14,%ecx
  403793:	48 8d 04 24          	lea    (%rsp),%rax
  403797:	e8 f4 f1 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  40379c:	85 c0                	test   %eax,%eax
  40379e:	0f 85 f1 06 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4037a4:	41 f7 c1 04 00 00 00 	test   $0x4,%r9d
  4037ab:	74 16                	je     4037c3 <__intel_cpu_features_init_body+0x353>
  4037ad:	b9 36 00 00 00       	mov    $0x36,%ecx
  4037b2:	48 8d 04 24          	lea    (%rsp),%rax
  4037b6:	e8 d5 f1 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4037bb:	85 c0                	test   %eax,%eax
  4037bd:	0f 85 d2 06 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4037c3:	41 f7 c1 10 00 00 00 	test   $0x10,%r9d
  4037ca:	74 16                	je     4037e2 <__intel_cpu_features_init_body+0x372>
  4037cc:	b9 16 00 00 00       	mov    $0x16,%ecx
  4037d1:	48 8d 04 24          	lea    (%rsp),%rax
  4037d5:	e8 b6 f1 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4037da:	85 c0                	test   %eax,%eax
  4037dc:	0f 85 b3 06 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4037e2:	41 f7 c1 00 08 00 00 	test   $0x800,%r9d
  4037e9:	74 16                	je     403801 <__intel_cpu_features_init_body+0x391>
  4037eb:	b9 17 00 00 00       	mov    $0x17,%ecx
  4037f0:	48 8d 04 24          	lea    (%rsp),%rax
  4037f4:	e8 97 f1 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4037f9:	85 c0                	test   %eax,%eax
  4037fb:	0f 85 94 06 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403801:	41 f7 c1 00 00 08 00 	test   $0x80000,%r9d
  403808:	74 16                	je     403820 <__intel_cpu_features_init_body+0x3b0>
  40380a:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  40380f:	48 8d 04 24          	lea    (%rsp),%rax
  403813:	e8 78 f1 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403818:	85 c0                	test   %eax,%eax
  40381a:	0f 85 75 06 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403820:	41 f7 c1 00 00 04 00 	test   $0x40000,%r9d
  403827:	74 16                	je     40383f <__intel_cpu_features_init_body+0x3cf>
  403829:	b9 1e 00 00 00       	mov    $0x1e,%ecx
  40382e:	48 8d 04 24          	lea    (%rsp),%rax
  403832:	e8 59 f1 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403837:	85 c0                	test   %eax,%eax
  403839:	0f 85 56 06 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  40383f:	41 f7 c1 00 00 00 01 	test   $0x1000000,%r9d
  403846:	74 16                	je     40385e <__intel_cpu_features_init_body+0x3ee>
  403848:	b9 32 00 00 00       	mov    $0x32,%ecx
  40384d:	48 8d 04 24          	lea    (%rsp),%rax
  403851:	e8 3a f1 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403856:	85 c0                	test   %eax,%eax
  403858:	0f 85 37 06 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  40385e:	b8 01 00 00 80       	mov    $0x80000001,%eax
  403863:	0f a2                	cpuid  
  403865:	f6 c1 20             	test   $0x20,%cl
  403868:	74 16                	je     403880 <__intel_cpu_features_init_body+0x410>
  40386a:	b9 15 00 00 00       	mov    $0x15,%ecx
  40386f:	48 8d 04 24          	lea    (%rsp),%rax
  403873:	e8 18 f1 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403878:	85 c0                	test   %eax,%eax
  40387a:	0f 85 15 06 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403880:	b8 08 00 00 80       	mov    $0x80000008,%eax
  403885:	0f a2                	cpuid  
  403887:	f7 c3 00 02 00 00    	test   $0x200,%ebx
  40388d:	74 16                	je     4038a5 <__intel_cpu_features_init_body+0x435>
  40388f:	b9 37 00 00 00       	mov    $0x37,%ecx
  403894:	48 8d 04 24          	lea    (%rsp),%rax
  403898:	e8 f3 f0 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  40389d:	85 c0                	test   %eax,%eax
  40389f:	0f 85 f0 05 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4038a5:	41 f7 c0 20 00 00 00 	test   $0x20,%r8d
  4038ac:	74 16                	je     4038c4 <__intel_cpu_features_init_body+0x454>
  4038ae:	b9 3e 00 00 00       	mov    $0x3e,%ecx
  4038b3:	48 8d 04 24          	lea    (%rsp),%rax
  4038b7:	e8 d4 f0 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4038bc:	85 c0                	test   %eax,%eax
  4038be:	0f 85 d1 05 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4038c4:	41 f7 c0 80 00 00 00 	test   $0x80,%r8d
  4038cb:	74 16                	je     4038e3 <__intel_cpu_features_init_body+0x473>
  4038cd:	b9 35 00 00 00       	mov    $0x35,%ecx
  4038d2:	48 8d 04 24          	lea    (%rsp),%rax
  4038d6:	e8 b5 f0 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4038db:	85 c0                	test   %eax,%eax
  4038dd:	0f 85 b2 05 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4038e3:	41 f7 c0 00 01 00 00 	test   $0x100,%r8d
  4038ea:	74 16                	je     403902 <__intel_cpu_features_init_body+0x492>
  4038ec:	b9 2e 00 00 00       	mov    $0x2e,%ecx
  4038f1:	48 8d 04 24          	lea    (%rsp),%rax
  4038f5:	e8 96 f0 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4038fa:	85 c0                	test   %eax,%eax
  4038fc:	0f 85 93 05 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403902:	41 f7 c0 00 00 40 00 	test   $0x400000,%r8d
  403909:	74 16                	je     403921 <__intel_cpu_features_init_body+0x4b1>
  40390b:	b9 33 00 00 00       	mov    $0x33,%ecx
  403910:	48 8d 04 24          	lea    (%rsp),%rax
  403914:	e8 77 f0 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403919:	85 c0                	test   %eax,%eax
  40391b:	0f 85 74 05 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403921:	41 f7 c0 00 00 00 01 	test   $0x1000000,%r8d
  403928:	74 16                	je     403940 <__intel_cpu_features_init_body+0x4d0>
  40392a:	b9 3b 00 00 00       	mov    $0x3b,%ecx
  40392f:	48 8d 04 24          	lea    (%rsp),%rax
  403933:	e8 58 f0 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403938:	85 c0                	test   %eax,%eax
  40393a:	0f 85 55 05 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403940:	41 f7 c0 00 00 00 08 	test   $0x8000000,%r8d
  403947:	74 16                	je     40395f <__intel_cpu_features_init_body+0x4ef>
  403949:	b9 3c 00 00 00       	mov    $0x3c,%ecx
  40394e:	48 8d 04 24          	lea    (%rsp),%rax
  403952:	e8 39 f0 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403957:	85 c0                	test   %eax,%eax
  403959:	0f 85 36 05 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  40395f:	41 f7 c0 00 00 00 10 	test   $0x10000000,%r8d
  403966:	74 16                	je     40397e <__intel_cpu_features_init_body+0x50e>
  403968:	b9 3d 00 00 00       	mov    $0x3d,%ecx
  40396d:	48 8d 04 24          	lea    (%rsp),%rax
  403971:	e8 1a f0 ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403976:	85 c0                	test   %eax,%eax
  403978:	0f 85 17 05 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  40397e:	41 f7 c0 00 00 00 20 	test   $0x20000000,%r8d
  403985:	74 16                	je     40399d <__intel_cpu_features_init_body+0x52d>
  403987:	b9 40 00 00 00       	mov    $0x40,%ecx
  40398c:	48 8d 04 24          	lea    (%rsp),%rax
  403990:	e8 fb ef ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403995:	85 c0                	test   %eax,%eax
  403997:	0f 85 f8 04 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  40399d:	f7 c7 00 00 10 00    	test   $0x100000,%edi
  4039a3:	74 16                	je     4039bb <__intel_cpu_features_init_body+0x54b>
  4039a5:	b9 34 00 00 00       	mov    $0x34,%ecx
  4039aa:	48 8d 04 24          	lea    (%rsp),%rax
  4039ae:	e8 dd ef ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4039b3:	85 c0                	test   %eax,%eax
  4039b5:	0f 85 da 04 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4039bb:	f7 c7 00 00 04 00    	test   $0x40000,%edi
  4039c1:	74 16                	je     4039d9 <__intel_cpu_features_init_body+0x569>
  4039c3:	b9 38 00 00 00       	mov    $0x38,%ecx
  4039c8:	48 8d 04 24          	lea    (%rsp),%rax
  4039cc:	e8 bf ef ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4039d1:	85 c0                	test   %eax,%eax
  4039d3:	0f 85 bc 04 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4039d9:	b8 14 00 00 00       	mov    $0x14,%eax
  4039de:	33 c9                	xor    %ecx,%ecx
  4039e0:	0f a2                	cpuid  
  4039e2:	f6 c3 10             	test   $0x10,%bl
  4039e5:	74 16                	je     4039fd <__intel_cpu_features_init_body+0x58d>
  4039e7:	b9 1b 00 00 00       	mov    $0x1b,%ecx
  4039ec:	48 8d 04 24          	lea    (%rsp),%rax
  4039f0:	e8 9b ef ff ff       	callq  402990 <__libirc_set_cpu_feature>
  4039f5:	85 c0                	test   %eax,%eax
  4039f7:	0f 85 98 04 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  4039fd:	41 f7 c0 00 00 80 00 	test   $0x800000,%r8d
  403a04:	74 55                	je     403a5b <__intel_cpu_features_init_body+0x5eb>
  403a06:	b9 01 00 00 00       	mov    $0x1,%ecx
  403a0b:	48 8d 04 24          	lea    (%rsp),%rax
  403a0f:	e8 7c ef ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403a14:	85 c0                	test   %eax,%eax
  403a16:	0f 85 79 04 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403a1c:	b8 19 00 00 00       	mov    $0x19,%eax
  403a21:	33 c9                	xor    %ecx,%ecx
  403a23:	0f a2                	cpuid  
  403a25:	f6 c3 01             	test   $0x1,%bl
  403a28:	74 16                	je     403a40 <__intel_cpu_features_init_body+0x5d0>
  403a2a:	b9 45 00 00 00       	mov    $0x45,%ecx
  403a2f:	48 8d 04 24          	lea    (%rsp),%rax
  403a33:	e8 58 ef ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403a38:	85 c0                	test   %eax,%eax
  403a3a:	0f 85 55 04 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403a40:	f6 c3 04             	test   $0x4,%bl
  403a43:	74 16                	je     403a5b <__intel_cpu_features_init_body+0x5eb>
  403a45:	b9 46 00 00 00       	mov    $0x46,%ecx
  403a4a:	48 8d 04 24          	lea    (%rsp),%rax
  403a4e:	e8 3d ef ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403a53:	85 c0                	test   %eax,%eax
  403a55:	0f 85 3a 04 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403a5b:	f7 c6 00 00 00 08    	test   $0x8000000,%esi
  403a61:	0f 84 b9 04 00 00    	je     403f20 <__intel_cpu_features_init_body+0xab0>
  403a67:	b9 01 00 00 00       	mov    $0x1,%ecx
  403a6c:	48 8d 04 24          	lea    (%rsp),%rax
  403a70:	e8 1b ef ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403a75:	85 c0                	test   %eax,%eax
  403a77:	0f 85 18 04 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403a7d:	33 c9                	xor    %ecx,%ecx
  403a7f:	0f 01 d0             	xgetbv 
  403a82:	41 89 c5             	mov    %eax,%r13d
  403a85:	44 89 ea             	mov    %r13d,%edx
  403a88:	81 e2 00 00 06 00    	and    $0x60000,%edx
  403a8e:	81 fa 00 00 06 00    	cmp    $0x60000,%edx
  403a94:	75 70                	jne    403b06 <__intel_cpu_features_init_body+0x696>
  403a96:	b9 01 00 00 00       	mov    $0x1,%ecx
  403a9b:	48 8d 04 24          	lea    (%rsp),%rax
  403a9f:	e8 ec ee ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403aa4:	85 c0                	test   %eax,%eax
  403aa6:	0f 85 e9 03 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403aac:	f7 c7 00 00 00 01    	test   $0x1000000,%edi
  403ab2:	74 16                	je     403aca <__intel_cpu_features_init_body+0x65a>
  403ab4:	b9 42 00 00 00       	mov    $0x42,%ecx
  403ab9:	48 8d 04 24          	lea    (%rsp),%rax
  403abd:	e8 ce ee ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403ac2:	85 c0                	test   %eax,%eax
  403ac4:	0f 85 cb 03 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403aca:	f7 c7 00 00 00 02    	test   $0x2000000,%edi
  403ad0:	74 16                	je     403ae8 <__intel_cpu_features_init_body+0x678>
  403ad2:	b9 43 00 00 00       	mov    $0x43,%ecx
  403ad7:	48 8d 04 24          	lea    (%rsp),%rax
  403adb:	e8 b0 ee ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403ae0:	85 c0                	test   %eax,%eax
  403ae2:	0f 85 ad 03 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403ae8:	f7 c7 00 00 40 00    	test   $0x400000,%edi
  403aee:	74 16                	je     403b06 <__intel_cpu_features_init_body+0x696>
  403af0:	b9 44 00 00 00       	mov    $0x44,%ecx
  403af5:	48 8d 04 24          	lea    (%rsp),%rax
  403af9:	e8 92 ee ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403afe:	85 c0                	test   %eax,%eax
  403b00:	0f 85 8f 03 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403b06:	44 89 e8             	mov    %r13d,%eax
  403b09:	83 e0 06             	and    $0x6,%eax
  403b0c:	83 f8 06             	cmp    $0x6,%eax
  403b0f:	0f 85 0b 04 00 00    	jne    403f20 <__intel_cpu_features_init_body+0xab0>
  403b15:	b9 01 00 00 00       	mov    $0x1,%ecx
  403b1a:	48 8d 04 24          	lea    (%rsp),%rax
  403b1e:	e8 6d ee ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403b23:	85 c0                	test   %eax,%eax
  403b25:	0f 85 6a 03 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403b2b:	f7 c6 00 00 00 10    	test   $0x10000000,%esi
  403b31:	74 54                	je     403b87 <__intel_cpu_features_init_body+0x717>
  403b33:	b9 10 00 00 00       	mov    $0x10,%ecx
  403b38:	48 8d 04 24          	lea    (%rsp),%rax
  403b3c:	e8 4f ee ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403b41:	85 c0                	test   %eax,%eax
  403b43:	0f 85 4c 03 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403b49:	41 f7 c0 00 02 00 00 	test   $0x200,%r8d
  403b50:	74 16                	je     403b68 <__intel_cpu_features_init_body+0x6f8>
  403b52:	b9 2f 00 00 00       	mov    $0x2f,%ecx
  403b57:	48 8d 04 24          	lea    (%rsp),%rax
  403b5b:	e8 30 ee ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403b60:	85 c0                	test   %eax,%eax
  403b62:	0f 85 2d 03 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403b68:	41 f7 c0 00 04 00 00 	test   $0x400,%r8d
  403b6f:	74 16                	je     403b87 <__intel_cpu_features_init_body+0x717>
  403b71:	b9 30 00 00 00       	mov    $0x30,%ecx
  403b76:	48 8d 04 24          	lea    (%rsp),%rax
  403b7a:	e8 11 ee ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403b7f:	85 c0                	test   %eax,%eax
  403b81:	0f 85 0e 03 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403b87:	f7 c6 00 00 00 20    	test   $0x20000000,%esi
  403b8d:	74 16                	je     403ba5 <__intel_cpu_features_init_body+0x735>
  403b8f:	b9 11 00 00 00       	mov    $0x11,%ecx
  403b94:	48 8d 04 24          	lea    (%rsp),%rax
  403b98:	e8 f3 ed ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403b9d:	85 c0                	test   %eax,%eax
  403b9f:	0f 85 f0 02 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403ba5:	41 f7 c1 20 00 00 00 	test   $0x20,%r9d
  403bac:	74 16                	je     403bc4 <__intel_cpu_features_init_body+0x754>
  403bae:	b9 18 00 00 00       	mov    $0x18,%ecx
  403bb3:	48 8d 04 24          	lea    (%rsp),%rax
  403bb7:	e8 d4 ed ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403bbc:	85 c0                	test   %eax,%eax
  403bbe:	0f 85 d1 02 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403bc4:	f7 c6 00 10 00 00    	test   $0x1000,%esi
  403bca:	74 16                	je     403be2 <__intel_cpu_features_init_body+0x772>
  403bcc:	b9 13 00 00 00       	mov    $0x13,%ecx
  403bd1:	48 8d 04 24          	lea    (%rsp),%rax
  403bd5:	e8 b6 ed ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403bda:	85 c0                	test   %eax,%eax
  403bdc:	0f 85 b3 02 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403be2:	44 89 e8             	mov    %r13d,%eax
  403be5:	83 e0 18             	and    $0x18,%eax
  403be8:	83 f8 18             	cmp    $0x18,%eax
  403beb:	75 35                	jne    403c22 <__intel_cpu_features_init_body+0x7b2>
  403bed:	b9 01 00 00 00       	mov    $0x1,%ecx
  403bf2:	48 8d 04 24          	lea    (%rsp),%rax
  403bf6:	e8 95 ed ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403bfb:	85 c0                	test   %eax,%eax
  403bfd:	0f 85 92 02 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403c03:	41 f7 c1 00 40 00 00 	test   $0x4000,%r9d
  403c0a:	74 16                	je     403c22 <__intel_cpu_features_init_body+0x7b2>
  403c0c:	b9 25 00 00 00       	mov    $0x25,%ecx
  403c11:	48 8d 04 24          	lea    (%rsp),%rax
  403c15:	e8 76 ed ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403c1a:	85 c0                	test   %eax,%eax
  403c1c:	0f 85 73 02 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403c22:	b8 07 00 00 00       	mov    $0x7,%eax
  403c27:	b9 01 00 00 00       	mov    $0x1,%ecx
  403c2c:	0f a2                	cpuid  
  403c2e:	89 c2                	mov    %eax,%edx
  403c30:	f6 c2 10             	test   $0x10,%dl
  403c33:	74 16                	je     403c4b <__intel_cpu_features_init_body+0x7db>
  403c35:	b9 41 00 00 00       	mov    $0x41,%ecx
  403c3a:	48 8d 04 24          	lea    (%rsp),%rax
  403c3e:	e8 4d ed ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403c43:	85 c0                	test   %eax,%eax
  403c45:	0f 85 4a 02 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403c4b:	41 81 e5 e0 00 00 00 	and    $0xe0,%r13d
  403c52:	41 81 fd e0 00 00 00 	cmp    $0xe0,%r13d
  403c59:	0f 85 c1 02 00 00    	jne    403f20 <__intel_cpu_features_init_body+0xab0>
  403c5f:	b9 01 00 00 00       	mov    $0x1,%ecx
  403c64:	48 8d 04 24          	lea    (%rsp),%rax
  403c68:	e8 23 ed ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403c6d:	85 c0                	test   %eax,%eax
  403c6f:	0f 85 20 02 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403c75:	41 f7 c1 00 00 01 00 	test   $0x10000,%r9d
  403c7c:	74 16                	je     403c94 <__intel_cpu_features_init_body+0x824>
  403c7e:	b9 19 00 00 00       	mov    $0x19,%ecx
  403c83:	48 8d 04 24          	lea    (%rsp),%rax
  403c87:	e8 04 ed ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403c8c:	85 c0                	test   %eax,%eax
  403c8e:	0f 85 01 02 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403c94:	41 f7 c1 00 00 00 10 	test   $0x10000000,%r9d
  403c9b:	74 16                	je     403cb3 <__intel_cpu_features_init_body+0x843>
  403c9d:	b9 23 00 00 00       	mov    $0x23,%ecx
  403ca2:	48 8d 04 24          	lea    (%rsp),%rax
  403ca6:	e8 e5 ec ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403cab:	85 c0                	test   %eax,%eax
  403cad:	0f 85 e2 01 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403cb3:	41 f7 c1 00 00 00 08 	test   $0x8000000,%r9d
  403cba:	74 16                	je     403cd2 <__intel_cpu_features_init_body+0x862>
  403cbc:	b9 21 00 00 00       	mov    $0x21,%ecx
  403cc1:	48 8d 04 24          	lea    (%rsp),%rax
  403cc5:	e8 c6 ec ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403cca:	85 c0                	test   %eax,%eax
  403ccc:	0f 85 c3 01 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403cd2:	41 f7 c1 00 00 00 04 	test   $0x4000000,%r9d
  403cd9:	74 16                	je     403cf1 <__intel_cpu_features_init_body+0x881>
  403cdb:	b9 22 00 00 00       	mov    $0x22,%ecx
  403ce0:	48 8d 04 24          	lea    (%rsp),%rax
  403ce4:	e8 a7 ec ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403ce9:	85 c0                	test   %eax,%eax
  403ceb:	0f 85 a4 01 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403cf1:	41 f7 c1 00 00 02 00 	test   $0x20000,%r9d
  403cf8:	74 16                	je     403d10 <__intel_cpu_features_init_body+0x8a0>
  403cfa:	b9 1a 00 00 00       	mov    $0x1a,%ecx
  403cff:	48 8d 04 24          	lea    (%rsp),%rax
  403d03:	e8 88 ec ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403d08:	85 c0                	test   %eax,%eax
  403d0a:	0f 85 85 01 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403d10:	41 f7 c1 00 00 00 40 	test   $0x40000000,%r9d
  403d17:	74 16                	je     403d2f <__intel_cpu_features_init_body+0x8bf>
  403d19:	b9 26 00 00 00       	mov    $0x26,%ecx
  403d1e:	48 8d 04 24          	lea    (%rsp),%rax
  403d22:	e8 69 ec ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403d27:	85 c0                	test   %eax,%eax
  403d29:	0f 85 66 01 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403d2f:	44 89 c8             	mov    %r9d,%eax
  403d32:	25 00 00 00 80       	and    $0x80000000,%eax
  403d37:	3d 00 00 00 80       	cmp    $0x80000000,%eax
  403d3c:	75 16                	jne    403d54 <__intel_cpu_features_init_body+0x8e4>
  403d3e:	b9 27 00 00 00       	mov    $0x27,%ecx
  403d43:	48 8d 04 24          	lea    (%rsp),%rax
  403d47:	e8 44 ec ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403d4c:	85 c0                	test   %eax,%eax
  403d4e:	0f 85 41 01 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403d54:	41 f7 c1 00 00 20 00 	test   $0x200000,%r9d
  403d5b:	74 16                	je     403d73 <__intel_cpu_features_init_body+0x903>
  403d5d:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  403d62:	48 8d 04 24          	lea    (%rsp),%rax
  403d66:	e8 25 ec ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403d6b:	85 c0                	test   %eax,%eax
  403d6d:	0f 85 22 01 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403d73:	41 f7 c0 02 00 00 00 	test   $0x2,%r8d
  403d7a:	74 16                	je     403d92 <__intel_cpu_features_init_body+0x922>
  403d7c:	b9 28 00 00 00       	mov    $0x28,%ecx
  403d81:	48 8d 04 24          	lea    (%rsp),%rax
  403d85:	e8 06 ec ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403d8a:	85 c0                	test   %eax,%eax
  403d8c:	0f 85 03 01 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403d92:	41 f7 c0 00 40 00 00 	test   $0x4000,%r8d
  403d99:	74 16                	je     403db1 <__intel_cpu_features_init_body+0x941>
  403d9b:	b9 2b 00 00 00       	mov    $0x2b,%ecx
  403da0:	48 8d 04 24          	lea    (%rsp),%rax
  403da4:	e8 e7 eb ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403da9:	85 c0                	test   %eax,%eax
  403dab:	0f 85 e4 00 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403db1:	f7 c7 04 00 00 00    	test   $0x4,%edi
  403db7:	74 16                	je     403dcf <__intel_cpu_features_init_body+0x95f>
  403db9:	b9 2a 00 00 00       	mov    $0x2a,%ecx
  403dbe:	48 8d 04 24          	lea    (%rsp),%rax
  403dc2:	e8 c9 eb ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403dc7:	85 c0                	test   %eax,%eax
  403dc9:	0f 85 c6 00 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403dcf:	f7 c7 08 00 00 00    	test   $0x8,%edi
  403dd5:	74 16                	je     403ded <__intel_cpu_features_init_body+0x97d>
  403dd7:	b9 29 00 00 00       	mov    $0x29,%ecx
  403ddc:	48 8d 04 24          	lea    (%rsp),%rax
  403de0:	e8 ab eb ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403de5:	85 c0                	test   %eax,%eax
  403de7:	0f 85 a8 00 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403ded:	41 f7 c0 00 10 00 00 	test   $0x1000,%r8d
  403df4:	74 16                	je     403e0c <__intel_cpu_features_init_body+0x99c>
  403df6:	b9 2c 00 00 00       	mov    $0x2c,%ecx
  403dfb:	48 8d 04 24          	lea    (%rsp),%rax
  403dff:	e8 8c eb ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403e04:	85 c0                	test   %eax,%eax
  403e06:	0f 85 89 00 00 00    	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403e0c:	41 f7 c0 40 00 00 00 	test   $0x40,%r8d
  403e13:	74 12                	je     403e27 <__intel_cpu_features_init_body+0x9b7>
  403e15:	b9 2d 00 00 00       	mov    $0x2d,%ecx
  403e1a:	48 8d 04 24          	lea    (%rsp),%rax
  403e1e:	e8 6d eb ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403e23:	85 c0                	test   %eax,%eax
  403e25:	75 6e                	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403e27:	41 f7 c0 00 08 00 00 	test   $0x800,%r8d
  403e2e:	74 12                	je     403e42 <__intel_cpu_features_init_body+0x9d2>
  403e30:	b9 31 00 00 00       	mov    $0x31,%ecx
  403e35:	48 8d 04 24          	lea    (%rsp),%rax
  403e39:	e8 52 eb ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403e3e:	85 c0                	test   %eax,%eax
  403e40:	75 53                	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403e42:	f6 c2 20             	test   $0x20,%dl
  403e45:	74 12                	je     403e59 <__intel_cpu_features_init_body+0x9e9>
  403e47:	b9 3f 00 00 00       	mov    $0x3f,%ecx
  403e4c:	48 8d 04 24          	lea    (%rsp),%rax
  403e50:	e8 3b eb ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403e55:	85 c0                	test   %eax,%eax
  403e57:	75 3c                	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403e59:	f7 c7 00 00 80 00    	test   $0x800000,%edi
  403e5f:	74 12                	je     403e73 <__intel_cpu_features_init_body+0xa03>
  403e61:	b9 3a 00 00 00       	mov    $0x3a,%ecx
  403e66:	48 8d 04 24          	lea    (%rsp),%rax
  403e6a:	e8 21 eb ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403e6f:	85 c0                	test   %eax,%eax
  403e71:	75 22                	jne    403e95 <__intel_cpu_features_init_body+0xa25>
  403e73:	f7 c7 00 01 00 00    	test   $0x100,%edi
  403e79:	0f 84 a1 00 00 00    	je     403f20 <__intel_cpu_features_init_body+0xab0>
  403e7f:	b9 39 00 00 00       	mov    $0x39,%ecx
  403e84:	48 8d 04 24          	lea    (%rsp),%rax
  403e88:	e8 03 eb ff ff       	callq  402990 <__libirc_set_cpu_feature>
  403e8d:	85 c0                	test   %eax,%eax
  403e8f:	0f 84 8b 00 00 00    	je     403f20 <__intel_cpu_features_init_body+0xab0>
  403e95:	0f 10 84 24 f0 00 00 	movups 0xf0(%rsp),%xmm0
  403e9c:	00 
  403e9d:	0f 10 4c 24 20       	movups 0x20(%rsp),%xmm1
  403ea2:	0f 10 54 24 30       	movups 0x30(%rsp),%xmm2
  403ea7:	0f 10 5c 24 40       	movups 0x40(%rsp),%xmm3
  403eac:	0f 10 64 24 50       	movups 0x50(%rsp),%xmm4
  403eb1:	0f 10 6c 24 60       	movups 0x60(%rsp),%xmm5
  403eb6:	0f 10 74 24 70       	movups 0x70(%rsp),%xmm6
  403ebb:	0f 10 bc 24 80 00 00 	movups 0x80(%rsp),%xmm7
  403ec2:	00 
  403ec3:	44 0f 10 84 24 90 00 	movups 0x90(%rsp),%xmm8
  403eca:	00 00 
  403ecc:	44 0f 10 8c 24 a0 00 	movups 0xa0(%rsp),%xmm9
  403ed3:	00 00 
  403ed5:	44 0f 10 94 24 b0 00 	movups 0xb0(%rsp),%xmm10
  403edc:	00 00 
  403ede:	44 0f 10 9c 24 c0 00 	movups 0xc0(%rsp),%xmm11
  403ee5:	00 00 
  403ee7:	44 0f 10 a4 24 d0 00 	movups 0xd0(%rsp),%xmm12
  403eee:	00 00 
  403ef0:	44 0f 10 ac 24 e0 00 	movups 0xe0(%rsp),%xmm13
  403ef7:	00 00 
  403ef9:	44 0f 10 b4 24 00 01 	movups 0x100(%rsp),%xmm14
  403f00:	00 00 
  403f02:	44 0f 10 bc 24 10 01 	movups 0x110(%rsp),%xmm15
  403f09:	00 00 
  403f0b:	48 81 c4 30 01 00 00 	add    $0x130,%rsp
  403f12:	41 5d                	pop    %r13
  403f14:	41 5c                	pop    %r12
  403f16:	41 59                	pop    %r9
  403f18:	41 58                	pop    %r8
  403f1a:	5f                   	pop    %rdi
  403f1b:	5e                   	pop    %rsi
  403f1c:	5b                   	pop    %rbx
  403f1d:	59                   	pop    %rcx
  403f1e:	5a                   	pop    %rdx
  403f1f:	c3                   	retq   
  403f20:	48 8d 3d 89 36 00 00 	lea    0x3689(%rip),%rdi        # 4075b0 <__Tbl_addr+0x8c0>
  403f27:	e8 04 d1 ff ff       	callq  401030 <getenv@plt>
  403f2c:	48 89 c3             	mov    %rax,%rbx
  403f2f:	e8 1c d1 ff ff       	callq  401050 <__errno_location@plt>
  403f34:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  403f3a:	48 85 db             	test   %rbx,%rbx
  403f3d:	74 21                	je     403f60 <__intel_cpu_features_init_body+0xaf0>
  403f3f:	48 89 df             	mov    %rbx,%rdi
  403f42:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  403f47:	e8 14 e8 ff ff       	callq  402760 <__libirc_get_disable_mask>
  403f4c:	85 c0                	test   %eax,%eax
  403f4e:	7e 10                	jle    403f60 <__intel_cpu_features_init_body+0xaf0>
  403f50:	f3 0f 6f 44 24 10    	movdqu 0x10(%rsp),%xmm0
  403f56:	66 0f df 04 24       	pandn  (%rsp),%xmm0
  403f5b:	f3 0f 7f 04 24       	movdqu %xmm0,(%rsp)
  403f60:	41 83 fc 01          	cmp    $0x1,%r12d
  403f64:	0f 84 3a 01 00 00    	je     4040a4 <__intel_cpu_features_init_body+0xc34>
  403f6a:	48 8d 05 27 59 00 00 	lea    0x5927(%rip),%rax        # 409898 <__intel_cpu_feature_indicator_x>
  403f71:	48 8d 0c 24          	lea    (%rsp),%rcx
  403f75:	e8 f6 e9 ff ff       	callq  402970 <__intel_set_cpu_indicator>
  403f7a:	0f 10 84 24 f0 00 00 	movups 0xf0(%rsp),%xmm0
  403f81:	00 
  403f82:	33 c0                	xor    %eax,%eax
  403f84:	0f 10 4c 24 20       	movups 0x20(%rsp),%xmm1
  403f89:	0f 10 54 24 30       	movups 0x30(%rsp),%xmm2
  403f8e:	0f 10 5c 24 40       	movups 0x40(%rsp),%xmm3
  403f93:	0f 10 64 24 50       	movups 0x50(%rsp),%xmm4
  403f98:	0f 10 6c 24 60       	movups 0x60(%rsp),%xmm5
  403f9d:	0f 10 74 24 70       	movups 0x70(%rsp),%xmm6
  403fa2:	0f 10 bc 24 80 00 00 	movups 0x80(%rsp),%xmm7
  403fa9:	00 
  403faa:	44 0f 10 84 24 90 00 	movups 0x90(%rsp),%xmm8
  403fb1:	00 00 
  403fb3:	44 0f 10 8c 24 a0 00 	movups 0xa0(%rsp),%xmm9
  403fba:	00 00 
  403fbc:	44 0f 10 94 24 b0 00 	movups 0xb0(%rsp),%xmm10
  403fc3:	00 00 
  403fc5:	44 0f 10 9c 24 c0 00 	movups 0xc0(%rsp),%xmm11
  403fcc:	00 00 
  403fce:	44 0f 10 a4 24 d0 00 	movups 0xd0(%rsp),%xmm12
  403fd5:	00 00 
  403fd7:	44 0f 10 ac 24 e0 00 	movups 0xe0(%rsp),%xmm13
  403fde:	00 00 
  403fe0:	44 0f 10 b4 24 00 01 	movups 0x100(%rsp),%xmm14
  403fe7:	00 00 
  403fe9:	44 0f 10 bc 24 10 01 	movups 0x110(%rsp),%xmm15
  403ff0:	00 00 
  403ff2:	48 81 c4 30 01 00 00 	add    $0x130,%rsp
  403ff9:	41 5d                	pop    %r13
  403ffb:	41 5c                	pop    %r12
  403ffd:	41 59                	pop    %r9
  403fff:	41 58                	pop    %r8
  404001:	5f                   	pop    %rdi
  404002:	5e                   	pop    %rsi
  404003:	5b                   	pop    %rbx
  404004:	59                   	pop    %rcx
  404005:	5a                   	pop    %rdx
  404006:	c3                   	retq   
  404007:	48 8d 05 7a 58 00 00 	lea    0x587a(%rip),%rax        # 409888 <__intel_cpu_feature_indicator>
  40400e:	48 8d 0c 24          	lea    (%rsp),%rcx
  404012:	e8 59 e9 ff ff       	callq  402970 <__intel_set_cpu_indicator>
  404017:	0f 10 84 24 f0 00 00 	movups 0xf0(%rsp),%xmm0
  40401e:	00 
  40401f:	33 c0                	xor    %eax,%eax
  404021:	0f 10 4c 24 20       	movups 0x20(%rsp),%xmm1
  404026:	0f 10 54 24 30       	movups 0x30(%rsp),%xmm2
  40402b:	0f 10 5c 24 40       	movups 0x40(%rsp),%xmm3
  404030:	0f 10 64 24 50       	movups 0x50(%rsp),%xmm4
  404035:	0f 10 6c 24 60       	movups 0x60(%rsp),%xmm5
  40403a:	0f 10 74 24 70       	movups 0x70(%rsp),%xmm6
  40403f:	0f 10 bc 24 80 00 00 	movups 0x80(%rsp),%xmm7
  404046:	00 
  404047:	44 0f 10 84 24 90 00 	movups 0x90(%rsp),%xmm8
  40404e:	00 00 
  404050:	44 0f 10 8c 24 a0 00 	movups 0xa0(%rsp),%xmm9
  404057:	00 00 
  404059:	44 0f 10 94 24 b0 00 	movups 0xb0(%rsp),%xmm10
  404060:	00 00 
  404062:	44 0f 10 9c 24 c0 00 	movups 0xc0(%rsp),%xmm11
  404069:	00 00 
  40406b:	44 0f 10 a4 24 d0 00 	movups 0xd0(%rsp),%xmm12
  404072:	00 00 
  404074:	44 0f 10 ac 24 e0 00 	movups 0xe0(%rsp),%xmm13
  40407b:	00 00 
  40407d:	44 0f 10 b4 24 00 01 	movups 0x100(%rsp),%xmm14
  404084:	00 00 
  404086:	44 0f 10 bc 24 10 01 	movups 0x110(%rsp),%xmm15
  40408d:	00 00 
  40408f:	48 81 c4 30 01 00 00 	add    $0x130,%rsp
  404096:	41 5d                	pop    %r13
  404098:	41 5c                	pop    %r12
  40409a:	41 59                	pop    %r9
  40409c:	41 58                	pop    %r8
  40409e:	5f                   	pop    %rdi
  40409f:	5e                   	pop    %rsi
  4040a0:	5b                   	pop    %rbx
  4040a1:	59                   	pop    %rcx
  4040a2:	5a                   	pop    %rdx
  4040a3:	c3                   	retq   
  4040a4:	48 8d 05 dd 57 00 00 	lea    0x57dd(%rip),%rax        # 409888 <__intel_cpu_feature_indicator>
  4040ab:	48 8d 0c 24          	lea    (%rsp),%rcx
  4040af:	e8 bc e8 ff ff       	callq  402970 <__intel_set_cpu_indicator>
  4040b4:	e9 b1 fe ff ff       	jmpq   403f6a <__intel_cpu_features_init_body+0xafa>
  4040b9:	81 bc 24 24 01 00 00 	cmpl   $0x756e6547,0x124(%rsp)
  4040c0:	47 65 6e 75 
  4040c4:	0f 85 3d ff ff ff    	jne    404007 <__intel_cpu_features_init_body+0xb97>
  4040ca:	81 bc 24 2c 01 00 00 	cmpl   $0x49656e69,0x12c(%rsp)
  4040d1:	69 6e 65 49 
  4040d5:	0f 85 2c ff ff ff    	jne    404007 <__intel_cpu_features_init_body+0xb97>
  4040db:	81 bc 24 28 01 00 00 	cmpl   $0x6c65746e,0x128(%rsp)
  4040e2:	6e 74 65 6c 
  4040e6:	0f 85 1b ff ff ff    	jne    404007 <__intel_cpu_features_init_body+0xb97>
  4040ec:	e9 6c f4 ff ff       	jmpq   40355d <__intel_cpu_features_init_body+0xed>
  4040f1:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4040f8:	00 
  4040f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000404100 <__libc_csu_init>:
  404100:	f3 0f 1e fa          	endbr64 
  404104:	41 57                	push   %r15
  404106:	4c 8d 3d 83 47 00 00 	lea    0x4783(%rip),%r15        # 408890 <__frame_dummy_init_array_entry>
  40410d:	41 56                	push   %r14
  40410f:	49 89 d6             	mov    %rdx,%r14
  404112:	41 55                	push   %r13
  404114:	49 89 f5             	mov    %rsi,%r13
  404117:	41 54                	push   %r12
  404119:	41 89 fc             	mov    %edi,%r12d
  40411c:	55                   	push   %rbp
  40411d:	48 8d 2d 74 47 00 00 	lea    0x4774(%rip),%rbp        # 408898 <__do_global_dtors_aux_fini_array_entry>
  404124:	53                   	push   %rbx
  404125:	4c 29 fd             	sub    %r15,%rbp
  404128:	48 83 ec 08          	sub    $0x8,%rsp
  40412c:	e8 cf ce ff ff       	callq  401000 <_init>
  404131:	48 c1 fd 03          	sar    $0x3,%rbp
  404135:	74 1f                	je     404156 <__libc_csu_init+0x56>
  404137:	31 db                	xor    %ebx,%ebx
  404139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404140:	4c 89 f2             	mov    %r14,%rdx
  404143:	4c 89 ee             	mov    %r13,%rsi
  404146:	44 89 e7             	mov    %r12d,%edi
  404149:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40414d:	48 83 c3 01          	add    $0x1,%rbx
  404151:	48 39 dd             	cmp    %rbx,%rbp
  404154:	75 ea                	jne    404140 <__libc_csu_init+0x40>
  404156:	48 83 c4 08          	add    $0x8,%rsp
  40415a:	5b                   	pop    %rbx
  40415b:	5d                   	pop    %rbp
  40415c:	41 5c                	pop    %r12
  40415e:	41 5d                	pop    %r13
  404160:	41 5e                	pop    %r14
  404162:	41 5f                	pop    %r15
  404164:	c3                   	retq   
  404165:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40416c:	00 00 00 00 

0000000000404170 <__libc_csu_fini>:
  404170:	f3 0f 1e fa          	endbr64 
  404174:	c3                   	retq   

Disassembly of section .fini:

0000000000404178 <_fini>:
  404178:	f3 0f 1e fa          	endbr64 
  40417c:	48 83 ec 08          	sub    $0x8,%rsp
  404180:	48 83 c4 08          	add    $0x8,%rsp
  404184:	c3                   	retq   
