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
	.file	"rain.c"
	.text
	.align	2
	.global	initRain
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initRain, %function
initRain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #0
	ldr	r8, .L6
	ldr	r4, .L6+4
	ldr	r10, .L6+8
	ldr	r7, .L6+12
	ldr	r6, .L6+16
	ldr	r5, .L6+20
.L2:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	rsb	r2, r3, r3, lsl #3
	add	r3, r3, r2, lsl #4
	sub	r0, r0, r3, lsl #1
	str	r0, [r8]
	mov	lr, pc
	bx	r4
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #5
	str	r0, [r8, #4]
	mov	lr, pc
	bx	r4
	ldr	r2, [r10]
	cmp	r2, r9
	movle	r2, #0
	movgt	r2, #1
	smull	r1, r3, r5, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	add	r9, r9, #1
	add	r0, r0, #1
	cmp	r9, #20
	str	r0, [r8, #8]
	str	r2, [r8, #12]
	add	r8, r8, #16
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	rainDrops
	.word	rand
	.word	.LANCHOR0
	.word	1216273925
	.word	1717986919
	.word	1431655766
	.size	initRain, .-initRain
	.align	2
	.global	updateRain
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRain, %function
updateRain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L24
	ldr	r3, .L24+4
	sub	sp, sp, #8
	mov	r5, r4
	mov	lr, pc
	bx	r3
	ldr	r8, .L24+8
	ldr	r7, .L24+12
	add	r6, r4, #320
	b	.L10
.L9:
	add	r5, r5, #16
	cmp	r5, r6
	beq	.L22
.L10:
	ldr	r3, [r5, #12]
	cmp	r3, #0
	beq	.L9
	ldr	r1, [r5, #4]
	cmp	r1, #145
	bgt	.L9
	mov	r3, #2
	str	r8, [sp]
	mov	r2, r3
	ldr	r0, [r5]
	add	r5, r5, #16
	mov	lr, pc
	bx	r7
	cmp	r5, r6
	bne	.L10
.L22:
	mov	r8, #0
	ldr	r7, .L24+16
	ldr	r5, .L24+20
	b	.L15
.L12:
	add	r4, r4, #16
	cmp	r4, r6
	beq	.L23
.L15:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L12
	ldmib	r4, {r2, r3}
	add	r3, r2, r3
	cmp	r3, #145
	strle	r3, [r4, #4]
	ble	.L12
	str	r8, [r4, #4]
	mov	lr, pc
	bx	r7
	smull	r3, r2, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	rsb	r2, r3, r3, lsl #3
	add	r3, r3, r2, lsl #4
	sub	r0, r0, r3, lsl #1
	str	r0, [r4]
	add	r4, r4, #16
	cmp	r4, r6
	bne	.L15
.L23:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	rainDrops
	.word	waitForVBlank
	.word	20810
	.word	drawRectangle
	.word	rand
	.word	1216273925
	.size	updateRain, .-updateRain
	.align	2
	.global	drawRain
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRain, %function
drawRain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L35
	mov	r7, #31744
	ldr	r6, .L35+4
	sub	sp, sp, #12
	add	r5, r4, #320
	b	.L28
.L27:
	add	r4, r4, #16
	cmp	r4, r5
	beq	.L34
.L28:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L27
	mov	r3, #2
	ldm	r4, {r0, r1}
	mov	r2, r3
	str	r7, [sp]
	add	r4, r4, #16
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L28
.L34:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	rainDrops
	.word	drawRectangle
	.size	drawRain, .-drawRain
	.align	2
	.global	increaseRainFall
	.syntax unified
	.arm
	.fpu softvfp
	.type	increaseRainFall, %function
increaseRainFall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L46
	ldr	r8, .L46+4
	ldr	r2, [r7]
	cmp	r2, #9
	ldr	r2, [r8]
	addle	r2, r2, #5
	strle	r2, [r8]
	cmp	r2, #20
	movgt	r2, #20
	strgt	r2, [r8]
	bgt	.L40
	cmp	r2, #0
	ble	.L37
.L40:
	mov	fp, #0
	mov	r10, #1
	ldr	r4, .L46+8
	ldr	r5, .L46+12
	ldr	r6, .L46+16
	ldr	r9, .L46+20
	b	.L42
.L41:
	ldr	r2, [r8]
	cmp	r2, fp
	add	r4, r4, #16
	ble	.L37
.L42:
	ldr	r2, [r4, #12]
	cmp	r2, #0
	add	fp, fp, #1
	bne	.L41
	str	r10, [r4, #12]
	mov	lr, pc
	bx	r5
	smull	r3, ip, r6, r0
	ldr	r1, [r7]
	smull	r3, r2, r6, r1
	sub	ip, ip, r0, asr #31
	add	ip, ip, ip, lsl #1
	sub	r0, r0, ip
	sub	r2, r2, r1, asr #31
	add	r0, r0, #1
	add	r0, r0, r2
	str	r0, [r4, #8]
	mov	lr, pc
	bx	r5
	smull	r3, r1, r9, r0
	asr	r2, r0, #31
	rsb	r2, r2, r1, asr #6
	rsb	r1, r2, r2, lsl #3
	add	r2, r2, r1, lsl #4
	sub	r2, r0, r2, lsl #1
	str	r2, [r4]
	mov	lr, pc
	bx	r5
	ldr	r1, .L46+24
	smull	r3, r1, r0, r1
	asr	r2, r0, #31
	add	r1, r1, r0
	rsb	r2, r2, r1, asr #4
	add	r1, r2, r2, lsl #1
	rsb	r2, r2, r1, lsl #3
	sub	r2, r0, r2
	str	r2, [r4, #4]
	ldr	r2, [r8]
	cmp	r2, fp
	add	r4, r4, #16
	bgt	.L42
.L37:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	score
	.word	.LANCHOR0
	.word	rainDrops
	.word	rand
	.word	1431655766
	.word	1216273925
	.word	-1307163959
	.size	increaseRainFall, .-increaseRainFall
	.global	currentRound
	.global	currentRainAmount
	.comm	rainDrops,320,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	currentRainAmount, %object
	.size	currentRainAmount, 4
currentRainAmount:
	.word	10
	.type	currentRound, %object
	.size	currentRound, 4
currentRound:
	.word	1
	.ident	"GCC: (devkitARM release 53) 9.1.0"
