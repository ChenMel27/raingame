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
	.file	"player.c"
	.text
	.align	2
	.global	initializePlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializePlayer, %function
initializePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #2
	mov	ip, #5
	mov	r0, #145
	mov	r1, #31
	ldr	r3, .L3
	str	ip, [r3]
	str	r0, [r3, #4]
	strh	r1, [r3, #28]	@ movhi
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L4:
	.align	2
.L3:
	.word	player
	.size	initializePlayer, .-initializePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L7
	ldrh	r2, [r0, #28]
	sub	sp, sp, #8
	ldr	r3, [r0, #12]
	str	r2, [sp]
	ldr	r4, .L7+4
	ldm	r0, {r0, r1, r2}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	player
	.word	drawRectangle
	.size	drawPlayer, .-drawPlayer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Score: %d\000"
	.text
	.align	2
	.global	resetGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetGame, %function
resetGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L11
	ldr	r6, .L11+4
	sub	sp, sp, #32
	ldr	r5, .L11+8
	ldr	r8, .L11+12
	ldm	r4, {r0, r1, r2, r3}
	str	r6, [sp]
	ldr	r7, .L11+16
	mov	lr, pc
	bx	r7
	mov	r1, r8
	ldr	r7, .L11+20
	ldr	r2, [r5]
	add	r0, sp, #8
	mov	lr, pc
	bx	r7
	mov	r1, #10
	mov	r3, r6
	mov	r0, r1
	ldr	r6, .L11+24
	add	r2, sp, #8
	mov	lr, pc
	bx	r6
	mov	ip, #5
	mov	r3, #2
	mov	r1, #31
	mov	r2, #0
	mov	r0, #145
	str	ip, [r4]
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	strh	r1, [r4, #28]	@ movhi
	str	r2, [r5, #4]
	str	r0, [r4, #4]
	bl	drawPlayer
	mov	r1, r8
	ldr	r2, [r5]
	add	r0, sp, #20
	mov	lr, pc
	bx	r7
	mov	r1, #10
	ldr	r3, .L11+28
	mov	r0, r1
	add	r2, sp, #20
	mov	lr, pc
	bx	r6
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	player
	.word	20810
	.word	.LANCHOR0
	.word	.LC0
	.word	drawRectangle
	.word	sprintf
	.word	drawString
	.word	32767
	.size	resetGame, .-resetGame
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	ip, .L18
	ldr	r4, .L18+4
	sub	sp, sp, #12
	ldm	r4, {r0, r1, r2, r3}
	str	ip, [sp]
	ldr	r5, .L18+8
	mov	lr, pc
	bx	r5
	ldr	r3, .L18+12
	ldrh	r3, [r3]
	tst	r3, #32
	bne	.L14
	ldr	r2, [r4]
	cmp	r2, #1
	subgt	r2, r2, #1
	strgt	r2, [r4]
.L14:
	tst	r3, #16
	bne	.L15
	ldr	r3, [r4, #8]
	ldr	r2, [r4]
	rsb	r3, r3, #240
	cmp	r2, r3
	addlt	r2, r2, #1
	strlt	r2, [r4]
.L15:
	ldr	r1, .L18+16
	ldr	r3, [r4, #12]
	ldr	r2, [r1, #4]
	ldr	r0, [r4, #4]
	rsb	r3, r3, #160
	add	r2, r2, #1
	cmp	r0, r3
	str	r2, [r1, #4]
	strgt	r3, [r4, #4]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	drawPlayer
.L19:
	.align	2
.L18:
	.word	20810
	.word	player
	.word	drawRectangle
	.word	buttons
	.word	.LANCHOR0
	.size	updatePlayer, .-updatePlayer
	.global	score
	.comm	player,32,4
	.global	moveCounter
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.type	moveCounter, %object
	.size	moveCounter, 4
moveCounter:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
