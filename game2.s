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
	.file	"game2.c"
	.text
	.align	2
	.global	initEnemiesLevel2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemiesLevel2, %function
initEnemiesLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	initEnemiesLevel2, .-initEnemiesLevel2
	.global	__aeabi_idivmod
	.align	2
	.global	drawEnemiesLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemiesLevel2, %function
drawEnemiesLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L29
	ldr	r3, [r5, #44]
	ldr	r6, .L29+4
	ldr	r7, .L29+8
	cmp	r3, #0
	ldr	r9, [r5, #4]
	ldrb	r3, [r5, #48]	@ zero_extendqisi2
	ldr	r8, [r5]
	ldr	fp, [r6]
	ldr	r10, [r7]
	sub	sp, sp, #28
	bne	.L4
	ldr	r2, [r5, #64]
	cmp	r2, #0
	bne	.L5
.L4:
	ldr	r4, .L29+12
	lsl	r3, r3, #3
	ldrh	r2, [r4, r3]
	orr	r2, r2, #512
	strh	r2, [r4, r3]	@ movhi
.L6:
	ldr	r3, [r5, #72]
	ldr	r2, [r5, #76]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #72]
	blt	.L7
	mov	r2, #0
	ldr	r0, [r5, #36]
	ldr	r3, .L29+16
	str	r2, [r5, #72]
	ldr	r1, [r3, #12]
	add	r0, r0, #1
	ldr	r3, .L29+20
	mov	lr, pc
	bx	r3
	str	r1, [r5, #36]
.L7:
	mov	r2, #160
	mov	r3, #240
	stm	sp, {r10, fp}
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	mov	r1, r9
	mov	r0, r8
	ldr	ip, .L29+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrbeq	r3, [r5, #48]	@ zero_extendqisi2
	lsleq	r3, r3, #3
	ldrheq	r2, [r4, r3]
	ldr	r8, .L29+28
	orreq	r2, r2, #512
	strheq	r2, [r4, r3]	@ movhi
	ldr	r3, [r5]
	ldr	r2, [r8]
	cmp	r2, r3
	ldr	r9, [r7]
	ble	.L9
	sub	r3, r3, r9
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #53248
	add	r2, r4, r2, lsl #3
	strh	r3, [r2, #2]	@ movhi
.L9:
	ldr	r5, .L29+32
	ldr	r3, [r5, #44]
	cmp	r3, #0
	ldr	fp, [r5, #4]
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	ldr	r10, [r5]
	ldr	r3, [r6]
	bne	.L10
	ldr	r1, [r5, #64]
	cmp	r1, #0
	bne	.L11
.L10:
	lsl	r2, r2, #3
	ldrh	r1, [r4, r2]
	orr	r1, r1, #512
	strh	r1, [r4, r2]	@ movhi
.L12:
	ldr	r2, [r5, #72]
	ldr	r1, [r5, #76]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r5, #72]
	blt	.L13
	mov	ip, #0
	ldr	r0, [r5, #36]
	ldr	r2, .L29+16
	str	r3, [sp, #20]
	ldr	r1, [r2, #12]
	str	ip, [r5, #72]
	ldr	r2, .L29+20
	add	r0, r0, #1
	mov	lr, pc
	bx	r2
	ldr	r3, [sp, #20]
	str	r1, [r5, #36]
.L13:
	mov	ip, #160
	mov	r2, #240
	str	r9, [sp]
	str	ip, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	mov	r1, fp
	mov	r0, r10
	ldr	ip, .L29+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrbeq	r3, [r5, #48]	@ zero_extendqisi2
	lsleq	r3, r3, #3
	ldrheq	r2, [r4, r3]
	orreq	r2, r2, #512
	strheq	r2, [r4, r3]	@ movhi
	ldr	r3, [r5]
	ldr	r2, [r8]
	cmp	r2, r3
	ldr	r9, [r7]
	ble	.L15
	sub	r3, r3, r9
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #53248
	add	r2, r4, r2, lsl #3
	strh	r3, [r2, #2]	@ movhi
.L15:
	ldr	r5, .L29+36
	ldr	r3, [r5, #44]
	cmp	r3, #0
	ldr	fp, [r5, #4]
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	ldr	r10, [r5]
	ldr	r3, [r6]
	bne	.L16
	ldr	r1, [r5, #64]
	cmp	r1, #0
	bne	.L17
.L16:
	lsl	r2, r2, #3
	ldrh	r1, [r4, r2]
	orr	r1, r1, #512
	strh	r1, [r4, r2]	@ movhi
.L18:
	ldr	r2, [r5, #72]
	ldr	r1, [r5, #76]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r5, #72]
	blt	.L19
	mov	ip, #0
	ldr	r0, [r5, #36]
	ldr	r2, .L29+16
	str	r3, [sp, #20]
	ldr	r1, [r2, #12]
	str	ip, [r5, #72]
	ldr	r2, .L29+20
	add	r0, r0, #1
	mov	lr, pc
	bx	r2
	ldr	r3, [sp, #20]
	str	r1, [r5, #36]
.L19:
	mov	ip, #160
	mov	r2, #240
	str	r9, [sp]
	str	ip, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	mov	r1, fp
	mov	r0, r10
	ldr	ip, .L29+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrbeq	r3, [r5, #48]	@ zero_extendqisi2
	lsleq	r3, r3, #3
	ldrheq	r2, [r4, r3]
	orreq	r2, r2, #512
	strheq	r2, [r4, r3]	@ movhi
	ldr	r3, [r5]
	ldr	r2, [r8]
	cmp	r2, r3
	ldr	r9, [r7]
	ble	.L21
	sub	r3, r3, r9
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #53248
	add	r2, r4, r2, lsl #3
	strh	r3, [r2, #2]	@ movhi
.L21:
	ldr	r5, .L29+40
	ldr	r3, [r5, #44]
	cmp	r3, #0
	ldr	fp, [r5, #4]
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	ldr	r10, [r5]
	ldr	r3, [r6]
	bne	.L22
	ldr	r1, [r5, #64]
	cmp	r1, #0
	bne	.L23
.L22:
	lsl	r2, r2, #3
	ldrh	r1, [r4, r2]
	orr	r1, r1, #512
	strh	r1, [r4, r2]	@ movhi
.L24:
	ldr	r2, [r5, #72]
	ldr	r1, [r5, #76]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r5, #72]
	blt	.L25
	mov	ip, #0
	ldr	r0, [r5, #36]
	ldr	r2, .L29+16
	str	r3, [sp, #20]
	ldr	r1, [r2, #12]
	str	ip, [r5, #72]
	ldr	r2, .L29+20
	add	r0, r0, #1
	mov	lr, pc
	bx	r2
	ldr	r3, [sp, #20]
	str	r1, [r5, #36]
.L25:
	mov	ip, #160
	mov	r2, #240
	str	ip, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	r9, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	mov	r1, fp
	mov	r0, r10
	ldr	ip, .L29+24
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldrbeq	r3, [r5, #48]	@ zero_extendqisi2
	lsleq	r3, r3, #3
	ldrheq	r2, [r4, r3]
	orreq	r2, r2, #512
	strheq	r2, [r4, r3]	@ movhi
	ldr	r2, [r8]
	ldr	r3, [r5]
	cmp	r2, r3
	ldrh	r2, [r7]
	ble	.L27
	sub	r3, r3, r2
	ldrb	r1, [r5, #48]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #53248
	add	r4, r4, r1, lsl #3
	strh	r3, [r4, #2]	@ movhi
.L27:
	mov	r3, #67108864
	ldrh	r1, [r6]
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	ldr	r2, .L29+44
	mov	lr, pc
	bx	r2
	ldr	r4, .L29+48
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L29+12
	mov	lr, pc
	bx	r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L23:
	sub	r1, r10, r9
	lsl	r1, r1, #23
	sub	lr, fp, r3
	lsr	r1, r1, #23
	and	lr, lr, #255
	mvn	r1, r1, lsl #18
	mvn	lr, lr, lsl #17
	mvn	r1, r1, lsr #18
	mvn	lr, lr, lsr #17
	ldr	ip, [r5, #36]
	ldr	r0, .L29+16
	ldr	r0, [r0, ip, lsl #2]
	add	r0, r0, #512
	lsl	r0, r0, #22
	add	ip, r4, r2, lsl #3
	lsr	r0, r0, #22
	lsl	r2, r2, #3
	strh	r1, [ip, #2]	@ movhi
	strh	lr, [r4, r2]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	b	.L24
.L17:
	sub	r1, r10, r9
	lsl	r1, r1, #23
	sub	lr, fp, r3
	lsr	r1, r1, #23
	and	lr, lr, #255
	mvn	r1, r1, lsl #18
	mvn	lr, lr, lsl #17
	mvn	r1, r1, lsr #18
	mvn	lr, lr, lsr #17
	ldr	ip, [r5, #36]
	ldr	r0, .L29+16
	ldr	r0, [r0, ip, lsl #2]
	add	r0, r0, #512
	lsl	r0, r0, #22
	add	ip, r4, r2, lsl #3
	lsr	r0, r0, #22
	lsl	r2, r2, #3
	strh	r1, [ip, #2]	@ movhi
	strh	lr, [r4, r2]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	b	.L18
.L11:
	sub	r1, r10, r9
	lsl	r1, r1, #23
	sub	lr, fp, r3
	lsr	r1, r1, #23
	and	lr, lr, #255
	mvn	r1, r1, lsl #18
	mvn	lr, lr, lsl #17
	mvn	r1, r1, lsr #18
	mvn	lr, lr, lsr #17
	ldr	ip, [r5, #36]
	ldr	r0, .L29+16
	ldr	r0, [r0, ip, lsl #2]
	add	r0, r0, #512
	lsl	r0, r0, #22
	add	ip, r4, r2, lsl #3
	lsr	r0, r0, #22
	lsl	r2, r2, #3
	strh	r1, [ip, #2]	@ movhi
	strh	lr, [r4, r2]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	b	.L12
.L5:
	sub	r1, r8, r10
	lsl	r1, r1, #23
	sub	r2, r9, fp
	lsr	r1, r1, #23
	and	r2, r2, #255
	mvn	r1, r1, lsl #18
	mvn	r2, r2, lsl #17
	mvn	r1, r1, lsr #18
	mvn	r2, r2, lsr #17
	ldr	ip, [r5, #36]
	ldr	r0, .L29+16
	ldr	r0, [r0, ip, lsl #2]
	ldr	r4, .L29+12
	add	r0, r0, #512
	lsl	r0, r0, #22
	add	ip, r4, r3, lsl #3
	lsr	r0, r0, #22
	lsl	r3, r3, #3
	strh	r1, [ip, #2]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	strh	r2, [r4, r3]	@ movhi
	b	.L6
.L30:
	.align	2
.L29:
	.word	Ludwig
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.word	collision
	.word	player
	.word	Ludwig2
	.word	Ludwig3
	.word	Ludwig4
	.word	waitForVBlank
	.word	DMANow
	.size	drawEnemiesLevel2, .-drawEnemiesLevel2
	.global	numLudwigFrames
	.global	ludwigFrames
	.comm	saveData,24,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	bossBlast,84,4
	.comm	rayquaza,84,4
	.comm	Ludwig4,84,4
	.comm	Ludwig3,84,4
	.comm	Ludwig2,84,4
	.comm	Ludwig,84,4
	.comm	enemy4,84,4
	.comm	enemy3,84,4
	.comm	enemy2,84,4
	.comm	fireBall,84,4
	.comm	door3,84,4
	.comm	door2,84,4
	.comm	door,84,4
	.comm	enemy,84,4
	.comm	player,84,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ludwigFrames, %object
	.size	ludwigFrames, 12
ludwigFrames:
	.word	0
	.word	6
	.word	13
	.type	numLudwigFrames, %object
	.size	numLudwigFrames, 4
numLudwigFrames:
	.word	3
	.ident	"GCC: (devkitARM release 53) 9.1.0"
