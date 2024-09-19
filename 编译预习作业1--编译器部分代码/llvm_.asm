
llvm:	file format elf64-x86-64

Disassembly of section .init:

0000000000001000 <_init>:
    1000: f3 0f 1e fa                  	endbr64
    1004: 48 83 ec 08                  	subq	$8, %rsp
    1008: 48 8b 05 d9 2f 00 00         	movq	12249(%rip), %rax       # 0x3fe8 <printf@GLIBC_2.2.5+0x3fe8>
    100f: 48 85 c0                     	testq	%rax, %rax
    1012: 74 02                        	je	0x1016 <_init+0x16>
    1014: ff d0                        	callq	*%rax
    1016: 48 83 c4 08                  	addq	$8, %rsp
    101a: c3                           	retq

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020: ff 35 e2 2f 00 00            	pushq	12258(%rip)             # 0x4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026: ff 25 e4 2f 00 00            	jmpq	*12260(%rip)            # 0x4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c: 0f 1f 40 00                  	nopl	(%rax)

0000000000001030 <clock@plt>:
    1030: ff 25 e2 2f 00 00            	jmpq	*12258(%rip)            # 0x4018 <_GLOBAL_OFFSET_TABLE_+0x18>
    1036: 68 00 00 00 00               	pushq	$0
    103b: e9 e0 ff ff ff               	jmp	0x1020 <.plt>

0000000000001040 <printf@plt>:
    1040: ff 25 da 2f 00 00            	jmpq	*12250(%rip)            # 0x4020 <_GLOBAL_OFFSET_TABLE_+0x20>
    1046: 68 01 00 00 00               	pushq	$1
    104b: e9 d0 ff ff ff               	jmp	0x1020 <.plt>

0000000000001050 <__isoc99_scanf@plt>:
    1050: ff 25 d2 2f 00 00            	jmpq	*12242(%rip)            # 0x4028 <_GLOBAL_OFFSET_TABLE_+0x28>
    1056: 68 02 00 00 00               	pushq	$2
    105b: e9 c0 ff ff ff               	jmp	0x1020 <.plt>

Disassembly of section .plt.got:

0000000000001060 <.plt.got>:
    1060: ff 25 92 2f 00 00            	jmpq	*12178(%rip)            # 0x3ff8 <printf@GLIBC_2.2.5+0x3ff8>
    1066: 66 90                        	nop

Disassembly of section .text:

0000000000001070 <_start>:
    1070: f3 0f 1e fa                  	endbr64
    1074: 31 ed                        	xorl	%ebp, %ebp
    1076: 49 89 d1                     	movq	%rdx, %r9
    1079: 5e                           	popq	%rsi
    107a: 48 89 e2                     	movq	%rsp, %rdx
    107d: 48 83 e4 f0                  	andq	$-16, %rsp
    1081: 50                           	pushq	%rax
    1082: 54                           	pushq	%rsp
    1083: 45 31 c0                     	xorl	%r8d, %r8d
    1086: 31 c9                        	xorl	%ecx, %ecx
    1088: 48 8d 3d d1 00 00 00         	leaq	209(%rip), %rdi         # 0x1160 <main>
    108f: ff 15 43 2f 00 00            	callq	*12099(%rip)            # 0x3fd8 <printf@GLIBC_2.2.5+0x3fd8>
    1095: f4                           	hlt
    1096: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000000000010a0 <deregister_tm_clones>:
    10a0: 48 8d 3d 99 2f 00 00         	leaq	12185(%rip), %rdi       # 0x4040 <completed.0>
    10a7: 48 8d 05 92 2f 00 00         	leaq	12178(%rip), %rax       # 0x4040 <completed.0>
    10ae: 48 39 f8                     	cmpq	%rdi, %rax
    10b1: 74 15                        	je	0x10c8 <deregister_tm_clones+0x28>
    10b3: 48 8b 05 26 2f 00 00         	movq	12070(%rip), %rax       # 0x3fe0 <printf@GLIBC_2.2.5+0x3fe0>
    10ba: 48 85 c0                     	testq	%rax, %rax
    10bd: 74 09                        	je	0x10c8 <deregister_tm_clones+0x28>
    10bf: ff e0                        	jmpq	*%rax
    10c1: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    10c8: c3                           	retq
    10c9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

00000000000010d0 <register_tm_clones>:
    10d0: 48 8d 3d 69 2f 00 00         	leaq	12137(%rip), %rdi       # 0x4040 <completed.0>
    10d7: 48 8d 35 62 2f 00 00         	leaq	12130(%rip), %rsi       # 0x4040 <completed.0>
    10de: 48 29 fe                     	subq	%rdi, %rsi
    10e1: 48 89 f0                     	movq	%rsi, %rax
    10e4: 48 c1 ee 3f                  	shrq	$63, %rsi
    10e8: 48 c1 f8 03                  	sarq	$3, %rax
    10ec: 48 01 c6                     	addq	%rax, %rsi
    10ef: 48 d1 fe                     	sarq	%rsi
    10f2: 74 14                        	je	0x1108 <register_tm_clones+0x38>
    10f4: 48 8b 05 f5 2e 00 00         	movq	12021(%rip), %rax       # 0x3ff0 <printf@GLIBC_2.2.5+0x3ff0>
    10fb: 48 85 c0                     	testq	%rax, %rax
    10fe: 74 08                        	je	0x1108 <register_tm_clones+0x38>
    1100: ff e0                        	jmpq	*%rax
    1102: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    1108: c3                           	retq
    1109: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001110 <__do_global_dtors_aux>:
    1110: f3 0f 1e fa                  	endbr64
    1114: 80 3d 25 2f 00 00 00         	cmpb	$0, 12069(%rip)         # 0x4040 <completed.0>
    111b: 75 2b                        	jne	0x1148 <__do_global_dtors_aux+0x38>
    111d: 55                           	pushq	%rbp
    111e: 48 83 3d d2 2e 00 00 00      	cmpq	$0, 11986(%rip)         # 0x3ff8 <printf@GLIBC_2.2.5+0x3ff8>
    1126: 48 89 e5                     	movq	%rsp, %rbp
    1129: 74 0c                        	je	0x1137 <__do_global_dtors_aux+0x27>
    112b: 48 8b 3d 06 2f 00 00         	movq	12038(%rip), %rdi       # 0x4038 <__dso_handle>
    1132: e8 29 ff ff ff               	callq	0x1060 <.plt.got>
    1137: e8 64 ff ff ff               	callq	0x10a0 <deregister_tm_clones>
    113c: c6 05 fd 2e 00 00 01         	movb	$1, 12029(%rip)         # 0x4040 <completed.0>
    1143: 5d                           	popq	%rbp
    1144: c3                           	retq
    1145: 0f 1f 00                     	nopl	(%rax)
    1148: c3                           	retq
    1149: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001150 <frame_dummy>:
    1150: f3 0f 1e fa                  	endbr64
    1154: e9 77 ff ff ff               	jmp	0x10d0 <register_tm_clones>
    1159: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001160 <main>:
    1160: 55                           	pushq	%rbp
    1161: 48 89 e5                     	movq	%rsp, %rbp
    1164: 48 83 ec 50                  	subq	$80, %rsp
    1168: c7 45 bc 00 00 00 00         	movl	$0, -68(%rbp)
    116f: 48 bf 18 20 00 00 00 00 00 00	movabsq	$8216, %rdi             # imm = 0x2018
    1179: b0 00                        	movb	$0, %al
    117b: e8 c0 fe ff ff               	callq	0x1040 <printf@plt>
    1180: 0f 57 c0                     	xorps	%xmm0, %xmm0
    1183: f2 0f 11 45 e0               	movsd	%xmm0, -32(%rbp)
    1188: f2 0f 10 05 78 0e 00 00      	movsd	3704(%rip), %xmm0       # xmm0 = mem[0],zero
                                                                        # 0x2008 <_IO_stdin_used+0x8>
    1190: f2 0f 11 45 f0               	movsd	%xmm0, -16(%rbp)
    1195: c7 45 fc 01 00 00 00         	movl	$1, -4(%rbp)
    119c: 48 bf 2c 20 00 00 00 00 00 00	movabsq	$8236, %rdi             # imm = 0x202C
    11a6: b0 00                        	movb	$0, %al
    11a8: e8 93 fe ff ff               	callq	0x1040 <printf@plt>
    11ad: 48 bf 3f 20 00 00 00 00 00 00	movabsq	$8255, %rdi             # imm = 0x203F
    11b7: 48 8d 75 ec                  	leaq	-20(%rbp), %rsi
    11bb: b0 00                        	movb	$0, %al
    11bd: e8 8e fe ff ff               	callq	0x1050 <__isoc99_scanf@plt>
    11c2: 83 7d ec 64                  	cmpl	$100, -20(%rbp)
    11c6: 7e 20                        	jle	0x11e8 <main+0x88>
    11c8: 48 bf 42 20 00 00 00 00 00 00	movabsq	$8258, %rdi             # imm = 0x2042
    11d2: 48 be 46 20 00 00 00 00 00 00	movabsq	$8262, %rsi             # imm = 0x2046
    11dc: b0 00                        	movb	$0, %al
    11de: e8 5d fe ff ff               	callq	0x1040 <printf@plt>
    11e3: e9 be 00 00 00               	jmp	0x12a6 <main+0x146>
    11e8: e8 43 fe ff ff               	callq	0x1030 <clock@plt>
    11ed: 48 89 45 c0                  	movq	%rax, -64(%rbp)
    11f1: f2 0f 10 45 e0               	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
    11f6: 48 bf 5a 20 00 00 00 00 00 00	movabsq	$8282, %rdi             # imm = 0x205A
    1200: b0 01                        	movb	$1, %al
    1202: e8 39 fe ff ff               	callq	0x1040 <printf@plt>
    1207: f2 0f 10 45 f0               	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
    120c: 48 bf 5a 20 00 00 00 00 00 00	movabsq	$8282, %rdi             # imm = 0x205A
    1216: b0 01                        	movb	$1, %al
    1218: e8 23 fe ff ff               	callq	0x1040 <printf@plt>
    121d: 8b 45 fc                     	movl	-4(%rbp), %eax
    1220: 3b 45 ec                     	cmpl	-20(%rbp), %eax
    1223: 7d 44                        	jge	0x1269 <main+0x109>
    1225: f2 0f 10 45 f0               	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
    122a: f2 0f 11 45 d8               	movsd	%xmm0, -40(%rbp)
    122f: f2 0f 10 45 e0               	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
    1234: f2 0f 58 45 f0               	addsd	-16(%rbp), %xmm0
    1239: f2 0f 11 45 f0               	movsd	%xmm0, -16(%rbp)
    123e: f2 0f 10 45 f0               	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
    1243: 48 bf 5a 20 00 00 00 00 00 00	movabsq	$8282, %rdi             # imm = 0x205A
    124d: b0 01                        	movb	$1, %al
    124f: e8 ec fd ff ff               	callq	0x1040 <printf@plt>
    1254: f2 0f 10 45 d8               	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
    1259: f2 0f 11 45 e0               	movsd	%xmm0, -32(%rbp)
    125e: 8b 45 fc                     	movl	-4(%rbp), %eax
    1261: 83 c0 01                     	addl	$1, %eax
    1264: 89 45 fc                     	movl	%eax, -4(%rbp)
    1267: eb b4                        	jmp	0x121d <main+0xbd>
    1269: e8 c2 fd ff ff               	callq	0x1030 <clock@plt>
    126e: 48 89 45 c8                  	movq	%rax, -56(%rbp)
    1272: 48 8b 45 c8                  	movq	-56(%rbp), %rax
    1276: 48 2b 45 c0                  	subq	-64(%rbp), %rax
    127a: f2 48 0f 2a c0               	cvtsi2sd	%rax, %xmm0
    127f: f2 0f 10 0d 89 0d 00 00      	movsd	3465(%rip), %xmm1       # xmm1 = mem[0],zero
                                                                        # 0x2010 <_IO_stdin_used+0x10>
    1287: f2 0f 5e c1                  	divsd	%xmm1, %xmm0
    128b: f2 0f 11 45 d0               	movsd	%xmm0, -48(%rbp)
    1290: f2 0f 10 45 d0               	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
    1295: 48 bf 5e 20 00 00 00 00 00 00	movabsq	$8286, %rdi             # imm = 0x205E
    129f: b0 01                        	movb	$1, %al
    12a1: e8 9a fd ff ff               	callq	0x1040 <printf@plt>
    12a6: 31 c0                        	xorl	%eax, %eax
    12a8: 48 83 c4 50                  	addq	$80, %rsp
    12ac: 5d                           	popq	%rbp
    12ad: c3                           	retq

Disassembly of section .fini:

00000000000012b0 <_fini>:
    12b0: f3 0f 1e fa                  	endbr64
    12b4: 48 83 ec 08                  	subq	$8, %rsp
    12b8: 48 83 c4 08                  	addq	$8, %rsp
    12bc: c3                           	retq
