	.text
	.section	.rodata
.L1:
	.string	"%f %f"
.L2:
	.string	"输入的除数为0"
.L3:
	.string	"和为: %.2f\n"
.L4:
	.string	"差为: %.2f\n"
.L5:
	.string	"乘积为: %.2f\n"
.L6:
	.string	"商为: %.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-40
	sd	ra,36(sp)
	sd	s0,28(sp)
	addi	s0,sp,40
	addi	a4,s0,-36
	addi	a5,s0,-32
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.L1)
	addi	a0,a5,%lo(.L1)
	call	__isoc99_scanf
	flw	fa4,-32(s0)
	flw	fa5,-36(s0)
	fadd.s	fa6,fa4,fa5
	fsw	fa6,-16(s0)
	fsub.s	fa6,fa4,fa5
	fsw	fa6,-20(s0)
	fmul.s	fa6,fa4,fa5
	fsw	fa6,-24(s0)
	flw	fa5,-36(s0)
	fmv.w.x	fa4,zero
	feq.s	a5,fa5,fa4
	bne	a5,zero,.L7
	flw	fa4,-32(s0)
	flw	fa5,-36(s0)
	fdiv.s	fa6,fa4,fa5
	fsw	fa6,-28(s0)
	flw	fa5,-16(s0)
	fcvt.d.s	fa5,fa5
	fmv.x.d	a1,fa5
	lui	a5,%hi(.L3)
	addi	a0,a5,%lo(.L3)
	call	printf
	flw	fa5,-20(s0)
	fcvt.d.s	fa5,fa5
	fmv.x.d	a1,fa5
	lui	a5,%hi(.L4)
	addi	a0,a5,%lo(.L4)
	call	printf
	flw	fa5,-24(s0)
	fcvt.d.s	fa5,fa5
	fmv.x.d	a1,fa5
	lui	a5,%hi(.L5)
	addi	a0,a5,%lo(.L5)
	call	printf
	flw	fa5,-28(s0)
	fcvt.d.s	fa5,fa5
	fmv.x.d	a1,fa5
	lui	a5,%hi(.L6)
	addi	a0,a5,%lo(.L6)
	call	printf
	li	a5,0
	j	.L8
.L7:
	lui	a5,%hi(.L2)
	addi	a0,a5,%lo(.L2)
	call	puts
	li	a5,1
.L8:
	mv	a0,a5
	ld	ra,36(sp)
	ld	s0,28(sp)
	addi	sp,sp,40
	jr	ra

