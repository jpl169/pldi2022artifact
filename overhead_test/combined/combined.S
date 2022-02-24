
combined:     file format elf64-x86-64


Disassembly of section .init:

00000000000006b0 <_init>:
 6b0:	48 83 ec 08          	sub    $0x8,%rsp
 6b4:	48 8b 05 2d f9 20 00 	mov    0x20f92d(%rip),%rax        # 20ffe8 <__gmon_start__>
 6bb:	48 85 c0             	test   %rax,%rax
 6be:	74 02                	je     6c2 <_init+0x12>
 6c0:	ff d0                	callq  *%rax
 6c2:	48 83 c4 08          	add    $0x8,%rsp
 6c6:	c3                   	retq   

Disassembly of section .plt:

00000000000006d0 <.plt>:
 6d0:	ff 35 ba f8 20 00    	pushq  0x20f8ba(%rip)        # 20ff90 <_GLOBAL_OFFSET_TABLE_+0x8>
 6d6:	ff 25 bc f8 20 00    	jmpq   *0x20f8bc(%rip)        # 20ff98 <_GLOBAL_OFFSET_TABLE_+0x10>
 6dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000006e0 <ldexp@plt>:
 6e0:	ff 25 ba f8 20 00    	jmpq   *0x20f8ba(%rip)        # 20ffa0 <ldexp@GLIBC_2.2.5>
 6e6:	68 00 00 00 00       	pushq  $0x0
 6eb:	e9 e0 ff ff ff       	jmpq   6d0 <.plt>

00000000000006f0 <puts@plt>:
 6f0:	ff 25 b2 f8 20 00    	jmpq   *0x20f8b2(%rip)        # 20ffa8 <puts@GLIBC_2.2.5>
 6f6:	68 01 00 00 00       	pushq  $0x1
 6fb:	e9 d0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000700 <__stack_chk_fail@plt>:
 700:	ff 25 aa f8 20 00    	jmpq   *0x20f8aa(%rip)        # 20ffb0 <__stack_chk_fail@GLIBC_2.4>
 706:	68 02 00 00 00       	pushq  $0x2
 70b:	e9 c0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000710 <__printf_chk@plt>:
 710:	ff 25 a2 f8 20 00    	jmpq   *0x20f8a2(%rip)        # 20ffb8 <__printf_chk@GLIBC_2.3.4>
 716:	68 03 00 00 00       	pushq  $0x3
 71b:	e9 b0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000720 <frexpf@plt>:
 720:	ff 25 9a f8 20 00    	jmpq   *0x20f89a(%rip)        # 20ffc0 <frexpf@GLIBC_2.2.5>
 726:	68 04 00 00 00       	pushq  $0x4
 72b:	e9 a0 ff ff ff       	jmpq   6d0 <.plt>

0000000000000730 <exit@plt>:
 730:	ff 25 92 f8 20 00    	jmpq   *0x20f892(%rip)        # 20ffc8 <exit@GLIBC_2.2.5>
 736:	68 05 00 00 00       	pushq  $0x5
 73b:	e9 90 ff ff ff       	jmpq   6d0 <.plt>

0000000000000740 <rand@plt>:
 740:	ff 25 8a f8 20 00    	jmpq   *0x20f88a(%rip)        # 20ffd0 <rand@GLIBC_2.2.5>
 746:	68 06 00 00 00       	pushq  $0x6
 74b:	e9 80 ff ff ff       	jmpq   6d0 <.plt>

Disassembly of section .plt.got:

0000000000000750 <__cxa_finalize@plt>:
 750:	ff 25 a2 f8 20 00    	jmpq   *0x20f8a2(%rip)        # 20fff8 <__cxa_finalize@GLIBC_2.2.5>
 756:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000760 <main>:
     760:	41 57                	push   %r15
     762:	41 56                	push   %r14
     764:	41 55                	push   %r13
     766:	41 54                	push   %r12
     768:	55                   	push   %rbp
     769:	53                   	push   %rbx
     76a:	48 83 ec 28          	sub    $0x28,%rsp
     76e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     775:	00 00 
     777:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     77c:	31 c0                	xor    %eax,%eax
     77e:	83 ff 02             	cmp    $0x2,%edi
     781:	0f 84 00 01 00 00    	je     887 <main+0x127>
     787:	48 8d 3d 48 34 00 00 	lea    0x3448(%rip),%rdi        # 3bd6 <_IO_stdin_used+0x16>
     78e:	e8 5d ff ff ff       	callq  6f0 <puts@plt>
     793:	48 8d 35 58 34 00 00 	lea    0x3458(%rip),%rsi        # 3bf2 <_IO_stdin_used+0x32>
     79a:	31 d2                	xor    %edx,%edx
     79c:	bf 01 00 00 00       	mov    $0x1,%edi
     7a1:	31 c0                	xor    %eax,%eax
     7a3:	e8 68 ff ff ff       	callq  710 <__printf_chk@plt>
     7a8:	48 8d 35 58 34 00 00 	lea    0x3458(%rip),%rsi        # 3c07 <_IO_stdin_used+0x47>
     7af:	ba 01 00 00 00       	mov    $0x1,%edx
     7b4:	bf 01 00 00 00       	mov    $0x1,%edi
     7b9:	31 c0                	xor    %eax,%eax
     7bb:	e8 50 ff ff ff       	callq  710 <__printf_chk@plt>
     7c0:	48 8d 35 55 34 00 00 	lea    0x3455(%rip),%rsi        # 3c1c <_IO_stdin_used+0x5c>
     7c7:	ba 02 00 00 00       	mov    $0x2,%edx
     7cc:	bf 01 00 00 00       	mov    $0x1,%edi
     7d1:	31 c0                	xor    %eax,%eax
     7d3:	e8 38 ff ff ff       	callq  710 <__printf_chk@plt>
     7d8:	48 8d 35 52 34 00 00 	lea    0x3452(%rip),%rsi        # 3c31 <_IO_stdin_used+0x71>
     7df:	ba 03 00 00 00       	mov    $0x3,%edx
     7e4:	bf 01 00 00 00       	mov    $0x1,%edi
     7e9:	31 c0                	xor    %eax,%eax
     7eb:	e8 20 ff ff ff       	callq  710 <__printf_chk@plt>
     7f0:	48 8d 35 4f 34 00 00 	lea    0x344f(%rip),%rsi        # 3c46 <_IO_stdin_used+0x86>
     7f7:	ba 04 00 00 00       	mov    $0x4,%edx
     7fc:	bf 01 00 00 00       	mov    $0x1,%edi
     801:	31 c0                	xor    %eax,%eax
     803:	e8 08 ff ff ff       	callq  710 <__printf_chk@plt>
     808:	48 8d 35 4c 34 00 00 	lea    0x344c(%rip),%rsi        # 3c5b <_IO_stdin_used+0x9b>
     80f:	ba 05 00 00 00       	mov    $0x5,%edx
     814:	bf 01 00 00 00       	mov    $0x1,%edi
     819:	31 c0                	xor    %eax,%eax
     81b:	e8 f0 fe ff ff       	callq  710 <__printf_chk@plt>
     820:	48 8d 35 49 34 00 00 	lea    0x3449(%rip),%rsi        # 3c70 <_IO_stdin_used+0xb0>
     827:	ba 06 00 00 00       	mov    $0x6,%edx
     82c:	bf 01 00 00 00       	mov    $0x1,%edi
     831:	31 c0                	xor    %eax,%eax
     833:	e8 d8 fe ff ff       	callq  710 <__printf_chk@plt>
     838:	48 8d 35 46 34 00 00 	lea    0x3446(%rip),%rsi        # 3c85 <_IO_stdin_used+0xc5>
     83f:	ba 07 00 00 00       	mov    $0x7,%edx
     844:	bf 01 00 00 00       	mov    $0x1,%edi
     849:	31 c0                	xor    %eax,%eax
     84b:	e8 c0 fe ff ff       	callq  710 <__printf_chk@plt>
     850:	48 8d 35 43 34 00 00 	lea    0x3443(%rip),%rsi        # 3c9a <_IO_stdin_used+0xda>
     857:	ba 08 00 00 00       	mov    $0x8,%edx
     85c:	bf 01 00 00 00       	mov    $0x1,%edi
     861:	31 c0                	xor    %eax,%eax
     863:	e8 a8 fe ff ff       	callq  710 <__printf_chk@plt>
     868:	48 8d 35 40 34 00 00 	lea    0x3440(%rip),%rsi        # 3caf <_IO_stdin_used+0xef>
     86f:	bf 01 00 00 00       	mov    $0x1,%edi
     874:	ba 09 00 00 00       	mov    $0x9,%edx
     879:	31 c0                	xor    %eax,%eax
     87b:	e8 90 fe ff ff       	callq  710 <__printf_chk@plt>
     880:	31 ff                	xor    %edi,%edi
     882:	e8 a9 fe ff ff       	callq  730 <exit@plt>
     887:	e8 b4 fe ff ff       	callq  740 <rand@plt>
     88c:	89 04 24             	mov    %eax,(%rsp)
     88f:	f3 0f 10 04 24       	movss  (%rsp),%xmm0
     894:	0f 2e c0             	ucomiss %xmm0,%xmm0
     897:	7a ee                	jp     887 <main+0x127>
     899:	66 0f ef e4          	pxor   %xmm4,%xmm4
     89d:	4c 8d 6c 24 14       	lea    0x14(%rsp),%r13
     8a2:	4c 8d 35 1b 34 00 00 	lea    0x341b(%rip),%r14        # 3cc4 <_IO_stdin_used+0x104>
     8a9:	f3 0f 5a e0          	cvtss2sd %xmm0,%xmm4
     8ad:	f2 0f 11 24 24       	movsd  %xmm4,(%rsp)
     8b2:	bf 07 00 00 00       	mov    $0x7,%edi
     8b7:	31 ed                	xor    %ebp,%ebp
     8b9:	e8 92 02 00 00       	callq  b50 <set_function_ptr>
     8be:	66 90                	xchg   %ax,%ax
     8c0:	0f 01 f9             	rdtscp 
     8c3:	31 db                	xor    %ebx,%ebx
     8c5:	49 89 c7             	mov    %rax,%r15
     8c8:	48 c1 e2 20          	shl    $0x20,%rdx
     8cc:	41 89 4d 00          	mov    %ecx,0x0(%r13)
     8d0:	49 09 d7             	or     %rdx,%r15
     8d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     8d8:	89 5c 24 0c          	mov    %ebx,0xc(%rsp)
     8dc:	f3 0f 10 44 24 0c    	movss  0xc(%rsp),%xmm0
     8e2:	ff 15 c0 22 22 00    	callq  *0x2222c0(%rip)        # 222ba8 <f2>
     8e8:	f2 0f 10 14 24       	movsd  (%rsp),%xmm2
     8ed:	66 0f 2e d0          	ucomisd %xmm0,%xmm2
     8f1:	7a 02                	jp     8f5 <main+0x195>
     8f3:	74 04                	je     8f9 <main+0x199>
     8f5:	48 83 c5 01          	add    $0x1,%rbp
     8f9:	48 83 c3 01          	add    $0x1,%rbx
     8fd:	48 81 fb 00 00 00 10 	cmp    $0x10000000,%rbx
     904:	75 d2                	jne    8d8 <main+0x178>
     906:	0f 01 f9             	rdtscp 
     909:	48 c1 e2 20          	shl    $0x20,%rdx
     90d:	41 89 4d 00          	mov    %ecx,0x0(%r13)
     911:	48 09 d0             	or     %rdx,%rax
     914:	49 39 c7             	cmp    %rax,%r15
     917:	77 a7                	ja     8c0 <main+0x160>
     919:	4c 29 f8             	sub    %r15,%rax
     91c:	4c 89 f6             	mov    %r14,%rsi
     91f:	bf 01 00 00 00       	mov    $0x1,%edi
     924:	49 89 c4             	mov    %rax,%r12
     927:	48 89 c2             	mov    %rax,%rdx
     92a:	31 c0                	xor    %eax,%eax
     92c:	e8 df fd ff ff       	callq  710 <__printf_chk@plt>
     931:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     938:	0f 01 f9             	rdtscp 
     93b:	31 db                	xor    %ebx,%ebx
     93d:	49 89 c7             	mov    %rax,%r15
     940:	48 c1 e2 20          	shl    $0x20,%rdx
     944:	41 89 4d 00          	mov    %ecx,0x0(%r13)
     948:	49 09 d7             	or     %rdx,%r15
     94b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     950:	89 5c 24 0c          	mov    %ebx,0xc(%rsp)
     954:	f3 0f 10 44 24 0c    	movss  0xc(%rsp),%xmm0
     95a:	ff 15 50 22 22 00    	callq  *0x222250(%rip)        # 222bb0 <f1>
     960:	f2 0f 10 1c 24       	movsd  (%rsp),%xmm3
     965:	66 0f 2e d8          	ucomisd %xmm0,%xmm3
     969:	7a 02                	jp     96d <main+0x20d>
     96b:	74 04                	je     971 <main+0x211>
     96d:	48 83 c5 01          	add    $0x1,%rbp
     971:	48 83 c3 01          	add    $0x1,%rbx
     975:	48 81 fb 00 00 00 10 	cmp    $0x10000000,%rbx
     97c:	75 d2                	jne    950 <main+0x1f0>
     97e:	0f 01 f9             	rdtscp 
     981:	48 c1 e2 20          	shl    $0x20,%rdx
     985:	41 89 4d 00          	mov    %ecx,0x0(%r13)
     989:	48 09 d0             	or     %rdx,%rax
     98c:	49 39 c7             	cmp    %rax,%r15
     98f:	77 a7                	ja     938 <main+0x1d8>
     991:	4c 29 f8             	sub    %r15,%rax
     994:	48 8d 35 3b 33 00 00 	lea    0x333b(%rip),%rsi        # 3cd6 <_IO_stdin_used+0x116>
     99b:	bf 01 00 00 00       	mov    $0x1,%edi
     9a0:	48 89 c2             	mov    %rax,%rdx
     9a3:	48 89 c3             	mov    %rax,%rbx
     9a6:	31 c0                	xor    %eax,%eax
     9a8:	e8 63 fd ff ff       	callq  710 <__printf_chk@plt>
     9ad:	48 8d 35 33 33 00 00 	lea    0x3333(%rip),%rsi        # 3ce7 <_IO_stdin_used+0x127>
     9b4:	31 c0                	xor    %eax,%eax
     9b6:	48 89 ea             	mov    %rbp,%rdx
     9b9:	bf 01 00 00 00       	mov    $0x1,%edi
     9be:	e8 4d fd ff ff       	callq  710 <__printf_chk@plt>
     9c3:	48 85 db             	test   %rbx,%rbx
     9c6:	78 36                	js     9fe <main+0x29e>
     9c8:	66 0f ef c0          	pxor   %xmm0,%xmm0
     9cc:	4d 85 e4             	test   %r12,%r12
     9cf:	f2 48 0f 2a c3       	cvtsi2sd %rbx,%xmm0
     9d4:	78 49                	js     a1f <main+0x2bf>
     9d6:	66 0f ef c9          	pxor   %xmm1,%xmm1
     9da:	f2 49 0f 2a cc       	cvtsi2sd %r12,%xmm1
     9df:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
     9e3:	48 8d 35 0a 33 00 00 	lea    0x330a(%rip),%rsi        # 3cf4 <_IO_stdin_used+0x134>
     9ea:	bf 01 00 00 00       	mov    $0x1,%edi
     9ef:	b8 01 00 00 00       	mov    $0x1,%eax
     9f4:	e8 17 fd ff ff       	callq  710 <__printf_chk@plt>
     9f9:	e9 b4 fe ff ff       	jmpq   8b2 <main+0x152>
     9fe:	48 89 da             	mov    %rbx,%rdx
     a01:	48 89 d8             	mov    %rbx,%rax
     a04:	66 0f ef c0          	pxor   %xmm0,%xmm0
     a08:	48 d1 ea             	shr    %rdx
     a0b:	83 e0 01             	and    $0x1,%eax
     a0e:	48 09 c2             	or     %rax,%rdx
     a11:	4d 85 e4             	test   %r12,%r12
     a14:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
     a19:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
     a1d:	79 b7                	jns    9d6 <main+0x276>
     a1f:	4c 89 e0             	mov    %r12,%rax
     a22:	66 0f ef c9          	pxor   %xmm1,%xmm1
     a26:	48 d1 e8             	shr    %rax
     a29:	41 83 e4 01          	and    $0x1,%r12d
     a2d:	4c 09 e0             	or     %r12,%rax
     a30:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
     a35:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
     a39:	eb a4                	jmp    9df <main+0x27f>
     a3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a40 <_start>:
     a40:	31 ed                	xor    %ebp,%ebp
     a42:	49 89 d1             	mov    %rdx,%r9
     a45:	5e                   	pop    %rsi
     a46:	48 89 e2             	mov    %rsp,%rdx
     a49:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     a4d:	50                   	push   %rax
     a4e:	54                   	push   %rsp
     a4f:	4c 8d 05 5a 31 00 00 	lea    0x315a(%rip),%r8        # 3bb0 <__libc_csu_fini>
     a56:	48 8d 0d e3 30 00 00 	lea    0x30e3(%rip),%rcx        # 3b40 <__libc_csu_init>
     a5d:	48 8d 3d fc fc ff ff 	lea    -0x304(%rip),%rdi        # 760 <main>
     a64:	ff 15 76 f5 20 00    	callq  *0x20f576(%rip)        # 20ffe0 <__libc_start_main@GLIBC_2.2.5>
     a6a:	f4                   	hlt    
     a6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000a70 <deregister_tm_clones>:
     a70:	48 8d 3d 29 21 22 00 	lea    0x222129(%rip),%rdi        # 222ba0 <__TMC_END__>
     a77:	55                   	push   %rbp
     a78:	48 8d 05 21 21 22 00 	lea    0x222121(%rip),%rax        # 222ba0 <__TMC_END__>
     a7f:	48 39 f8             	cmp    %rdi,%rax
     a82:	48 89 e5             	mov    %rsp,%rbp
     a85:	74 19                	je     aa0 <deregister_tm_clones+0x30>
     a87:	48 8b 05 4a f5 20 00 	mov    0x20f54a(%rip),%rax        # 20ffd8 <_ITM_deregisterTMCloneTable>
     a8e:	48 85 c0             	test   %rax,%rax
     a91:	74 0d                	je     aa0 <deregister_tm_clones+0x30>
     a93:	5d                   	pop    %rbp
     a94:	ff e0                	jmpq   *%rax
     a96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     a9d:	00 00 00 
     aa0:	5d                   	pop    %rbp
     aa1:	c3                   	retq   
     aa2:	0f 1f 40 00          	nopl   0x0(%rax)
     aa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     aad:	00 00 00 

0000000000000ab0 <register_tm_clones>:
     ab0:	48 8d 3d e9 20 22 00 	lea    0x2220e9(%rip),%rdi        # 222ba0 <__TMC_END__>
     ab7:	48 8d 35 e2 20 22 00 	lea    0x2220e2(%rip),%rsi        # 222ba0 <__TMC_END__>
     abe:	55                   	push   %rbp
     abf:	48 29 fe             	sub    %rdi,%rsi
     ac2:	48 89 e5             	mov    %rsp,%rbp
     ac5:	48 c1 fe 03          	sar    $0x3,%rsi
     ac9:	48 89 f0             	mov    %rsi,%rax
     acc:	48 c1 e8 3f          	shr    $0x3f,%rax
     ad0:	48 01 c6             	add    %rax,%rsi
     ad3:	48 d1 fe             	sar    %rsi
     ad6:	74 18                	je     af0 <register_tm_clones+0x40>
     ad8:	48 8b 05 11 f5 20 00 	mov    0x20f511(%rip),%rax        # 20fff0 <_ITM_registerTMCloneTable>
     adf:	48 85 c0             	test   %rax,%rax
     ae2:	74 0c                	je     af0 <register_tm_clones+0x40>
     ae4:	5d                   	pop    %rbp
     ae5:	ff e0                	jmpq   *%rax
     ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     aee:	00 00 
     af0:	5d                   	pop    %rbp
     af1:	c3                   	retq   
     af2:	0f 1f 40 00          	nopl   0x0(%rax)
     af6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     afd:	00 00 00 

0000000000000b00 <__do_global_dtors_aux>:
     b00:	80 3d 99 20 22 00 00 	cmpb   $0x0,0x222099(%rip)        # 222ba0 <__TMC_END__>
     b07:	75 2f                	jne    b38 <__do_global_dtors_aux+0x38>
     b09:	48 83 3d e7 f4 20 00 	cmpq   $0x0,0x20f4e7(%rip)        # 20fff8 <__cxa_finalize@GLIBC_2.2.5>
     b10:	00 
     b11:	55                   	push   %rbp
     b12:	48 89 e5             	mov    %rsp,%rbp
     b15:	74 0c                	je     b23 <__do_global_dtors_aux+0x23>
     b17:	48 8b 3d ea f4 20 00 	mov    0x20f4ea(%rip),%rdi        # 210008 <__dso_handle>
     b1e:	e8 2d fc ff ff       	callq  750 <__cxa_finalize@plt>
     b23:	e8 48 ff ff ff       	callq  a70 <deregister_tm_clones>
     b28:	c6 05 71 20 22 00 01 	movb   $0x1,0x222071(%rip)        # 222ba0 <__TMC_END__>
     b2f:	5d                   	pop    %rbp
     b30:	c3                   	retq   
     b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     b38:	f3 c3                	repz retq 
     b3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b40 <frame_dummy>:
     b40:	55                   	push   %rbp
     b41:	48 89 e5             	mov    %rsp,%rbp
     b44:	5d                   	pop    %rbp
     b45:	e9 66 ff ff ff       	jmpq   ab0 <register_tm_clones>
     b4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000b50 <set_function_ptr>:
     b50:	53                   	push   %rbx
     b51:	48 8d 35 6c 30 00 00 	lea    0x306c(%rip),%rsi        # 3bc4 <_IO_stdin_used+0x4>
     b58:	89 fb                	mov    %edi,%ebx
     b5a:	31 c0                	xor    %eax,%eax
     b5c:	89 da                	mov    %ebx,%edx
     b5e:	bf 01 00 00 00       	mov    $0x1,%edi
     b63:	e8 a8 fb ff ff       	callq  710 <__printf_chk@plt>
     b68:	83 fb 09             	cmp    $0x9,%ebx
     b6b:	77 2f                	ja     b9c <set_function_ptr+0x4c>
     b6d:	48 8d 15 90 31 00 00 	lea    0x3190(%rip),%rdx        # 3d04 <_IO_stdin_used+0x144>
     b74:	48 63 04 9a          	movslq (%rdx,%rbx,4),%rax
     b78:	48 01 d0             	add    %rdx,%rax
     b7b:	ff e0                	jmpq   *%rax
     b7d:	0f 1f 00             	nopl   (%rax)
     b80:	48 8d 05 69 27 00 00 	lea    0x2769(%rip),%rax        # 32f0 <rlibm34_sinh>
     b87:	48 89 05 22 20 22 00 	mov    %rax,0x222022(%rip)        # 222bb0 <f1>
     b8e:	48 8d 05 eb 14 00 00 	lea    0x14eb(%rip),%rax        # 2080 <rlibm_prog_rno_sinh>
     b95:	48 89 05 0c 20 22 00 	mov    %rax,0x22200c(%rip)        # 222ba8 <f2>
     b9c:	5b                   	pop    %rbx
     b9d:	c3                   	retq   
     b9e:	66 90                	xchg   %ax,%ax
     ba0:	48 8d 05 b9 29 00 00 	lea    0x29b9(%rip),%rax        # 3560 <rlibm34_cosh>
     ba7:	5b                   	pop    %rbx
     ba8:	48 89 05 01 20 22 00 	mov    %rax,0x222001(%rip)        # 222bb0 <f1>
     baf:	48 8d 05 2a 13 00 00 	lea    0x132a(%rip),%rax        # 1ee0 <rlibm_prog_rno_cosh>
     bb6:	48 89 05 eb 1f 22 00 	mov    %rax,0x221feb(%rip)        # 222ba8 <f2>
     bbd:	c3                   	retq   
     bbe:	66 90                	xchg   %ax,%ax
     bc0:	48 8d 05 29 1b 00 00 	lea    0x1b29(%rip),%rax        # 26f0 <rlibm34_log>
     bc7:	5b                   	pop    %rbx
     bc8:	48 89 05 e1 1f 22 00 	mov    %rax,0x221fe1(%rip)        # 222bb0 <f1>
     bcf:	48 8d 05 7a 08 00 00 	lea    0x87a(%rip),%rax        # 1450 <rlibm_prog_rno_log>
     bd6:	48 89 05 cb 1f 22 00 	mov    %rax,0x221fcb(%rip)        # 222ba8 <f2>
     bdd:	c3                   	retq   
     bde:	66 90                	xchg   %ax,%ax
     be0:	48 8d 05 49 1c 00 00 	lea    0x1c49(%rip),%rax        # 2830 <rlibm34_log2>
     be7:	5b                   	pop    %rbx
     be8:	48 89 05 c1 1f 22 00 	mov    %rax,0x221fc1(%rip)        # 222bb0 <f1>
     bef:	48 8d 05 da 02 00 00 	lea    0x2da(%rip),%rax        # ed0 <rlibm_prog_rno_log2>
     bf6:	48 89 05 ab 1f 22 00 	mov    %rax,0x221fab(%rip)        # 222ba8 <f2>
     bfd:	c3                   	retq   
     bfe:	66 90                	xchg   %ax,%ax
     c00:	48 8d 05 c9 1d 00 00 	lea    0x1dc9(%rip),%rax        # 29d0 <rlibm34_log10>
     c07:	5b                   	pop    %rbx
     c08:	48 89 05 a1 1f 22 00 	mov    %rax,0x221fa1(%rip)        # 222bb0 <f1>
     c0f:	48 8d 05 6a 04 00 00 	lea    0x46a(%rip),%rax        # 1080 <rlibm_prog_rno_log10>
     c16:	48 89 05 8b 1f 22 00 	mov    %rax,0x221f8b(%rip)        # 222ba8 <f2>
     c1d:	c3                   	retq   
     c1e:	66 90                	xchg   %ax,%ax
     c20:	48 8d 05 19 20 00 00 	lea    0x2019(%rip),%rax        # 2c40 <rlibm34_exp>
     c27:	5b                   	pop    %rbx
     c28:	48 89 05 81 1f 22 00 	mov    %rax,0x221f81(%rip)        # 222bb0 <f1>
     c2f:	48 8d 05 3a 0c 00 00 	lea    0xc3a(%rip),%rax        # 1870 <rlibm_prog_rno_exp>
     c36:	48 89 05 6b 1f 22 00 	mov    %rax,0x221f6b(%rip)        # 222ba8 <f2>
     c3d:	c3                   	retq   
     c3e:	66 90                	xchg   %ax,%ax
     c40:	48 8d 05 99 24 00 00 	lea    0x2499(%rip),%rax        # 30e0 <rlibm34_exp2>
     c47:	5b                   	pop    %rbx
     c48:	48 89 05 61 1f 22 00 	mov    %rax,0x221f61(%rip)        # 222bb0 <f1>
     c4f:	48 8d 05 6a 00 00 00 	lea    0x6a(%rip),%rax        # cc0 <rlibm_prog_rno_exp2>
     c56:	48 89 05 4b 1f 22 00 	mov    %rax,0x221f4b(%rip)        # 222ba8 <f2>
     c5d:	c3                   	retq   
     c5e:	66 90                	xchg   %ax,%ax
     c60:	48 8d 05 b9 21 00 00 	lea    0x21b9(%rip),%rax        # 2e20 <rlibm34_exp10>
     c67:	5b                   	pop    %rbx
     c68:	48 89 05 41 1f 22 00 	mov    %rax,0x221f41(%rip)        # 222bb0 <f1>
     c6f:	48 8d 05 aa 0e 00 00 	lea    0xeaa(%rip),%rax        # 1b20 <rlibm_prog_rno_exp10>
     c76:	48 89 05 2b 1f 22 00 	mov    %rax,0x221f2b(%rip)        # 222ba8 <f2>
     c7d:	c3                   	retq   
     c7e:	66 90                	xchg   %ax,%ax
     c80:	48 8d 05 a9 2c 00 00 	lea    0x2ca9(%rip),%rax        # 3930 <rlibm34_cospi>
     c87:	5b                   	pop    %rbx
     c88:	48 89 05 21 1f 22 00 	mov    %rax,0x221f21(%rip)        # 222bb0 <f1>
     c8f:	48 8d 05 5a 16 00 00 	lea    0x165a(%rip),%rax        # 22f0 <rlibm_prog_rno_cospi>
     c96:	48 89 05 0b 1f 22 00 	mov    %rax,0x221f0b(%rip)        # 222ba8 <f2>
     c9d:	c3                   	retq   
     c9e:	66 90                	xchg   %ax,%ax
     ca0:	48 8d 05 79 2a 00 00 	lea    0x2a79(%rip),%rax        # 3720 <rlibm34_sinpi>
     ca7:	5b                   	pop    %rbx
     ca8:	48 89 05 01 1f 22 00 	mov    %rax,0x221f01(%rip)        # 222bb0 <f1>
     caf:	48 8d 05 3a 18 00 00 	lea    0x183a(%rip),%rax        # 24f0 <rlibm_prog_rno_sinpi>
     cb6:	48 89 05 eb 1e 22 00 	mov    %rax,0x221eeb(%rip)        # 222ba8 <f2>
     cbd:	c3                   	retq   
     cbe:	66 90                	xchg   %ax,%ax

0000000000000cc0 <rlibm_prog_rno_exp2>:
     cc0:	66 0f 7e c0          	movd   %xmm0,%eax
     cc4:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
     cc9:	74 6d                	je     d38 <rlibm_prog_rno_exp2+0x78>
     ccb:	3d 3a aa 38 34       	cmp    $0x3438aa3a,%eax
     cd0:	77 1e                	ja     cf0 <rlibm_prog_rno_exp2+0x30>
     cd2:	3d 3a aa b8 33       	cmp    $0x33b8aa3a,%eax
     cd7:	f2 0f 10 05 71 32 00 	movsd  0x3271(%rip),%xmm0        # 3f50 <exp2JBy64+0x210>
     cde:	00 
     cdf:	77 4f                	ja     d30 <rlibm_prog_rno_exp2+0x70>
     ce1:	f2 0f 10 05 5f 32 00 	movsd  0x325f(%rip),%xmm0        # 3f48 <exp2JBy64+0x208>
     ce8:	00 
     ce9:	c3                   	retq   
     cea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     cf0:	8d 88 00 00 00 bd    	lea    -0x43000000(%rax),%ecx
     cf6:	81 f9 3b aa b8 70    	cmp    $0x70b8aa3b,%ecx
     cfc:	77 4a                	ja     d48 <rlibm_prog_rno_exp2+0x88>
     cfe:	85 c0                	test   %eax,%eax
     d00:	0f 88 a2 01 00 00    	js     ea8 <rlibm_prog_rno_exp2+0x1e8>
     d06:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
     d0b:	f2 0f 10 05 45 32 00 	movsd  0x3245(%rip),%xmm0        # 3f58 <exp2JBy64+0x218>
     d12:	00 
     d13:	76 1b                	jbe    d30 <rlibm_prog_rno_exp2+0x70>
     d15:	3d 00 00 80 7f       	cmp    $0x7f800000,%eax
     d1a:	75 4d                	jne    d69 <rlibm_prog_rno_exp2+0xa9>
     d1c:	f2 0f 10 05 1c 32 00 	movsd  0x321c(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
     d23:	00 
     d24:	f2 0f 5e 05 44 32 00 	divsd  0x3244(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
     d2b:	00 
     d2c:	c3                   	retq   
     d2d:	0f 1f 00             	nopl   (%rax)
     d30:	f3 c3                	repz retq 
     d32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     d38:	f2 0f 10 05 00 32 00 	movsd  0x3200(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
     d3f:	00 
     d40:	c3                   	retq   
     d41:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     d48:	3d 00 00 16 c3       	cmp    $0xc3160000,%eax
     d4d:	76 29                	jbe    d78 <rlibm_prog_rno_exp2+0xb8>
     d4f:	3d 00 00 80 ff       	cmp    $0xff800000,%eax
     d54:	0f 84 46 01 00 00    	je     ea0 <rlibm_prog_rno_exp2+0x1e0>
     d5a:	3d ff ff 7f ff       	cmp    $0xff7fffff,%eax
     d5f:	f2 0f 10 05 11 32 00 	movsd  0x3211(%rip),%xmm0        # 3f78 <exp2JBy64+0x238>
     d66:	00 
     d67:	76 c7                	jbe    d30 <rlibm_prog_rno_exp2+0x70>
     d69:	66 0f ef c0          	pxor   %xmm0,%xmm0
     d6d:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
     d71:	c3                   	retq   
     d72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     d78:	48 83 ec 18          	sub    $0x18,%rsp
     d7c:	66 0f ef c9          	pxor   %xmm1,%xmm1
     d80:	f3 0f 11 44 24 08    	movss  %xmm0,0x8(%rsp)
     d86:	f3 0f 10 44 24 08    	movss  0x8(%rsp),%xmm0
     d8c:	f3 0f 59 05 2c 32 00 	mulss  0x322c(%rip),%xmm0        # 3fc0 <exp2JBy64+0x280>
     d93:	00 
     d94:	f3 0f 10 54 24 08    	movss  0x8(%rsp),%xmm2
     d9a:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
     d9e:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
     da2:	66 0f ef c0          	pxor   %xmm0,%xmm0
     da6:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
     daa:	89 c6                	mov    %eax,%esi
     dac:	c1 fe 1f             	sar    $0x1f,%esi
     daf:	c1 ee 1a             	shr    $0x1a,%esi
     db2:	8d 0c 30             	lea    (%rax,%rsi,1),%ecx
     db5:	83 e1 3f             	and    $0x3f,%ecx
     db8:	29 f1                	sub    %esi,%ecx
     dba:	85 c9                	test   %ecx,%ecx
     dbc:	89 ce                	mov    %ecx,%esi
     dbe:	f2 0f 59 05 ba 31 00 	mulsd  0x31ba(%rip),%xmm0        # 3f80 <exp2JBy64+0x240>
     dc5:	00 
     dc6:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
     dca:	66 0f 28 c1          	movapd %xmm1,%xmm0
     dce:	78 40                	js     e10 <rlibm_prog_rno_exp2+0x150>
     dd0:	29 c8                	sub    %ecx,%eax
     dd2:	66 0f ef c9          	pxor   %xmm1,%xmm1
     dd6:	8d 78 3f             	lea    0x3f(%rax),%edi
     dd9:	85 c0                	test   %eax,%eax
     ddb:	41 b8 00 00 00 00    	mov    $0x0,%r8d
     de1:	0f 48 c7             	cmovs  %edi,%eax
     de4:	c1 f8 06             	sar    $0x6,%eax
     de7:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
     deb:	89 c7                	mov    %eax,%edi
     ded:	0f 9b c2             	setnp  %dl
     df0:	41 0f 45 d0          	cmovne %r8d,%edx
     df4:	84 d2                	test   %dl,%dl
     df6:	74 28                	je     e20 <rlibm_prog_rno_exp2+0x160>
     df8:	85 c9                	test   %ecx,%ecx
     dfa:	75 24                	jne    e20 <rlibm_prog_rno_exp2+0x160>
     dfc:	f2 0f 10 05 3c 31 00 	movsd  0x313c(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
     e03:	00 
     e04:	48 83 c4 18          	add    $0x18,%rsp
     e08:	e9 d3 f8 ff ff       	jmpq   6e0 <ldexp@plt>
     e0d:	0f 1f 00             	nopl   (%rax)
     e10:	83 c6 40             	add    $0x40,%esi
     e13:	29 f0                	sub    %esi,%eax
     e15:	8d 78 3f             	lea    0x3f(%rax),%edi
     e18:	85 c0                	test   %eax,%eax
     e1a:	0f 49 f8             	cmovns %eax,%edi
     e1d:	c1 ff 06             	sar    $0x6,%edi
     e20:	f2 0f 10 0d 60 31 00 	movsd  0x3160(%rip),%xmm1        # 3f88 <exp2JBy64+0x248>
     e27:	00 
     e28:	48 8d 05 11 2f 00 00 	lea    0x2f11(%rip),%rax        # 3d40 <exp2JBy64>
     e2f:	48 63 f6             	movslq %esi,%rsi
     e32:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
     e36:	f2 0f 58 0d 52 31 00 	addsd  0x3152(%rip),%xmm1        # 3f90 <exp2JBy64+0x250>
     e3d:	00 
     e3e:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
     e42:	f2 0f 58 0d 4e 31 00 	addsd  0x314e(%rip),%xmm1        # 3f98 <exp2JBy64+0x258>
     e49:	00 
     e4a:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
     e4e:	f2 0f 58 0d 4a 31 00 	addsd  0x314a(%rip),%xmm1        # 3fa0 <exp2JBy64+0x260>
     e55:	00 
     e56:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
     e5a:	f2 0f 58 0d 46 31 00 	addsd  0x3146(%rip),%xmm1        # 3fa8 <exp2JBy64+0x268>
     e61:	00 
     e62:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
     e66:	f2 0f 58 0d 42 31 00 	addsd  0x3142(%rip),%xmm1        # 3fb0 <exp2JBy64+0x270>
     e6d:	00 
     e6e:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
     e72:	f2 0f 10 04 f0       	movsd  (%rax,%rsi,8),%xmm0
     e77:	f2 0f 11 4c 24 08    	movsd  %xmm1,0x8(%rsp)
     e7d:	e8 5e f8 ff ff       	callq  6e0 <ldexp@plt>
     e82:	f2 0f 10 4c 24 08    	movsd  0x8(%rsp),%xmm1
     e88:	f2 0f 58 0d 28 31 00 	addsd  0x3128(%rip),%xmm1        # 3fb8 <exp2JBy64+0x278>
     e8f:	00 
     e90:	48 83 c4 18          	add    $0x18,%rsp
     e94:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
     e98:	c3                   	retq   
     e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     ea0:	66 0f ef c0          	pxor   %xmm0,%xmm0
     ea4:	c3                   	retq   
     ea5:	0f 1f 00             	nopl   (%rax)
     ea8:	3d 3b aa 38 b3       	cmp    $0xb338aa3b,%eax
     ead:	f2 0f 10 05 b3 30 00 	movsd  0x30b3(%rip),%xmm0        # 3f68 <exp2JBy64+0x228>
     eb4:	00 
     eb5:	0f 87 75 fe ff ff    	ja     d30 <rlibm_prog_rno_exp2+0x70>
     ebb:	f2 0f 10 05 9d 30 00 	movsd  0x309d(%rip),%xmm0        # 3f60 <exp2JBy64+0x220>
     ec2:	00 
     ec3:	c3                   	retq   
     ec4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     ecb:	00 00 00 
     ece:	66 90                	xchg   %ax,%ax

0000000000000ed0 <rlibm_prog_rno_log2>:
     ed0:	48 83 ec 28          	sub    $0x28,%rsp
     ed4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     edb:	00 00 
     edd:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     ee2:	31 c0                	xor    %eax,%eax
     ee4:	66 0f 7e c0          	movd   %xmm0,%eax
     ee8:	8d 90 00 00 80 ff    	lea    -0x800000(%rax),%edx
     eee:	81 fa ff ff ff 7e    	cmp    $0x7effffff,%edx
     ef4:	76 5a                	jbe    f50 <rlibm_prog_rno_log2+0x80>
     ef6:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
     efb:	0f 28 c8             	movaps %xmm0,%xmm1
     efe:	f2 0f 10 05 da 38 00 	movsd  0x38da(%rip),%xmm0        # 47e0 <__log2_lut+0x400>
     f05:	00 
     f06:	74 28                	je     f30 <rlibm_prog_rno_log2+0x60>
     f08:	85 c0                	test   %eax,%eax
     f0a:	0f 88 f0 00 00 00    	js     1000 <rlibm_prog_rno_log2+0x130>
     f10:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
     f15:	0f 86 05 01 00 00    	jbe    1020 <rlibm_prog_rno_log2+0x150>
     f1b:	f3 0f 58 c9          	addss  %xmm1,%xmm1
     f1f:	66 0f ef c0          	pxor   %xmm0,%xmm0
     f23:	f3 0f 5a c1          	cvtss2sd %xmm1,%xmm0
     f27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     f2e:	00 00 
     f30:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
     f35:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
     f3c:	00 00 
     f3e:	0f 85 30 01 00 00    	jne    1074 <rlibm_prog_rno_log2+0x1a4>
     f44:	48 83 c4 28          	add    $0x28,%rsp
     f48:	c3                   	retq   
     f49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     f50:	31 c9                	xor    %ecx,%ecx
     f52:	89 c2                	mov    %eax,%edx
     f54:	66 0f ef c0          	pxor   %xmm0,%xmm0
     f58:	c1 ea 17             	shr    $0x17,%edx
     f5b:	8d 54 11 81          	lea    -0x7f(%rcx,%rdx,1),%edx
     f5f:	89 c1                	mov    %eax,%ecx
     f61:	81 e1 ff ff 7f 00    	and    $0x7fffff,%ecx
     f67:	f2 0f 2a c2          	cvtsi2sd %edx,%xmm0
     f6b:	74 c3                	je     f30 <rlibm_prog_rno_log2+0x60>
     f6d:	89 c2                	mov    %eax,%edx
     f6f:	81 c9 00 00 80 3f    	or     $0x3f800000,%ecx
     f75:	25 00 00 7f 00       	and    $0x7f0000,%eax
     f7a:	0d 00 00 80 3f       	or     $0x3f800000,%eax
     f7f:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
     f83:	c1 ea 10             	shr    $0x10,%edx
     f86:	89 44 24 0c          	mov    %eax,0xc(%rsp)
     f8a:	f3 0f 10 4c 24 08    	movss  0x8(%rsp),%xmm1
     f90:	f3 0f 5c 4c 24 0c    	subss  0xc(%rsp),%xmm1
     f96:	89 d0                	mov    %edx,%eax
     f98:	48 8d 15 41 30 00 00 	lea    0x3041(%rip),%rdx        # 3fe0 <__log_oneByF>
     f9f:	83 e0 7f             	and    $0x7f,%eax
     fa2:	f2 0f 10 15 3e 38 00 	movsd  0x383e(%rip),%xmm2        # 47e8 <__log2_lut+0x408>
     fa9:	00 
     faa:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
     fae:	f2 0f 59 0c c2       	mulsd  (%rdx,%rax,8),%xmm1
     fb3:	48 8d 15 26 34 00 00 	lea    0x3426(%rip),%rdx        # 43e0 <__log2_lut>
     fba:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
     fbe:	f2 0f 5c 15 2a 38 00 	subsd  0x382a(%rip),%xmm2        # 47f0 <__log2_lut+0x410>
     fc5:	00 
     fc6:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
     fca:	f2 0f 58 15 26 38 00 	addsd  0x3826(%rip),%xmm2        # 47f8 <__log2_lut+0x418>
     fd1:	00 
     fd2:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
     fd6:	f2 0f 5c 15 22 38 00 	subsd  0x3822(%rip),%xmm2        # 4800 <__log2_lut+0x420>
     fdd:	00 
     fde:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
     fe2:	f2 0f 58 15 1e 38 00 	addsd  0x381e(%rip),%xmm2        # 4808 <__log2_lut+0x428>
     fe9:	00 
     fea:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
     fee:	f2 0f 58 0c c2       	addsd  (%rdx,%rax,8),%xmm1
     ff3:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
     ff7:	e9 34 ff ff ff       	jmpq   f30 <rlibm_prog_rno_log2+0x60>
     ffc:	0f 1f 40 00          	nopl   0x0(%rax)
    1000:	f3 0f 5c c9          	subss  %xmm1,%xmm1
    1004:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1008:	f3 0f 5e 0d 00 38 00 	divss  0x3800(%rip),%xmm1        # 4810 <__log2_lut+0x430>
    100f:	00 
    1010:	f3 0f 5a c1          	cvtss2sd %xmm1,%xmm0
    1014:	e9 17 ff ff ff       	jmpq   f30 <rlibm_prog_rno_log2+0x60>
    1019:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1020:	0f 28 c1             	movaps %xmm1,%xmm0
    1023:	48 8d 7c 24 14       	lea    0x14(%rsp),%rdi
    1028:	89 44 24 08          	mov    %eax,0x8(%rsp)
    102c:	e8 ef f6 ff ff       	callq  720 <frexpf@plt>
    1031:	66 0f 7e c0          	movd   %xmm0,%eax
    1035:	f3 0f 10 4c 24 08    	movss  0x8(%rsp),%xmm1
    103b:	3d 00 00 00 3f       	cmp    $0x3f000000,%eax
    1040:	74 1e                	je     1060 <rlibm_prog_rno_log2+0x190>
    1042:	f3 0f 59 0d ca 37 00 	mulss  0x37ca(%rip),%xmm1        # 4814 <__log2_lut+0x434>
    1049:	00 
    104a:	b9 e9 ff ff ff       	mov    $0xffffffe9,%ecx
    104f:	66 0f 7e c8          	movd   %xmm1,%eax
    1053:	e9 fa fe ff ff       	jmpq   f52 <rlibm_prog_rno_log2+0x82>
    1058:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    105f:	00 
    1060:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1064:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1068:	83 e8 01             	sub    $0x1,%eax
    106b:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    106f:	e9 bc fe ff ff       	jmpq   f30 <rlibm_prog_rno_log2+0x60>
    1074:	e8 87 f6 ff ff       	callq  700 <__stack_chk_fail@plt>
    1079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001080 <rlibm_prog_rno_log10>:
    1080:	66 0f 7e c0          	movd   %xmm0,%eax
    1084:	8d 90 00 00 80 ff    	lea    -0x800000(%rax),%edx
    108a:	81 fa ff ff ff 7e    	cmp    $0x7effffff,%edx
    1090:	76 3e                	jbe    10d0 <rlibm_prog_rno_log10+0x50>
    1092:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
    1097:	f2 0f 10 0d 41 37 00 	movsd  0x3741(%rip),%xmm1        # 47e0 <__log2_lut+0x400>
    109e:	00 
    109f:	0f 84 50 01 00 00    	je     11f5 <rlibm_prog_rno_log10+0x175>
    10a5:	85 c0                	test   %eax,%eax
    10a7:	0f 88 c3 01 00 00    	js     1270 <rlibm_prog_rno_log10+0x1f0>
    10ad:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    10b2:	0f 87 d8 01 00 00    	ja     1290 <rlibm_prog_rno_log10+0x210>
    10b8:	f3 0f 59 05 54 37 00 	mulss  0x3754(%rip),%xmm0        # 4814 <__log2_lut+0x434>
    10bf:	00 
    10c0:	ba e9 ff ff ff       	mov    $0xffffffe9,%edx
    10c5:	66 0f 7e c0          	movd   %xmm0,%eax
    10c9:	eb 07                	jmp    10d2 <rlibm_prog_rno_log10+0x52>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    10d0:	31 d2                	xor    %edx,%edx
    10d2:	3d 00 50 c3 47       	cmp    $0x47c35000,%eax
    10d7:	0f 84 cb 01 00 00    	je     12a8 <rlibm_prog_rno_log10+0x228>
    10dd:	0f 86 1d 01 00 00    	jbe    1200 <rlibm_prog_rno_log10+0x180>
    10e3:	3d 20 bc be 4c       	cmp    $0x4cbebc20,%eax
    10e8:	0f 84 da 01 00 00    	je     12c8 <rlibm_prog_rno_log10+0x248>
    10ee:	0f 87 5c 01 00 00    	ja     1250 <rlibm_prog_rno_log10+0x1d0>
    10f4:	3d 00 24 74 49       	cmp    $0x49742400,%eax
    10f9:	0f 84 e9 01 00 00    	je     12e8 <rlibm_prog_rno_log10+0x268>
    10ff:	3d 80 96 18 4b       	cmp    $0x4b189680,%eax
    1104:	f2 0f 10 0d 54 3f 00 	movsd  0x3f54(%rip),%xmm1        # 5060 <log_oneByF+0x440>
    110b:	00 
    110c:	0f 84 e3 00 00 00    	je     11f5 <rlibm_prog_rno_log10+0x175>
    1112:	89 c1                	mov    %eax,%ecx
    1114:	89 c6                	mov    %eax,%esi
    1116:	c1 e9 17             	shr    $0x17,%ecx
    1119:	81 e6 ff ff 7f 00    	and    $0x7fffff,%esi
    111f:	81 ce 00 00 80 3f    	or     $0x3f800000,%esi
    1125:	8d 54 0a 81          	lea    -0x7f(%rdx,%rcx,1),%edx
    1129:	89 c1                	mov    %eax,%ecx
    112b:	25 00 00 7f 00       	and    $0x7f0000,%eax
    1130:	89 74 24 f8          	mov    %esi,-0x8(%rsp)
    1134:	c1 e9 10             	shr    $0x10,%ecx
    1137:	0d 00 00 80 3f       	or     $0x3f800000,%eax
    113c:	f3 0f 10 54 24 f8    	movss  -0x8(%rsp),%xmm2
    1142:	89 44 24 fc          	mov    %eax,-0x4(%rsp)
    1146:	89 c8                	mov    %ecx,%eax
    1148:	48 8d 0d d1 3a 00 00 	lea    0x3ad1(%rip),%rcx        # 4c20 <log_oneByF>
    114f:	f3 0f 5c 54 24 fc    	subss  -0x4(%rsp),%xmm2
    1155:	83 e0 7f             	and    $0x7f,%eax
    1158:	f2 0f 10 05 20 3f 00 	movsd  0x3f20(%rip),%xmm0        # 5080 <log_oneByF+0x460>
    115f:	00 
    1160:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
    1164:	f2 0f 59 14 c1       	mulsd  (%rcx,%rax,8),%xmm2
    1169:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
    116d:	0f 86 95 01 00 00    	jbe    1308 <rlibm_prog_rno_log10+0x288>
    1173:	f2 0f 10 05 0d 3f 00 	movsd  0x3f0d(%rip),%xmm0        # 5088 <log_oneByF+0x468>
    117a:	00 
    117b:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
    117f:	0f 86 63 02 00 00    	jbe    13e8 <rlibm_prog_rno_log10+0x368>
    1185:	f2 0f 10 05 03 3f 00 	movsd  0x3f03(%rip),%xmm0        # 5090 <log_oneByF+0x470>
    118c:	00 
    118d:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    1191:	f2 0f 58 05 ff 3e 00 	addsd  0x3eff(%rip),%xmm0        # 5098 <log_oneByF+0x478>
    1198:	00 
    1199:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    119d:	f2 0f 5c 05 fb 3e 00 	subsd  0x3efb(%rip),%xmm0        # 50a0 <log_oneByF+0x480>
    11a4:	00 
    11a5:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    11a9:	f2 0f 58 05 f7 3e 00 	addsd  0x3ef7(%rip),%xmm0        # 50a8 <log_oneByF+0x488>
    11b0:	00 
    11b1:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    11b5:	f2 0f 58 15 f3 3e 00 	addsd  0x3ef3(%rip),%xmm2        # 50b0 <log_oneByF+0x490>
    11bc:	00 
    11bd:	66 0f 28 c2          	movapd %xmm2,%xmm0
    11c1:	66 0f ef d2          	pxor   %xmm2,%xmm2
    11c5:	f2 0f 10 0d 8b 3f 00 	movsd  0x3f8b(%rip),%xmm1        # 5158 <log_oneByF+0x538>
    11cc:	00 
    11cd:	f2 0f 2a d2          	cvtsi2sd %edx,%xmm2
    11d1:	48 8d 15 48 36 00 00 	lea    0x3648(%rip),%rdx        # 4820 <log10_lut>
    11d8:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    11dc:	f2 0f 59 15 7c 3f 00 	mulsd  0x3f7c(%rip),%xmm2        # 5160 <log_oneByF+0x540>
    11e3:	00 
    11e4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    11e8:	f2 0f 10 0c c2       	movsd  (%rdx,%rax,8),%xmm1
    11ed:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    11f1:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    11f5:	66 0f 28 c1          	movapd %xmm1,%xmm0
    11f9:	c3                   	retq   
    11fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1200:	3d 00 00 c8 42       	cmp    $0x42c80000,%eax
    1205:	0f 84 ad 00 00 00    	je     12b8 <rlibm_prog_rno_log10+0x238>
    120b:	76 23                	jbe    1230 <rlibm_prog_rno_log10+0x1b0>
    120d:	3d 00 00 7a 44       	cmp    $0x447a0000,%eax
    1212:	0f 84 e0 00 00 00    	je     12f8 <rlibm_prog_rno_log10+0x278>
    1218:	3d 00 40 1c 46       	cmp    $0x461c4000,%eax
    121d:	f2 0f 10 0d 23 3e 00 	movsd  0x3e23(%rip),%xmm1        # 5048 <log_oneByF+0x428>
    1224:	00 
    1225:	74 ce                	je     11f5 <rlibm_prog_rno_log10+0x175>
    1227:	e9 e6 fe ff ff       	jmpq   1112 <rlibm_prog_rno_log10+0x92>
    122c:	0f 1f 40 00          	nopl   0x0(%rax)
    1230:	3d 00 00 80 3f       	cmp    $0x3f800000,%eax
    1235:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1239:	74 ba                	je     11f5 <rlibm_prog_rno_log10+0x175>
    123b:	3d 00 00 20 41       	cmp    $0x41200000,%eax
    1240:	f2 0f 10 0d f8 2c 00 	movsd  0x2cf8(%rip),%xmm1        # 3f40 <exp2JBy64+0x200>
    1247:	00 
    1248:	74 ab                	je     11f5 <rlibm_prog_rno_log10+0x175>
    124a:	e9 c3 fe ff ff       	jmpq   1112 <rlibm_prog_rno_log10+0x92>
    124f:	90                   	nop
    1250:	3d 28 6b 6e 4e       	cmp    $0x4e6e6b28,%eax
    1255:	0f 84 7d 00 00 00    	je     12d8 <rlibm_prog_rno_log10+0x258>
    125b:	3d f9 02 15 50       	cmp    $0x501502f9,%eax
    1260:	f2 0f 10 0d 10 3e 00 	movsd  0x3e10(%rip),%xmm1        # 5078 <log_oneByF+0x458>
    1267:	00 
    1268:	74 8b                	je     11f5 <rlibm_prog_rno_log10+0x175>
    126a:	e9 a3 fe ff ff       	jmpq   1112 <rlibm_prog_rno_log10+0x92>
    126f:	90                   	nop
    1270:	f3 0f 5c c0          	subss  %xmm0,%xmm0
    1274:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1278:	f3 0f 5e 05 90 35 00 	divss  0x3590(%rip),%xmm0        # 4810 <__log2_lut+0x430>
    127f:	00 
    1280:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    1284:	e9 6c ff ff ff       	jmpq   11f5 <rlibm_prog_rno_log10+0x175>
    1289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1290:	f3 0f 58 c0          	addss  %xmm0,%xmm0
    1294:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1298:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    129c:	e9 54 ff ff ff       	jmpq   11f5 <rlibm_prog_rno_log10+0x175>
    12a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12a8:	f2 0f 10 0d a0 3d 00 	movsd  0x3da0(%rip),%xmm1        # 5050 <log_oneByF+0x430>
    12af:	00 
    12b0:	e9 40 ff ff ff       	jmpq   11f5 <rlibm_prog_rno_log10+0x175>
    12b5:	0f 1f 00             	nopl   (%rax)
    12b8:	f2 0f 10 0d 78 3d 00 	movsd  0x3d78(%rip),%xmm1        # 5038 <log_oneByF+0x418>
    12bf:	00 
    12c0:	e9 30 ff ff ff       	jmpq   11f5 <rlibm_prog_rno_log10+0x175>
    12c5:	0f 1f 00             	nopl   (%rax)
    12c8:	f2 0f 10 0d 98 3d 00 	movsd  0x3d98(%rip),%xmm1        # 5068 <log_oneByF+0x448>
    12cf:	00 
    12d0:	e9 20 ff ff ff       	jmpq   11f5 <rlibm_prog_rno_log10+0x175>
    12d5:	0f 1f 00             	nopl   (%rax)
    12d8:	f2 0f 10 0d 90 3d 00 	movsd  0x3d90(%rip),%xmm1        # 5070 <log_oneByF+0x450>
    12df:	00 
    12e0:	e9 10 ff ff ff       	jmpq   11f5 <rlibm_prog_rno_log10+0x175>
    12e5:	0f 1f 00             	nopl   (%rax)
    12e8:	f2 0f 10 0d 68 3d 00 	movsd  0x3d68(%rip),%xmm1        # 5058 <log_oneByF+0x438>
    12ef:	00 
    12f0:	e9 00 ff ff ff       	jmpq   11f5 <rlibm_prog_rno_log10+0x175>
    12f5:	0f 1f 00             	nopl   (%rax)
    12f8:	f2 0f 10 0d 40 3d 00 	movsd  0x3d40(%rip),%xmm1        # 5040 <log_oneByF+0x420>
    12ff:	00 
    1300:	e9 f0 fe ff ff       	jmpq   11f5 <rlibm_prog_rno_log10+0x175>
    1305:	0f 1f 00             	nopl   (%rax)
    1308:	f2 0f 10 05 d8 3d 00 	movsd  0x3dd8(%rip),%xmm0        # 50e8 <log_oneByF+0x4c8>
    130f:	00 
    1310:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
    1314:	0f 86 86 00 00 00    	jbe    13a0 <rlibm_prog_rno_log10+0x320>
    131a:	66 0f 2e 15 ce 3d 00 	ucomisd 0x3dce(%rip),%xmm2        # 50f0 <log_oneByF+0x4d0>
    1321:	00 
    1322:	7a 0e                	jp     1332 <rlibm_prog_rno_log10+0x2b2>
    1324:	f2 0f 10 05 04 3d 00 	movsd  0x3d04(%rip),%xmm0        # 5030 <log_oneByF+0x410>
    132b:	00 
    132c:	0f 84 8f fe ff ff    	je     11c1 <rlibm_prog_rno_log10+0x141>
    1332:	66 0f 2e 15 be 3d 00 	ucomisd 0x3dbe(%rip),%xmm2        # 50f8 <log_oneByF+0x4d8>
    1339:	00 
    133a:	7a 0e                	jp     134a <rlibm_prog_rno_log10+0x2ca>
    133c:	f2 0f 10 05 e4 3c 00 	movsd  0x3ce4(%rip),%xmm0        # 5028 <log_oneByF+0x408>
    1343:	00 
    1344:	0f 84 77 fe ff ff    	je     11c1 <rlibm_prog_rno_log10+0x141>
    134a:	f2 0f 10 05 ae 3d 00 	movsd  0x3dae(%rip),%xmm0        # 5100 <log_oneByF+0x4e0>
    1351:	00 
    1352:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    1356:	f2 0f 58 05 aa 3d 00 	addsd  0x3daa(%rip),%xmm0        # 5108 <log_oneByF+0x4e8>
    135d:	00 
    135e:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    1362:	f2 0f 58 05 a6 3d 00 	addsd  0x3da6(%rip),%xmm0        # 5110 <log_oneByF+0x4f0>
    1369:	00 
    136a:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    136e:	f2 0f 5c 05 a2 3d 00 	subsd  0x3da2(%rip),%xmm0        # 5118 <log_oneByF+0x4f8>
    1375:	00 
    1376:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    137a:	f2 0f 58 05 9e 3d 00 	addsd  0x3d9e(%rip),%xmm0        # 5120 <log_oneByF+0x500>
    1381:	00 
    1382:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    1386:	f2 0f 58 15 9a 3d 00 	addsd  0x3d9a(%rip),%xmm2        # 5128 <log_oneByF+0x508>
    138d:	00 
    138e:	66 0f 28 c2          	movapd %xmm2,%xmm0
    1392:	e9 2a fe ff ff       	jmpq   11c1 <rlibm_prog_rno_log10+0x141>
    1397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    139e:	00 00 
    13a0:	f2 0f 10 05 88 3d 00 	movsd  0x3d88(%rip),%xmm0        # 5130 <log_oneByF+0x510>
    13a7:	00 
    13a8:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    13ac:	f2 0f 58 05 84 3d 00 	addsd  0x3d84(%rip),%xmm0        # 5138 <log_oneByF+0x518>
    13b3:	00 
    13b4:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    13b8:	f2 0f 5c 05 80 3d 00 	subsd  0x3d80(%rip),%xmm0        # 5140 <log_oneByF+0x520>
    13bf:	00 
    13c0:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    13c4:	f2 0f 58 05 7c 3d 00 	addsd  0x3d7c(%rip),%xmm0        # 5148 <log_oneByF+0x528>
    13cb:	00 
    13cc:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    13d0:	f2 0f 58 15 78 3d 00 	addsd  0x3d78(%rip),%xmm2        # 5150 <log_oneByF+0x530>
    13d7:	00 
    13d8:	66 0f 28 c2          	movapd %xmm2,%xmm0
    13dc:	e9 e0 fd ff ff       	jmpq   11c1 <rlibm_prog_rno_log10+0x141>
    13e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13e8:	66 0f 2e 15 c8 3c 00 	ucomisd 0x3cc8(%rip),%xmm2        # 50b8 <log_oneByF+0x498>
    13ef:	00 
    13f0:	7a 0e                	jp     1400 <rlibm_prog_rno_log10+0x380>
    13f2:	f2 0f 10 05 26 3c 00 	movsd  0x3c26(%rip),%xmm0        # 5020 <log_oneByF+0x400>
    13f9:	00 
    13fa:	0f 84 c1 fd ff ff    	je     11c1 <rlibm_prog_rno_log10+0x141>
    1400:	f2 0f 10 05 b8 3c 00 	movsd  0x3cb8(%rip),%xmm0        # 50c0 <log_oneByF+0x4a0>
    1407:	00 
    1408:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    140c:	f2 0f 58 05 b4 3c 00 	addsd  0x3cb4(%rip),%xmm0        # 50c8 <log_oneByF+0x4a8>
    1413:	00 
    1414:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    1418:	f2 0f 5c 05 b0 3c 00 	subsd  0x3cb0(%rip),%xmm0        # 50d0 <log_oneByF+0x4b0>
    141f:	00 
    1420:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    1424:	f2 0f 58 05 ac 3c 00 	addsd  0x3cac(%rip),%xmm0        # 50d8 <log_oneByF+0x4b8>
    142b:	00 
    142c:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    1430:	f2 0f 58 15 a8 3c 00 	addsd  0x3ca8(%rip),%xmm2        # 50e0 <log_oneByF+0x4c0>
    1437:	00 
    1438:	66 0f 28 c2          	movapd %xmm2,%xmm0
    143c:	e9 80 fd ff ff       	jmpq   11c1 <rlibm_prog_rno_log10+0x141>
    1441:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1448:	00 00 00 
    144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001450 <rlibm_prog_rno_log>:
    1450:	0f 2e 05 31 46 00 00 	ucomiss 0x4631(%rip),%xmm0        # 5a88 <log_oneByF+0x508>
    1457:	7a 0a                	jp     1463 <rlibm_prog_rno_log+0x13>
    1459:	66 0f ef c9          	pxor   %xmm1,%xmm1
    145d:	0f 84 f1 00 00 00    	je     1554 <rlibm_prog_rno_log+0x104>
    1463:	66 0f 7e c2          	movd   %xmm0,%edx
    1467:	8d 82 00 00 80 ff    	lea    -0x800000(%rdx),%eax
    146d:	3d ff ff ff 7e       	cmp    $0x7effffff,%eax
    1472:	0f 87 e8 00 00 00    	ja     1560 <rlibm_prog_rno_log+0x110>
    1478:	31 c9                	xor    %ecx,%ecx
    147a:	89 d0                	mov    %edx,%eax
    147c:	89 d6                	mov    %edx,%esi
    147e:	c1 e8 17             	shr    $0x17,%eax
    1481:	81 e6 ff ff 7f 00    	and    $0x7fffff,%esi
    1487:	81 ce 00 00 80 3f    	or     $0x3f800000,%esi
    148d:	8d 44 01 81          	lea    -0x7f(%rcx,%rax,1),%eax
    1491:	89 d1                	mov    %edx,%ecx
    1493:	81 e2 00 00 7f 00    	and    $0x7f0000,%edx
    1499:	89 74 24 f8          	mov    %esi,-0x8(%rsp)
    149d:	c1 e9 10             	shr    $0x10,%ecx
    14a0:	81 ca 00 00 80 3f    	or     $0x3f800000,%edx
    14a6:	f3 0f 10 54 24 f8    	movss  -0x8(%rsp),%xmm2
    14ac:	89 54 24 fc          	mov    %edx,-0x4(%rsp)
    14b0:	89 ca                	mov    %ecx,%edx
    14b2:	48 8d 0d c7 40 00 00 	lea    0x40c7(%rip),%rcx        # 5580 <log_oneByF>
    14b9:	f3 0f 5c 54 24 fc    	subss  -0x4(%rsp),%xmm2
    14bf:	83 e2 7f             	and    $0x7f,%edx
    14c2:	f2 0f 10 05 b6 3b 00 	movsd  0x3bb6(%rip),%xmm0        # 5080 <log_oneByF+0x460>
    14c9:	00 
    14ca:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
    14ce:	f2 0f 59 14 d1       	mulsd  (%rcx,%rdx,8),%xmm2
    14d3:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
    14d7:	66 48 0f 7e d1       	movq   %xmm2,%rcx
    14dc:	0f 86 b6 00 00 00    	jbe    1598 <rlibm_prog_rno_log+0x148>
    14e2:	f2 0f 10 05 9e 3b 00 	movsd  0x3b9e(%rip),%xmm0        # 5088 <log_oneByF+0x468>
    14e9:	00 
    14ea:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
    14ee:	0f 86 9c 01 00 00    	jbe    1690 <rlibm_prog_rno_log+0x240>
    14f4:	f2 0f 10 0d f4 44 00 	movsd  0x44f4(%rip),%xmm1        # 59f0 <log_oneByF+0x470>
    14fb:	00 
    14fc:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    1500:	f2 0f 58 0d f0 44 00 	addsd  0x44f0(%rip),%xmm1        # 59f8 <log_oneByF+0x478>
    1507:	00 
    1508:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    150c:	f2 0f 5c 0d ec 44 00 	subsd  0x44ec(%rip),%xmm1        # 5a00 <log_oneByF+0x480>
    1513:	00 
    1514:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    1518:	f2 0f 58 0d e8 44 00 	addsd  0x44e8(%rip),%xmm1        # 5a08 <log_oneByF+0x488>
    151f:	00 
    1520:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    1524:	f2 0f 58 15 84 3b 00 	addsd  0x3b84(%rip),%xmm2        # 50b0 <log_oneByF+0x490>
    152b:	00 
    152c:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1530:	48 8d 0d 49 3c 00 00 	lea    0x3c49(%rip),%rcx        # 5180 <ln_lutHIGH>
    1537:	f2 0f 10 14 d1       	movsd  (%rcx,%rdx,8),%xmm2
    153c:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1540:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1544:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    1548:	f2 0f 59 0d 30 45 00 	mulsd  0x4530(%rip),%xmm1        # 5a80 <log_oneByF+0x500>
    154f:	00 
    1550:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1554:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1558:	c3                   	retq   
    1559:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1560:	f7 c2 ff ff ff 7f    	test   $0x7fffffff,%edx
    1566:	0f 84 9c 00 00 00    	je     1608 <rlibm_prog_rno_log+0x1b8>
    156c:	81 fa 00 00 80 7f    	cmp    $0x7f800000,%edx
    1572:	0f 87 98 01 00 00    	ja     1710 <rlibm_prog_rno_log+0x2c0>
    1578:	0f 84 52 02 00 00    	je     17d0 <rlibm_prog_rno_log+0x380>
    157e:	f3 0f 59 05 8e 32 00 	mulss  0x328e(%rip),%xmm0        # 4814 <__log2_lut+0x434>
    1585:	00 
    1586:	b9 e9 ff ff ff       	mov    $0xffffffe9,%ecx
    158b:	66 0f 7e c2          	movd   %xmm0,%edx
    158f:	e9 e6 fe ff ff       	jmpq   147a <rlibm_prog_rno_log+0x2a>
    1594:	0f 1f 40 00          	nopl   0x0(%rax)
    1598:	f2 0f 10 05 48 3b 00 	movsd  0x3b48(%rip),%xmm0        # 50e8 <log_oneByF+0x4c8>
    159f:	00 
    15a0:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
    15a4:	76 7a                	jbe    1620 <rlibm_prog_rno_log+0x1d0>
    15a6:	48 be 6d b2 c9 26 9b 	movabs $0x3f6e449b26c9b26d,%rsi
    15ad:	44 6e 3f 
    15b0:	48 39 f1             	cmp    %rsi,%rcx
    15b3:	0f 84 6f 02 00 00    	je     1828 <rlibm_prog_rno_log+0x3d8>
    15b9:	0f 86 61 01 00 00    	jbe    1720 <rlibm_prog_rno_log+0x2d0>
    15bf:	48 be 27 7f 93 bf c9 	movabs $0x3f6e7fc9bf937f27,%rsi
    15c6:	7f 6e 3f 
    15c9:	48 39 f1             	cmp    %rsi,%rcx
    15cc:	0f 84 86 02 00 00    	je     1858 <rlibm_prog_rno_log+0x408>
    15d2:	48 be 00 00 00 00 00 	movabs $0x3f70100000000000,%rsi
    15d9:	10 70 3f 
    15dc:	48 39 f1             	cmp    %rsi,%rcx
    15df:	0f 84 63 02 00 00    	je     1848 <rlibm_prog_rno_log+0x3f8>
    15e5:	48 be 00 00 00 00 c0 	movabs $0x3f6e6fc000000000,%rsi
    15ec:	6f 6e 3f 
    15ef:	48 39 f1             	cmp    %rsi,%rcx
    15f2:	0f 85 61 01 00 00    	jne    1759 <rlibm_prog_rno_log+0x309>
    15f8:	f2 0f 10 0d d0 43 00 	movsd  0x43d0(%rip),%xmm1        # 59d0 <log_oneByF+0x450>
    15ff:	00 
    1600:	e9 2b ff ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    1605:	0f 1f 00             	nopl   (%rax)
    1608:	f2 0f 10 0d d8 43 00 	movsd  0x43d8(%rip),%xmm1        # 59e8 <log_oneByF+0x468>
    160f:	00 
    1610:	f2 0f 5e 0d 58 29 00 	divsd  0x2958(%rip),%xmm1        # 3f70 <exp2JBy64+0x230>
    1617:	00 
    1618:	66 0f 28 c1          	movapd %xmm1,%xmm0
    161c:	c3                   	retq   
    161d:	0f 1f 00             	nopl   (%rax)
    1620:	48 be 55 55 55 55 55 	movabs $0x3f73155555555555,%rsi
    1627:	15 73 3f 
    162a:	48 39 f1             	cmp    %rsi,%rcx
    162d:	0f 84 8d 01 00 00    	je     17c0 <rlibm_prog_rno_log+0x370>
    1633:	48 be 8b 82 45 c1 a2 	movabs $0x3f79c0a2c145828b,%rsi
    163a:	c0 79 3f 
    163d:	f2 0f 10 0d 53 43 00 	movsd  0x4353(%rip),%xmm1        # 5998 <log_oneByF+0x418>
    1644:	00 
    1645:	48 39 f1             	cmp    %rsi,%rcx
    1648:	0f 84 e2 fe ff ff    	je     1530 <rlibm_prog_rno_log+0xe0>
    164e:	f2 0f 10 0d 02 44 00 	movsd  0x4402(%rip),%xmm1        # 5a58 <log_oneByF+0x4d8>
    1655:	00 
    1656:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    165a:	f2 0f 58 0d fe 43 00 	addsd  0x43fe(%rip),%xmm1        # 5a60 <log_oneByF+0x4e0>
    1661:	00 
    1662:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    1666:	f2 0f 5c 0d fa 43 00 	subsd  0x43fa(%rip),%xmm1        # 5a68 <log_oneByF+0x4e8>
    166d:	00 
    166e:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    1672:	f2 0f 58 0d f6 43 00 	addsd  0x43f6(%rip),%xmm1        # 5a70 <log_oneByF+0x4f0>
    1679:	00 
    167a:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    167e:	f2 0f 58 15 f2 43 00 	addsd  0x43f2(%rip),%xmm2        # 5a78 <log_oneByF+0x4f8>
    1685:	00 
    1686:	66 0f 28 ca          	movapd %xmm2,%xmm1
    168a:	e9 a1 fe ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    168f:	90                   	nop
    1690:	48 be 44 7e 2f 43 7e 	movabs $0x3f5d6f7e432f7e44,%rsi
    1697:	6f 5d 3f 
    169a:	48 39 f1             	cmp    %rsi,%rcx
    169d:	0f 84 45 01 00 00    	je     17e8 <rlibm_prog_rno_log+0x398>
    16a3:	0f 86 f7 00 00 00    	jbe    17a0 <rlibm_prog_rno_log+0x350>
    16a9:	48 be 00 00 00 00 00 	movabs $0x3f5f960000000000,%rsi
    16b0:	96 5f 3f 
    16b3:	48 39 f1             	cmp    %rsi,%rcx
    16b6:	0f 84 3c 01 00 00    	je     17f8 <rlibm_prog_rno_log+0x3a8>
    16bc:	48 be de 68 ea fc da 	movabs $0x3f64d3dafcea68de,%rsi
    16c3:	d3 64 3f 
    16c6:	f2 0f 10 0d d2 42 00 	movsd  0x42d2(%rip),%xmm1        # 59a0 <log_oneByF+0x420>
    16cd:	00 
    16ce:	48 39 f1             	cmp    %rsi,%rcx
    16d1:	0f 84 59 fe ff ff    	je     1530 <rlibm_prog_rno_log+0xe0>
    16d7:	f2 0f 10 0d 31 43 00 	movsd  0x4331(%rip),%xmm1        # 5a10 <log_oneByF+0x490>
    16de:	00 
    16df:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    16e3:	f2 0f 5c 0d 2d 43 00 	subsd  0x432d(%rip),%xmm1        # 5a18 <log_oneByF+0x498>
    16ea:	00 
    16eb:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    16ef:	f2 0f 58 0d 29 43 00 	addsd  0x4329(%rip),%xmm1        # 5a20 <log_oneByF+0x4a0>
    16f6:	00 
    16f7:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    16fb:	f2 0f 58 15 25 43 00 	addsd  0x4325(%rip),%xmm2        # 5a28 <log_oneByF+0x4a8>
    1702:	00 
    1703:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1707:	e9 24 fe ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    170c:	0f 1f 40 00          	nopl   0x0(%rax)
    1710:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1714:	f2 0f 5e c9          	divsd  %xmm1,%xmm1
    1718:	e9 37 fe ff ff       	jmpq   1554 <rlibm_prog_rno_log+0x104>
    171d:	0f 1f 00             	nopl   (%rax)
    1720:	48 be db 88 75 e9 31 	movabs $0x3f6dbf31e97588db,%rsi
    1727:	bf 6d 3f 
    172a:	48 39 f1             	cmp    %rsi,%rcx
    172d:	0f 84 e5 00 00 00    	je     1818 <rlibm_prog_rno_log+0x3c8>
    1733:	48 be e3 e2 e2 e2 e2 	movabs $0x3f6e22e2e2e2e2e3,%rsi
    173a:	22 6e 3f 
    173d:	48 39 f1             	cmp    %rsi,%rcx
    1740:	0f 84 f2 00 00 00    	je     1838 <rlibm_prog_rno_log+0x3e8>
    1746:	48 be dd d3 08 cb 3d 	movabs $0x3f678d3dcb08d3dd,%rsi
    174d:	8d 67 3f 
    1750:	48 39 f1             	cmp    %rsi,%rcx
    1753:	0f 84 ac 00 00 00    	je     1805 <rlibm_prog_rno_log+0x3b5>
    1759:	f2 0f 10 0d cf 42 00 	movsd  0x42cf(%rip),%xmm1        # 5a30 <log_oneByF+0x4b0>
    1760:	00 
    1761:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    1765:	f2 0f 58 0d cb 42 00 	addsd  0x42cb(%rip),%xmm1        # 5a38 <log_oneByF+0x4b8>
    176c:	00 
    176d:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    1771:	f2 0f 5c 0d c7 42 00 	subsd  0x42c7(%rip),%xmm1        # 5a40 <log_oneByF+0x4c0>
    1778:	00 
    1779:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    177d:	f2 0f 58 0d c3 42 00 	addsd  0x42c3(%rip),%xmm1        # 5a48 <log_oneByF+0x4c8>
    1784:	00 
    1785:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    1789:	f2 0f 5c 15 bf 42 00 	subsd  0x42bf(%rip),%xmm2        # 5a50 <log_oneByF+0x4d0>
    1790:	00 
    1791:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1795:	e9 96 fd ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    179a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    17a0:	48 be 00 00 00 00 80 	movabs $0x3f562b8000000000,%rsi
    17a7:	2b 56 3f 
    17aa:	f2 0f 10 0d ce 41 00 	movsd  0x41ce(%rip),%xmm1        # 5980 <log_oneByF+0x400>
    17b1:	00 
    17b2:	48 39 f1             	cmp    %rsi,%rcx
    17b5:	0f 84 75 fd ff ff    	je     1530 <rlibm_prog_rno_log+0xe0>
    17bb:	e9 17 ff ff ff       	jmpq   16d7 <rlibm_prog_rno_log+0x287>
    17c0:	f2 0f 10 0d c8 41 00 	movsd  0x41c8(%rip),%xmm1        # 5990 <log_oneByF+0x410>
    17c7:	00 
    17c8:	e9 63 fd ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    17cd:	0f 1f 00             	nopl   (%rax)
    17d0:	f2 0f 10 0d 68 27 00 	movsd  0x2768(%rip),%xmm1        # 3f40 <exp2JBy64+0x200>
    17d7:	00 
    17d8:	f2 0f 5e 0d 90 27 00 	divsd  0x2790(%rip),%xmm1        # 3f70 <exp2JBy64+0x230>
    17df:	00 
    17e0:	e9 6f fd ff ff       	jmpq   1554 <rlibm_prog_rno_log+0x104>
    17e5:	0f 1f 00             	nopl   (%rax)
    17e8:	f2 0f 10 0d c0 41 00 	movsd  0x41c0(%rip),%xmm1        # 59b0 <log_oneByF+0x430>
    17ef:	00 
    17f0:	e9 3b fd ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    17f5:	0f 1f 00             	nopl   (%rax)
    17f8:	f2 0f 10 0d a8 41 00 	movsd  0x41a8(%rip),%xmm1        # 59a8 <log_oneByF+0x428>
    17ff:	00 
    1800:	e9 2b fd ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    1805:	f2 0f 10 0d ab 41 00 	movsd  0x41ab(%rip),%xmm1        # 59b8 <log_oneByF+0x438>
    180c:	00 
    180d:	e9 1e fd ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    1812:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1818:	f2 0f 10 0d 68 41 00 	movsd  0x4168(%rip),%xmm1        # 5988 <log_oneByF+0x408>
    181f:	00 
    1820:	e9 0b fd ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    1825:	0f 1f 00             	nopl   (%rax)
    1828:	f2 0f 10 0d a8 41 00 	movsd  0x41a8(%rip),%xmm1        # 59d8 <log_oneByF+0x458>
    182f:	00 
    1830:	e9 fb fc ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    1835:	0f 1f 00             	nopl   (%rax)
    1838:	f2 0f 10 0d a0 41 00 	movsd  0x41a0(%rip),%xmm1        # 59e0 <log_oneByF+0x460>
    183f:	00 
    1840:	e9 eb fc ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    1845:	0f 1f 00             	nopl   (%rax)
    1848:	f2 0f 10 0d 70 41 00 	movsd  0x4170(%rip),%xmm1        # 59c0 <log_oneByF+0x440>
    184f:	00 
    1850:	e9 db fc ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    1855:	0f 1f 00             	nopl   (%rax)
    1858:	f2 0f 10 0d 68 41 00 	movsd  0x4168(%rip),%xmm1        # 59c8 <log_oneByF+0x448>
    185f:	00 
    1860:	e9 cb fc ff ff       	jmpq   1530 <rlibm_prog_rno_log+0xe0>
    1865:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    186c:	00 00 00 
    186f:	90                   	nop

0000000000001870 <rlibm_prog_rno_exp>:
    1870:	66 0f 7e c0          	movd   %xmm0,%eax
    1874:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
    1879:	74 5d                	je     18d8 <rlibm_prog_rno_exp+0x68>
    187b:	3d ff ff ff 33       	cmp    $0x33ffffff,%eax
    1880:	77 16                	ja     1898 <rlibm_prog_rno_exp+0x28>
    1882:	3d ff ff 7f 33       	cmp    $0x337fffff,%eax
    1887:	f2 0f 10 05 b9 26 00 	movsd  0x26b9(%rip),%xmm0        # 3f48 <exp2JBy64+0x208>
    188e:	00 
    188f:	77 57                	ja     18e8 <rlibm_prog_rno_exp+0x78>
    1891:	f3 c3                	repz retq 
    1893:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1898:	8d 88 e8 8d 4e bd    	lea    -0x42b17218(%rax),%ecx
    189e:	81 f9 e8 8d ce 70    	cmp    $0x70ce8de8,%ecx
    18a4:	77 52                	ja     18f8 <rlibm_prog_rno_exp+0x88>
    18a6:	85 c0                	test   %eax,%eax
    18a8:	0f 88 d2 01 00 00    	js     1a80 <rlibm_prog_rno_exp+0x210>
    18ae:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    18b3:	f2 0f 10 05 9d 26 00 	movsd  0x269d(%rip),%xmm0        # 3f58 <exp2JBy64+0x218>
    18ba:	00 
    18bb:	76 d4                	jbe    1891 <rlibm_prog_rno_exp+0x21>
    18bd:	3d 00 00 80 7f       	cmp    $0x7f800000,%eax
    18c2:	75 59                	jne    191d <rlibm_prog_rno_exp+0xad>
    18c4:	f2 0f 10 05 74 26 00 	movsd  0x2674(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    18cb:	00 
    18cc:	f2 0f 5e 05 9c 26 00 	divsd  0x269c(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    18d3:	00 
    18d4:	c3                   	retq   
    18d5:	0f 1f 00             	nopl   (%rax)
    18d8:	f2 0f 10 05 60 26 00 	movsd  0x2660(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    18df:	00 
    18e0:	c3                   	retq   
    18e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    18e8:	f2 0f 10 05 60 26 00 	movsd  0x2660(%rip),%xmm0        # 3f50 <exp2JBy64+0x210>
    18ef:	00 
    18f0:	c3                   	retq   
    18f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    18f8:	3d b4 f1 cf c2       	cmp    $0xc2cff1b4,%eax
    18fd:	76 31                	jbe    1930 <rlibm_prog_rno_exp+0xc0>
    18ff:	3d 00 00 80 ff       	cmp    $0xff800000,%eax
    1904:	0f 84 6e 01 00 00    	je     1a78 <rlibm_prog_rno_exp+0x208>
    190a:	3d ff ff 7f ff       	cmp    $0xff7fffff,%eax
    190f:	f2 0f 10 05 61 26 00 	movsd  0x2661(%rip),%xmm0        # 3f78 <exp2JBy64+0x238>
    1916:	00 
    1917:	0f 86 74 ff ff ff    	jbe    1891 <rlibm_prog_rno_exp+0x21>
    191d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1921:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    1925:	c3                   	retq   
    1926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    192d:	00 00 00 
    1930:	48 83 ec 18          	sub    $0x18,%rsp
    1934:	f3 0f 11 44 24 08    	movss  %xmm0,0x8(%rsp)
    193a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    193e:	f2 0f 10 0d 5a 43 00 	movsd  0x435a(%rip),%xmm1        # 5ca0 <exp2JBy64+0x200>
    1945:	00 
    1946:	f3 0f 10 54 24 08    	movss  0x8(%rsp),%xmm2
    194c:	f3 0f 5a c2          	cvtss2sd %xmm2,%xmm0
    1950:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1954:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
    1958:	66 0f ef c9          	pxor   %xmm1,%xmm1
    195c:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    1960:	89 c1                	mov    %eax,%ecx
    1962:	c1 f9 1f             	sar    $0x1f,%ecx
    1965:	c1 e9 1a             	shr    $0x1a,%ecx
    1968:	8d 14 08             	lea    (%rax,%rcx,1),%edx
    196b:	83 e2 3f             	and    $0x3f,%edx
    196e:	29 ca                	sub    %ecx,%edx
    1970:	8d 4a 40             	lea    0x40(%rdx),%ecx
    1973:	85 d2                	test   %edx,%edx
    1975:	0f 48 d1             	cmovs  %ecx,%edx
    1978:	89 c1                	mov    %eax,%ecx
    197a:	29 d1                	sub    %edx,%ecx
    197c:	f2 0f 59 0d 24 43 00 	mulsd  0x4324(%rip),%xmm1        # 5ca8 <exp2JBy64+0x208>
    1983:	00 
    1984:	8d 79 3f             	lea    0x3f(%rcx),%edi
    1987:	85 c9                	test   %ecx,%ecx
    1989:	0f 49 f9             	cmovns %ecx,%edi
    198c:	c1 ff 06             	sar    $0x6,%edi
    198f:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    1993:	f2 0f 10 0d 15 43 00 	movsd  0x4315(%rip),%xmm1        # 5cb0 <exp2JBy64+0x210>
    199a:	00 
    199b:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    199f:	77 67                	ja     1a08 <rlibm_prog_rno_exp+0x198>
    19a1:	f2 0f 10 0d 6f 43 00 	movsd  0x436f(%rip),%xmm1        # 5d18 <exp2JBy64+0x278>
    19a8:	00 
    19a9:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    19ad:	66 0f 28 c8          	movapd %xmm0,%xmm1
    19b1:	0f 86 e9 00 00 00    	jbe    1aa0 <rlibm_prog_rno_exp+0x230>
    19b7:	f2 0f 59 0d 61 43 00 	mulsd  0x4361(%rip),%xmm1        # 5d20 <exp2JBy64+0x280>
    19be:	00 
    19bf:	f2 0f 58 0d 61 43 00 	addsd  0x4361(%rip),%xmm1        # 5d28 <exp2JBy64+0x288>
    19c6:	00 
    19c7:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    19cb:	f2 0f 58 0d 5d 43 00 	addsd  0x435d(%rip),%xmm1        # 5d30 <exp2JBy64+0x290>
    19d2:	00 
    19d3:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    19d7:	f2 0f 58 05 59 43 00 	addsd  0x4359(%rip),%xmm0        # 5d38 <exp2JBy64+0x298>
    19de:	00 
    19df:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    19e5:	48 8d 05 b4 40 00 00 	lea    0x40b4(%rip),%rax        # 5aa0 <exp2JBy64>
    19ec:	48 63 d2             	movslq %edx,%rdx
    19ef:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
    19f4:	e8 e7 ec ff ff       	callq  6e0 <ldexp@plt>
    19f9:	f2 0f 59 44 24 08    	mulsd  0x8(%rsp),%xmm0
    19ff:	48 83 c4 18          	add    $0x18,%rsp
    1a03:	c3                   	retq   
    1a04:	0f 1f 40 00          	nopl   0x0(%rax)
    1a08:	f2 0f 10 0d a8 42 00 	movsd  0x42a8(%rip),%xmm1        # 5cb8 <exp2JBy64+0x218>
    1a0f:	00 
    1a10:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    1a14:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1a18:	0f 86 c2 00 00 00    	jbe    1ae0 <rlibm_prog_rno_exp+0x270>
    1a1e:	f2 0f 59 0d 9a 42 00 	mulsd  0x429a(%rip),%xmm1        # 5cc0 <exp2JBy64+0x220>
    1a25:	00 
    1a26:	f2 0f 58 0d 9a 42 00 	addsd  0x429a(%rip),%xmm1        # 5cc8 <exp2JBy64+0x228>
    1a2d:	00 
    1a2e:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1a32:	f2 0f 58 0d 96 42 00 	addsd  0x4296(%rip),%xmm1        # 5cd0 <exp2JBy64+0x230>
    1a39:	00 
    1a3a:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1a3e:	f2 0f 58 0d 92 42 00 	addsd  0x4292(%rip),%xmm1        # 5cd8 <exp2JBy64+0x238>
    1a45:	00 
    1a46:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1a4a:	f2 0f 58 0d 8e 42 00 	addsd  0x428e(%rip),%xmm1        # 5ce0 <exp2JBy64+0x240>
    1a51:	00 
    1a52:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1a56:	f2 0f 58 0d 8a 42 00 	addsd  0x428a(%rip),%xmm1        # 5ce8 <exp2JBy64+0x248>
    1a5d:	00 
    1a5e:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1a62:	f2 0f 58 05 86 42 00 	addsd  0x4286(%rip),%xmm0        # 5cf0 <exp2JBy64+0x250>
    1a69:	00 
    1a6a:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1a70:	e9 70 ff ff ff       	jmpq   19e5 <rlibm_prog_rno_exp+0x175>
    1a75:	0f 1f 00             	nopl   (%rax)
    1a78:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1a7c:	c3                   	retq   
    1a7d:	0f 1f 00             	nopl   (%rax)
    1a80:	3d 00 00 00 b3       	cmp    $0xb3000000,%eax
    1a85:	f2 0f 10 05 d3 24 00 	movsd  0x24d3(%rip),%xmm0        # 3f60 <exp2JBy64+0x220>
    1a8c:	00 
    1a8d:	0f 86 fe fd ff ff    	jbe    1891 <rlibm_prog_rno_exp+0x21>
    1a93:	f2 0f 10 05 cd 24 00 	movsd  0x24cd(%rip),%xmm0        # 3f68 <exp2JBy64+0x228>
    1a9a:	00 
    1a9b:	c3                   	retq   
    1a9c:	0f 1f 40 00          	nopl   0x0(%rax)
    1aa0:	f2 0f 59 0d 98 42 00 	mulsd  0x4298(%rip),%xmm1        # 5d40 <exp2JBy64+0x2a0>
    1aa7:	00 
    1aa8:	f2 0f 58 0d 98 42 00 	addsd  0x4298(%rip),%xmm1        # 5d48 <exp2JBy64+0x2a8>
    1aaf:	00 
    1ab0:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1ab4:	f2 0f 58 0d 94 42 00 	addsd  0x4294(%rip),%xmm1        # 5d50 <exp2JBy64+0x2b0>
    1abb:	00 
    1abc:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1ac0:	f2 0f 58 0d 90 42 00 	addsd  0x4290(%rip),%xmm1        # 5d58 <exp2JBy64+0x2b8>
    1ac7:	00 
    1ac8:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1acc:	f2 0f 58 05 8c 42 00 	addsd  0x428c(%rip),%xmm0        # 5d60 <exp2JBy64+0x2c0>
    1ad3:	00 
    1ad4:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1ada:	e9 06 ff ff ff       	jmpq   19e5 <rlibm_prog_rno_exp+0x175>
    1adf:	90                   	nop
    1ae0:	f2 0f 59 0d 10 42 00 	mulsd  0x4210(%rip),%xmm1        # 5cf8 <exp2JBy64+0x258>
    1ae7:	00 
    1ae8:	f2 0f 58 0d 10 42 00 	addsd  0x4210(%rip),%xmm1        # 5d00 <exp2JBy64+0x260>
    1aef:	00 
    1af0:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1af4:	f2 0f 58 0d 0c 42 00 	addsd  0x420c(%rip),%xmm1        # 5d08 <exp2JBy64+0x268>
    1afb:	00 
    1afc:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1b00:	f2 0f 58 05 08 42 00 	addsd  0x4208(%rip),%xmm0        # 5d10 <exp2JBy64+0x270>
    1b07:	00 
    1b08:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1b0e:	e9 d2 fe ff ff       	jmpq   19e5 <rlibm_prog_rno_exp+0x175>
    1b13:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1b1a:	00 00 00 
    1b1d:	0f 1f 00             	nopl   (%rax)

0000000000001b20 <rlibm_prog_rno_exp10>:
    1b20:	66 0f 7e c0          	movd   %xmm0,%eax
    1b24:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
    1b29:	74 5d                	je     1b88 <rlibm_prog_rno_exp10+0x68>
    1b2b:	3d d7 5b 5e 33       	cmp    $0x335e5bd7,%eax
    1b30:	77 16                	ja     1b48 <rlibm_prog_rno_exp10+0x28>
    1b32:	3d d8 5b de 32       	cmp    $0x32de5bd8,%eax
    1b37:	f2 0f 10 05 09 24 00 	movsd  0x2409(%rip),%xmm0        # 3f48 <exp2JBy64+0x208>
    1b3e:	00 
    1b3f:	77 57                	ja     1b98 <rlibm_prog_rno_exp10+0x78>
    1b41:	c3                   	retq   
    1b42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1b48:	8d 88 65 df e5 bd    	lea    -0x421a209b(%rax),%ecx
    1b4e:	81 f9 3e 3b c4 70    	cmp    $0x70c43b3e,%ecx
    1b54:	77 52                	ja     1ba8 <rlibm_prog_rno_exp10+0x88>
    1b56:	85 c0                	test   %eax,%eax
    1b58:	0f 88 1a 02 00 00    	js     1d78 <rlibm_prog_rno_exp10+0x258>
    1b5e:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    1b63:	f2 0f 10 05 ed 23 00 	movsd  0x23ed(%rip),%xmm0        # 3f58 <exp2JBy64+0x218>
    1b6a:	00 
    1b6b:	76 d4                	jbe    1b41 <rlibm_prog_rno_exp10+0x21>
    1b6d:	3d 00 00 80 7f       	cmp    $0x7f800000,%eax
    1b72:	75 59                	jne    1bcd <rlibm_prog_rno_exp10+0xad>
    1b74:	f2 0f 10 05 c4 23 00 	movsd  0x23c4(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    1b7b:	00 
    1b7c:	f2 0f 5e 05 ec 23 00 	divsd  0x23ec(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    1b83:	00 
    1b84:	c3                   	retq   
    1b85:	0f 1f 00             	nopl   (%rax)
    1b88:	f2 0f 10 05 b0 23 00 	movsd  0x23b0(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    1b8f:	00 
    1b90:	c3                   	retq   
    1b91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b98:	f2 0f 10 05 b0 23 00 	movsd  0x23b0(%rip),%xmm0        # 3f50 <exp2JBy64+0x210>
    1b9f:	00 
    1ba0:	c3                   	retq   
    1ba1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1ba8:	3d 35 9e 34 c2       	cmp    $0xc2349e35,%eax
    1bad:	76 31                	jbe    1be0 <rlibm_prog_rno_exp10+0xc0>
    1baf:	3d 00 00 80 ff       	cmp    $0xff800000,%eax
    1bb4:	0f 84 b6 01 00 00    	je     1d70 <rlibm_prog_rno_exp10+0x250>
    1bba:	3d ff ff 7f ff       	cmp    $0xff7fffff,%eax
    1bbf:	f2 0f 10 05 b1 23 00 	movsd  0x23b1(%rip),%xmm0        # 3f78 <exp2JBy64+0x238>
    1bc6:	00 
    1bc7:	0f 86 74 ff ff ff    	jbe    1b41 <rlibm_prog_rno_exp10+0x21>
    1bcd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1bd1:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    1bd5:	c3                   	retq   
    1bd6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1bdd:	00 00 00 
    1be0:	3d 00 00 c0 40       	cmp    $0x40c00000,%eax
    1be5:	0f 84 fd 01 00 00    	je     1de8 <rlibm_prog_rno_exp10+0x2c8>
    1beb:	66 0f 7e c2          	movd   %xmm0,%edx
    1bef:	0f 87 4b 01 00 00    	ja     1d40 <rlibm_prog_rno_exp10+0x220>
    1bf5:	3d 00 00 40 40       	cmp    $0x40400000,%eax
    1bfa:	0f 84 0c 02 00 00    	je     1e0c <rlibm_prog_rno_exp10+0x2ec>
    1c00:	0f 87 ba 01 00 00    	ja     1dc0 <rlibm_prog_rno_exp10+0x2a0>
    1c06:	3d 00 00 80 3f       	cmp    $0x3f800000,%eax
    1c0b:	0f 84 e9 01 00 00    	je     1dfa <rlibm_prog_rno_exp10+0x2da>
    1c11:	3d 00 00 00 40       	cmp    $0x40000000,%eax
    1c16:	f2 0f 10 05 6a 43 00 	movsd  0x436a(%rip),%xmm0        # 5f88 <exp2JBy64+0x208>
    1c1d:	00 
    1c1e:	0f 84 1d ff ff ff    	je     1b41 <rlibm_prog_rno_exp10+0x21>
    1c24:	48 83 ec 18          	sub    $0x18,%rsp
    1c28:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1c2c:	89 54 24 08          	mov    %edx,0x8(%rsp)
    1c30:	f2 0f 10 0d 98 43 00 	movsd  0x4398(%rip),%xmm1        # 5fd0 <exp2JBy64+0x250>
    1c37:	00 
    1c38:	f3 0f 10 54 24 08    	movss  0x8(%rsp),%xmm2
    1c3e:	f3 0f 5a c2          	cvtss2sd %xmm2,%xmm0
    1c42:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1c46:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
    1c4a:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1c4e:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    1c52:	89 c1                	mov    %eax,%ecx
    1c54:	c1 f9 1f             	sar    $0x1f,%ecx
    1c57:	c1 e9 1a             	shr    $0x1a,%ecx
    1c5a:	8d 14 08             	lea    (%rax,%rcx,1),%edx
    1c5d:	83 e2 3f             	and    $0x3f,%edx
    1c60:	29 ca                	sub    %ecx,%edx
    1c62:	8d 4a 40             	lea    0x40(%rdx),%ecx
    1c65:	85 d2                	test   %edx,%edx
    1c67:	0f 48 d1             	cmovs  %ecx,%edx
    1c6a:	89 c1                	mov    %eax,%ecx
    1c6c:	29 d1                	sub    %edx,%ecx
    1c6e:	f2 0f 59 0d 62 43 00 	mulsd  0x4362(%rip),%xmm1        # 5fd8 <exp2JBy64+0x258>
    1c75:	00 
    1c76:	8d 79 3f             	lea    0x3f(%rcx),%edi
    1c79:	85 c9                	test   %ecx,%ecx
    1c7b:	0f 49 f9             	cmovns %ecx,%edi
    1c7e:	c1 ff 06             	sar    $0x6,%edi
    1c81:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    1c85:	f2 0f 10 0d 53 43 00 	movsd  0x4353(%rip),%xmm1        # 5fe0 <exp2JBy64+0x260>
    1c8c:	00 
    1c8d:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    1c91:	0f 86 87 01 00 00    	jbe    1e1e <rlibm_prog_rno_exp10+0x2fe>
    1c97:	f2 0f 10 0d 49 43 00 	movsd  0x4349(%rip),%xmm1        # 5fe8 <exp2JBy64+0x268>
    1c9e:	00 
    1c9f:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    1ca3:	0f 86 ba 01 00 00    	jbe    1e63 <rlibm_prog_rno_exp10+0x343>
    1ca9:	66 0f 2e 05 3f 43 00 	ucomisd 0x433f(%rip),%xmm0        # 5ff0 <exp2JBy64+0x270>
    1cb0:	00 
    1cb1:	7a 10                	jp     1cc3 <rlibm_prog_rno_exp10+0x1a3>
    1cb3:	f2 0f 10 25 c5 42 00 	movsd  0x42c5(%rip),%xmm4        # 5f80 <exp2JBy64+0x200>
    1cba:	00 
    1cbb:	f2 0f 11 64 24 08    	movsd  %xmm4,0x8(%rsp)
    1cc1:	74 56                	je     1d19 <rlibm_prog_rno_exp10+0x1f9>
    1cc3:	f2 0f 10 0d 2d 43 00 	movsd  0x432d(%rip),%xmm1        # 5ff8 <exp2JBy64+0x278>
    1cca:	00 
    1ccb:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1ccf:	f2 0f 5c 0d 29 43 00 	subsd  0x4329(%rip),%xmm1        # 6000 <exp2JBy64+0x280>
    1cd6:	00 
    1cd7:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1cdb:	f2 0f 58 0d 25 43 00 	addsd  0x4325(%rip),%xmm1        # 6008 <exp2JBy64+0x288>
    1ce2:	00 
    1ce3:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1ce7:	f2 0f 58 0d 21 43 00 	addsd  0x4321(%rip),%xmm1        # 6010 <exp2JBy64+0x290>
    1cee:	00 
    1cef:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1cf3:	f2 0f 58 0d 1d 43 00 	addsd  0x431d(%rip),%xmm1        # 6018 <exp2JBy64+0x298>
    1cfa:	00 
    1cfb:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1cff:	f2 0f 58 0d 19 43 00 	addsd  0x4319(%rip),%xmm1        # 6020 <exp2JBy64+0x2a0>
    1d06:	00 
    1d07:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1d0b:	f2 0f 58 05 15 43 00 	addsd  0x4315(%rip),%xmm0        # 6028 <exp2JBy64+0x2a8>
    1d12:	00 
    1d13:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1d19:	48 8d 05 60 40 00 00 	lea    0x4060(%rip),%rax        # 5d80 <exp2JBy64>
    1d20:	48 63 d2             	movslq %edx,%rdx
    1d23:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
    1d28:	e8 b3 e9 ff ff       	callq  6e0 <ldexp@plt>
    1d2d:	f2 0f 59 44 24 08    	mulsd  0x8(%rsp),%xmm0
    1d33:	48 83 c4 18          	add    $0x18,%rsp
    1d37:	c3                   	retq   
    1d38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1d3f:	00 
    1d40:	3d 00 00 10 41       	cmp    $0x41100000,%eax
    1d45:	0f 84 94 00 00 00    	je     1ddf <rlibm_prog_rno_exp10+0x2bf>
    1d4b:	77 4b                	ja     1d98 <rlibm_prog_rno_exp10+0x278>
    1d4d:	3d 00 00 e0 40       	cmp    $0x40e00000,%eax
    1d52:	0f 84 99 00 00 00    	je     1df1 <rlibm_prog_rno_exp10+0x2d1>
    1d58:	3d 00 00 00 41       	cmp    $0x41000000,%eax
    1d5d:	f2 0f 10 05 53 42 00 	movsd  0x4253(%rip),%xmm0        # 5fb8 <exp2JBy64+0x238>
    1d64:	00 
    1d65:	0f 84 d6 fd ff ff    	je     1b41 <rlibm_prog_rno_exp10+0x21>
    1d6b:	e9 b4 fe ff ff       	jmpq   1c24 <rlibm_prog_rno_exp10+0x104>
    1d70:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1d74:	c3                   	retq   
    1d75:	0f 1f 00             	nopl   (%rax)
    1d78:	3d d8 5b 5e b2       	cmp    $0xb25e5bd8,%eax
    1d7d:	f2 0f 10 05 db 21 00 	movsd  0x21db(%rip),%xmm0        # 3f60 <exp2JBy64+0x220>
    1d84:	00 
    1d85:	0f 86 b6 fd ff ff    	jbe    1b41 <rlibm_prog_rno_exp10+0x21>
    1d8b:	f2 0f 10 05 d5 21 00 	movsd  0x21d5(%rip),%xmm0        # 3f68 <exp2JBy64+0x228>
    1d92:	00 
    1d93:	c3                   	retq   
    1d94:	0f 1f 40 00          	nopl   0x0(%rax)
    1d98:	3d 00 00 20 41       	cmp    $0x41200000,%eax
    1d9d:	74 64                	je     1e03 <rlibm_prog_rno_exp10+0x2e3>
    1d9f:	3d 00 00 00 80       	cmp    $0x80000000,%eax
    1da4:	f2 0f 10 05 94 21 00 	movsd  0x2194(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    1dab:	00 
    1dac:	0f 84 8f fd ff ff    	je     1b41 <rlibm_prog_rno_exp10+0x21>
    1db2:	e9 6d fe ff ff       	jmpq   1c24 <rlibm_prog_rno_exp10+0x104>
    1db7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1dbe:	00 00 
    1dc0:	3d 00 00 80 40       	cmp    $0x40800000,%eax
    1dc5:	74 4e                	je     1e15 <rlibm_prog_rno_exp10+0x2f5>
    1dc7:	3d 00 00 a0 40       	cmp    $0x40a00000,%eax
    1dcc:	f2 0f 10 05 cc 41 00 	movsd  0x41cc(%rip),%xmm0        # 5fa0 <exp2JBy64+0x220>
    1dd3:	00 
    1dd4:	0f 84 67 fd ff ff    	je     1b41 <rlibm_prog_rno_exp10+0x21>
    1dda:	e9 45 fe ff ff       	jmpq   1c24 <rlibm_prog_rno_exp10+0x104>
    1ddf:	f2 0f 10 05 d9 41 00 	movsd  0x41d9(%rip),%xmm0        # 5fc0 <exp2JBy64+0x240>
    1de6:	00 
    1de7:	c3                   	retq   
    1de8:	f2 0f 10 05 b8 41 00 	movsd  0x41b8(%rip),%xmm0        # 5fa8 <exp2JBy64+0x228>
    1def:	00 
    1df0:	c3                   	retq   
    1df1:	f2 0f 10 05 b7 41 00 	movsd  0x41b7(%rip),%xmm0        # 5fb0 <exp2JBy64+0x230>
    1df8:	00 
    1df9:	c3                   	retq   
    1dfa:	f2 0f 10 05 76 32 00 	movsd  0x3276(%rip),%xmm0        # 5078 <log_oneByF+0x458>
    1e01:	00 
    1e02:	c3                   	retq   
    1e03:	f2 0f 10 05 bd 41 00 	movsd  0x41bd(%rip),%xmm0        # 5fc8 <exp2JBy64+0x248>
    1e0a:	00 
    1e0b:	c3                   	retq   
    1e0c:	f2 0f 10 05 7c 41 00 	movsd  0x417c(%rip),%xmm0        # 5f90 <exp2JBy64+0x210>
    1e13:	00 
    1e14:	c3                   	retq   
    1e15:	f2 0f 10 05 7b 41 00 	movsd  0x417b(%rip),%xmm0        # 5f98 <exp2JBy64+0x218>
    1e1c:	00 
    1e1d:	c3                   	retq   
    1e1e:	f2 0f 10 0d 2a 42 00 	movsd  0x422a(%rip),%xmm1        # 6050 <exp2JBy64+0x2d0>
    1e25:	00 
    1e26:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    1e2a:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1e2e:	76 6a                	jbe    1e9a <rlibm_prog_rno_exp10+0x37a>
    1e30:	f2 0f 59 0d 20 42 00 	mulsd  0x4220(%rip),%xmm1        # 6058 <exp2JBy64+0x2d8>
    1e37:	00 
    1e38:	f2 0f 58 0d 20 42 00 	addsd  0x4220(%rip),%xmm1        # 6060 <exp2JBy64+0x2e0>
    1e3f:	00 
    1e40:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1e44:	f2 0f 58 0d 1c 42 00 	addsd  0x421c(%rip),%xmm1        # 6068 <exp2JBy64+0x2e8>
    1e4b:	00 
    1e4c:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1e50:	f2 0f 58 05 18 42 00 	addsd  0x4218(%rip),%xmm0        # 6070 <exp2JBy64+0x2f0>
    1e57:	00 
    1e58:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1e5e:	e9 b6 fe ff ff       	jmpq   1d19 <rlibm_prog_rno_exp10+0x1f9>
    1e63:	f2 0f 10 0d c5 41 00 	movsd  0x41c5(%rip),%xmm1        # 6030 <exp2JBy64+0x2b0>
    1e6a:	00 
    1e6b:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1e6f:	f2 0f 58 0d c1 41 00 	addsd  0x41c1(%rip),%xmm1        # 6038 <exp2JBy64+0x2b8>
    1e76:	00 
    1e77:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1e7b:	f2 0f 58 0d bd 41 00 	addsd  0x41bd(%rip),%xmm1        # 6040 <exp2JBy64+0x2c0>
    1e82:	00 
    1e83:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1e87:	f2 0f 58 05 b9 41 00 	addsd  0x41b9(%rip),%xmm0        # 6048 <exp2JBy64+0x2c8>
    1e8e:	00 
    1e8f:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1e95:	e9 7f fe ff ff       	jmpq   1d19 <rlibm_prog_rno_exp10+0x1f9>
    1e9a:	f2 0f 59 0d d6 41 00 	mulsd  0x41d6(%rip),%xmm1        # 6078 <exp2JBy64+0x2f8>
    1ea1:	00 
    1ea2:	f2 0f 58 0d d6 41 00 	addsd  0x41d6(%rip),%xmm1        # 6080 <exp2JBy64+0x300>
    1ea9:	00 
    1eaa:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1eae:	f2 0f 58 0d d2 41 00 	addsd  0x41d2(%rip),%xmm1        # 6088 <exp2JBy64+0x308>
    1eb5:	00 
    1eb6:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    1eba:	f2 0f 58 0d ce 41 00 	addsd  0x41ce(%rip),%xmm1        # 6090 <exp2JBy64+0x310>
    1ec1:	00 
    1ec2:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1ec6:	f2 0f 58 05 ca 41 00 	addsd  0x41ca(%rip),%xmm0        # 6098 <exp2JBy64+0x318>
    1ecd:	00 
    1ece:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1ed4:	e9 40 fe ff ff       	jmpq   1d19 <rlibm_prog_rno_exp10+0x1f9>
    1ed9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001ee0 <rlibm_prog_rno_cosh>:
    1ee0:	66 0f 7e c0          	movd   %xmm0,%eax
    1ee4:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    1ee9:	3d ff ff ff 39       	cmp    $0x39ffffff,%eax
    1eee:	77 28                	ja     1f18 <rlibm_prog_rno_cosh+0x38>
    1ef0:	85 c0                	test   %eax,%eax
    1ef2:	f2 0f 10 05 46 20 00 	movsd  0x2046(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    1ef9:	00 
    1efa:	74 13                	je     1f0f <rlibm_prog_rno_cosh+0x2f>
    1efc:	3d f3 04 b5 39       	cmp    $0x39b504f3,%eax
    1f01:	f2 0f 10 05 3f 20 00 	movsd  0x203f(%rip),%xmm0        # 3f48 <exp2JBy64+0x208>
    1f08:	00 
    1f09:	0f 87 51 01 00 00    	ja     2060 <rlibm_prog_rno_cosh+0x180>
    1f0f:	f3 c3                	repz retq 
    1f11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f18:	3d fc d4 b2 42       	cmp    $0x42b2d4fc,%eax
    1f1d:	76 29                	jbe    1f48 <rlibm_prog_rno_cosh+0x68>
    1f1f:	3d 00 00 80 7f       	cmp    $0x7f800000,%eax
    1f24:	0f 87 46 01 00 00    	ja     2070 <rlibm_prog_rno_cosh+0x190>
    1f2a:	f2 0f 10 05 26 20 00 	movsd  0x2026(%rip),%xmm0        # 3f58 <exp2JBy64+0x218>
    1f31:	00 
    1f32:	75 db                	jne    1f0f <rlibm_prog_rno_cosh+0x2f>
    1f34:	f2 0f 10 05 04 20 00 	movsd  0x2004(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    1f3b:	00 
    1f3c:	f2 0f 5e 05 2c 20 00 	divsd  0x202c(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    1f43:	00 
    1f44:	c3                   	retq   
    1f45:	0f 1f 00             	nopl   (%rax)
    1f48:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1f4c:	89 44 24 fc          	mov    %eax,-0x4(%rsp)
    1f50:	f3 0f 10 7c 24 fc    	movss  -0x4(%rsp),%xmm7
    1f56:	f2 0f 10 05 42 3d 00 	movsd  0x3d42(%rip),%xmm0        # 5ca0 <exp2JBy64+0x200>
    1f5d:	00 
    1f5e:	f3 0f 5a cf          	cvtss2sd %xmm7,%xmm1
    1f62:	f2 0f 10 25 66 4d 00 	movsd  0x4d66(%rip),%xmm4        # 6cd0 <sinhKLn2+0x410>
    1f69:	00 
    1f6a:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1f6e:	f2 0f 10 35 72 4d 00 	movsd  0x4d72(%rip),%xmm6        # 6ce8 <sinhKLn2+0x428>
    1f75:	00 
    1f76:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    1f7a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1f7e:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    1f82:	99                   	cltd   
    1f83:	c1 ea 1a             	shr    $0x1a,%edx
    1f86:	89 c6                	mov    %eax,%esi
    1f88:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
    1f8b:	83 e1 3f             	and    $0x3f,%ecx
    1f8e:	29 d1                	sub    %edx,%ecx
    1f90:	89 ca                	mov    %ecx,%edx
    1f92:	8d 49 40             	lea    0x40(%rcx),%ecx
    1f95:	85 d2                	test   %edx,%edx
    1f97:	0f 49 ca             	cmovns %edx,%ecx
    1f9a:	29 ce                	sub    %ecx,%esi
    1f9c:	8d 56 3f             	lea    0x3f(%rsi),%edx
    1f9f:	85 f6                	test   %esi,%esi
    1fa1:	f2 0f 59 05 ff 3c 00 	mulsd  0x3cff(%rip),%xmm0        # 5ca8 <exp2JBy64+0x208>
    1fa8:	00 
    1fa9:	0f 49 d6             	cmovns %esi,%edx
    1fac:	c1 fa 06             	sar    $0x6,%edx
    1faf:	48 63 c2             	movslq %edx,%rax
    1fb2:	48 8d 15 07 49 00 00 	lea    0x4907(%rip),%rdx        # 68c0 <sinhKLn2>
    1fb9:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
    1fbe:	48 8d 15 db 44 00 00 	lea    0x44db(%rip),%rdx        # 64a0 <coshKLn2>
    1fc5:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
    1fc9:	f2 0f 10 2c c2       	movsd  (%rdx,%rax,8),%xmm5
    1fce:	48 8d 15 cb 42 00 00 	lea    0x42cb(%rip),%rdx        # 62a0 <sinhKLn2By64>
    1fd5:	48 63 c1             	movslq %ecx,%rax
    1fd8:	66 0f 28 c2          	movapd %xmm2,%xmm0
    1fdc:	f2 44 0f 10 04 c2    	movsd  (%rdx,%rax,8),%xmm8
    1fe2:	48 8d 15 b7 40 00 00 	lea    0x40b7(%rip),%rdx        # 60a0 <coshKLn2By64>
    1fe9:	66 0f 28 d9          	movapd %xmm1,%xmm3
    1fed:	f2 0f 10 3c c2       	movsd  (%rdx,%rax,8),%xmm7
    1ff2:	f2 0f 59 d9          	mulsd  %xmm1,%xmm3
    1ff6:	f2 0f 59 c7          	mulsd  %xmm7,%xmm0
    1ffa:	f2 41 0f 59 d0       	mulsd  %xmm8,%xmm2
    1fff:	f2 0f 59 e3          	mulsd  %xmm3,%xmm4
    2003:	f2 0f 59 f3          	mulsd  %xmm3,%xmm6
    2007:	f2 0f 58 25 c9 4c 00 	addsd  0x4cc9(%rip),%xmm4        # 6cd8 <sinhKLn2+0x418>
    200e:	00 
    200f:	f2 0f 58 35 d9 4c 00 	addsd  0x4cd9(%rip),%xmm6        # 6cf0 <sinhKLn2+0x430>
    2016:	00 
    2017:	f2 0f 59 e3          	mulsd  %xmm3,%xmm4
    201b:	f2 0f 59 de          	mulsd  %xmm6,%xmm3
    201f:	66 0f 28 f5          	movapd %xmm5,%xmm6
    2023:	f2 0f 59 ef          	mulsd  %xmm7,%xmm5
    2027:	f2 41 0f 59 f0       	mulsd  %xmm8,%xmm6
    202c:	f2 0f 58 25 ac 4c 00 	addsd  0x4cac(%rip),%xmm4        # 6ce0 <sinhKLn2+0x420>
    2033:	00 
    2034:	f2 0f 58 1d bc 4c 00 	addsd  0x4cbc(%rip),%xmm3        # 6cf8 <sinhKLn2+0x438>
    203b:	00 
    203c:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
    2040:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    2044:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2048:	66 0f 28 c5          	movapd %xmm5,%xmm0
    204c:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    2050:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    2054:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2058:	c3                   	retq   
    2059:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2060:	f2 0f 10 05 e8 1e 00 	movsd  0x1ee8(%rip),%xmm0        # 3f50 <exp2JBy64+0x210>
    2067:	00 
    2068:	c3                   	retq   
    2069:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2070:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2074:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    2078:	c3                   	retq   
    2079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002080 <rlibm_prog_rno_sinh>:
    2080:	66 0f 7e c2          	movd   %xmm0,%edx
    2084:	66 0f 7e c0          	movd   %xmm0,%eax
    2088:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    208f:	00 00 80 
    2092:	be 00 00 00 00       	mov    $0x0,%esi
    2097:	85 d2                	test   %edx,%edx
    2099:	48 0f 48 f1          	cmovs  %rcx,%rsi
    209d:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    20a2:	0f 84 a8 01 00 00    	je     2250 <rlibm_prog_rno_sinh+0x1d0>
    20a8:	3d 68 97 e8 39       	cmp    $0x39e89768,%eax
    20ad:	77 61                	ja     2110 <rlibm_prog_rno_sinh+0x90>
    20af:	66 0f ef f6          	pxor   %xmm6,%xmm6
    20b3:	89 44 24 f8          	mov    %eax,-0x8(%rsp)
    20b7:	b9 17 00 00 00       	mov    $0x17,%ecx
    20bc:	f3 0f 10 7c 24 f8    	movss  -0x8(%rsp),%xmm7
    20c2:	f3 0f 5a f7          	cvtss2sd %xmm7,%xmm6
    20c6:	66 48 0f 7e f2       	movq   %xmm6,%rdx
    20cb:	66 48 0f 7e f0       	movq   %xmm6,%rax
    20d0:	48 c1 ea 34          	shr    $0x34,%rdx
    20d4:	81 e2 ff 07 00 00    	and    $0x7ff,%edx
    20da:	48 81 ea 6a 03 00 00 	sub    $0x36a,%rdx
    20e1:	48 83 fa 17          	cmp    $0x17,%rdx
    20e5:	48 0f 4f d1          	cmovg  %rcx,%rdx
    20e9:	b9 32 00 00 00       	mov    $0x32,%ecx
    20ee:	48 29 d1             	sub    %rdx,%rcx
    20f1:	ba 01 00 00 00       	mov    $0x1,%edx
    20f6:	48 d3 e2             	shl    %cl,%rdx
    20f9:	48 09 d0             	or     %rdx,%rax
    20fc:	48 09 f0             	or     %rsi,%rax
    20ff:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    2104:	f3 0f 7e 44 24 f8    	movq   -0x8(%rsp),%xmm0
    210a:	c3                   	retq   
    210b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2110:	3d fc d4 b2 42       	cmp    $0x42b2d4fc,%eax
    2115:	0f 87 45 01 00 00    	ja     2260 <rlibm_prog_rno_sinh+0x1e0>
    211b:	66 0f ef c9          	pxor   %xmm1,%xmm1
    211f:	89 44 24 f8          	mov    %eax,-0x8(%rsp)
    2123:	f3 0f 10 54 24 f8    	movss  -0x8(%rsp),%xmm2
    2129:	f2 0f 10 05 6f 3b 00 	movsd  0x3b6f(%rip),%xmm0        # 5ca0 <exp2JBy64+0x200>
    2130:	00 
    2131:	f3 0f 5a ca          	cvtss2sd %xmm2,%xmm1
    2135:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2139:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    213d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2141:	99                   	cltd   
    2142:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    2146:	c1 ea 1a             	shr    $0x1a,%edx
    2149:	89 c7                	mov    %eax,%edi
    214b:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
    214e:	83 e1 3f             	and    $0x3f,%ecx
    2151:	29 d1                	sub    %edx,%ecx
    2153:	89 ca                	mov    %ecx,%edx
    2155:	8d 49 40             	lea    0x40(%rcx),%ecx
    2158:	85 d2                	test   %edx,%edx
    215a:	0f 49 ca             	cmovns %edx,%ecx
    215d:	29 cf                	sub    %ecx,%edi
    215f:	8d 57 3f             	lea    0x3f(%rdi),%edx
    2162:	85 ff                	test   %edi,%edi
    2164:	f2 0f 59 05 3c 3b 00 	mulsd  0x3b3c(%rip),%xmm0        # 5ca8 <exp2JBy64+0x208>
    216b:	00 
    216c:	0f 49 d7             	cmovns %edi,%edx
    216f:	c1 fa 06             	sar    $0x6,%edx
    2172:	48 63 c2             	movslq %edx,%rax
    2175:	48 8d 15 a4 53 00 00 	lea    0x53a4(%rip),%rdx        # 7520 <sinhKLn2>
    217c:	f2 0f 10 1c c2       	movsd  (%rdx,%rax,8),%xmm3
    2181:	48 8d 15 78 4f 00 00 	lea    0x4f78(%rip),%rdx        # 7100 <coshKLn2>
    2188:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
    218c:	f2 0f 10 24 c2       	movsd  (%rdx,%rax,8),%xmm4
    2191:	48 8d 15 68 4d 00 00 	lea    0x4d68(%rip),%rdx        # 6f00 <sinhKLn2By64>
    2198:	48 63 c1             	movslq %ecx,%rax
    219b:	66 0f 28 eb          	movapd %xmm3,%xmm5
    219f:	f2 0f 10 3c c2       	movsd  (%rdx,%rax,8),%xmm7
    21a4:	48 8d 15 55 4b 00 00 	lea    0x4b55(%rip),%rdx        # 6d00 <coshKLn2By64>
    21ab:	66 0f 28 c4          	movapd %xmm4,%xmm0
    21af:	f2 0f 10 34 c2       	movsd  (%rdx,%rax,8),%xmm6
    21b4:	66 0f 2e 0d 8c 57 00 	ucomisd 0x578c(%rip),%xmm1        # 7948 <sinhKLn2+0x428>
    21bb:	00 
    21bc:	f2 0f 59 ee          	mulsd  %xmm6,%xmm5
    21c0:	f2 0f 59 c7          	mulsd  %xmm7,%xmm0
    21c4:	f2 0f 59 df          	mulsd  %xmm7,%xmm3
    21c8:	f2 0f 59 e6          	mulsd  %xmm6,%xmm4
    21cc:	f2 0f 58 e8          	addsd  %xmm0,%xmm5
    21d0:	f2 0f 58 dc          	addsd  %xmm4,%xmm3
    21d4:	7a 06                	jp     21dc <rlibm_prog_rno_sinh+0x15c>
    21d6:	0f 84 b4 00 00 00    	je     2290 <rlibm_prog_rno_sinh+0x210>
    21dc:	66 0f 28 d1          	movapd %xmm1,%xmm2
    21e0:	f2 0f 10 05 68 57 00 	movsd  0x5768(%rip),%xmm0        # 7950 <sinhKLn2+0x430>
    21e7:	00 
    21e8:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    21ec:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    21f0:	f2 0f 58 05 60 57 00 	addsd  0x5760(%rip),%xmm0        # 7958 <sinhKLn2+0x438>
    21f7:	00 
    21f8:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    21fc:	f2 0f 58 05 5c 57 00 	addsd  0x575c(%rip),%xmm0        # 7960 <sinhKLn2+0x440>
    2203:	00 
    2204:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2208:	f2 0f 10 05 58 57 00 	movsd  0x5758(%rip),%xmm0        # 7968 <sinhKLn2+0x448>
    220f:	00 
    2210:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    2214:	f2 0f 58 05 54 57 00 	addsd  0x5754(%rip),%xmm0        # 7970 <sinhKLn2+0x450>
    221b:	00 
    221c:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    2220:	f2 0f 58 15 50 57 00 	addsd  0x5750(%rip),%xmm2        # 7978 <sinhKLn2+0x458>
    2227:	00 
    2228:	66 0f 28 c2          	movapd %xmm2,%xmm0
    222c:	f2 0f 59 c5          	mulsd  %xmm5,%xmm0
    2230:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
    2234:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2238:	66 48 0f 7e c0       	movq   %xmm0,%rax
    223d:	48 09 f0             	or     %rsi,%rax
    2240:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    2245:	f3 0f 7e 44 24 f8    	movq   -0x8(%rsp),%xmm0
    224b:	c3                   	retq   
    224c:	0f 1f 40 00          	nopl   0x0(%rax)
    2250:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2254:	f3 c3                	repz retq 
    2256:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    225d:	00 00 00 
    2260:	3d 00 00 80 7f       	cmp    $0x7f800000,%eax
    2265:	77 41                	ja     22a8 <rlibm_prog_rno_sinh+0x228>
    2267:	74 4f                	je     22b8 <rlibm_prog_rno_sinh+0x238>
    2269:	89 54 24 f8          	mov    %edx,-0x8(%rsp)
    226d:	f2 0f 10 05 e3 1c 00 	movsd  0x1ce3(%rip),%xmm0        # 3f58 <exp2JBy64+0x218>
    2274:	00 
    2275:	f3 0f 10 64 24 f8    	movss  -0x8(%rsp),%xmm4
    227b:	0f 2e 25 8e 25 00 00 	ucomiss 0x258e(%rip),%xmm4        # 4810 <__log2_lut+0x430>
    2282:	77 d0                	ja     2254 <rlibm_prog_rno_sinh+0x1d4>
    2284:	f2 0f 10 05 b4 56 00 	movsd  0x56b4(%rip),%xmm0        # 7940 <sinhKLn2+0x420>
    228b:	00 
    228c:	c3                   	retq   
    228d:	0f 1f 00             	nopl   (%rax)
    2290:	f2 0f 10 0d 98 56 00 	movsd  0x5698(%rip),%xmm1        # 7930 <sinhKLn2+0x410>
    2297:	00 
    2298:	f2 0f 10 05 98 56 00 	movsd  0x5698(%rip),%xmm0        # 7938 <sinhKLn2+0x418>
    229f:	00 
    22a0:	eb 8a                	jmp    222c <rlibm_prog_rno_sinh+0x1ac>
    22a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    22a8:	66 0f ef c0          	pxor   %xmm0,%xmm0
    22ac:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    22b0:	c3                   	retq   
    22b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    22b8:	f3 0f 11 44 24 f8    	movss  %xmm0,-0x8(%rsp)
    22be:	f3 0f 10 64 24 f8    	movss  -0x8(%rsp),%xmm4
    22c4:	0f 2e 25 45 25 00 00 	ucomiss 0x2545(%rip),%xmm4        # 4810 <__log2_lut+0x430>
    22cb:	76 11                	jbe    22de <rlibm_prog_rno_sinh+0x25e>
    22cd:	f2 0f 10 05 6b 1c 00 	movsd  0x1c6b(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    22d4:	00 
    22d5:	f2 0f 5e 05 93 1c 00 	divsd  0x1c93(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    22dc:	00 
    22dd:	c3                   	retq   
    22de:	f2 0f 10 05 02 37 00 	movsd  0x3702(%rip),%xmm0        # 59e8 <log_oneByF+0x468>
    22e5:	00 
    22e6:	f2 0f 5e 05 82 1c 00 	divsd  0x1c82(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    22ed:	00 
    22ee:	c3                   	retq   
    22ef:	90                   	nop

00000000000022f0 <rlibm_prog_rno_cospi>:
    22f0:	66 0f 7e c0          	movd   %xmm0,%eax
    22f4:	66 0f 7e c2          	movd   %xmm0,%edx
    22f8:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    22fd:	3d 83 f9 a2 38       	cmp    $0x38a2f983,%eax
    2302:	0f 87 a8 00 00 00    	ja     23b0 <rlibm_prog_rno_cospi+0xc0>
    2308:	85 c0                	test   %eax,%eax
    230a:	f2 0f 10 05 4e 1c 00 	movsd  0x1c4e(%rip),%xmm0        # 3f60 <exp2JBy64+0x220>
    2311:	00 
    2312:	0f 85 93 00 00 00    	jne    23ab <rlibm_prog_rno_cospi+0xbb>
    2318:	f2 0f 10 05 20 1c 00 	movsd  0x1c20(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    231f:	00 
    2320:	c3                   	retq   
    2321:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2328:	48 8d 05 51 5e 00 00 	lea    0x5e51(%rip),%rax        # 8180 <sinpiMBy512>
    232f:	f2 0f 10 2c c8       	movsd  (%rax,%rcx,8),%xmm5
    2334:	48 8d 05 45 56 00 00 	lea    0x5645(%rip),%rax        # 7980 <cospiMBy512>
    233b:	f2 0f 10 24 c8       	movsd  (%rax,%rcx,8),%xmm4
    2340:	66 0f 28 d1          	movapd %xmm1,%xmm2
    2344:	f2 0f 10 1d 44 66 00 	movsd  0x6644(%rip),%xmm3        # 8990 <sinpiMBy512+0x810>
    234b:	00 
    234c:	f2 0f 10 05 54 66 00 	movsd  0x6654(%rip),%xmm0        # 89a8 <sinpiMBy512+0x828>
    2353:	00 
    2354:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    2358:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
    235c:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    2360:	f2 0f 5c 1d 30 66 00 	subsd  0x6630(%rip),%xmm3        # 8998 <sinpiMBy512+0x818>
    2367:	00 
    2368:	f2 0f 5c 05 40 66 00 	subsd  0x6640(%rip),%xmm0        # 89b0 <sinpiMBy512+0x830>
    236f:	00 
    2370:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
    2374:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    2378:	f2 0f 58 1d 20 66 00 	addsd  0x6620(%rip),%xmm3        # 89a0 <sinpiMBy512+0x820>
    237f:	00 
    2380:	f2 0f 58 05 30 66 00 	addsd  0x6630(%rip),%xmm0        # 89b8 <sinpiMBy512+0x838>
    2387:	00 
    2388:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
    238c:	f2 0f 59 c5          	mulsd  %xmm5,%xmm0
    2390:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    2394:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2398:	66 48 0f 7e c0       	movq   %xmm0,%rax
    239d:	48 31 f8             	xor    %rdi,%rax
    23a0:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    23a5:	f3 0f 7e 44 24 f8    	movq   -0x8(%rsp),%xmm0
    23ab:	f3 c3                	repz retq 
    23ad:	0f 1f 00             	nopl   (%rax)
    23b0:	3d ff ff ff 4a       	cmp    $0x4affffff,%eax
    23b5:	76 31                	jbe    23e8 <rlibm_prog_rno_cospi+0xf8>
    23b7:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    23bc:	0f 87 c6 00 00 00    	ja     2488 <rlibm_prog_rno_cospi+0x198>
    23c2:	3d ff ff 7f 4b       	cmp    $0x4b7fffff,%eax
    23c7:	f2 0f 10 05 71 1b 00 	movsd  0x1b71(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    23ce:	00 
    23cf:	77 da                	ja     23ab <rlibm_prog_rno_cospi+0xbb>
    23d1:	83 e2 01             	and    $0x1,%edx
    23d4:	f2 0f 10 05 0c 36 00 	movsd  0x360c(%rip),%xmm0        # 59e8 <log_oneByF+0x468>
    23db:	00 
    23dc:	75 cd                	jne    23ab <rlibm_prog_rno_cospi+0xbb>
    23de:	e9 35 ff ff ff       	jmpq   2318 <rlibm_prog_rno_cospi+0x28>
    23e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    23e8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    23ec:	89 44 24 f8          	mov    %eax,-0x8(%rsp)
    23f0:	f3 0f 10 74 24 f8    	movss  -0x8(%rsp),%xmm6
    23f6:	48 be 00 00 00 00 00 	movabs $0x8000000000000000,%rsi
    23fd:	00 00 80 
    2400:	f2 0f 10 05 78 65 00 	movsd  0x6578(%rip),%xmm0        # 8980 <sinpiMBy512+0x800>
    2407:	00 
    2408:	f3 0f 5a ce          	cvtss2sd %xmm6,%xmm1
    240c:	f2 0f 10 15 74 65 00 	movsd  0x6574(%rip),%xmm2        # 8988 <sinpiMBy512+0x808>
    2413:	00 
    2414:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2418:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    241d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2421:	89 c2                	mov    %eax,%edx
    2423:	0f b6 c8             	movzbl %al,%ecx
    2426:	89 c0                	mov    %eax,%eax
    2428:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    242d:	c1 ea 08             	shr    $0x8,%edx
    2430:	83 c2 01             	add    $0x1,%edx
    2433:	48 89 d7             	mov    %rdx,%rdi
    2436:	83 e2 01             	and    $0x1,%edx
    2439:	48 c1 e7 3e          	shl    $0x3e,%rdi
    243d:	48 21 f7             	and    %rsi,%rdi
    2440:	be 00 00 00 00       	mov    $0x0,%esi
    2445:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    2449:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
    244d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2451:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    2455:	0f 9b c0             	setnp  %al
    2458:	0f 45 c6             	cmovne %esi,%eax
    245b:	84 c0                	test   %al,%al
    245d:	74 39                	je     2498 <rlibm_prog_rno_cospi+0x1a8>
    245f:	85 c9                	test   %ecx,%ecx
    2461:	75 35                	jne    2498 <rlibm_prog_rno_cospi+0x1a8>
    2463:	85 d2                	test   %edx,%edx
    2465:	0f 84 40 ff ff ff    	je     23ab <rlibm_prog_rno_cospi+0xbb>
    246b:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
    2472:	00 f0 3f 
    2475:	48 09 c7             	or     %rax,%rdi
    2478:	48 89 7c 24 f8       	mov    %rdi,-0x8(%rsp)
    247d:	f3 0f 7e 44 24 f8    	movq   -0x8(%rsp),%xmm0
    2483:	c3                   	retq   
    2484:	0f 1f 40 00          	nopl   0x0(%rax)
    2488:	66 0f ef c0          	pxor   %xmm0,%xmm0
    248c:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    2490:	c3                   	retq   
    2491:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2498:	85 d2                	test   %edx,%edx
    249a:	0f 84 88 fe ff ff    	je     2328 <rlibm_prog_rno_cospi+0x38>
    24a0:	85 c9                	test   %ecx,%ecx
    24a2:	75 14                	jne    24b8 <rlibm_prog_rno_cospi+0x1c8>
    24a4:	66 0f ef e4          	pxor   %xmm4,%xmm4
    24a8:	f2 0f 10 2d 90 1a 00 	movsd  0x1a90(%rip),%xmm5        # 3f40 <exp2JBy64+0x200>
    24af:	00 
    24b0:	e9 8b fe ff ff       	jmpq   2340 <rlibm_prog_rno_cospi+0x50>
    24b5:	0f 1f 00             	nopl   (%rax)
    24b8:	48 8d 15 c1 5c 00 00 	lea    0x5cc1(%rip),%rdx        # 8180 <sinpiMBy512>
    24bf:	f2 0f 5c d1          	subsd  %xmm1,%xmm2
    24c3:	b8 ff 00 00 00       	mov    $0xff,%eax
    24c8:	29 c8                	sub    %ecx,%eax
    24ca:	f2 0f 10 2c c2       	movsd  (%rdx,%rax,8),%xmm5
    24cf:	48 8d 15 aa 54 00 00 	lea    0x54aa(%rip),%rdx        # 7980 <cospiMBy512>
    24d6:	66 0f 28 ca          	movapd %xmm2,%xmm1
    24da:	f2 0f 10 24 c2       	movsd  (%rdx,%rax,8),%xmm4
    24df:	e9 5c fe ff ff       	jmpq   2340 <rlibm_prog_rno_cospi+0x50>
    24e4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    24eb:	00 00 00 
    24ee:	66 90                	xchg   %ax,%ax

00000000000024f0 <rlibm_prog_rno_sinpi>:
    24f0:	66 0f 7e c2          	movd   %xmm0,%edx
    24f4:	66 0f 7e c0          	movd   %xmm0,%eax
    24f8:	85 d2                	test   %edx,%edx
    24fa:	0f 88 80 00 00 00    	js     2580 <rlibm_prog_rno_sinpi+0x90>
    2500:	81 fa 37 15 fc 33    	cmp    $0x33fc1537,%edx
    2506:	76 38                	jbe    2540 <rlibm_prog_rno_sinpi+0x50>
    2508:	f2 0f 10 05 30 1a 00 	movsd  0x1a30(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    250f:	00 
    2510:	48 bf 00 00 00 00 00 	movabs $0x8000000000000000,%rdi
    2517:	00 00 80 
    251a:	31 f6                	xor    %esi,%esi
    251c:	f2 0f 10 1d c4 34 00 	movsd  0x34c4(%rip),%xmm3        # 59e8 <log_oneByF+0x468>
    2523:	00 
    2524:	3d ff ff ff 4a       	cmp    $0x4affffff,%eax
    2529:	76 75                	jbe    25a0 <rlibm_prog_rno_sinpi+0xb0>
    252b:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    2530:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2534:	76 3e                	jbe    2574 <rlibm_prog_rno_sinpi+0x84>
    2536:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    253a:	c3                   	retq   
    253b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2540:	81 fa d7 01 cd 33    	cmp    $0x33cd01d7,%edx
    2546:	0f 84 fc 00 00 00    	je     2648 <rlibm_prog_rno_sinpi+0x158>
    254c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2550:	89 54 24 f8          	mov    %edx,-0x8(%rsp)
    2554:	f3 0f 10 6c 24 f8    	movss  -0x8(%rsp),%xmm5
    255a:	f3 0f 5a c5          	cvtss2sd %xmm5,%xmm0
    255e:	f2 0f 59 05 6a 74 00 	mulsd  0x746a(%rip),%xmm0        # 99d0 <sinpiMBy512+0x810>
    2565:	00 
    2566:	c3                   	retq   
    2567:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    256e:	00 00 
    2570:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2574:	f3 c3                	repz retq 
    2576:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    257d:	00 00 00 
    2580:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    2585:	3d 37 15 fc 33       	cmp    $0x33fc1537,%eax
    258a:	0f 87 90 00 00 00    	ja     2620 <rlibm_prog_rno_sinpi+0x130>
    2590:	3d d7 01 cd 33       	cmp    $0x33cd01d7,%eax
    2595:	75 b5                	jne    254c <rlibm_prog_rno_sinpi+0x5c>
    2597:	f2 0f 10 05 21 74 00 	movsd  0x7421(%rip),%xmm0        # 99c0 <sinpiMBy512+0x800>
    259e:	00 
    259f:	c3                   	retq   
    25a0:	89 44 24 f8          	mov    %eax,-0x8(%rsp)
    25a4:	f3 0f 10 15 54 74 00 	movss  0x7454(%rip),%xmm2        # 9a00 <sinpiMBy512+0x840>
    25ab:	00 
    25ac:	f3 0f 10 4c 24 f8    	movss  -0x8(%rsp),%xmm1
    25b2:	f3 0f 59 d1          	mulss  %xmm1,%xmm2
    25b6:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    25ba:	f2 0f 10 25 c6 63 00 	movsd  0x63c6(%rip),%xmm4        # 8988 <sinpiMBy512+0x808>
    25c1:	00 
    25c2:	f3 48 0f 2c c2       	cvttss2si %xmm2,%rax
    25c7:	66 0f ef d2          	pxor   %xmm2,%xmm2
    25cb:	89 c2                	mov    %eax,%edx
    25cd:	0f b6 c8             	movzbl %al,%ecx
    25d0:	89 c0                	mov    %eax,%eax
    25d2:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
    25d7:	c1 ea 08             	shr    $0x8,%edx
    25da:	f6 c2 02             	test   $0x2,%dl
    25dd:	f2 0f 59 d4          	mulsd  %xmm4,%xmm2
    25e1:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
    25e5:	74 07                	je     25ee <rlibm_prog_rno_sinpi+0xfe>
    25e7:	66 0f 28 c3          	movapd %xmm3,%xmm0
    25eb:	48 89 fe             	mov    %rdi,%rsi
    25ee:	66 0f ef d2          	pxor   %xmm2,%xmm2
    25f2:	83 e2 01             	and    $0x1,%edx
    25f5:	bf 00 00 00 00       	mov    $0x0,%edi
    25fa:	66 0f 2e ca          	ucomisd %xmm2,%xmm1
    25fe:	0f 9b c0             	setnp  %al
    2601:	0f 45 c7             	cmovne %edi,%eax
    2604:	84 c0                	test   %al,%al
    2606:	74 50                	je     2658 <rlibm_prog_rno_sinpi+0x168>
    2608:	85 c9                	test   %ecx,%ecx
    260a:	75 4c                	jne    2658 <rlibm_prog_rno_sinpi+0x168>
    260c:	85 d2                	test   %edx,%edx
    260e:	0f 84 5c ff ff ff    	je     2570 <rlibm_prog_rno_sinpi+0x80>
    2614:	f3 c3                	repz retq 
    2616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    261d:	00 00 00 
    2620:	f2 0f 10 05 c0 33 00 	movsd  0x33c0(%rip),%xmm0        # 59e8 <log_oneByF+0x468>
    2627:	00 
    2628:	31 ff                	xor    %edi,%edi
    262a:	f2 0f 10 1d 0e 19 00 	movsd  0x190e(%rip),%xmm3        # 3f40 <exp2JBy64+0x200>
    2631:	00 
    2632:	48 be 00 00 00 00 00 	movabs $0x8000000000000000,%rsi
    2639:	00 00 80 
    263c:	e9 e3 fe ff ff       	jmpq   2524 <rlibm_prog_rno_sinpi+0x34>
    2641:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2648:	f2 0f 10 05 78 73 00 	movsd  0x7378(%rip),%xmm0        # 99c8 <sinpiMBy512+0x808>
    264f:	00 
    2650:	c3                   	retq   
    2651:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2658:	85 d2                	test   %edx,%edx
    265a:	74 11                	je     266d <rlibm_prog_rno_sinpi+0x17d>
    265c:	f2 0f 5c e1          	subsd  %xmm1,%xmm4
    2660:	b8 ff 00 00 00       	mov    $0xff,%eax
    2665:	29 c8                	sub    %ecx,%eax
    2667:	89 c1                	mov    %eax,%ecx
    2669:	66 0f 28 cc          	movapd %xmm4,%xmm1
    266d:	66 0f 28 c1          	movapd %xmm1,%xmm0
    2671:	f2 0f 10 15 5f 73 00 	movsd  0x735f(%rip),%xmm2        # 99d8 <sinpiMBy512+0x818>
    2678:	00 
    2679:	f2 0f 10 1d 67 73 00 	movsd  0x7367(%rip),%xmm3        # 99e8 <sinpiMBy512+0x828>
    2680:	00 
    2681:	48 8d 05 38 6b 00 00 	lea    0x6b38(%rip),%rax        # 91c0 <sinpiMBy512>
    2688:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    268c:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    2690:	f2 0f 59 d8          	mulsd  %xmm0,%xmm3
    2694:	f2 0f 5c 15 44 73 00 	subsd  0x7344(%rip),%xmm2        # 99e0 <sinpiMBy512+0x820>
    269b:	00 
    269c:	f2 0f 5c 1d 4c 73 00 	subsd  0x734c(%rip),%xmm3        # 99f0 <sinpiMBy512+0x830>
    26a3:	00 
    26a4:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    26a8:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    26ac:	f2 0f 58 15 1c 73 00 	addsd  0x731c(%rip),%xmm2        # 99d0 <sinpiMBy512+0x810>
    26b3:	00 
    26b4:	f2 0f 58 05 3c 73 00 	addsd  0x733c(%rip),%xmm0        # 99f8 <sinpiMBy512+0x838>
    26bb:	00 
    26bc:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    26c0:	f2 0f 59 04 c8       	mulsd  (%rax,%rcx,8),%xmm0
    26c5:	48 8d 05 f4 62 00 00 	lea    0x62f4(%rip),%rax        # 89c0 <cospiMBy512>
    26cc:	f2 0f 59 0c c8       	mulsd  (%rax,%rcx,8),%xmm1
    26d1:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    26d5:	66 48 0f 7e c0       	movq   %xmm0,%rax
    26da:	48 31 f0             	xor    %rsi,%rax
    26dd:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    26e2:	f3 0f 7e 44 24 f8    	movq   -0x8(%rsp),%xmm0
    26e8:	c3                   	retq   
    26e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000026f0 <rlibm34_log>:
    26f0:	0f 2e 05 91 33 00 00 	ucomiss 0x3391(%rip),%xmm0        # 5a88 <log_oneByF+0x508>
    26f7:	7a 0a                	jp     2703 <rlibm34_log+0x13>
    26f9:	66 0f ef c9          	pxor   %xmm1,%xmm1
    26fd:	0f 84 bf 00 00 00    	je     27c2 <rlibm34_log+0xd2>
    2703:	66 0f 7e c0          	movd   %xmm0,%eax
    2707:	8d 90 00 00 80 ff    	lea    -0x800000(%rax),%edx
    270d:	81 fa ff ff ff 7e    	cmp    $0x7effffff,%edx
    2713:	0f 87 b7 00 00 00    	ja     27d0 <rlibm34_log+0xe0>
    2719:	31 f6                	xor    %esi,%esi
    271b:	89 c7                	mov    %eax,%edi
    271d:	89 c1                	mov    %eax,%ecx
    271f:	89 c2                	mov    %eax,%edx
    2721:	81 e7 ff ff 7f 00    	and    $0x7fffff,%edi
    2727:	25 00 00 7f 00       	and    $0x7f0000,%eax
    272c:	c1 ea 10             	shr    $0x10,%edx
    272f:	81 cf 00 00 80 3f    	or     $0x3f800000,%edi
    2735:	0d 00 00 80 3f       	or     $0x3f800000,%eax
    273a:	c1 e9 17             	shr    $0x17,%ecx
    273d:	89 7c 24 f8          	mov    %edi,-0x8(%rsp)
    2741:	89 44 24 fc          	mov    %eax,-0x4(%rsp)
    2745:	89 d0                	mov    %edx,%eax
    2747:	f3 0f 10 44 24 f8    	movss  -0x8(%rsp),%xmm0
    274d:	48 8d 15 cc 76 00 00 	lea    0x76cc(%rip),%rdx        # 9e20 <__log_oneByF>
    2754:	f3 0f 5c 44 24 fc    	subss  -0x4(%rsp),%xmm0
    275a:	83 e0 7f             	and    $0x7f,%eax
    275d:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    2761:	f2 0f 59 04 c2       	mulsd  (%rdx,%rax,8),%xmm0
    2766:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    276b:	48 c1 ea 2f          	shr    $0x2f,%rdx
    276f:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
    2775:	48 8d 3c 52          	lea    (%rdx,%rdx,2),%rdi
    2779:	48 8d 15 a0 d8 20 00 	lea    0x20d8a0(%rip),%rdx        # 210020 <__logCoeffs>
    2780:	48 8d 14 fa          	lea    (%rdx,%rdi,8),%rdx
    2784:	f2 0f 10 4a 10       	movsd  0x10(%rdx),%xmm1
    2789:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    278d:	f2 0f 58 4a 08       	addsd  0x8(%rdx),%xmm1
    2792:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2796:	f2 0f 58 0a          	addsd  (%rdx),%xmm1
    279a:	48 8d 15 7f 72 00 00 	lea    0x727f(%rip),%rdx        # 9a20 <__ln_lutHIGH>
    27a1:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    27a5:	66 0f ef c9          	pxor   %xmm1,%xmm1
    27a9:	f2 0f 58 04 c2       	addsd  (%rdx,%rax,8),%xmm0
    27ae:	8d 44 0e 81          	lea    -0x7f(%rsi,%rcx,1),%eax
    27b2:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    27b6:	f2 0f 59 0d c2 32 00 	mulsd  0x32c2(%rip),%xmm1        # 5a80 <log_oneByF+0x500>
    27bd:	00 
    27be:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    27c2:	66 0f 28 c1          	movapd %xmm1,%xmm0
    27c6:	c3                   	retq   
    27c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    27ce:	00 00 
    27d0:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
    27d5:	f2 0f 10 0d 03 20 00 	movsd  0x2003(%rip),%xmm1        # 47e0 <__log2_lut+0x400>
    27dc:	00 
    27dd:	74 e3                	je     27c2 <rlibm34_log+0xd2>
    27df:	85 c0                	test   %eax,%eax
    27e1:	78 1d                	js     2800 <rlibm34_log+0x110>
    27e3:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    27e8:	77 36                	ja     2820 <rlibm34_log+0x130>
    27ea:	f3 0f 59 05 22 20 00 	mulss  0x2022(%rip),%xmm0        # 4814 <__log2_lut+0x434>
    27f1:	00 
    27f2:	be e9 ff ff ff       	mov    $0xffffffe9,%esi
    27f7:	66 0f 7e c0          	movd   %xmm0,%eax
    27fb:	e9 1b ff ff ff       	jmpq   271b <rlibm34_log+0x2b>
    2800:	f3 0f 5c c0          	subss  %xmm0,%xmm0
    2804:	66 0f ef c9          	pxor   %xmm1,%xmm1
    2808:	f3 0f 5e 05 00 20 00 	divss  0x2000(%rip),%xmm0        # 4810 <__log2_lut+0x430>
    280f:	00 
    2810:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    2814:	eb ac                	jmp    27c2 <rlibm34_log+0xd2>
    2816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    281d:	00 00 00 
    2820:	f3 0f 58 c0          	addss  %xmm0,%xmm0
    2824:	66 0f ef c9          	pxor   %xmm1,%xmm1
    2828:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    282c:	eb 94                	jmp    27c2 <rlibm34_log+0xd2>
    282e:	66 90                	xchg   %ax,%ax

0000000000002830 <rlibm34_log2>:
    2830:	48 83 ec 28          	sub    $0x28,%rsp
    2834:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    283b:	00 00 
    283d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2842:	31 c0                	xor    %eax,%eax
    2844:	66 0f 7e c0          	movd   %xmm0,%eax
    2848:	8d 90 00 00 80 ff    	lea    -0x800000(%rax),%edx
    284e:	81 fa ff ff ff 7e    	cmp    $0x7effffff,%edx
    2854:	76 5a                	jbe    28b0 <rlibm34_log2+0x80>
    2856:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
    285b:	0f 28 c8             	movaps %xmm0,%xmm1
    285e:	f2 0f 10 05 7a 1f 00 	movsd  0x1f7a(%rip),%xmm0        # 47e0 <__log2_lut+0x400>
    2865:	00 
    2866:	74 28                	je     2890 <rlibm34_log2+0x60>
    2868:	85 c0                	test   %eax,%eax
    286a:	0f 88 e8 00 00 00    	js     2958 <rlibm34_log2+0x128>
    2870:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    2875:	0f 86 fd 00 00 00    	jbe    2978 <rlibm34_log2+0x148>
    287b:	f3 0f 58 c9          	addss  %xmm1,%xmm1
    287f:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2883:	f3 0f 5a c1          	cvtss2sd %xmm1,%xmm0
    2887:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    288e:	00 00 
    2890:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    2895:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    289c:	00 00 
    289e:	0f 85 20 01 00 00    	jne    29c4 <rlibm34_log2+0x194>
    28a4:	48 83 c4 28          	add    $0x28,%rsp
    28a8:	c3                   	retq   
    28a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    28b0:	31 c9                	xor    %ecx,%ecx
    28b2:	89 c2                	mov    %eax,%edx
    28b4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    28b8:	c1 ea 17             	shr    $0x17,%edx
    28bb:	8d 54 11 81          	lea    -0x7f(%rcx,%rdx,1),%edx
    28bf:	89 c1                	mov    %eax,%ecx
    28c1:	81 e1 ff ff 7f 00    	and    $0x7fffff,%ecx
    28c7:	f2 0f 2a c2          	cvtsi2sd %edx,%xmm0
    28cb:	74 c3                	je     2890 <rlibm34_log2+0x60>
    28cd:	89 c2                	mov    %eax,%edx
    28cf:	81 c9 00 00 80 3f    	or     $0x3f800000,%ecx
    28d5:	25 00 00 7f 00       	and    $0x7f0000,%eax
    28da:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
    28de:	0d 00 00 80 3f       	or     $0x3f800000,%eax
    28e3:	c1 ea 10             	shr    $0x10,%edx
    28e6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    28ea:	f3 0f 10 4c 24 08    	movss  0x8(%rsp),%xmm1
    28f0:	f3 0f 5c 4c 24 0c    	subss  0xc(%rsp),%xmm1
    28f6:	89 d0                	mov    %edx,%eax
    28f8:	48 8d 15 21 7d 00 00 	lea    0x7d21(%rip),%rdx        # a620 <__log_oneByF>
    28ff:	83 e0 7f             	and    $0x7f,%eax
    2902:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    2906:	f2 0f 59 0c c2       	mulsd  (%rdx,%rax,8),%xmm1
    290b:	66 48 0f 7e ca       	movq   %xmm1,%rdx
    2910:	48 c1 ea 31          	shr    $0x31,%rdx
    2914:	0f b6 d2             	movzbl %dl,%edx
    2917:	48 8d 0c 52          	lea    (%rdx,%rdx,2),%rcx
    291b:	48 8d 15 fe 36 21 00 	lea    0x2136fe(%rip),%rdx        # 216020 <__log2Coeffs>
    2922:	48 8d 14 ca          	lea    (%rdx,%rcx,8),%rdx
    2926:	f2 0f 10 52 10       	movsd  0x10(%rdx),%xmm2
    292b:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    292f:	f2 0f 58 52 08       	addsd  0x8(%rdx),%xmm2
    2934:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    2938:	f2 0f 58 12          	addsd  (%rdx),%xmm2
    293c:	48 8d 15 dd 78 00 00 	lea    0x78dd(%rip),%rdx        # a220 <__log2_lut>
    2943:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    2947:	f2 0f 58 0c c2       	addsd  (%rdx,%rax,8),%xmm1
    294c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2950:	e9 3b ff ff ff       	jmpq   2890 <rlibm34_log2+0x60>
    2955:	0f 1f 00             	nopl   (%rax)
    2958:	f3 0f 5c c9          	subss  %xmm1,%xmm1
    295c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2960:	f3 0f 5e 0d a8 1e 00 	divss  0x1ea8(%rip),%xmm1        # 4810 <__log2_lut+0x430>
    2967:	00 
    2968:	f3 0f 5a c1          	cvtss2sd %xmm1,%xmm0
    296c:	e9 1f ff ff ff       	jmpq   2890 <rlibm34_log2+0x60>
    2971:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2978:	0f 28 c1             	movaps %xmm1,%xmm0
    297b:	48 8d 7c 24 14       	lea    0x14(%rsp),%rdi
    2980:	89 44 24 08          	mov    %eax,0x8(%rsp)
    2984:	e8 97 dd ff ff       	callq  720 <frexpf@plt>
    2989:	66 0f 7e c0          	movd   %xmm0,%eax
    298d:	f3 0f 10 4c 24 08    	movss  0x8(%rsp),%xmm1
    2993:	3d 00 00 00 3f       	cmp    $0x3f000000,%eax
    2998:	74 16                	je     29b0 <rlibm34_log2+0x180>
    299a:	f3 0f 59 0d 72 1e 00 	mulss  0x1e72(%rip),%xmm1        # 4814 <__log2_lut+0x434>
    29a1:	00 
    29a2:	b9 e9 ff ff ff       	mov    $0xffffffe9,%ecx
    29a7:	66 0f 7e c8          	movd   %xmm1,%eax
    29ab:	e9 02 ff ff ff       	jmpq   28b2 <rlibm34_log2+0x82>
    29b0:	8b 44 24 14          	mov    0x14(%rsp),%eax
    29b4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    29b8:	83 e8 01             	sub    $0x1,%eax
    29bb:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    29bf:	e9 cc fe ff ff       	jmpq   2890 <rlibm34_log2+0x60>
    29c4:	e8 37 dd ff ff       	callq  700 <__stack_chk_fail@plt>
    29c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000029d0 <rlibm34_log10>:
    29d0:	66 0f 7e c0          	movd   %xmm0,%eax
    29d4:	8d 90 00 00 80 ff    	lea    -0x800000(%rax),%edx
    29da:	81 fa ff ff ff 7e    	cmp    $0x7effffff,%edx
    29e0:	76 56                	jbe    2a38 <rlibm34_log10+0x68>
    29e2:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
    29e7:	f2 0f 10 0d f1 1d 00 	movsd  0x1df1(%rip),%xmm1        # 47e0 <__log2_lut+0x400>
    29ee:	00 
    29ef:	74 3b                	je     2a2c <rlibm34_log10+0x5c>
    29f1:	85 c0                	test   %eax,%eax
    29f3:	78 23                	js     2a18 <rlibm34_log10+0x48>
    29f5:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    29fa:	0f 87 c0 01 00 00    	ja     2bc0 <rlibm34_log10+0x1f0>
    2a00:	f3 0f 59 05 0c 1e 00 	mulss  0x1e0c(%rip),%xmm0        # 4814 <__log2_lut+0x434>
    2a07:	00 
    2a08:	ba e9 ff ff ff       	mov    $0xffffffe9,%edx
    2a0d:	66 0f 7e c0          	movd   %xmm0,%eax
    2a11:	eb 27                	jmp    2a3a <rlibm34_log10+0x6a>
    2a13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2a18:	f3 0f 5c c0          	subss  %xmm0,%xmm0
    2a1c:	66 0f ef c9          	pxor   %xmm1,%xmm1
    2a20:	f3 0f 5e 05 e8 1d 00 	divss  0x1de8(%rip),%xmm0        # 4810 <__log2_lut+0x430>
    2a27:	00 
    2a28:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    2a2c:	66 0f 28 c1          	movapd %xmm1,%xmm0
    2a30:	c3                   	retq   
    2a31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2a38:	31 d2                	xor    %edx,%edx
    2a3a:	3d 00 50 c3 47       	cmp    $0x47c35000,%eax
    2a3f:	0f 84 93 01 00 00    	je     2bd8 <rlibm34_log10+0x208>
    2a45:	0f 87 ed 00 00 00    	ja     2b38 <rlibm34_log10+0x168>
    2a4b:	3d 00 00 c8 42       	cmp    $0x42c80000,%eax
    2a50:	0f 84 92 01 00 00    	je     2be8 <rlibm34_log10+0x218>
    2a56:	0f 86 14 01 00 00    	jbe    2b70 <rlibm34_log10+0x1a0>
    2a5c:	3d 00 00 7a 44       	cmp    $0x447a0000,%eax
    2a61:	0f 84 c1 01 00 00    	je     2c28 <rlibm34_log10+0x258>
    2a67:	3d 00 40 1c 46       	cmp    $0x461c4000,%eax
    2a6c:	f2 0f 10 0d d4 25 00 	movsd  0x25d4(%rip),%xmm1        # 5048 <log_oneByF+0x428>
    2a73:	00 
    2a74:	74 b6                	je     2a2c <rlibm34_log10+0x5c>
    2a76:	89 c7                	mov    %eax,%edi
    2a78:	89 c6                	mov    %eax,%esi
    2a7a:	89 c1                	mov    %eax,%ecx
    2a7c:	81 e7 ff ff 7f 00    	and    $0x7fffff,%edi
    2a82:	25 00 00 7f 00       	and    $0x7f0000,%eax
    2a87:	c1 e9 10             	shr    $0x10,%ecx
    2a8a:	81 cf 00 00 80 3f    	or     $0x3f800000,%edi
    2a90:	0d 00 00 80 3f       	or     $0x3f800000,%eax
    2a95:	83 e1 7f             	and    $0x7f,%ecx
    2a98:	89 7c 24 f8          	mov    %edi,-0x8(%rsp)
    2a9c:	89 44 24 fc          	mov    %eax,-0x4(%rsp)
    2aa0:	48 8d 05 79 83 00 00 	lea    0x8379(%rip),%rax        # ae20 <__log_oneByF>
    2aa7:	f3 0f 10 44 24 f8    	movss  -0x8(%rsp),%xmm0
    2aad:	c1 ee 17             	shr    $0x17,%esi
    2ab0:	f3 0f 5c 44 24 fc    	subss  -0x4(%rsp),%xmm0
    2ab6:	66 0f ef d2          	pxor   %xmm2,%xmm2
    2aba:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    2abe:	f2 0f 59 04 c8       	mulsd  (%rax,%rcx,8),%xmm0
    2ac3:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2ac8:	48 c1 e8 31          	shr    $0x31,%rax
    2acc:	0f b6 c0             	movzbl %al,%eax
    2acf:	48 8d 3c 40          	lea    (%rax,%rax,2),%rdi
    2ad3:	48 8d 05 46 4d 21 00 	lea    0x214d46(%rip),%rax        # 217820 <__log10Coeffs>
    2ada:	48 8d 04 f8          	lea    (%rax,%rdi,8),%rax
    2ade:	f2 0f 10 48 10       	movsd  0x10(%rax),%xmm1
    2ae3:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2ae7:	f2 0f 58 48 08       	addsd  0x8(%rax),%xmm1
    2aec:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2af0:	f2 0f 58 08          	addsd  (%rax),%xmm1
    2af4:	8d 44 32 81          	lea    -0x7f(%rdx,%rsi,1),%eax
    2af8:	f2 0f 2a d0          	cvtsi2sd %eax,%xmm2
    2afc:	48 8d 05 1d 7f 00 00 	lea    0x7f1d(%rip),%rax        # aa20 <__log10_lut>
    2b03:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2b07:	f2 0f 10 0d 49 26 00 	movsd  0x2649(%rip),%xmm1        # 5158 <log_oneByF+0x538>
    2b0e:	00 
    2b0f:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    2b13:	f2 0f 59 15 45 26 00 	mulsd  0x2645(%rip),%xmm2        # 5160 <log_oneByF+0x540>
    2b1a:	00 
    2b1b:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2b1f:	f2 0f 10 0c c8       	movsd  (%rax,%rcx,8),%xmm1
    2b24:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    2b28:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    2b2c:	e9 fb fe ff ff       	jmpq   2a2c <rlibm34_log10+0x5c>
    2b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2b38:	3d 20 bc be 4c       	cmp    $0x4cbebc20,%eax
    2b3d:	0f 84 b5 00 00 00    	je     2bf8 <rlibm34_log10+0x228>
    2b43:	76 5b                	jbe    2ba0 <rlibm34_log10+0x1d0>
    2b45:	3d 28 6b 6e 4e       	cmp    $0x4e6e6b28,%eax
    2b4a:	0f 84 b8 00 00 00    	je     2c08 <rlibm34_log10+0x238>
    2b50:	3d f9 02 15 50       	cmp    $0x501502f9,%eax
    2b55:	f2 0f 10 0d 1b 25 00 	movsd  0x251b(%rip),%xmm1        # 5078 <log_oneByF+0x458>
    2b5c:	00 
    2b5d:	0f 84 c9 fe ff ff    	je     2a2c <rlibm34_log10+0x5c>
    2b63:	e9 0e ff ff ff       	jmpq   2a76 <rlibm34_log10+0xa6>
    2b68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2b6f:	00 
    2b70:	3d 00 00 80 3f       	cmp    $0x3f800000,%eax
    2b75:	66 0f ef c9          	pxor   %xmm1,%xmm1
    2b79:	0f 84 ad fe ff ff    	je     2a2c <rlibm34_log10+0x5c>
    2b7f:	3d 00 00 20 41       	cmp    $0x41200000,%eax
    2b84:	f2 0f 10 0d b4 13 00 	movsd  0x13b4(%rip),%xmm1        # 3f40 <exp2JBy64+0x200>
    2b8b:	00 
    2b8c:	0f 84 9a fe ff ff    	je     2a2c <rlibm34_log10+0x5c>
    2b92:	e9 df fe ff ff       	jmpq   2a76 <rlibm34_log10+0xa6>
    2b97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2b9e:	00 00 
    2ba0:	3d 00 24 74 49       	cmp    $0x49742400,%eax
    2ba5:	74 71                	je     2c18 <rlibm34_log10+0x248>
    2ba7:	3d 80 96 18 4b       	cmp    $0x4b189680,%eax
    2bac:	f2 0f 10 0d ac 24 00 	movsd  0x24ac(%rip),%xmm1        # 5060 <log_oneByF+0x440>
    2bb3:	00 
    2bb4:	0f 84 72 fe ff ff    	je     2a2c <rlibm34_log10+0x5c>
    2bba:	e9 b7 fe ff ff       	jmpq   2a76 <rlibm34_log10+0xa6>
    2bbf:	90                   	nop
    2bc0:	f3 0f 58 c0          	addss  %xmm0,%xmm0
    2bc4:	66 0f ef c9          	pxor   %xmm1,%xmm1
    2bc8:	f3 0f 5a c8          	cvtss2sd %xmm0,%xmm1
    2bcc:	e9 5b fe ff ff       	jmpq   2a2c <rlibm34_log10+0x5c>
    2bd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2bd8:	f2 0f 10 0d 70 24 00 	movsd  0x2470(%rip),%xmm1        # 5050 <log_oneByF+0x430>
    2bdf:	00 
    2be0:	e9 47 fe ff ff       	jmpq   2a2c <rlibm34_log10+0x5c>
    2be5:	0f 1f 00             	nopl   (%rax)
    2be8:	f2 0f 10 0d 48 24 00 	movsd  0x2448(%rip),%xmm1        # 5038 <log_oneByF+0x418>
    2bef:	00 
    2bf0:	e9 37 fe ff ff       	jmpq   2a2c <rlibm34_log10+0x5c>
    2bf5:	0f 1f 00             	nopl   (%rax)
    2bf8:	f2 0f 10 0d 68 24 00 	movsd  0x2468(%rip),%xmm1        # 5068 <log_oneByF+0x448>
    2bff:	00 
    2c00:	e9 27 fe ff ff       	jmpq   2a2c <rlibm34_log10+0x5c>
    2c05:	0f 1f 00             	nopl   (%rax)
    2c08:	f2 0f 10 0d 60 24 00 	movsd  0x2460(%rip),%xmm1        # 5070 <log_oneByF+0x450>
    2c0f:	00 
    2c10:	e9 17 fe ff ff       	jmpq   2a2c <rlibm34_log10+0x5c>
    2c15:	0f 1f 00             	nopl   (%rax)
    2c18:	f2 0f 10 0d 38 24 00 	movsd  0x2438(%rip),%xmm1        # 5058 <log_oneByF+0x438>
    2c1f:	00 
    2c20:	e9 07 fe ff ff       	jmpq   2a2c <rlibm34_log10+0x5c>
    2c25:	0f 1f 00             	nopl   (%rax)
    2c28:	f2 0f 10 0d 10 24 00 	movsd  0x2410(%rip),%xmm1        # 5040 <log_oneByF+0x420>
    2c2f:	00 
    2c30:	e9 f7 fd ff ff       	jmpq   2a2c <rlibm34_log10+0x5c>
    2c35:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2c3c:	00 00 00 
    2c3f:	90                   	nop

0000000000002c40 <rlibm34_exp>:
    2c40:	66 0f 7e c0          	movd   %xmm0,%eax
    2c44:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
    2c49:	74 6d                	je     2cb8 <rlibm34_exp+0x78>
    2c4b:	3d ff ff ff 33       	cmp    $0x33ffffff,%eax
    2c50:	77 1e                	ja     2c70 <rlibm34_exp+0x30>
    2c52:	3d ff ff 7f 33       	cmp    $0x337fffff,%eax
    2c57:	f2 0f 10 05 f1 12 00 	movsd  0x12f1(%rip),%xmm0        # 3f50 <exp2JBy64+0x210>
    2c5e:	00 
    2c5f:	77 4f                	ja     2cb0 <rlibm34_exp+0x70>
    2c61:	f2 0f 10 05 df 12 00 	movsd  0x12df(%rip),%xmm0        # 3f48 <exp2JBy64+0x208>
    2c68:	00 
    2c69:	c3                   	retq   
    2c6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2c70:	8d 88 e8 8d 4e bd    	lea    -0x42b17218(%rax),%ecx
    2c76:	81 f9 e8 8d ce 70    	cmp    $0x70ce8de8,%ecx
    2c7c:	77 4a                	ja     2cc8 <rlibm34_exp+0x88>
    2c7e:	85 c0                	test   %eax,%eax
    2c80:	0f 88 72 01 00 00    	js     2df8 <rlibm34_exp+0x1b8>
    2c86:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    2c8b:	f2 0f 10 05 c5 12 00 	movsd  0x12c5(%rip),%xmm0        # 3f58 <exp2JBy64+0x218>
    2c92:	00 
    2c93:	76 1b                	jbe    2cb0 <rlibm34_exp+0x70>
    2c95:	3d 00 00 80 7f       	cmp    $0x7f800000,%eax
    2c9a:	75 4d                	jne    2ce9 <rlibm34_exp+0xa9>
    2c9c:	f2 0f 10 05 9c 12 00 	movsd  0x129c(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    2ca3:	00 
    2ca4:	f2 0f 5e 05 c4 12 00 	divsd  0x12c4(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    2cab:	00 
    2cac:	c3                   	retq   
    2cad:	0f 1f 00             	nopl   (%rax)
    2cb0:	f3 c3                	repz retq 
    2cb2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2cb8:	f2 0f 10 05 80 12 00 	movsd  0x1280(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    2cbf:	00 
    2cc0:	c3                   	retq   
    2cc1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2cc8:	3d b4 f1 cf c2       	cmp    $0xc2cff1b4,%eax
    2ccd:	76 29                	jbe    2cf8 <rlibm34_exp+0xb8>
    2ccf:	3d 00 00 80 ff       	cmp    $0xff800000,%eax
    2cd4:	0f 84 16 01 00 00    	je     2df0 <rlibm34_exp+0x1b0>
    2cda:	3d ff ff 7f ff       	cmp    $0xff7fffff,%eax
    2cdf:	f2 0f 10 05 91 12 00 	movsd  0x1291(%rip),%xmm0        # 3f78 <exp2JBy64+0x238>
    2ce6:	00 
    2ce7:	76 c7                	jbe    2cb0 <rlibm34_exp+0x70>
    2ce9:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2ced:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    2cf1:	c3                   	retq   
    2cf2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2cf8:	48 83 ec 18          	sub    $0x18,%rsp
    2cfc:	48 be 00 00 00 00 00 	movabs $0x8000000000000000,%rsi
    2d03:	00 00 80 
    2d06:	f3 0f 11 44 24 08    	movss  %xmm0,0x8(%rsp)
    2d0c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2d10:	f2 0f 10 0d 88 2f 00 	movsd  0x2f88(%rip),%xmm1        # 5ca0 <exp2JBy64+0x200>
    2d17:	00 
    2d18:	f3 0f 10 5c 24 08    	movss  0x8(%rsp),%xmm3
    2d1e:	f3 0f 5a c3          	cvtss2sd %xmm3,%xmm0
    2d22:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2d26:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
    2d2a:	66 0f ef c9          	pxor   %xmm1,%xmm1
    2d2e:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    2d32:	89 c1                	mov    %eax,%ecx
    2d34:	c1 f9 1f             	sar    $0x1f,%ecx
    2d37:	c1 e9 1a             	shr    $0x1a,%ecx
    2d3a:	8d 14 08             	lea    (%rax,%rcx,1),%edx
    2d3d:	83 e2 3f             	and    $0x3f,%edx
    2d40:	29 ca                	sub    %ecx,%edx
    2d42:	8d 4a 40             	lea    0x40(%rdx),%ecx
    2d45:	85 d2                	test   %edx,%edx
    2d47:	0f 48 d1             	cmovs  %ecx,%edx
    2d4a:	89 c1                	mov    %eax,%ecx
    2d4c:	29 d1                	sub    %edx,%ecx
    2d4e:	f2 0f 59 0d 52 2f 00 	mulsd  0x2f52(%rip),%xmm1        # 5ca8 <exp2JBy64+0x208>
    2d55:	00 
    2d56:	8d 79 3f             	lea    0x3f(%rcx),%edi
    2d59:	85 c9                	test   %ecx,%ecx
    2d5b:	0f 49 f9             	cmovns %ecx,%edi
    2d5e:	c1 ff 06             	sar    $0x6,%edi
    2d61:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    2d65:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2d6a:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    2d6f:	48 c1 e8 33          	shr    $0x33,%rax
    2d73:	83 e0 7f             	and    $0x7f,%eax
    2d76:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    2d7a:	48 c1 e0 03          	shl    $0x3,%rax
    2d7e:	48 39 f1             	cmp    %rsi,%rcx
    2d81:	77 5d                	ja     2de0 <rlibm34_exp+0x1a0>
    2d83:	48 8d 0d 96 62 21 00 	lea    0x216296(%rip),%rcx        # 219020 <__expPosCoeffs>
    2d8a:	48 01 c8             	add    %rcx,%rax
    2d8d:	f2 0f 10 10          	movsd  (%rax),%xmm2
    2d91:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    2d96:	48 63 d2             	movslq %edx,%rdx
    2d99:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2d9d:	f2 0f 58 48 18       	addsd  0x18(%rax),%xmm1
    2da2:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2da6:	f2 0f 58 48 10       	addsd  0x10(%rax),%xmm1
    2dab:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2daf:	f2 0f 58 48 08       	addsd  0x8(%rax),%xmm1
    2db4:	48 8d 05 65 84 00 00 	lea    0x8465(%rip),%rax        # b220 <__exp2JBy64>
    2dbb:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2dbf:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    2dc3:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
    2dc8:	f2 0f 11 54 24 08    	movsd  %xmm2,0x8(%rsp)
    2dce:	e8 0d d9 ff ff       	callq  6e0 <ldexp@plt>
    2dd3:	f2 0f 59 44 24 08    	mulsd  0x8(%rsp),%xmm0
    2dd9:	48 83 c4 18          	add    $0x18,%rsp
    2ddd:	c3                   	retq   
    2dde:	66 90                	xchg   %ax,%ax
    2de0:	48 8d 0d 39 76 21 00 	lea    0x217639(%rip),%rcx        # 21a420 <__expNegCoeffs>
    2de7:	48 01 c8             	add    %rcx,%rax
    2dea:	f2 0f 10 10          	movsd  (%rax),%xmm2
    2dee:	eb a1                	jmp    2d91 <rlibm34_exp+0x151>
    2df0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2df4:	c3                   	retq   
    2df5:	0f 1f 00             	nopl   (%rax)
    2df8:	3d 00 00 00 b3       	cmp    $0xb3000000,%eax
    2dfd:	f2 0f 10 05 63 11 00 	movsd  0x1163(%rip),%xmm0        # 3f68 <exp2JBy64+0x228>
    2e04:	00 
    2e05:	0f 87 a5 fe ff ff    	ja     2cb0 <rlibm34_exp+0x70>
    2e0b:	f2 0f 10 05 4d 11 00 	movsd  0x114d(%rip),%xmm0        # 3f60 <exp2JBy64+0x220>
    2e12:	00 
    2e13:	c3                   	retq   
    2e14:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2e1b:	00 00 00 
    2e1e:	66 90                	xchg   %ax,%ax

0000000000002e20 <rlibm34_exp10>:
    2e20:	66 0f 7e c0          	movd   %xmm0,%eax
    2e24:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
    2e29:	74 6d                	je     2e98 <rlibm34_exp10+0x78>
    2e2b:	3d d7 5b 5e 33       	cmp    $0x335e5bd7,%eax
    2e30:	77 1e                	ja     2e50 <rlibm34_exp10+0x30>
    2e32:	3d d8 5b de 32       	cmp    $0x32de5bd8,%eax
    2e37:	f2 0f 10 05 11 11 00 	movsd  0x1111(%rip),%xmm0        # 3f50 <exp2JBy64+0x210>
    2e3e:	00 
    2e3f:	0f 87 e6 01 00 00    	ja     302b <rlibm34_exp10+0x20b>
    2e45:	f2 0f 10 05 fb 10 00 	movsd  0x10fb(%rip),%xmm0        # 3f48 <exp2JBy64+0x208>
    2e4c:	00 
    2e4d:	c3                   	retq   
    2e4e:	66 90                	xchg   %ax,%ax
    2e50:	8d 88 65 df e5 bd    	lea    -0x421a209b(%rax),%ecx
    2e56:	81 f9 3e 3b c4 70    	cmp    $0x70c43b3e,%ecx
    2e5c:	77 4a                	ja     2ea8 <rlibm34_exp10+0x88>
    2e5e:	85 c0                	test   %eax,%eax
    2e60:	0f 88 d2 01 00 00    	js     3038 <rlibm34_exp10+0x218>
    2e66:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    2e6b:	f2 0f 10 05 e5 10 00 	movsd  0x10e5(%rip),%xmm0        # 3f58 <exp2JBy64+0x218>
    2e72:	00 
    2e73:	0f 86 b2 01 00 00    	jbe    302b <rlibm34_exp10+0x20b>
    2e79:	3d 00 00 80 7f       	cmp    $0x7f800000,%eax
    2e7e:	75 4d                	jne    2ecd <rlibm34_exp10+0xad>
    2e80:	f2 0f 10 05 b8 10 00 	movsd  0x10b8(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    2e87:	00 
    2e88:	f2 0f 5e 05 e0 10 00 	divsd  0x10e0(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    2e8f:	00 
    2e90:	c3                   	retq   
    2e91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2e98:	f2 0f 10 05 a0 10 00 	movsd  0x10a0(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    2e9f:	00 
    2ea0:	c3                   	retq   
    2ea1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2ea8:	3d 35 9e 34 c2       	cmp    $0xc2349e35,%eax
    2ead:	76 31                	jbe    2ee0 <rlibm34_exp10+0xc0>
    2eaf:	3d 00 00 80 ff       	cmp    $0xff800000,%eax
    2eb4:	0f 84 76 01 00 00    	je     3030 <rlibm34_exp10+0x210>
    2eba:	3d ff ff 7f ff       	cmp    $0xff7fffff,%eax
    2ebf:	f2 0f 10 05 b1 10 00 	movsd  0x10b1(%rip),%xmm0        # 3f78 <exp2JBy64+0x238>
    2ec6:	00 
    2ec7:	0f 86 5e 01 00 00    	jbe    302b <rlibm34_exp10+0x20b>
    2ecd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2ed1:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    2ed5:	c3                   	retq   
    2ed6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2edd:	00 00 00 
    2ee0:	3d 00 00 c0 40       	cmp    $0x40c00000,%eax
    2ee5:	0f 84 b2 01 00 00    	je     309d <rlibm34_exp10+0x27d>
    2eeb:	66 0f 7e c2          	movd   %xmm0,%edx
    2eef:	0f 87 0b 01 00 00    	ja     3000 <rlibm34_exp10+0x1e0>
    2ef5:	3d 00 00 40 40       	cmp    $0x40400000,%eax
    2efa:	0f 84 b8 01 00 00    	je     30b8 <rlibm34_exp10+0x298>
    2f00:	0f 87 6a 01 00 00    	ja     3070 <rlibm34_exp10+0x250>
    2f06:	3d 00 00 80 3f       	cmp    $0x3f800000,%eax
    2f0b:	0f 84 9e 01 00 00    	je     30af <rlibm34_exp10+0x28f>
    2f11:	3d 00 00 00 40       	cmp    $0x40000000,%eax
    2f16:	f2 0f 10 05 6a 30 00 	movsd  0x306a(%rip),%xmm0        # 5f88 <exp2JBy64+0x208>
    2f1d:	00 
    2f1e:	0f 84 07 01 00 00    	je     302b <rlibm34_exp10+0x20b>
    2f24:	48 83 ec 18          	sub    $0x18,%rsp
    2f28:	66 0f ef c0          	pxor   %xmm0,%xmm0
    2f2c:	89 54 24 08          	mov    %edx,0x8(%rsp)
    2f30:	f2 0f 10 0d 98 30 00 	movsd  0x3098(%rip),%xmm1        # 5fd0 <exp2JBy64+0x250>
    2f37:	00 
    2f38:	f3 0f 10 54 24 08    	movss  0x8(%rsp),%xmm2
    2f3e:	48 be 00 00 00 00 00 	movabs $0x8000000000000000,%rsi
    2f45:	00 00 80 
    2f48:	f3 0f 5a c2          	cvtss2sd %xmm2,%xmm0
    2f4c:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2f50:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
    2f54:	66 0f ef c9          	pxor   %xmm1,%xmm1
    2f58:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    2f5c:	89 c1                	mov    %eax,%ecx
    2f5e:	c1 f9 1f             	sar    $0x1f,%ecx
    2f61:	c1 e9 1a             	shr    $0x1a,%ecx
    2f64:	8d 14 08             	lea    (%rax,%rcx,1),%edx
    2f67:	83 e2 3f             	and    $0x3f,%edx
    2f6a:	29 ca                	sub    %ecx,%edx
    2f6c:	8d 4a 40             	lea    0x40(%rdx),%ecx
    2f6f:	85 d2                	test   %edx,%edx
    2f71:	0f 48 d1             	cmovs  %ecx,%edx
    2f74:	89 c1                	mov    %eax,%ecx
    2f76:	29 d1                	sub    %edx,%ecx
    2f78:	f2 0f 59 0d 58 30 00 	mulsd  0x3058(%rip),%xmm1        # 5fd8 <exp2JBy64+0x258>
    2f7f:	00 
    2f80:	8d 79 3f             	lea    0x3f(%rcx),%edi
    2f83:	85 c9                	test   %ecx,%ecx
    2f85:	0f 49 f9             	cmovns %ecx,%edi
    2f88:	c1 ff 06             	sar    $0x6,%edi
    2f8b:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    2f8f:	66 48 0f 7e c0       	movq   %xmm0,%rax
    2f94:	66 48 0f 7e c1       	movq   %xmm0,%rcx
    2f99:	48 c1 e8 2d          	shr    $0x2d,%rax
    2f9d:	25 e0 1f 00 00       	and    $0x1fe0,%eax
    2fa2:	48 39 f1             	cmp    %rsi,%rcx
    2fa5:	0f 86 1f 01 00 00    	jbe    30ca <rlibm34_exp10+0x2aa>
    2fab:	48 8d 0d 6e a8 21 00 	lea    0x21a86e(%rip),%rcx        # 21d820 <__exp10NegCoeffs>
    2fb2:	48 01 c8             	add    %rcx,%rax
    2fb5:	48 63 d2             	movslq %edx,%rdx
    2fb8:	f2 0f 10 48 18       	movsd  0x18(%rax),%xmm1
    2fbd:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2fc1:	f2 0f 58 48 10       	addsd  0x10(%rax),%xmm1
    2fc6:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    2fca:	f2 0f 58 48 08       	addsd  0x8(%rax),%xmm1
    2fcf:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    2fd3:	f2 0f 58 00          	addsd  (%rax),%xmm0
    2fd7:	48 8d 05 42 84 00 00 	lea    0x8442(%rip),%rax        # b420 <__exp2JBy64>
    2fde:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    2fe4:	f2 0f 10 04 d0       	movsd  (%rax,%rdx,8),%xmm0
    2fe9:	e8 f2 d6 ff ff       	callq  6e0 <ldexp@plt>
    2fee:	f2 0f 59 44 24 08    	mulsd  0x8(%rsp),%xmm0
    2ff4:	48 83 c4 18          	add    $0x18,%rsp
    2ff8:	c3                   	retq   
    2ff9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3000:	3d 00 00 10 41       	cmp    $0x41100000,%eax
    3005:	0f 84 80 00 00 00    	je     308b <rlibm34_exp10+0x26b>
    300b:	77 43                	ja     3050 <rlibm34_exp10+0x230>
    300d:	3d 00 00 e0 40       	cmp    $0x40e00000,%eax
    3012:	0f 84 8e 00 00 00    	je     30a6 <rlibm34_exp10+0x286>
    3018:	3d 00 00 00 41       	cmp    $0x41000000,%eax
    301d:	f2 0f 10 05 93 2f 00 	movsd  0x2f93(%rip),%xmm0        # 5fb8 <exp2JBy64+0x238>
    3024:	00 
    3025:	0f 85 f9 fe ff ff    	jne    2f24 <rlibm34_exp10+0x104>
    302b:	c3                   	retq   
    302c:	0f 1f 40 00          	nopl   0x0(%rax)
    3030:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3034:	c3                   	retq   
    3035:	0f 1f 00             	nopl   (%rax)
    3038:	3d d8 5b 5e b2       	cmp    $0xb25e5bd8,%eax
    303d:	f2 0f 10 05 23 0f 00 	movsd  0xf23(%rip),%xmm0        # 3f68 <exp2JBy64+0x228>
    3044:	00 
    3045:	77 e4                	ja     302b <rlibm34_exp10+0x20b>
    3047:	f2 0f 10 05 11 0f 00 	movsd  0xf11(%rip),%xmm0        # 3f60 <exp2JBy64+0x220>
    304e:	00 
    304f:	c3                   	retq   
    3050:	3d 00 00 20 41       	cmp    $0x41200000,%eax
    3055:	74 6a                	je     30c1 <rlibm34_exp10+0x2a1>
    3057:	3d 00 00 00 80       	cmp    $0x80000000,%eax
    305c:	f2 0f 10 05 dc 0e 00 	movsd  0xedc(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    3063:	00 
    3064:	74 c5                	je     302b <rlibm34_exp10+0x20b>
    3066:	e9 b9 fe ff ff       	jmpq   2f24 <rlibm34_exp10+0x104>
    306b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3070:	3d 00 00 80 40       	cmp    $0x40800000,%eax
    3075:	74 1d                	je     3094 <rlibm34_exp10+0x274>
    3077:	3d 00 00 a0 40       	cmp    $0x40a00000,%eax
    307c:	f2 0f 10 05 1c 2f 00 	movsd  0x2f1c(%rip),%xmm0        # 5fa0 <exp2JBy64+0x220>
    3083:	00 
    3084:	74 a5                	je     302b <rlibm34_exp10+0x20b>
    3086:	e9 99 fe ff ff       	jmpq   2f24 <rlibm34_exp10+0x104>
    308b:	f2 0f 10 05 2d 2f 00 	movsd  0x2f2d(%rip),%xmm0        # 5fc0 <exp2JBy64+0x240>
    3092:	00 
    3093:	c3                   	retq   
    3094:	f2 0f 10 05 fc 2e 00 	movsd  0x2efc(%rip),%xmm0        # 5f98 <exp2JBy64+0x218>
    309b:	00 
    309c:	c3                   	retq   
    309d:	f2 0f 10 05 03 2f 00 	movsd  0x2f03(%rip),%xmm0        # 5fa8 <exp2JBy64+0x228>
    30a4:	00 
    30a5:	c3                   	retq   
    30a6:	f2 0f 10 05 02 2f 00 	movsd  0x2f02(%rip),%xmm0        # 5fb0 <exp2JBy64+0x230>
    30ad:	00 
    30ae:	c3                   	retq   
    30af:	f2 0f 10 05 c1 1f 00 	movsd  0x1fc1(%rip),%xmm0        # 5078 <log_oneByF+0x458>
    30b6:	00 
    30b7:	c3                   	retq   
    30b8:	f2 0f 10 05 d0 2e 00 	movsd  0x2ed0(%rip),%xmm0        # 5f90 <exp2JBy64+0x210>
    30bf:	00 
    30c0:	c3                   	retq   
    30c1:	f2 0f 10 05 ff 2e 00 	movsd  0x2eff(%rip),%xmm0        # 5fc8 <exp2JBy64+0x248>
    30c8:	00 
    30c9:	c3                   	retq   
    30ca:	48 8d 0d 4f 87 21 00 	lea    0x21874f(%rip),%rcx        # 21b820 <__exp10PosCoeffs>
    30d1:	e9 dc fe ff ff       	jmpq   2fb2 <rlibm34_exp10+0x192>
    30d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    30dd:	00 00 00 

00000000000030e0 <rlibm34_exp2>:
    30e0:	66 0f 7e c0          	movd   %xmm0,%eax
    30e4:	a9 ff ff ff 7f       	test   $0x7fffffff,%eax
    30e9:	74 6d                	je     3158 <rlibm34_exp2+0x78>
    30eb:	3d 3a aa 38 34       	cmp    $0x3438aa3a,%eax
    30f0:	77 1e                	ja     3110 <rlibm34_exp2+0x30>
    30f2:	3d 3a aa b8 33       	cmp    $0x33b8aa3a,%eax
    30f7:	f2 0f 10 05 51 0e 00 	movsd  0xe51(%rip),%xmm0        # 3f50 <exp2JBy64+0x210>
    30fe:	00 
    30ff:	77 4f                	ja     3150 <rlibm34_exp2+0x70>
    3101:	f2 0f 10 05 3f 0e 00 	movsd  0xe3f(%rip),%xmm0        # 3f48 <exp2JBy64+0x208>
    3108:	00 
    3109:	c3                   	retq   
    310a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3110:	8d 88 00 00 00 bd    	lea    -0x43000000(%rax),%ecx
    3116:	81 f9 3b aa b8 70    	cmp    $0x70b8aa3b,%ecx
    311c:	77 4a                	ja     3168 <rlibm34_exp2+0x88>
    311e:	85 c0                	test   %eax,%eax
    3120:	0f 88 9a 01 00 00    	js     32c0 <rlibm34_exp2+0x1e0>
    3126:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    312b:	f2 0f 10 05 25 0e 00 	movsd  0xe25(%rip),%xmm0        # 3f58 <exp2JBy64+0x218>
    3132:	00 
    3133:	76 1b                	jbe    3150 <rlibm34_exp2+0x70>
    3135:	3d 00 00 80 7f       	cmp    $0x7f800000,%eax
    313a:	75 4d                	jne    3189 <rlibm34_exp2+0xa9>
    313c:	f2 0f 10 05 fc 0d 00 	movsd  0xdfc(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    3143:	00 
    3144:	f2 0f 5e 05 24 0e 00 	divsd  0xe24(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    314b:	00 
    314c:	c3                   	retq   
    314d:	0f 1f 00             	nopl   (%rax)
    3150:	f3 c3                	repz retq 
    3152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3158:	f2 0f 10 05 e0 0d 00 	movsd  0xde0(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    315f:	00 
    3160:	c3                   	retq   
    3161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3168:	3d 00 00 16 c3       	cmp    $0xc3160000,%eax
    316d:	76 29                	jbe    3198 <rlibm34_exp2+0xb8>
    316f:	3d 00 00 80 ff       	cmp    $0xff800000,%eax
    3174:	0f 84 3e 01 00 00    	je     32b8 <rlibm34_exp2+0x1d8>
    317a:	3d ff ff 7f ff       	cmp    $0xff7fffff,%eax
    317f:	f2 0f 10 05 f1 0d 00 	movsd  0xdf1(%rip),%xmm0        # 3f78 <exp2JBy64+0x238>
    3186:	00 
    3187:	76 c7                	jbe    3150 <rlibm34_exp2+0x70>
    3189:	66 0f ef c0          	pxor   %xmm0,%xmm0
    318d:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    3191:	c3                   	retq   
    3192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3198:	48 83 ec 18          	sub    $0x18,%rsp
    319c:	66 0f ef c9          	pxor   %xmm1,%xmm1
    31a0:	f3 0f 11 44 24 08    	movss  %xmm0,0x8(%rsp)
    31a6:	f3 0f 10 44 24 08    	movss  0x8(%rsp),%xmm0
    31ac:	f3 0f 59 05 0c 0e 00 	mulss  0xe0c(%rip),%xmm0        # 3fc0 <exp2JBy64+0x280>
    31b3:	00 
    31b4:	f3 0f 10 5c 24 08    	movss  0x8(%rsp),%xmm3
    31ba:	f3 0f 2c c0          	cvttss2si %xmm0,%eax
    31be:	66 0f ef c0          	pxor   %xmm0,%xmm0
    31c2:	f3 0f 5a c3          	cvtss2sd %xmm3,%xmm0
    31c6:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
    31ca:	89 c6                	mov    %eax,%esi
    31cc:	c1 fe 1f             	sar    $0x1f,%esi
    31cf:	c1 ee 1a             	shr    $0x1a,%esi
    31d2:	8d 0c 30             	lea    (%rax,%rsi,1),%ecx
    31d5:	83 e1 3f             	and    $0x3f,%ecx
    31d8:	29 f1                	sub    %esi,%ecx
    31da:	85 c9                	test   %ecx,%ecx
    31dc:	89 ce                	mov    %ecx,%esi
    31de:	f2 0f 59 0d 9a 0d 00 	mulsd  0xd9a(%rip),%xmm1        # 3f80 <exp2JBy64+0x240>
    31e5:	00 
    31e6:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    31ea:	78 44                	js     3230 <rlibm34_exp2+0x150>
    31ec:	29 c8                	sub    %ecx,%eax
    31ee:	66 0f ef c9          	pxor   %xmm1,%xmm1
    31f2:	8d 78 3f             	lea    0x3f(%rax),%edi
    31f5:	85 c0                	test   %eax,%eax
    31f7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    31fd:	0f 48 c7             	cmovs  %edi,%eax
    3200:	c1 f8 06             	sar    $0x6,%eax
    3203:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    3207:	89 c7                	mov    %eax,%edi
    3209:	0f 9b c2             	setnp  %dl
    320c:	41 0f 45 d0          	cmovne %r8d,%edx
    3210:	84 d2                	test   %dl,%dl
    3212:	74 2c                	je     3240 <rlibm34_exp2+0x160>
    3214:	85 c9                	test   %ecx,%ecx
    3216:	75 28                	jne    3240 <rlibm34_exp2+0x160>
    3218:	f2 0f 10 05 20 0d 00 	movsd  0xd20(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    321f:	00 
    3220:	48 83 c4 18          	add    $0x18,%rsp
    3224:	e9 b7 d4 ff ff       	jmpq   6e0 <ldexp@plt>
    3229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3230:	83 c6 40             	add    $0x40,%esi
    3233:	29 f0                	sub    %esi,%eax
    3235:	8d 78 3f             	lea    0x3f(%rax),%edi
    3238:	85 c0                	test   %eax,%eax
    323a:	0f 49 f8             	cmovns %eax,%edi
    323d:	c1 ff 06             	sar    $0x6,%edi
    3240:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    3245:	66 48 0f 7e c0       	movq   %xmm0,%rax
    324a:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    3251:	00 00 80 
    3254:	48 c1 ea 2d          	shr    $0x2d,%rdx
    3258:	81 e2 e0 0f 00 00    	and    $0xfe0,%edx
    325e:	48 39 c8             	cmp    %rcx,%rax
    3261:	76 7d                	jbe    32e0 <rlibm34_exp2+0x200>
    3263:	48 8d 05 b6 d5 21 00 	lea    0x21d5b6(%rip),%rax        # 220820 <__exp2NegCoeffs>
    326a:	48 01 c2             	add    %rax,%rdx
    326d:	f2 0f 10 12          	movsd  (%rdx),%xmm2
    3271:	f2 0f 10 4a 18       	movsd  0x18(%rdx),%xmm1
    3276:	48 8d 05 a3 83 00 00 	lea    0x83a3(%rip),%rax        # b620 <__exp2JBy64>
    327d:	48 63 f6             	movslq %esi,%rsi
    3280:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    3284:	f2 0f 58 4a 10       	addsd  0x10(%rdx),%xmm1
    3289:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
    328d:	f2 0f 58 4a 08       	addsd  0x8(%rdx),%xmm1
    3292:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    3296:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    329a:	f2 0f 10 04 f0       	movsd  (%rax,%rsi,8),%xmm0
    329f:	f2 0f 11 54 24 08    	movsd  %xmm2,0x8(%rsp)
    32a5:	e8 36 d4 ff ff       	callq  6e0 <ldexp@plt>
    32aa:	f2 0f 59 44 24 08    	mulsd  0x8(%rsp),%xmm0
    32b0:	48 83 c4 18          	add    $0x18,%rsp
    32b4:	c3                   	retq   
    32b5:	0f 1f 00             	nopl   (%rax)
    32b8:	66 0f ef c0          	pxor   %xmm0,%xmm0
    32bc:	c3                   	retq   
    32bd:	0f 1f 00             	nopl   (%rax)
    32c0:	3d 3b aa 38 b3       	cmp    $0xb338aa3b,%eax
    32c5:	f2 0f 10 05 9b 0c 00 	movsd  0xc9b(%rip),%xmm0        # 3f68 <exp2JBy64+0x228>
    32cc:	00 
    32cd:	0f 87 7d fe ff ff    	ja     3150 <rlibm34_exp2+0x70>
    32d3:	f2 0f 10 05 85 0c 00 	movsd  0xc85(%rip),%xmm0        # 3f60 <exp2JBy64+0x220>
    32da:	00 
    32db:	c3                   	retq   
    32dc:	0f 1f 40 00          	nopl   0x0(%rax)
    32e0:	48 8d 05 39 c5 21 00 	lea    0x21c539(%rip),%rax        # 21f820 <__exp2PosCoeffs>
    32e7:	48 01 c2             	add    %rax,%rdx
    32ea:	f2 0f 10 12          	movsd  (%rdx),%xmm2
    32ee:	eb 81                	jmp    3271 <rlibm34_exp2+0x191>

00000000000032f0 <rlibm34_sinh>:
    32f0:	66 0f 7e c2          	movd   %xmm0,%edx
    32f4:	66 0f 7e c0          	movd   %xmm0,%eax
    32f8:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    32ff:	00 00 80 
    3302:	be 00 00 00 00       	mov    $0x0,%esi
    3307:	85 d2                	test   %edx,%edx
    3309:	48 0f 48 f1          	cmovs  %rcx,%rsi
    330d:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    3312:	0f 84 a8 00 00 00    	je     33c0 <rlibm34_sinh+0xd0>
    3318:	3d 68 97 e8 39       	cmp    $0x39e89768,%eax
    331d:	77 61                	ja     3380 <rlibm34_sinh+0x90>
    331f:	66 0f ef f6          	pxor   %xmm6,%xmm6
    3323:	89 44 24 f8          	mov    %eax,-0x8(%rsp)
    3327:	b9 17 00 00 00       	mov    $0x17,%ecx
    332c:	f3 0f 10 7c 24 f8    	movss  -0x8(%rsp),%xmm7
    3332:	f3 0f 5a f7          	cvtss2sd %xmm7,%xmm6
    3336:	66 48 0f 7e f2       	movq   %xmm6,%rdx
    333b:	66 48 0f 7e f0       	movq   %xmm6,%rax
    3340:	48 c1 ea 34          	shr    $0x34,%rdx
    3344:	81 e2 ff 07 00 00    	and    $0x7ff,%edx
    334a:	48 81 ea 6a 03 00 00 	sub    $0x36a,%rdx
    3351:	48 83 fa 17          	cmp    $0x17,%rdx
    3355:	48 0f 4f d1          	cmovg  %rcx,%rdx
    3359:	b9 32 00 00 00       	mov    $0x32,%ecx
    335e:	48 29 d1             	sub    %rdx,%rcx
    3361:	ba 01 00 00 00       	mov    $0x1,%edx
    3366:	48 d3 e2             	shl    %cl,%rdx
    3369:	48 09 d0             	or     %rdx,%rax
    336c:	48 09 f0             	or     %rsi,%rax
    336f:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    3374:	f3 0f 7e 44 24 f8    	movq   -0x8(%rsp),%xmm0
    337a:	c3                   	retq   
    337b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3380:	3d fc d4 b2 42       	cmp    $0x42b2d4fc,%eax
    3385:	76 49                	jbe    33d0 <rlibm34_sinh+0xe0>
    3387:	3d 00 00 80 7f       	cmp    $0x7f800000,%eax
    338c:	0f 87 86 01 00 00    	ja     3518 <rlibm34_sinh+0x228>
    3392:	0f 84 90 01 00 00    	je     3528 <rlibm34_sinh+0x238>
    3398:	89 54 24 f8          	mov    %edx,-0x8(%rsp)
    339c:	f2 0f 10 05 b4 0b 00 	movsd  0xbb4(%rip),%xmm0        # 3f58 <exp2JBy64+0x218>
    33a3:	00 
    33a4:	f3 0f 10 54 24 f8    	movss  -0x8(%rsp),%xmm2
    33aa:	0f 2e 15 5f 14 00 00 	ucomiss 0x145f(%rip),%xmm2        # 4810 <__log2_lut+0x430>
    33b1:	77 11                	ja     33c4 <rlibm34_sinh+0xd4>
    33b3:	f2 0f 10 05 85 45 00 	movsd  0x4585(%rip),%xmm0        # 7940 <sinhKLn2+0x420>
    33ba:	00 
    33bb:	c3                   	retq   
    33bc:	0f 1f 40 00          	nopl   0x0(%rax)
    33c0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    33c4:	f3 c3                	repz retq 
    33c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    33cd:	00 00 00 
    33d0:	66 0f ef c9          	pxor   %xmm1,%xmm1
    33d4:	89 44 24 f8          	mov    %eax,-0x8(%rsp)
    33d8:	f3 0f 10 6c 24 f8    	movss  -0x8(%rsp),%xmm5
    33de:	f2 0f 10 05 ba 28 00 	movsd  0x28ba(%rip),%xmm0        # 5ca0 <exp2JBy64+0x200>
    33e5:	00 
    33e6:	f3 0f 5a cd          	cvtss2sd %xmm5,%xmm1
    33ea:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    33ee:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    33f2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    33f6:	99                   	cltd   
    33f7:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    33fb:	c1 ea 1a             	shr    $0x1a,%edx
    33fe:	89 c7                	mov    %eax,%edi
    3400:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
    3403:	83 e1 3f             	and    $0x3f,%ecx
    3406:	29 d1                	sub    %edx,%ecx
    3408:	89 ca                	mov    %ecx,%edx
    340a:	8d 49 40             	lea    0x40(%rcx),%ecx
    340d:	85 d2                	test   %edx,%edx
    340f:	0f 49 ca             	cmovns %edx,%ecx
    3412:	29 cf                	sub    %ecx,%edi
    3414:	8d 57 3f             	lea    0x3f(%rdi),%edx
    3417:	85 ff                	test   %edi,%edi
    3419:	f2 0f 59 05 87 28 00 	mulsd  0x2887(%rip),%xmm0        # 5ca8 <exp2JBy64+0x208>
    3420:	00 
    3421:	0f 49 d7             	cmovns %edi,%edx
    3424:	c1 fa 06             	sar    $0x6,%edx
    3427:	48 63 c2             	movslq %edx,%rax
    342a:	48 8d 15 0f 8c 00 00 	lea    0x8c0f(%rip),%rdx        # c040 <__sinhKLn2>
    3431:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
    3436:	48 8d 15 e3 87 00 00 	lea    0x87e3(%rip),%rdx        # bc20 <__coshKLn2>
    343d:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
    3441:	f2 0f 10 2c c2       	movsd  (%rdx,%rax,8),%xmm5
    3446:	48 8d 15 d3 85 00 00 	lea    0x85d3(%rip),%rdx        # ba20 <__sinhKLn2By64>
    344d:	48 63 c1             	movslq %ecx,%rax
    3450:	f2 0f 10 3c c2       	movsd  (%rdx,%rax,8),%xmm7
    3455:	48 8d 15 c4 83 00 00 	lea    0x83c4(%rip),%rdx        # b820 <__coshKLn2By64>
    345c:	66 0f 28 d9          	movapd %xmm1,%xmm3
    3460:	f2 0f 10 34 c2       	movsd  (%rdx,%rax,8),%xmm6
    3465:	66 48 0f 7e ca       	movq   %xmm1,%rdx
    346a:	66 48 0f 7e c8       	movq   %xmm1,%rax
    346f:	f2 0f 59 d9          	mulsd  %xmm1,%xmm3
    3473:	48 c1 ea 34          	shr    $0x34,%rdx
    3477:	66 44 0f 28 c5       	movapd %xmm5,%xmm8
    347c:	83 e2 3f             	and    $0x3f,%edx
    347f:	48 c1 e8 35          	shr    $0x35,%rax
    3483:	f2 0f 59 ee          	mulsd  %xmm6,%xmm5
    3487:	48 8d 0c 52          	lea    (%rdx,%rdx,2),%rcx
    348b:	48 8d 15 8e e6 21 00 	lea    0x21e68e(%rip),%rdx        # 221b20 <__sinhCoeffs>
    3492:	83 e0 1f             	and    $0x1f,%eax
    3495:	f2 44 0f 59 c7       	mulsd  %xmm7,%xmm8
    349a:	48 8d 14 ca          	lea    (%rdx,%rcx,8),%rdx
    349e:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
    34a2:	48 8d 05 77 e3 21 00 	lea    0x21e377(%rip),%rax        # 221820 <__coshCoeffs>
    34a9:	f2 0f 10 62 10       	movsd  0x10(%rdx),%xmm4
    34ae:	48 8d 04 c8          	lea    (%rax,%rcx,8),%rax
    34b2:	f2 0f 59 e3          	mulsd  %xmm3,%xmm4
    34b6:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    34bb:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    34bf:	f2 0f 58 62 08       	addsd  0x8(%rdx),%xmm4
    34c4:	f2 0f 58 40 08       	addsd  0x8(%rax),%xmm0
    34c9:	f2 0f 59 e3          	mulsd  %xmm3,%xmm4
    34cd:	f2 0f 59 d8          	mulsd  %xmm0,%xmm3
    34d1:	66 0f 28 c2          	movapd %xmm2,%xmm0
    34d5:	f2 0f 58 22          	addsd  (%rdx),%xmm4
    34d9:	f2 0f 59 d7          	mulsd  %xmm7,%xmm2
    34dd:	f2 0f 59 c6          	mulsd  %xmm6,%xmm0
    34e1:	f2 0f 58 18          	addsd  (%rax),%xmm3
    34e5:	f2 0f 58 d5          	addsd  %xmm5,%xmm2
    34e9:	f2 41 0f 58 c0       	addsd  %xmm8,%xmm0
    34ee:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    34f2:	f2 0f 59 d8          	mulsd  %xmm0,%xmm3
    34f6:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    34fa:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    34fe:	66 48 0f 7e d8       	movq   %xmm3,%rax
    3503:	48 09 f0             	or     %rsi,%rax
    3506:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    350b:	f3 0f 7e 44 24 f8    	movq   -0x8(%rsp),%xmm0
    3511:	c3                   	retq   
    3512:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3518:	66 0f ef c0          	pxor   %xmm0,%xmm0
    351c:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    3520:	c3                   	retq   
    3521:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3528:	f3 0f 11 44 24 f8    	movss  %xmm0,-0x8(%rsp)
    352e:	f3 0f 10 6c 24 f8    	movss  -0x8(%rsp),%xmm5
    3534:	0f 2e 2d d5 12 00 00 	ucomiss 0x12d5(%rip),%xmm5        # 4810 <__log2_lut+0x430>
    353b:	76 11                	jbe    354e <rlibm34_sinh+0x25e>
    353d:	f2 0f 10 05 fb 09 00 	movsd  0x9fb(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    3544:	00 
    3545:	f2 0f 5e 05 23 0a 00 	divsd  0xa23(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    354c:	00 
    354d:	c3                   	retq   
    354e:	f2 0f 10 05 92 24 00 	movsd  0x2492(%rip),%xmm0        # 59e8 <log_oneByF+0x468>
    3555:	00 
    3556:	f2 0f 5e 05 12 0a 00 	divsd  0xa12(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    355d:	00 
    355e:	c3                   	retq   
    355f:	90                   	nop

0000000000003560 <rlibm34_cosh>:
    3560:	66 0f 7e c0          	movd   %xmm0,%eax
    3564:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    3569:	3d ff ff ff 39       	cmp    $0x39ffffff,%eax
    356e:	77 28                	ja     3598 <rlibm34_cosh+0x38>
    3570:	85 c0                	test   %eax,%eax
    3572:	f2 0f 10 05 c6 09 00 	movsd  0x9c6(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    3579:	00 
    357a:	74 13                	je     358f <rlibm34_cosh+0x2f>
    357c:	3d f3 04 b5 39       	cmp    $0x39b504f3,%eax
    3581:	f2 0f 10 05 bf 09 00 	movsd  0x9bf(%rip),%xmm0        # 3f48 <exp2JBy64+0x208>
    3588:	00 
    3589:	0f 87 71 01 00 00    	ja     3700 <rlibm34_cosh+0x1a0>
    358f:	f3 c3                	repz retq 
    3591:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3598:	3d fc d4 b2 42       	cmp    $0x42b2d4fc,%eax
    359d:	76 29                	jbe    35c8 <rlibm34_cosh+0x68>
    359f:	3d 00 00 80 7f       	cmp    $0x7f800000,%eax
    35a4:	0f 87 66 01 00 00    	ja     3710 <rlibm34_cosh+0x1b0>
    35aa:	f2 0f 10 05 a6 09 00 	movsd  0x9a6(%rip),%xmm0        # 3f58 <exp2JBy64+0x218>
    35b1:	00 
    35b2:	75 db                	jne    358f <rlibm34_cosh+0x2f>
    35b4:	f2 0f 10 05 84 09 00 	movsd  0x984(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    35bb:	00 
    35bc:	f2 0f 5e 05 ac 09 00 	divsd  0x9ac(%rip),%xmm0        # 3f70 <exp2JBy64+0x230>
    35c3:	00 
    35c4:	c3                   	retq   
    35c5:	0f 1f 00             	nopl   (%rax)
    35c8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    35cc:	89 44 24 fc          	mov    %eax,-0x4(%rsp)
    35d0:	f3 0f 10 74 24 fc    	movss  -0x4(%rsp),%xmm6
    35d6:	f2 0f 10 05 c2 26 00 	movsd  0x26c2(%rip),%xmm0        # 5ca0 <exp2JBy64+0x200>
    35dd:	00 
    35de:	f3 0f 5a ce          	cvtss2sd %xmm6,%xmm1
    35e2:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    35e6:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
    35ea:	66 0f ef c0          	pxor   %xmm0,%xmm0
    35ee:	99                   	cltd   
    35ef:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
    35f3:	c1 ea 1a             	shr    $0x1a,%edx
    35f6:	89 c6                	mov    %eax,%esi
    35f8:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
    35fb:	83 e1 3f             	and    $0x3f,%ecx
    35fe:	29 d1                	sub    %edx,%ecx
    3600:	89 ca                	mov    %ecx,%edx
    3602:	8d 49 40             	lea    0x40(%rcx),%ecx
    3605:	85 d2                	test   %edx,%edx
    3607:	0f 49 ca             	cmovns %edx,%ecx
    360a:	29 ce                	sub    %ecx,%esi
    360c:	8d 56 3f             	lea    0x3f(%rsi),%edx
    360f:	85 f6                	test   %esi,%esi
    3611:	f2 0f 59 05 8f 26 00 	mulsd  0x268f(%rip),%xmm0        # 5ca8 <exp2JBy64+0x208>
    3618:	00 
    3619:	0f 49 d6             	cmovns %esi,%edx
    361c:	c1 fa 06             	sar    $0x6,%edx
    361f:	48 63 c2             	movslq %edx,%rax
    3622:	48 8d 15 57 96 00 00 	lea    0x9657(%rip),%rdx        # cc80 <__sinhKLn2>
    3629:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
    362e:	48 8d 15 2b 92 00 00 	lea    0x922b(%rip),%rdx        # c860 <__coshKLn2>
    3635:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
    3639:	f2 0f 10 2c c2       	movsd  (%rdx,%rax,8),%xmm5
    363e:	48 8d 15 1b 90 00 00 	lea    0x901b(%rip),%rdx        # c660 <__sinhKLn2By64>
    3645:	48 63 c1             	movslq %ecx,%rax
    3648:	f2 0f 10 34 c2       	movsd  (%rdx,%rax,8),%xmm6
    364d:	48 8d 15 0c 8e 00 00 	lea    0x8e0c(%rip),%rdx        # c460 <__coshKLn2By64>
    3654:	66 0f 28 d9          	movapd %xmm1,%xmm3
    3658:	f2 0f 10 3c c2       	movsd  (%rdx,%rax,8),%xmm7
    365d:	66 48 0f 7e ca       	movq   %xmm1,%rdx
    3662:	66 48 0f 7e c8       	movq   %xmm1,%rax
    3667:	f2 0f 59 d9          	mulsd  %xmm1,%xmm3
    366b:	48 c1 ea 34          	shr    $0x34,%rdx
    366f:	66 44 0f 28 c5       	movapd %xmm5,%xmm8
    3674:	83 e2 3f             	and    $0x3f,%edx
    3677:	48 c1 e8 35          	shr    $0x35,%rax
    367b:	f2 0f 59 ee          	mulsd  %xmm6,%xmm5
    367f:	48 8d 0c 52          	lea    (%rdx,%rdx,2),%rcx
    3683:	48 8d 15 96 ed 21 00 	lea    0x21ed96(%rip),%rdx        # 222420 <__sinhCoeffs>
    368a:	83 e0 1f             	and    $0x1f,%eax
    368d:	f2 44 0f 59 c7       	mulsd  %xmm7,%xmm8
    3692:	48 8d 14 ca          	lea    (%rdx,%rcx,8),%rdx
    3696:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
    369a:	48 8d 05 7f ea 21 00 	lea    0x21ea7f(%rip),%rax        # 222120 <__coshCoeffs>
    36a1:	f2 0f 10 62 10       	movsd  0x10(%rdx),%xmm4
    36a6:	48 8d 04 c8          	lea    (%rax,%rcx,8),%rax
    36aa:	f2 0f 59 e3          	mulsd  %xmm3,%xmm4
    36ae:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    36b3:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    36b7:	f2 0f 58 62 08       	addsd  0x8(%rdx),%xmm4
    36bc:	f2 0f 58 40 08       	addsd  0x8(%rax),%xmm0
    36c1:	f2 0f 59 e3          	mulsd  %xmm3,%xmm4
    36c5:	f2 0f 59 d8          	mulsd  %xmm0,%xmm3
    36c9:	66 0f 28 c2          	movapd %xmm2,%xmm0
    36cd:	f2 0f 58 22          	addsd  (%rdx),%xmm4
    36d1:	f2 0f 59 d7          	mulsd  %xmm7,%xmm2
    36d5:	f2 0f 59 c6          	mulsd  %xmm6,%xmm0
    36d9:	f2 0f 58 18          	addsd  (%rax),%xmm3
    36dd:	f2 0f 58 d5          	addsd  %xmm5,%xmm2
    36e1:	f2 41 0f 58 c0       	addsd  %xmm8,%xmm0
    36e6:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    36ea:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    36ee:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    36f2:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    36f6:	c3                   	retq   
    36f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    36fe:	00 00 
    3700:	f2 0f 10 05 48 08 00 	movsd  0x848(%rip),%xmm0        # 3f50 <exp2JBy64+0x210>
    3707:	00 
    3708:	c3                   	retq   
    3709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3710:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3714:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    3718:	c3                   	retq   
    3719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003720 <rlibm34_sinpi>:
    3720:	66 0f 7e c2          	movd   %xmm0,%edx
    3724:	66 0f 7e c0          	movd   %xmm0,%eax
    3728:	85 d2                	test   %edx,%edx
    372a:	0f 88 80 00 00 00    	js     37b0 <rlibm34_sinpi+0x90>
    3730:	81 fa 37 15 fc 33    	cmp    $0x33fc1537,%edx
    3736:	76 38                	jbe    3770 <rlibm34_sinpi+0x50>
    3738:	f2 0f 10 05 00 08 00 	movsd  0x800(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    373f:	00 
    3740:	48 bf 00 00 00 00 00 	movabs $0x8000000000000000,%rdi
    3747:	00 00 80 
    374a:	31 f6                	xor    %esi,%esi
    374c:	f2 0f 10 1d 94 22 00 	movsd  0x2294(%rip),%xmm3        # 59e8 <log_oneByF+0x468>
    3753:	00 
    3754:	3d ff ff ff 4a       	cmp    $0x4affffff,%eax
    3759:	76 75                	jbe    37d0 <rlibm34_sinpi+0xb0>
    375b:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    3760:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3764:	76 3e                	jbe    37a4 <rlibm34_sinpi+0x84>
    3766:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    376a:	c3                   	retq   
    376b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3770:	81 fa d7 01 cd 33    	cmp    $0x33cd01d7,%edx
    3776:	0f 84 fc 00 00 00    	je     3878 <rlibm34_sinpi+0x158>
    377c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3780:	89 54 24 f8          	mov    %edx,-0x8(%rsp)
    3784:	f3 0f 10 6c 24 f8    	movss  -0x8(%rsp),%xmm5
    378a:	f3 0f 5a c5          	cvtss2sd %xmm5,%xmm0
    378e:	f2 0f 59 05 3a 62 00 	mulsd  0x623a(%rip),%xmm0        # 99d0 <sinpiMBy512+0x810>
    3795:	00 
    3796:	c3                   	retq   
    3797:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    379e:	00 00 
    37a0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    37a4:	f3 c3                	repz retq 
    37a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    37ad:	00 00 00 
    37b0:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    37b5:	3d 37 15 fc 33       	cmp    $0x33fc1537,%eax
    37ba:	0f 87 90 00 00 00    	ja     3850 <rlibm34_sinpi+0x130>
    37c0:	3d d7 01 cd 33       	cmp    $0x33cd01d7,%eax
    37c5:	75 b5                	jne    377c <rlibm34_sinpi+0x5c>
    37c7:	f2 0f 10 05 f1 61 00 	movsd  0x61f1(%rip),%xmm0        # 99c0 <sinpiMBy512+0x800>
    37ce:	00 
    37cf:	c3                   	retq   
    37d0:	89 44 24 f8          	mov    %eax,-0x8(%rsp)
    37d4:	f3 0f 10 15 24 62 00 	movss  0x6224(%rip),%xmm2        # 9a00 <sinpiMBy512+0x840>
    37db:	00 
    37dc:	f3 0f 10 4c 24 f8    	movss  -0x8(%rsp),%xmm1
    37e2:	f3 0f 59 d1          	mulss  %xmm1,%xmm2
    37e6:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
    37ea:	f2 0f 10 25 96 51 00 	movsd  0x5196(%rip),%xmm4        # 8988 <sinpiMBy512+0x808>
    37f1:	00 
    37f2:	f3 48 0f 2c c2       	cvttss2si %xmm2,%rax
    37f7:	66 0f ef d2          	pxor   %xmm2,%xmm2
    37fb:	89 c2                	mov    %eax,%edx
    37fd:	0f b6 c8             	movzbl %al,%ecx
    3800:	89 c0                	mov    %eax,%eax
    3802:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
    3807:	c1 ea 08             	shr    $0x8,%edx
    380a:	f6 c2 02             	test   $0x2,%dl
    380d:	f2 0f 59 d4          	mulsd  %xmm4,%xmm2
    3811:	f2 0f 5c ca          	subsd  %xmm2,%xmm1
    3815:	74 07                	je     381e <rlibm34_sinpi+0xfe>
    3817:	66 0f 28 c3          	movapd %xmm3,%xmm0
    381b:	48 89 fe             	mov    %rdi,%rsi
    381e:	66 0f ef d2          	pxor   %xmm2,%xmm2
    3822:	83 e2 01             	and    $0x1,%edx
    3825:	bf 00 00 00 00       	mov    $0x0,%edi
    382a:	66 0f 2e ca          	ucomisd %xmm2,%xmm1
    382e:	0f 9b c0             	setnp  %al
    3831:	0f 45 c7             	cmovne %edi,%eax
    3834:	84 c0                	test   %al,%al
    3836:	74 50                	je     3888 <rlibm34_sinpi+0x168>
    3838:	85 c9                	test   %ecx,%ecx
    383a:	75 4c                	jne    3888 <rlibm34_sinpi+0x168>
    383c:	85 d2                	test   %edx,%edx
    383e:	0f 84 5c ff ff ff    	je     37a0 <rlibm34_sinpi+0x80>
    3844:	f3 c3                	repz retq 
    3846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    384d:	00 00 00 
    3850:	f2 0f 10 05 90 21 00 	movsd  0x2190(%rip),%xmm0        # 59e8 <log_oneByF+0x468>
    3857:	00 
    3858:	31 ff                	xor    %edi,%edi
    385a:	f2 0f 10 1d de 06 00 	movsd  0x6de(%rip),%xmm3        # 3f40 <exp2JBy64+0x200>
    3861:	00 
    3862:	48 be 00 00 00 00 00 	movabs $0x8000000000000000,%rsi
    3869:	00 00 80 
    386c:	e9 e3 fe ff ff       	jmpq   3754 <rlibm34_sinpi+0x34>
    3871:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3878:	f2 0f 10 05 48 61 00 	movsd  0x6148(%rip),%xmm0        # 99c8 <sinpiMBy512+0x808>
    387f:	00 
    3880:	c3                   	retq   
    3881:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3888:	85 d2                	test   %edx,%edx
    388a:	74 11                	je     389d <rlibm34_sinpi+0x17d>
    388c:	f2 0f 5c e1          	subsd  %xmm1,%xmm4
    3890:	b8 ff 00 00 00       	mov    $0xff,%eax
    3895:	29 c8                	sub    %ecx,%eax
    3897:	89 c1                	mov    %eax,%ecx
    3899:	66 0f 28 cc          	movapd %xmm4,%xmm1
    389d:	66 48 0f 7e c8       	movq   %xmm1,%rax
    38a2:	66 0f 28 c1          	movapd %xmm1,%xmm0
    38a6:	48 8d 15 d3 f1 21 00 	lea    0x21f1d3(%rip),%rdx        # 222a80 <__sinpiCoeffs>
    38ad:	48 8d 3d 6c f1 21 00 	lea    0x21f16c(%rip),%rdi        # 222a20 <__cospiCoeffs>
    38b4:	48 c1 e8 38          	shr    $0x38,%rax
    38b8:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    38bc:	83 e0 03             	and    $0x3,%eax
    38bf:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    38c3:	48 c1 e0 03          	shl    $0x3,%rax
    38c7:	48 01 c2             	add    %rax,%rdx
    38ca:	48 01 f8             	add    %rdi,%rax
    38cd:	f2 0f 10 52 10       	movsd  0x10(%rdx),%xmm2
    38d2:	f2 0f 10 58 10       	movsd  0x10(%rax),%xmm3
    38d7:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    38db:	f2 0f 59 d8          	mulsd  %xmm0,%xmm3
    38df:	f2 0f 58 52 08       	addsd  0x8(%rdx),%xmm2
    38e4:	f2 0f 58 58 08       	addsd  0x8(%rax),%xmm3
    38e9:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
    38ed:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
    38f1:	f2 0f 58 12          	addsd  (%rdx),%xmm2
    38f5:	f2 0f 58 00          	addsd  (%rax),%xmm0
    38f9:	48 8d 05 a0 9f 00 00 	lea    0x9fa0(%rip),%rax        # d8a0 <__sinpiMBy512>
    3900:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    3904:	f2 0f 59 04 c8       	mulsd  (%rax,%rcx,8),%xmm0
    3909:	48 8d 05 90 97 00 00 	lea    0x9790(%rip),%rax        # d0a0 <__cospiMBy512>
    3910:	f2 0f 59 0c c8       	mulsd  (%rax,%rcx,8),%xmm1
    3915:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    3919:	66 48 0f 7e c0       	movq   %xmm0,%rax
    391e:	48 31 f0             	xor    %rsi,%rax
    3921:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    3926:	f3 0f 7e 44 24 f8    	movq   -0x8(%rsp),%xmm0
    392c:	c3                   	retq   
    392d:	0f 1f 00             	nopl   (%rax)

0000000000003930 <rlibm34_cospi>:
    3930:	66 0f 7e c0          	movd   %xmm0,%eax
    3934:	66 0f 7e c2          	movd   %xmm0,%edx
    3938:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
    393d:	3d 83 f9 a2 38       	cmp    $0x38a2f983,%eax
    3942:	0f 87 c0 00 00 00    	ja     3a08 <rlibm34_cospi+0xd8>
    3948:	85 c0                	test   %eax,%eax
    394a:	f2 0f 10 05 0e 06 00 	movsd  0x60e(%rip),%xmm0        # 3f60 <exp2JBy64+0x220>
    3951:	00 
    3952:	0f 85 a7 00 00 00    	jne    39ff <rlibm34_cospi+0xcf>
    3958:	f2 0f 10 05 e0 05 00 	movsd  0x5e0(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    395f:	00 
    3960:	c3                   	retq   
    3961:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3968:	48 8d 05 31 af 00 00 	lea    0xaf31(%rip),%rax        # e8a0 <__sinpiMBy512>
    396f:	f2 0f 10 2c f0       	movsd  (%rax,%rsi,8),%xmm5
    3974:	48 8d 05 25 a7 00 00 	lea    0xa725(%rip),%rax        # e0a0 <__cospiMBy512>
    397b:	f2 0f 10 24 f0       	movsd  (%rax,%rsi,8),%xmm4
    3980:	66 48 0f 7e c8       	movq   %xmm1,%rax
    3985:	66 0f 28 d1          	movapd %xmm1,%xmm2
    3989:	48 8d 15 b0 f1 21 00 	lea    0x21f1b0(%rip),%rdx        # 222b40 <__sinpiCoeffs>
    3990:	48 8d 35 49 f1 21 00 	lea    0x21f149(%rip),%rsi        # 222ae0 <__cospiCoeffs>
    3997:	48 c1 e8 38          	shr    $0x38,%rax
    399b:	f2 0f 59 d1          	mulsd  %xmm1,%xmm2
    399f:	83 e0 03             	and    $0x3,%eax
    39a2:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    39a6:	48 c1 e0 03          	shl    $0x3,%rax
    39aa:	48 01 c2             	add    %rax,%rdx
    39ad:	48 01 f0             	add    %rsi,%rax
    39b0:	f2 0f 10 5a 10       	movsd  0x10(%rdx),%xmm3
    39b5:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    39ba:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
    39be:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    39c2:	f2 0f 58 5a 08       	addsd  0x8(%rdx),%xmm3
    39c7:	f2 0f 58 40 08       	addsd  0x8(%rax),%xmm0
    39cc:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
    39d0:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    39d4:	f2 0f 58 1a          	addsd  (%rdx),%xmm3
    39d8:	f2 0f 58 00          	addsd  (%rax),%xmm0
    39dc:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
    39e0:	f2 0f 59 c5          	mulsd  %xmm5,%xmm0
    39e4:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
    39e8:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    39ec:	66 48 0f 7e c0       	movq   %xmm0,%rax
    39f1:	48 31 c8             	xor    %rcx,%rax
    39f4:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
    39f9:	f3 0f 7e 44 24 f8    	movq   -0x8(%rsp),%xmm0
    39ff:	f3 c3                	repz retq 
    3a01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3a08:	3d ff ff ff 4a       	cmp    $0x4affffff,%eax
    3a0d:	76 31                	jbe    3a40 <rlibm34_cospi+0x110>
    3a0f:	3d ff ff 7f 7f       	cmp    $0x7f7fffff,%eax
    3a14:	0f 87 c6 00 00 00    	ja     3ae0 <rlibm34_cospi+0x1b0>
    3a1a:	3d ff ff 7f 4b       	cmp    $0x4b7fffff,%eax
    3a1f:	f2 0f 10 05 19 05 00 	movsd  0x519(%rip),%xmm0        # 3f40 <exp2JBy64+0x200>
    3a26:	00 
    3a27:	77 d6                	ja     39ff <rlibm34_cospi+0xcf>
    3a29:	83 e2 01             	and    $0x1,%edx
    3a2c:	f2 0f 10 05 b4 1f 00 	movsd  0x1fb4(%rip),%xmm0        # 59e8 <log_oneByF+0x468>
    3a33:	00 
    3a34:	75 c9                	jne    39ff <rlibm34_cospi+0xcf>
    3a36:	e9 1d ff ff ff       	jmpq   3958 <rlibm34_cospi+0x28>
    3a3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3a40:	66 0f ef c9          	pxor   %xmm1,%xmm1
    3a44:	89 44 24 f8          	mov    %eax,-0x8(%rsp)
    3a48:	f3 0f 10 74 24 f8    	movss  -0x8(%rsp),%xmm6
    3a4e:	48 b9 00 00 00 00 00 	movabs $0x8000000000000000,%rcx
    3a55:	00 00 80 
    3a58:	f2 0f 10 05 20 4f 00 	movsd  0x4f20(%rip),%xmm0        # 8980 <sinpiMBy512+0x800>
    3a5f:	00 
    3a60:	f3 0f 5a ce          	cvtss2sd %xmm6,%xmm1
    3a64:	f2 0f 10 15 1c 4f 00 	movsd  0x4f1c(%rip),%xmm2        # 8988 <sinpiMBy512+0x808>
    3a6b:	00 
    3a6c:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    3a70:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    3a75:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3a79:	89 c2                	mov    %eax,%edx
    3a7b:	0f b6 f0             	movzbl %al,%esi
    3a7e:	89 c0                	mov    %eax,%eax
    3a80:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    3a85:	c1 ea 08             	shr    $0x8,%edx
    3a88:	83 c2 01             	add    $0x1,%edx
    3a8b:	48 89 d7             	mov    %rdx,%rdi
    3a8e:	83 e2 01             	and    $0x1,%edx
    3a91:	48 c1 e7 3e          	shl    $0x3e,%rdi
    3a95:	48 21 f9             	and    %rdi,%rcx
    3a98:	bf 00 00 00 00       	mov    $0x0,%edi
    3a9d:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
    3aa1:	f2 0f 5c c8          	subsd  %xmm0,%xmm1
    3aa5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3aa9:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
    3aad:	0f 9b c0             	setnp  %al
    3ab0:	0f 45 c7             	cmovne %edi,%eax
    3ab3:	84 c0                	test   %al,%al
    3ab5:	74 39                	je     3af0 <rlibm34_cospi+0x1c0>
    3ab7:	85 f6                	test   %esi,%esi
    3ab9:	75 35                	jne    3af0 <rlibm34_cospi+0x1c0>
    3abb:	85 d2                	test   %edx,%edx
    3abd:	0f 84 3c ff ff ff    	je     39ff <rlibm34_cospi+0xcf>
    3ac3:	48 b8 00 00 00 00 00 	movabs $0x3ff0000000000000,%rax
    3aca:	00 f0 3f 
    3acd:	48 09 c1             	or     %rax,%rcx
    3ad0:	48 89 4c 24 f8       	mov    %rcx,-0x8(%rsp)
    3ad5:	f3 0f 7e 44 24 f8    	movq   -0x8(%rsp),%xmm0
    3adb:	c3                   	retq   
    3adc:	0f 1f 40 00          	nopl   0x0(%rax)
    3ae0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3ae4:	f2 0f 5e c0          	divsd  %xmm0,%xmm0
    3ae8:	c3                   	retq   
    3ae9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3af0:	85 d2                	test   %edx,%edx
    3af2:	0f 84 70 fe ff ff    	je     3968 <rlibm34_cospi+0x38>
    3af8:	85 f6                	test   %esi,%esi
    3afa:	75 14                	jne    3b10 <rlibm34_cospi+0x1e0>
    3afc:	66 0f ef e4          	pxor   %xmm4,%xmm4
    3b00:	f2 0f 10 2d 38 04 00 	movsd  0x438(%rip),%xmm5        # 3f40 <exp2JBy64+0x200>
    3b07:	00 
    3b08:	e9 73 fe ff ff       	jmpq   3980 <rlibm34_cospi+0x50>
    3b0d:	0f 1f 00             	nopl   (%rax)
    3b10:	48 8d 15 89 ad 00 00 	lea    0xad89(%rip),%rdx        # e8a0 <__sinpiMBy512>
    3b17:	f2 0f 5c d1          	subsd  %xmm1,%xmm2
    3b1b:	b8 ff 00 00 00       	mov    $0xff,%eax
    3b20:	29 f0                	sub    %esi,%eax
    3b22:	f2 0f 10 2c c2       	movsd  (%rdx,%rax,8),%xmm5
    3b27:	48 8d 15 72 a5 00 00 	lea    0xa572(%rip),%rdx        # e0a0 <__cospiMBy512>
    3b2e:	66 0f 28 ca          	movapd %xmm2,%xmm1
    3b32:	f2 0f 10 24 c2       	movsd  (%rdx,%rax,8),%xmm4
    3b37:	e9 44 fe ff ff       	jmpq   3980 <rlibm34_cospi+0x50>
    3b3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000003b40 <__libc_csu_init>:
    3b40:	41 57                	push   %r15
    3b42:	41 56                	push   %r14
    3b44:	49 89 d7             	mov    %rdx,%r15
    3b47:	41 55                	push   %r13
    3b49:	41 54                	push   %r12
    3b4b:	4c 8d 25 26 c2 20 00 	lea    0x20c226(%rip),%r12        # 20fd78 <__frame_dummy_init_array_entry>
    3b52:	55                   	push   %rbp
    3b53:	48 8d 2d 26 c2 20 00 	lea    0x20c226(%rip),%rbp        # 20fd80 <__init_array_end>
    3b5a:	53                   	push   %rbx
    3b5b:	41 89 fd             	mov    %edi,%r13d
    3b5e:	49 89 f6             	mov    %rsi,%r14
    3b61:	4c 29 e5             	sub    %r12,%rbp
    3b64:	48 83 ec 08          	sub    $0x8,%rsp
    3b68:	48 c1 fd 03          	sar    $0x3,%rbp
    3b6c:	e8 3f cb ff ff       	callq  6b0 <_init>
    3b71:	48 85 ed             	test   %rbp,%rbp
    3b74:	74 20                	je     3b96 <__libc_csu_init+0x56>
    3b76:	31 db                	xor    %ebx,%ebx
    3b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    3b7f:	00 
    3b80:	4c 89 fa             	mov    %r15,%rdx
    3b83:	4c 89 f6             	mov    %r14,%rsi
    3b86:	44 89 ef             	mov    %r13d,%edi
    3b89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    3b8d:	48 83 c3 01          	add    $0x1,%rbx
    3b91:	48 39 dd             	cmp    %rbx,%rbp
    3b94:	75 ea                	jne    3b80 <__libc_csu_init+0x40>
    3b96:	48 83 c4 08          	add    $0x8,%rsp
    3b9a:	5b                   	pop    %rbx
    3b9b:	5d                   	pop    %rbp
    3b9c:	41 5c                	pop    %r12
    3b9e:	41 5d                	pop    %r13
    3ba0:	41 5e                	pop    %r14
    3ba2:	41 5f                	pop    %r15
    3ba4:	c3                   	retq   
    3ba5:	90                   	nop
    3ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3bad:	00 00 00 

0000000000003bb0 <__libc_csu_fini>:
    3bb0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000003bb4 <_fini>:
    3bb4:	48 83 ec 08          	sub    $0x8,%rsp
    3bb8:	48 83 c4 08          	add    $0x8,%rsp
    3bbc:	c3                   	retq   
