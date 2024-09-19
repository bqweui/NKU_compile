
llvm.o:	file format elf64-x86-64

Disassembly of section .text:

0000000000000000 <main>:
       0: 55                           	pushq	%rbp
       1: 48 89 e5                     	movq	%rsp, %rbp
       4: 48 83 ec 50                  	subq	$80, %rsp
       8: c7 45 bc 00 00 00 00         	movl	$0, -68(%rbp)
       f: 48 bf 00 00 00 00 00 00 00 00	movabsq	$0, %rdi
      19: b0 00                        	movb	$0, %al
      1b: e8 00 00 00 00               	callq	0x20 <main+0x20>
      20: 0f 57 c0                     	xorps	%xmm0, %xmm0
      23: f2 0f 11 45 e0               	movsd	%xmm0, -32(%rbp)
      28: f2 0f 10 05 00 00 00 00      	movsd	(%rip), %xmm0           # xmm0 = mem[0],zero
                                                                        # 0x30 <main+0x30>
      30: f2 0f 11 45 f0               	movsd	%xmm0, -16(%rbp)
      35: c7 45 fc 01 00 00 00         	movl	$1, -4(%rbp)
      3c: 48 bf 00 00 00 00 00 00 00 00	movabsq	$0, %rdi
      46: b0 00                        	movb	$0, %al
      48: e8 00 00 00 00               	callq	0x4d <main+0x4d>
      4d: 48 bf 00 00 00 00 00 00 00 00	movabsq	$0, %rdi
      57: 48 8d 75 ec                  	leaq	-20(%rbp), %rsi
      5b: b0 00                        	movb	$0, %al
      5d: e8 00 00 00 00               	callq	0x62 <main+0x62>
      62: 83 7d ec 64                  	cmpl	$100, -20(%rbp)
      66: 7e 20                        	jle	0x88 <main+0x88>
      68: 48 bf 00 00 00 00 00 00 00 00	movabsq	$0, %rdi
      72: 48 be 00 00 00 00 00 00 00 00	movabsq	$0, %rsi
      7c: b0 00                        	movb	$0, %al
      7e: e8 00 00 00 00               	callq	0x83 <main+0x83>
      83: e9 be 00 00 00               	jmp	0x146 <main+0x146>
      88: e8 00 00 00 00               	callq	0x8d <main+0x8d>
      8d: 48 89 45 c0                  	movq	%rax, -64(%rbp)
      91: f2 0f 10 45 e0               	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
      96: 48 bf 00 00 00 00 00 00 00 00	movabsq	$0, %rdi
      a0: b0 01                        	movb	$1, %al
      a2: e8 00 00 00 00               	callq	0xa7 <main+0xa7>
      a7: f2 0f 10 45 f0               	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
      ac: 48 bf 00 00 00 00 00 00 00 00	movabsq	$0, %rdi
      b6: b0 01                        	movb	$1, %al
      b8: e8 00 00 00 00               	callq	0xbd <main+0xbd>
      bd: 8b 45 fc                     	movl	-4(%rbp), %eax
      c0: 3b 45 ec                     	cmpl	-20(%rbp), %eax
      c3: 7d 44                        	jge	0x109 <main+0x109>
      c5: f2 0f 10 45 f0               	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
      ca: f2 0f 11 45 d8               	movsd	%xmm0, -40(%rbp)
      cf: f2 0f 10 45 e0               	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
      d4: f2 0f 58 45 f0               	addsd	-16(%rbp), %xmm0
      d9: f2 0f 11 45 f0               	movsd	%xmm0, -16(%rbp)
      de: f2 0f 10 45 f0               	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
      e3: 48 bf 00 00 00 00 00 00 00 00	movabsq	$0, %rdi
      ed: b0 01                        	movb	$1, %al
      ef: e8 00 00 00 00               	callq	0xf4 <main+0xf4>
      f4: f2 0f 10 45 d8               	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
      f9: f2 0f 11 45 e0               	movsd	%xmm0, -32(%rbp)
      fe: 8b 45 fc                     	movl	-4(%rbp), %eax
     101: 83 c0 01                     	addl	$1, %eax
     104: 89 45 fc                     	movl	%eax, -4(%rbp)
     107: eb b4                        	jmp	0xbd <main+0xbd>
     109: e8 00 00 00 00               	callq	0x10e <main+0x10e>
     10e: 48 89 45 c8                  	movq	%rax, -56(%rbp)
     112: 48 8b 45 c8                  	movq	-56(%rbp), %rax
     116: 48 2b 45 c0                  	subq	-64(%rbp), %rax
     11a: f2 48 0f 2a c0               	cvtsi2sd	%rax, %xmm0
     11f: f2 0f 10 0d 00 00 00 00      	movsd	(%rip), %xmm1           # xmm1 = mem[0],zero
                                                                        # 0x127 <main+0x127>
     127: f2 0f 5e c1                  	divsd	%xmm1, %xmm0
     12b: f2 0f 11 45 d0               	movsd	%xmm0, -48(%rbp)
     130: f2 0f 10 45 d0               	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
     135: 48 bf 00 00 00 00 00 00 00 00	movabsq	$0, %rdi
     13f: b0 01                        	movb	$1, %al
     141: e8 00 00 00 00               	callq	0x146 <main+0x146>
     146: 31 c0                        	xorl	%eax, %eax
     148: 48 83 c4 50                  	addq	$80, %rsp
     14c: 5d                           	popq	%rbp
     14d: c3                           	retq
