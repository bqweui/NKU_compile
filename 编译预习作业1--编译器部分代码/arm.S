	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\344\273\243\347\240\201\346\255\243\345\270\270\350"
	.ascii	"\277\220\350\241\214\000"
	.align	2
.LC1:
	.ascii	"\350\257\267\350\276\223\345\205\245n\347\232\204\345"
	.ascii	"\200\274: \000"
	.align	2
.LC2:
	.ascii	"%d\000"
	.align	2
.LC3:
	.ascii	"\350\276\223\345\205\245\347\232\204n\345\200\274\350"
	.ascii	"\277\207\345\244\247\000"
	.align	2
.LC4:
	.ascii	"%f\012\000"
	.align	2
.LC5:
	.ascii	"\347\250\213\345\272\217\346\211\247\350\241\214\346"
	.ascii	"\227\266\351\227\264\357\274\232%.6f \347\247\222\012"
	.ascii	"\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	ldr	r2, .L8+8
.LPIC8:
	add	r2, pc
	ldr	r3, .L8+12
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	mov	r3, #0
	ldr	r3, .L8+16
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #16]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [r7, #24]
	movs	r3, #1
	str	r3, [r7, #4]
	ldr	r3, .L8+20
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, r7
	mov	r1, r3
	ldr	r3, .L8+24
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, [r7]
	cmp	r3, #100
	ble	.L2
	ldr	r3, .L8+28
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L3
.L2:
	bl	clock(PLT)
	str	r0, [r7, #8]
	ldrd	r2, [r7, #16]
	ldr	r1, .L8+32
.LPIC4:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldrd	r2, [r7, #24]
	ldr	r1, .L8+36
.LPIC5:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	b	.L4
.L5:
	ldrd	r2, [r7, #24]
	strd	r2, [r7, #40]
	vldr.64	d6, [r7, #24]
	vldr.64	d7, [r7, #16]
	vadd.f64	d7, d6, d7
	vstr.64	d7, [r7, #24]
	ldrd	r2, [r7, #24]
	ldr	r1, .L8+40
.LPIC6:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldrd	r2, [r7, #40]
	strd	r2, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L4:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L5
	bl	clock(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L8
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #32]
	ldrd	r2, [r7, #32]
	ldr	r1, .L8+44
.LPIC7:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
.L3:
	movs	r3, #0
	ldr	r1, .L8+48
.LPIC9:
	add	r1, pc
	ldr	r2, .L8+12
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #52]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L7
	bl	__stack_chk_fail(PLT)
.L7:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L9:
	.align	3
.L8:
	.word	0
	.word	1093567616
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.word	.LC4-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.word	.LC4-(.LPIC6+4)
	.word	.LC5-(.LPIC7+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",%progbits
