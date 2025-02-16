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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L7
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldm	r3, {r1, r4}
	rsb	r4, r4, r4, lsl #4
	lsl	r2, r4, #4
	sub	sp, sp, #12
	sub	fp, r2, #960
	str	fp, [sp, #4]
	mov	fp, #0	@ movhi
	mov	r8, #31744
	mvn	r0, #64512
	ldr	r3, .L7+4
	add	lr, r1, #2
	ldr	r3, [r3]
	add	r10, r1, r4, lsl #4
	add	r4, lr, r4, lsl #4
	add	ip, r1, #1
	sub	r7, r2, #240
	lsl	r10, r10, #1
	lsl	r4, r4, #1
	strh	fp, [r3, r10]	@ movhi
	add	r9, lr, r7
	strh	fp, [r3, r4]	@ movhi
	add	r7, r7, ip
	ldr	fp, .L7+8
	sub	r6, r2, #480
	lsl	r9, r9, #1
	lsl	r7, r7, #1
	strh	fp, [r3, r9]	@ movhi
	strh	fp, [r3, r7]	@ movhi
	add	fp, r1, r6
	lsl	fp, fp, #1
	strh	r8, [r3, fp]	@ movhi
	add	fp, ip, r6
	lsl	fp, fp, #1
	strh	r8, [r3, fp]	@ movhi
	add	r6, lr, r6
	ldr	fp, [sp, #4]
	sub	r5, r2, #720
	lsl	r6, r6, #1
	strh	r8, [r3, r6]	@ movhi
	add	r8, r1, r5
	add	r6, r1, fp
	sub	r10, r2, #1200
	sub	r4, r2, #1440
	lsl	r8, r8, #1
	lsl	r6, r6, #1
	strh	r0, [r3, r8]	@ movhi
	strh	r0, [r3, r6]	@ movhi
	add	r8, r1, r10
	add	r6, r1, r4
	sub	r9, r2, #1680
	sub	r7, r2, #1920
	lsl	r8, r8, #1
	sub	r2, r2, #2160
	lsl	r6, r6, #1
	strh	r0, [r3, r8]	@ movhi
	strh	r0, [r3, r6]	@ movhi
	add	r8, r1, r9
	add	r6, r1, r7
	add	r1, r1, r2
	lsl	r8, r8, #1
	lsl	r6, r6, #1
	lsl	r1, r1, #1
	strh	r0, [r3, r8]	@ movhi
	strh	r0, [r3, r6]	@ movhi
	add	r8, ip, r5
	strh	r0, [r3, r1]	@ movhi
	ldr	r6, .L7+12
	add	r1, ip, fp
	lsl	r8, r8, #1
	lsl	r1, r1, #1
	strh	r6, [r3, r8]	@ movhi
	strh	r6, [r3, r1]	@ movhi
	add	r8, ip, r10
	add	r1, ip, r4
	lsl	r8, r8, #1
	lsl	r1, r1, #1
	strh	r0, [r3, r8]	@ movhi
	add	r5, lr, r5
	strh	r0, [r3, r1]	@ movhi
	add	r8, ip, r9
	add	r1, ip, r7
	add	fp, lr, fp
	add	r10, lr, r10
	add	r4, lr, r4
	add	r9, lr, r9
	add	ip, ip, r2
	add	r7, lr, r7
	add	r2, lr, r2
	lsl	r5, r5, #1
	lsl	fp, fp, #1
	lsl	r10, r10, #1
	lsl	r4, r4, #1
	lsl	r8, r8, #1
	lsl	r9, r9, #1
	lsl	r1, r1, #1
	lsl	ip, ip, #1
	lsl	r7, r7, #1
	lsl	r2, r2, #1
	strh	r6, [r3, r8]	@ movhi
	strh	r0, [r3, r1]	@ movhi
	strh	r0, [r3, ip]	@ movhi
	strh	r6, [r3, r5]	@ movhi
	strh	r6, [r3, fp]	@ movhi
	strh	r0, [r3, r10]	@ movhi
	strh	r0, [r3, r4]	@ movhi
	strh	r6, [r3, r9]	@ movhi
	strh	r6, [r3, r7]	@ movhi
	strh	r0, [r3, r2]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	player
	.word	videoBuffer
	.word	18137
	.word	16023
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r9, #0
	ldr	r4, .L11
	ldr	r6, .L11+4
	sub	sp, sp, #36
	ldm	r4, {r0, r1, r2, r3}
	ldr	r7, .L11+8
	str	r6, [sp]
	mov	lr, pc
	bx	r7
	mov	r0, r6
	ldr	r3, .L11+12
	mov	lr, pc
	bx	r3
	ldr	r2, .L11+16
	mov	r0, r9
	str	r2, [sp]
	mov	r3, #13
	mov	r2, #240
	mov	r1, #147
	mov	lr, pc
	bx	r7
	ldr	r1, .L11+20
	ldr	r2, [r1, #8]
	ldr	r0, [r1]
	ldr	r5, .L11+24
	ldr	r8, .L11+28
	ldr	r3, [r1, #12]
	add	r2, r2, #1
	ldr	r1, [r1, #4]
	sub	r0, r0, #1
	str	r9, [sp]
	mov	lr, pc
	bx	r7
	mov	r1, r8
	ldr	r7, .L11+32
	ldr	r2, [r5]
	add	r0, sp, #8
	mov	lr, pc
	bx	r7
	mov	r1, #10
	mov	r3, r6
	mov	r0, r1
	ldr	r6, .L11+36
	add	r2, sp, #8
	mov	lr, pc
	bx	r6
	mov	r3, #2
	mov	r1, #145
	mov	r2, #31
	mov	r0, #5
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	stm	r4, {r0, r1}
	strh	r2, [r4, #28]	@ movhi
	str	r9, [r5, #4]
	bl	drawPlayer
	mov	r1, r8
	ldr	r2, [r5]
	add	r0, sp, #20
	mov	lr, pc
	bx	r7
	mov	r1, #10
	ldr	r3, .L11+40
	mov	r0, r1
	add	r2, sp, #20
	mov	lr, pc
	bx	r6
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	player
	.word	20810
	.word	drawRectangle
	.word	fillScreen
	.word	5605
	.word	endpoint
	.word	.LANCHOR0
	.word	.LC0
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
	ldr	r4, .L18
	ldr	ip, .L18+4
	ldmib	r4, {r1, r2, r3}
	sub	sp, sp, #12
	add	r3, r3, #9
	ldr	r0, [r4]
	str	ip, [sp]
	ldr	r5, .L18+8
	add	r2, r2, #3
	sub	r1, r1, #9
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
	.word	player
	.word	20810
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
