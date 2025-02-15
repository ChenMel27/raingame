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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L4
	push	{r4, lr}
	ldr	r3, .L4+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	initializePlayer
	.word	initRain
	.word	initSound
	.word	mgba_open
	.word	drawMap
	.size	initialize, .-initialize
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	updatePlayer
	.word	updateRain
	.size	updateGame, .-updateGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Score: %d\000"
	.text
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L12
	sub	sp, sp, #16
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+8
	ldr	r1, .L12+12
	ldr	r2, [r3]
	add	r0, sp, #4
	ldr	r3, .L12+16
	mov	lr, pc
	bx	r3
	mov	r1, #10
	ldr	r3, .L12+20
	mov	r0, r1
	ldr	r4, .L12+24
	add	r2, sp, #4
	mov	lr, pc
	bx	r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	drawPlayer
	.word	drawRain
	.word	score
	.word	.LC0
	.word	sprintf
	.word	32767
	.word	drawString
	.size	drawGame, .-drawGame
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L35
	sub	sp, sp, #36
	mov	lr, pc
	bx	r3
	ldr	r8, .L35+4
	ldr	r4, .L35+8
	ldr	r5, .L35+12
	ldr	fp, .L35+16
	ldr	r10, .L35+20
	ldr	r9, .L35+24
.L20:
	ldr	r2, .L35+28
	ldrh	r3, [r8]
	strh	r3, [r2]	@ movhi
	ldr	r3, .L35+32
	ldrh	r3, [r3, #48]
	mvn	r3, r3
	strh	r3, [r8]	@ movhi
	ldr	r3, .L35+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+48
	mov	lr, pc
	bx	r3
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	bne	.L33
.L15:
	ldr	r3, [r9]
	cmp	r3, #0
	ble	.L20
	mov	r7, #0
	ldr	r6, .L35+52
	ldr	r3, [r6, #12]
	cmp	r3, #0
	add	r7, r7, #1
	bne	.L34
.L17:
	ldr	r3, [r9]
	cmp	r3, r7
	add	r6, r6, #16
	ble	.L20
	ldr	r3, [r6, #12]
	cmp	r3, #0
	add	r7, r7, #1
	beq	.L17
.L34:
	mov	r1, #2
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r1, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L17
	ldr	r2, [r10]
	ldr	r1, .L35+56
	ldr	r3, .L35+60
	add	r0, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #10
	mov	r6, #0
	ldr	ip, .L35+64
	mov	r0, r1
	add	r2, sp, #20
	ldr	r3, .L35+68
	mov	lr, pc
	bx	ip
	ldr	r3, .L35+72
	mov	r0, #6
	str	r6, [r10]
	mov	lr, pc
	bx	r3
	mov	r3, #10
	str	r3, [r9]
	ldr	r3, .L35+76
	mov	lr, pc
	bx	r3
	ldr	r0, .L35+68
	ldr	r3, .L35+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+84
	mov	r0, r6
	str	r3, [sp]
	ldr	r7, .L35+88
	mov	r3, #13
	mov	r2, #240
	mov	r1, #147
	mov	lr, pc
	bx	r7
	ldr	r2, [r5, #8]
	ldr	r0, [r5]
	ldr	r3, [r5, #12]
	str	r6, [sp]
	ldr	r1, [r5, #4]
	add	r2, r2, #1
	sub	r0, r0, #1
	mov	lr, pc
	bx	r7
	ldr	r3, .L35+92
	mov	lr, pc
	bx	r3
	b	.L20
.L33:
	ldr	r2, [r10]
	ldr	r1, .L35+56
	ldr	r3, .L35+60
	add	r0, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #10
	mov	r6, #0
	ldr	ip, .L35+64
	mov	r0, r1
	add	r2, sp, #20
	ldr	r3, .L35+68
	mov	lr, pc
	bx	ip
	ldr	r3, [r10]
	add	r3, r3, #1
	str	r3, [r10]
	ldr	r3, .L35+96
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+72
	mov	r0, #8
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+68
	ldr	r7, .L35+88
	str	r3, [sp]
	ldm	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r7
	ldr	r3, .L35+92
	mov	lr, pc
	bx	r3
	ldr	r2, [r5, #8]
	ldr	r0, [r5]
	ldr	r3, [r5, #12]
	ldr	r1, [r5, #4]
	str	r6, [sp]
	add	r2, r2, #1
	sub	r0, r0, #1
	mov	lr, pc
	bx	r7
	ldr	r3, .L35+84
	mov	r0, r6
	str	r3, [sp]
	mov	r2, #240
	mov	r3, #13
	mov	r1, #147
	mov	lr, pc
	bx	r7
	b	.L15
.L36:
	.align	2
.L35:
	.word	initialize
	.word	buttons
	.word	player
	.word	endpoint
	.word	collision
	.word	score
	.word	currentRainAmount
	.word	oldButtons
	.word	67109120
	.word	updatePlayer
	.word	updateRain
	.word	waitForVBlank
	.word	drawGame
	.word	rainDrops
	.word	.LC0
	.word	sprintf
	.word	drawString
	.word	20810
	.word	playAnalogSound
	.word	initRain
	.word	fillScreen
	.word	5605
	.word	drawRectangle
	.word	resetGame
	.word	increaseRainFall
	.size	main, .-main
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
