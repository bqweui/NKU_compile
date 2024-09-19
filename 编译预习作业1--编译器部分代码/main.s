	.text
	.file	"main.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function main
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_1:
	.quad	0x412e848000000000              # double 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$0, -68(%rbp)
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movl	$1, -4(%rbp)
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
	movabsq	$.L.str.2, %rdi
	leaq	-20(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf@PLT
	cmpl	$100, -20(%rbp)
	jle	.LBB0_2
# %bb.1:
	movabsq	$.L.str.3, %rdi
	movabsq	$.L.str.4, %rsi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_6
.LBB0_2:
	callq	clock@PLT
	movq	%rax, -64(%rbp)
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	movabsq	$.L.str.5, %rdi
	movb	$1, %al
	callq	printf@PLT
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movabsq	$.L.str.5, %rdi
	movb	$1, %al
	callq	printf@PLT
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movabsq	$.L.str.5, %rdi
	movb	$1, %al
	callq	printf@PLT
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_5:
	callq	clock@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	cvtsi2sd	%rax, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0                # xmm0 = mem[0],zero
	movabsq	$.L.str.6, %rdi
	movb	$1, %al
	callq	printf@PLT
.LBB0_6:
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\344\273\243\347\240\201\346\255\243\345\270\270\350\277\220\350\241\214\n"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\350\257\267\350\276\223\345\205\245n\347\232\204\345\200\274: "
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s\n"
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\350\276\223\345\205\245\347\232\204n\345\200\274\350\277\207\345\244\247"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%f\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\347\250\213\345\272\217\346\211\247\350\241\214\346\227\266\351\227\264\357\274\232%.6f \347\247\222\n"
	.size	.L.str.6, 31

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
