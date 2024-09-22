	.text
	.section	.rodata
.L1:
	.string	"总和为 %d\n"
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-28
	sd	ra,20(sp)
	sd	s0,12(sp)
	addi	s0,sp,28
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	j	.L3
.L2:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	addw	a4,a4,a5
	sw	a4,-20(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,9
	ble	a4,a5,.L2
	lw	a4,-20(s0)
	mv	a1,a4
	lui	a5,%hi(.L1)
	addi	a0,a5,%lo(.L1)
	call	printf
	li	a0,0
	ld	ra,20(sp)
	ld	s0,12(sp)
	addi	sp,sp,28
	jr	ra
