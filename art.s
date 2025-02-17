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
	.file	"art.c"
	.text
	.align	2
	.global	drawSeattleBG
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSeattleBG, %function
drawSeattleBG:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L20
	sub	sp, sp, #12
	ldr	r4, .L20+4
	mov	r0, r1
	mov	r2, #240
	str	r3, [sp]
	mov	r3, #40
	mov	r6, #0
	mov	lr, pc
	bx	r4
	mov	r3, #40
	ldr	r2, .L20+8
	mov	r1, r3
	mov	r0, r6
	str	r2, [sp]
	mov	r2, #240
	mov	lr, pc
	bx	r4
	ldr	r2, .L20+12
	mov	r0, r6
	mov	r3, #40
	mov	r1, #80
	str	r2, [sp]
	mov	r2, #240
	mov	lr, pc
	bx	r4
	ldr	r2, .L20+16
	mov	r0, r6
	mov	r3, #40
	mov	r1, #120
	str	r2, [sp]
	mov	r2, #240
	mov	lr, pc
	bx	r4
	mov	r0, r6
	mov	r3, #20
	mov	r2, #240
	mov	r1, #140
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #80
	mov	r2, #40
	mov	r1, r3
	mov	r0, #7
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #80
	mov	r2, #36
	mov	r1, r3
	mov	r0, #12
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	ldr	r5, .L20+20
	mov	r2, r3
	mov	r1, #84
	mov	r0, #14
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #92
	mov	r2, r3
	mov	r0, #14
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #100
	mov	r2, r3
	mov	r0, #14
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #108
	mov	r2, r3
	mov	r0, #14
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #116
	mov	r2, r3
	mov	r0, #14
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #124
	mov	r2, r3
	mov	r0, #14
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #132
	mov	r2, r3
	mov	r0, #14
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #84
	mov	r2, r3
	mov	r0, #22
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #92
	mov	r2, r3
	mov	r0, #22
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #100
	mov	r2, r3
	mov	r0, #22
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #108
	mov	r2, r3
	mov	r0, #22
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #116
	mov	r2, r3
	mov	r0, #22
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #124
	mov	r2, r3
	mov	r0, #22
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #132
	mov	r2, r3
	mov	r0, #22
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #84
	mov	r2, r3
	mov	r0, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #92
	mov	r2, r3
	mov	r0, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #100
	mov	r2, r3
	mov	r0, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #108
	mov	r2, r3
	mov	r0, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #116
	mov	r2, r3
	mov	r0, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #124
	mov	r2, r3
	mov	r0, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #132
	mov	r2, r3
	mov	r0, #30
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #84
	mov	r2, r3
	mov	r0, #38
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #92
	mov	r2, r3
	mov	r0, #38
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #100
	mov	r2, r3
	mov	r0, #38
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #108
	mov	r2, r3
	mov	r0, #38
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #116
	mov	r2, r3
	mov	r0, #38
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #124
	mov	r2, r3
	mov	r0, #38
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #4
	mov	r1, #132
	mov	r2, r3
	mov	r0, #38
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #37
	mov	r1, #78
	mov	r0, #9
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #33
	mov	r1, #76
	mov	r0, #11
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #27
	mov	r1, #74
	mov	r0, #14
	str	r6, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #80
	str	r6, [sp]
	mov	r1, r3
	mov	r2, #40
	mov	r0, #52
	mov	r6, r5
	mov	lr, pc
	bx	r4
	mov	r7, #58
.L3:
	mov	r5, #84
.L2:
	mov	r3, #4
	mov	r1, r5
	mov	r2, r3
	mov	r0, r7
	str	r6, [sp]
	add	r5, r5, #8
	mov	lr, pc
	bx	r4
	cmp	r5, #140
	bne	.L2
	add	r7, r7, #8
	cmp	r7, #90
	bne	.L3
	mov	r5, #0
	mov	r3, #2
	mov	r2, #40
	mov	r1, #78
	mov	r0, #52
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #37
	mov	r1, #76
	mov	r0, #54
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #30
	mov	r1, #74
	mov	r0, #57
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #80
	mov	r2, #40
	mov	r1, r3
	mov	r0, #97
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r6, #103
	ldr	r7, .L20+20
.L5:
	mov	r5, #84
.L4:
	mov	r3, #4
	mov	r1, r5
	mov	r2, r3
	mov	r0, r6
	str	r7, [sp]
	add	r5, r5, #8
	mov	lr, pc
	bx	r4
	cmp	r5, #140
	bne	.L4
	add	r6, r6, #8
	cmp	r6, #135
	bne	.L5
	mov	r5, #0
	mov	r3, #2
	mov	r2, #40
	mov	r1, #78
	mov	r0, #97
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #37
	mov	r1, #76
	mov	r0, #99
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #30
	mov	r1, #74
	mov	r0, #102
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #80
	mov	r2, #40
	mov	r1, r3
	mov	r0, #142
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r6, #148
	ldr	r7, .L20+20
.L7:
	mov	r5, #84
.L6:
	mov	r3, #4
	mov	r1, r5
	mov	r2, r3
	mov	r0, r6
	str	r7, [sp]
	add	r5, r5, #8
	mov	lr, pc
	bx	r4
	cmp	r5, #140
	bne	.L6
	add	r6, r6, #8
	cmp	r6, #180
	bne	.L7
	mov	r5, #0
	mov	r3, #2
	mov	r2, #40
	mov	r1, #78
	mov	r0, #142
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #37
	mov	r1, #76
	mov	r0, #144
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #30
	mov	r1, #74
	mov	r0, #147
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #80
	mov	r2, #40
	mov	r1, r3
	mov	r0, #190
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r6, #196
	ldr	r7, .L20+20
.L9:
	mov	r5, #84
.L8:
	mov	r3, #4
	mov	r1, r5
	mov	r2, r3
	mov	r0, r6
	str	r7, [sp]
	add	r5, r5, #8
	mov	lr, pc
	bx	r4
	cmp	r5, #140
	bne	.L8
	add	r6, r6, #8
	cmp	r6, #228
	bne	.L9
	mov	r5, #0
	mov	r3, #2
	mov	r2, #40
	mov	r1, #78
	mov	r0, #190
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #37
	mov	r1, #76
	mov	r0, #192
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	mov	r3, #2
	mov	r2, #30
	mov	r1, #74
	mov	r0, #195
	str	r5, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	19491
	.word	drawRectangle
	.word	18468
	.word	17445
	.word	15398
	.word	32767
	.size	drawSeattleBG, .-drawSeattleBG
	.align	2
	.global	drawPlayerBG
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerBG, %function
drawPlayerBG:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #31744
	mvn	r2, #64512
	ldr	r3, .L24
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	lr, [r3]
	ldr	r6, .L24+4
	add	r1, lr, #65536
	ldr	r5, .L24+8
	add	r4, r1, #1360
	strh	r6, [r4, #14]	@ movhi
	add	r3, lr, #61440
	add	r4, r1, #896
	add	r7, r1, #1376
	add	r9, r1, #412
	add	r1, r1, #416
	strh	r6, [r7, #2]	@ movhi
	ldr	r0, .L24+12
	strh	r5, [r4, #2]	@ movhi
	add	r7, r3, #4016
	strh	r5, [r4]	@ movhi
	add	r6, r3, #3536
	strh	ip, [r9, #2]	@ movhi
	add	r8, r3, #3056
	strh	ip, [r1]	@ movhi
	add	r5, r3, #2576
	strh	ip, [r1, #2]	@ movhi
	add	r4, r3, #2096
	add	ip, r3, #1616
	strh	r2, [r7, #14]	@ movhi
	add	r1, r3, #3552
	strh	r2, [r6, #14]	@ movhi
	add	lr, lr, #64512
	strh	r2, [r8, #14]	@ movhi
	add	r6, r3, #4032
	strh	r2, [r5, #14]	@ movhi
	add	r7, r3, #1136
	strh	r2, [r4, #14]	@ movhi
	add	r5, r3, #2592
	strh	r2, [ip, #14]	@ movhi
	add	r4, r3, #2112
	add	ip, r3, #1632
	add	r3, r3, #1152
	strh	r2, [r7, #14]	@ movhi
	strh	r0, [r6]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [lr]	@ movhi
	strh	r2, [r5]	@ movhi
	strh	r0, [r4]	@ movhi
	strh	r2, [ip]	@ movhi
	strh	r2, [r3]	@ movhi
	strh	r2, [r6, #2]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	r2, [lr, #2]	@ movhi
	strh	r2, [r5, #2]	@ movhi
	strh	r0, [r4, #2]	@ movhi
	strh	r0, [ip, #2]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	videoBuffer
	.word	1076
	.word	18137
	.word	16023
	.size	drawPlayerBG, .-drawPlayerBG
	.align	2
	.global	drawUmbrellaBG
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawUmbrellaBG, %function
drawUmbrellaBG:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L28
	ldr	r1, [r3]
	str	lr, [sp, #-4]!
	add	r2, r1, #61440
	ldr	lr, .L28+4
	ldr	r3, .L28+8
	add	ip, r2, #3552
	strh	lr, [ip, #4]	@ movhi
	add	lr, r1, #64512
	add	ip, r2, #2592
	strh	r3, [lr, #4]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	add	lr, r2, #2112
	add	ip, r2, #1632
	strh	r3, [lr, #4]	@ movhi
	add	r0, r1, #60928
	strh	r3, [ip, #4]	@ movhi
	add	r1, r1, #60672
	add	lr, r2, #1152
	add	ip, r2, #676
	strh	r3, [lr, #4]	@ movhi
	strh	r3, [ip]	@ movhi
	ldr	lr, [sp], #4
	strh	r3, [r2, #196]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r3, [r1, #6]	@ movhi
	strh	r3, [r0, #224]	@ movhi
	strh	r3, [r0, #232]	@ movhi
	strh	r3, [r0, #228]	@ movhi
	strh	r3, [r0, #230]	@ movhi
	strh	r3, [r0, #226]	@ movhi
	strh	r3, [r2, #190]	@ movhi
	strh	r3, [r2, #202]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	bx	lr
.L29:
	.align	2
.L28:
	.word	videoBuffer
	.word	16023
	.word	4548
	.size	drawUmbrellaBG, .-drawUmbrellaBG
	.ident	"GCC: (devkitARM release 53) 9.1.0"
