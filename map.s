	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"map.c"
	.text
	.align	2
	.global	drawBackground
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBackground, %function
drawBackground:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L4
	sub	sp, sp, #8
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L4+8
	ldr	r4, .L4+12
	str	r2, [sp]
	mov	r3, #13
	mov	r2, #240
	mov	r1, #147
	mov	r0, #0
	mov	lr, pc
	bx	r4
	mov	ip, #0
	ldr	r1, .L4+16
	ldr	r2, [r1, #8]
	ldr	r0, [r1]
	ldr	r3, [r1, #12]
	add	r2, r2, #1
	ldr	r1, [r1, #4]
	sub	r0, r0, #1
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	20810
	.word	fillScreen
	.word	5605
	.word	drawRectangle
	.word	.LANCHOR0
	.size	drawBackground, .-drawBackground
	.align	2
	.global	drawMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMap, %function
drawMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	drawBackground
	.size	drawMap, .-drawMap
	.global	endpoint
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	endpoint, %object
	.size	endpoint, 16
endpoint:
	.word	228
	.word	0
	.word	12
	.word	147
	.ident	"GCC: (devkitARM release 53) 9.1.0"
