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
	.word	initSound
	.word	initializePlayer
	.word	initRain
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
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"Welcome to Seattle\000"
	.align	2
.LC2:
	.ascii	"Press START to Begin\000"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	ldr	r5, .L16+4
	ldr	r3, .L16+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L16+16
	mov	r3, r5
	mov	r1, #10
	mov	r0, #65
	ldr	r2, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L16+24
	mov	r1, #30
	mov	r0, #60
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L16+28
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	drawSeattleBG
	.word	32767
	.word	drawPlayerBG
	.word	drawUmbrellaBG
	.word	drawString
	.word	.LC1
	.word	.LC2
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L20
	mov	r0, #31744
	mov	lr, pc
	bx	r3
	bl	initialize
	mov	r2, #1
	ldr	r3, .L20+4
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	fillScreen
	.word	state
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"Paused - Press START\000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L24
	ldr	r3, .L24+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L24+8
	ldr	r3, .L24+12
	ldr	r2, .L24+16
	mov	r1, #80
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L24+20
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	15855
	.word	fillScreen
	.word	drawString
	.word	32767
	.word	.LC3
	.word	state
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"You got rained on?\000"
	.align	2
.LC5:
	.ascii	"Are you even from Seattle?\000"
	.align	2
.LC6:
	.ascii	"Press START to play again!\000"
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L28
	mov	r0, #31
	ldr	r3, .L28+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L28+8
	mov	r3, r5
	mov	r1, #30
	mov	r0, #65
	ldr	r2, .L28+12
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #45
	mov	r0, #40
	ldr	r2, .L28+16
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L28+20
	mov	r1, #60
	mov	r0, #45
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L28+24
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	32767
	.word	fillScreen
	.word	drawString
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	updateState
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateState, %function
updateState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L48
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L30
.L33:
	.word	.L36
	.word	.L35
	.word	.L36
	.word	.L32
.L36:
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L30
	ldr	r3, .L48+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L30
	ldr	r3, .L48+12
	mov	r0, #31744
	mov	lr, pc
	bx	r3
	bl	initialize
	mov	r3, #1
	strb	r3, [r4]
.L30:
	pop	{r4, lr}
	bx	lr
.L32:
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L30
	ldr	r3, .L48+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L30
	pop	{r4, lr}
	b	goToStart
.L35:
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L30
	ldr	r3, .L48+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L30
	pop	{r4, lr}
	b	goToPause
.L49:
	.align	2
.L48:
	.word	state
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.size	updateState, .-updateState
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L72
	sub	sp, sp, #44
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r5, .L72+4
	ldr	r3, .L72+8
	strb	r2, [r5]
	mov	lr, pc
	bx	r3
	ldr	r8, .L72+12
	ldr	r4, .L72+16
	ldr	r7, .L72+20
	ldr	fp, .L72+24
	ldr	r10, .L72+28
	ldr	r6, .L72+32
.L51:
	ldrh	r3, [r4]
	strh	r3, [r8]	@ movhi
	ldrh	r3, [r6, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r7
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L51
	ldr	r3, .L72+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+48
	mov	lr, pc
	bx	r3
	add	r0, r10, #8
	ldm	r0, {r0, ip}
	ldr	r1, [r10, #4]
	ldr	r3, [r10]
	ldr	r2, [fp, #8]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r3, [sp]
	ldm	fp, {r0, r1}
	ldr	r3, [fp, #12]
	ldr	ip, .L72+52
	add	r2, r2, #2
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L70
.L52:
	ldr	r3, .L72+56
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L51
	mov	r3, #0
	ldr	r9, .L72+60
	str	r3, [sp, #20]
.L56:
	ldr	r2, [sp, #20]
	ldr	r3, [r9, #12]
	add	r2, r2, #1
	cmp	r3, #0
	str	r2, [sp, #20]
	bne	.L71
.L54:
	ldr	r3, .L72+56
	ldr	r2, [sp, #20]
	ldr	r3, [r3]
	cmp	r3, r2
	add	r9, r9, #16
	bgt	.L56
	b	.L51
.L70:
	ldr	r9, .L72+64
	ldr	r1, .L72+68
	ldr	r2, [r9]
	ldr	r3, .L72+72
	add	r0, sp, #28
	mov	lr, pc
	bx	r3
	mov	r1, #10
	ldr	ip, .L72+76
	mov	r0, r1
	add	r2, sp, #28
	ldr	r3, .L72+80
	mov	lr, pc
	bx	ip
	ldr	r3, [r9]
	add	r3, r3, #1
	str	r3, [r9]
	ldr	r3, .L72+84
	mov	lr, pc
	bx	r3
	mov	r0, #8
	ldr	r3, .L72+88
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+92
	mov	lr, pc
	bx	r3
	b	.L52
.L71:
	mov	lr, #3
	ldm	r9, {r0, ip}
	ldmib	fp, {r1, r2, r3}
	stm	sp, {r0, ip}
	str	lr, [sp, #12]
	str	lr, [sp, #8]
	ldr	r0, [fp]
	ldr	ip, .L72+52
	add	r3, r3, #10
	add	r2, r2, lr
	sub	r1, r1, #10
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L54
	ldr	r9, .L72+64
	ldr	r1, .L72+68
	ldr	r2, [r9]
	ldr	r3, .L72+72
	add	r0, sp, #28
	mov	lr, pc
	bx	r3
	mov	r1, #10
	ldr	ip, .L72+76
	mov	r0, r1
	add	r2, sp, #28
	ldr	r3, .L72+80
	mov	lr, pc
	bx	ip
	mov	r3, #0
	mov	r0, #6
	str	r3, [r9]
	ldr	r3, .L72+88
	mov	lr, pc
	bx	r3
	mov	r3, #10
	ldr	r2, .L72+56
	str	r3, [r2]
	ldr	r3, .L72+96
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+100
	mov	lr, pc
	bx	r3
	b	.L51
.L73:
	.align	2
.L72:
	.word	initialize
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	buttons
	.word	updateState
	.word	player
	.word	endpoint
	.word	67109120
	.word	updatePlayer
	.word	updateRain
	.word	waitForVBlank
	.word	drawGame
	.word	collision
	.word	currentRainAmount
	.word	rainDrops
	.word	score
	.word	.LC0
	.word	sprintf
	.word	drawString
	.word	20810
	.word	increaseRainFall
	.word	playAnalogSound
	.word	resetGame
	.word	initRain
	.word	goToLose
	.size	main, .-main
	.comm	state,1,1
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	NOTES,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
