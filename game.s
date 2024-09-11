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
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #0
	ldr	r3, .L4
	ldr	ip, .L4+4
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r0, .L4+8
	ldr	r3, .L4+12
	str	lr, [ip]
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #55296
	strh	r2, [r3, #8]	@ movhi
	ldrh	r2, [r3]
	orr	r2, r2, #4352
	ldr	r4, .L4+16
	strh	r2, [r3]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r3, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r3, #6144
	mov	r0, #3
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+48
	ldr	r1, .L4+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	pokemonDPLake_length
	.word	level
	.word	pokemonDPLake_data
	.word	playSoundA
	.word	DMANow
	.word	6416
	.word	level1Tiles
	.word	100712448
	.word	level1Map
	.word	level1Pal
	.word	100728832
	.word	chronoSpritesheetTiles
	.word	83886592
	.word	chronoSpritesheetPal
	.word	waitForVBlank
	.word	hideSprites
	.size	initGame, .-initGame
	.align	2
	.global	initGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame2, %function
initGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #55296
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	ldrh	r2, [r3]
	orr	r2, r2, #4352
	ldr	r4, .L8
	strh	r2, [r3]	@ movhi
	mov	r0, #3
	mov	r3, #5504
	mov	r2, #100663296
	ldr	r1, .L8+4
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L8+8
	ldr	r1, .L8+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+28
	ldr	r1, .L8+32
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	level2Tiles
	.word	100712448
	.word	level2Map
	.word	level2Pal
	.word	100728832
	.word	chronoSpritesheetTiles
	.word	83886592
	.word	chronoSpritesheetPal
	.word	waitForVBlank
	.word	hideSprites
	.size	initGame2, .-initGame2
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r4, .L12+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r2, #1
	mov	r0, #3
	mov	r1, #5
	mov	ip, #16
	mov	r4, #2
	mov	lr, #30
	ldr	r5, .L12+12
	ldr	r9, .L12+16
	str	ip, [r5, #16]
	str	ip, [r5, #20]
	str	lr, [r5]
	str	r9, [r5, #4]
	ldr	lr, .L12+20
	mov	r9, #135
	str	r0, [r5, #40]
	str	r4, [r5, #28]
	str	r4, [r5, #8]
	str	r4, [r5, #12]
	str	r4, [r5, #36]
	strb	r3, [r5, #48]
	str	r3, [r5, #44]
	str	r3, [r5, #68]
	str	r1, [r5, #24]
	str	r2, [r5, #56]
	str	r2, [r5, #60]
	ldr	r5, .L12+24
	str	r5, [lr, #4]
	mov	r5, #170
	str	ip, [lr, #16]
	str	ip, [lr, #20]
	str	r9, [lr]
	str	r0, [lr, #40]
	str	r0, [lr, #28]
	str	r0, [lr, #8]
	str	r0, [lr, #12]
	strb	r4, [lr, #48]
	str	r3, [lr, #44]
	str	r4, [lr, #36]
	str	r0, [lr, #76]
	str	r3, [lr, #72]
	str	r1, [lr, #24]
	str	r2, [lr, #56]
	str	r2, [lr, #60]
	str	r2, [lr, #64]
	ldr	lr, .L12+28
	str	ip, [lr, #16]
	str	r5, [lr]
	mov	r5, #6
	strb	r5, [lr, #48]
	mov	r5, #200
	mov	r7, #7
	str	r5, [lr, #4]
	mov	r5, #380
	str	ip, [lr, #20]
	str	r0, [lr, #40]
	str	r0, [lr, #28]
	str	r3, [lr, #44]
	str	r4, [lr, #36]
	str	r7, [lr, #8]
	str	r7, [lr, #12]
	str	r1, [lr, #24]
	str	r2, [lr, #56]
	str	r2, [lr, #60]
	str	r2, [lr, #64]
	str	r1, [lr, #76]
	str	r3, [lr, #72]
	ldr	lr, .L12+32
	str	r5, [lr]
	mov	r5, #120
	str	ip, [lr, #16]
	str	ip, [lr, #20]
	str	r0, [lr, #40]
	str	r0, [lr, #28]
	str	r7, [lr, #8]
	str	r7, [lr, #12]
	strb	r7, [lr, #48]
	str	r3, [lr, #44]
	str	r4, [lr, #36]
	str	r5, [lr, #4]
	str	r1, [lr, #24]
	str	r2, [lr, #56]
	str	r2, [lr, #60]
	str	r2, [lr, #64]
	str	r1, [lr, #76]
	str	r3, [lr, #72]
	ldr	lr, .L12+36
	str	r7, [lr, #8]
	str	r7, [lr, #12]
	mov	r7, #280
	mov	r10, #10
	mov	r5, #380
	str	r7, [lr]
	mov	r7, #33
	str	r5, [lr, #4]
	str	ip, [lr, #16]
	str	ip, [lr, #20]
	str	r0, [lr, #40]
	str	r0, [lr, #28]
	str	r3, [lr, #44]
	str	r4, [lr, #36]
	str	r3, [lr, #72]
	strb	r10, [lr, #48]
	str	r1, [lr, #24]
	str	r2, [lr, #56]
	str	r1, [lr, #76]
	str	r2, [lr, #60]
	str	r2, [lr, #64]
	ldr	lr, .L12+40
	str	r7, [lr, #20]
	mov	r7, #145
	sub	r5, r5, #10
	mov	r6, #25
	stm	lr, {r5, r7}
	mov	r7, #13
	mov	r5, #200
	str	r0, [lr, #40]
	str	r0, [lr, #28]
	str	r3, [lr, #44]
	str	r4, [lr, #36]
	str	r3, [lr, #72]
	strb	r7, [lr, #48]
	str	r6, [lr, #16]
	str	r1, [lr, #24]
	str	r1, [lr, #8]
	str	r1, [lr, #12]
	str	r1, [lr, #76]
	str	r2, [lr, #56]
	str	r2, [lr, #60]
	str	r3, [lr, #64]
	ldr	lr, .L12+44
	str	r5, [lr]
	mov	r5, #11
	strb	r5, [lr, #48]
	mov	r5, #300
	str	r9, [lr, #4]
	str	r6, [lr, #16]
	str	r6, [lr, #20]
	str	r0, [lr, #40]
	str	r0, [lr, #28]
	str	r3, [lr, #44]
	str	r3, [lr, #36]
	str	r3, [lr, #72]
	str	r1, [lr, #24]
	str	r1, [lr, #8]
	str	r1, [lr, #12]
	str	r1, [lr, #76]
	str	r3, [lr, #64]
	str	r2, [lr, #56]
	str	r2, [lr, #60]
	ldr	lr, .L12+48
	str	r5, [lr, #4]
	mov	r5, #48
	mov	fp, #150
	strb	r5, [lr, #48]
	mov	r5, #53
	str	r6, [lr, #16]
	str	r6, [lr, #20]
	str	r0, [lr, #40]
	str	r0, [lr, #28]
	str	r4, [lr, #8]
	str	r4, [lr, #12]
	str	r3, [lr, #44]
	str	r3, [lr, #36]
	str	r3, [lr, #72]
	str	fp, [lr]
	str	r1, [lr, #24]
	str	r1, [lr, #76]
	str	r2, [lr, #56]
	str	r3, [lr, #64]
	str	r2, [lr, #60]
	ldr	lr, .L12+52
	strb	r5, [lr, #48]
	ldr	r5, .L12+56
	str	r6, [lr, #16]
	mov	r8, #20
	str	r6, [lr, #20]
	str	r3, [lr, #44]
	str	r3, [lr, #64]
	str	r5, [lr]
	str	r5, [lr, #4]
	str	r0, [lr, #40]
	str	r0, [lr, #28]
	str	r4, [lr, #8]
	str	r4, [lr, #12]
	str	r3, [lr, #36]
	str	r3, [lr, #72]
	str	r1, [lr, #24]
	str	r1, [lr, #76]
	str	r2, [lr, #56]
	str	r2, [lr, #60]
	ldr	lr, .L12+60
	sub	r5, r5, #83
	str	r5, [lr]
	mov	r6, #50
	mov	r5, #223
	str	ip, [lr, #16]
	str	ip, [lr, #20]
	strb	r0, [lr, #48]
	str	r3, [lr, #44]
	str	r10, [lr, #4]
	str	r2, [lr, #64]
	ldr	lr, .L12+64
	str	ip, [lr, #16]
	str	ip, [lr, #20]
	str	r3, [lr, #44]
	strb	r8, [lr, #48]
	str	r2, [lr, #64]
	ldr	lr, .L12+68
	str	ip, [lr, #16]
	str	ip, [lr, #20]
	stm	lr, {r5, r6}
	mov	r5, #44
	str	r3, [lr, #44]
	str	r3, [lr, #64]
	strb	r5, [lr, #48]
	ldr	lr, .L12+72
	str	r4, [lr, #28]
	mov	r4, #40
	str	ip, [lr, #16]
	str	ip, [lr, #20]
	ldr	ip, .L12+76
	str	r0, [ip, #40]
	str	r0, [ip, #8]
	str	r0, [ip, #12]
	mov	r0, #29
	mov	r5, #215
	str	r4, [lr]
	str	r4, [ip, #80]
	mov	r4, #8
	strb	r0, [ip, #48]
	ldr	r0, .L12+80
	add	r9, r9, #195
	str	r3, [lr, #44]
	str	r3, [lr, #64]
	str	fp, [ip, #4]
	str	r8, [ip, #20]
	str	r8, [ip, #16]
	str	r3, [ip, #28]
	str	r3, [ip, #44]
	str	r3, [ip, #36]
	str	r3, [ip, #72]
	str	r3, [ip, #64]
	str	r5, [ip]
	str	r4, [lr, #8]
	str	r9, [lr, #4]
	strb	r1, [lr, #48]
	str	r1, [ip, #24]
	str	r1, [ip, #76]
	str	r2, [ip, #56]
	str	r2, [ip, #60]
	str	r4, [lr, #12]
	ldr	ip, .L12+84
	str	r5, [r0]
	ldr	r5, .L12+88
	ldrh	r4, [ip, #48]
	strh	r3, [r5]	@ movhi
	str	r3, [r0, #64]
	str	r3, [r0, #28]
	mov	r3, #18
	str	r3, [r0, #16]
	mov	r3, #36
	ldr	ip, .L12+92
	strb	r3, [r0, #48]
	str	r2, [lr, #36]
	str	r1, [lr, #24]
	str	r8, [r0, #20]
	str	fp, [r0, #4]
	str	r10, [r0, #8]
	str	r10, [r0, #12]
	strh	r4, [ip]	@ movhi
	str	r2, [r0, #36]
	str	r1, [r0, #24]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	mgba_open
	.word	DMANow
	.word	shadowOAM
	.word	player
	.word	330
	.word	enemy
	.word	270
	.word	enemy2
	.word	enemy3
	.word	enemy4
	.word	Ludwig
	.word	Ludwig2
	.word	Ludwig3
	.word	Ludwig4
	.word	450
	.word	door
	.word	door2
	.word	door3
	.word	fireBall
	.word	rayquaza
	.word	bossBlast
	.word	67109120
	.word	oldButtons
	.word	buttons
	.size	initPlayer, .-initPlayer
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L31
	ldr	r1, [r4, #44]
	ldr	r2, .L31+4
	ldr	r3, .L31+8
	cmp	r1, #0
	ldrh	r0, [r2]
	ldrh	ip, [r3]
	beq	.L15
	ldr	r3, .L31+12
	ldrh	r2, [r3]
	orr	r2, r2, #512
	strh	r2, [r3]	@ movhi
.L16:
	ldr	r1, .L31+16
	ldr	r2, [r1, #44]
	cmp	r2, #0
	ldrb	r2, [r1, #48]	@ zero_extendqisi2
	bne	.L18
	ldr	lr, [r1, #64]
	cmp	lr, #0
	bne	.L19
.L18:
	lsl	r2, r2, #3
	ldrh	r1, [r3, r2]
	orr	r1, r1, #512
	strh	r1, [r3, r2]	@ movhi
	ldr	r2, .L31+20
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L30
.L21:
	cmp	r2, #2
	bne	.L24
	ldr	r1, .L31+24
	ldr	r2, [r1, #44]
	cmp	r2, #0
	ldrb	r2, [r1, #48]	@ zero_extendqisi2
	beq	.L29
.L25:
	lsl	r2, r2, #3
	ldrh	r1, [r3, r2]
	orr	r1, r1, #512
	strh	r1, [r3, r2]	@ movhi
.L24:
	mov	r3, #67108864
	ldr	r2, .L31+28
	strh	ip, [r3, #16]	@ movhi
	strh	r0, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L31+32
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L31+12
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L15:
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #68]
	sub	r3, r3, ip
	lsl	r3, r3, #23
	sub	r2, r2, r0
	lsr	r3, r3, #23
	and	r2, r2, #255
	cmp	r1, #0
	ldrb	lr, [r4, #48]	@ zero_extendqisi2
	orr	r1, r3, #32768
	orr	r2, r2, #32768
	beq	.L17
	ldr	r3, .L31+12
	ldr	r4, .L31+36
	lsl	r5, lr, #3
	add	lr, r3, lr, lsl #3
	strh	r2, [r3, r5]	@ movhi
	strh	r1, [lr, #2]	@ movhi
	strh	r4, [lr, #4]	@ movhi
	b	.L16
.L19:
	mov	r4, #16
	ldr	lr, [r1]
	ldr	r5, [r1, #4]
	sub	r1, lr, ip
	lsl	r1, r1, #23
	sub	lr, r5, r0
	ldr	r5, .L31+40
	lsr	r1, r1, #23
	and	lr, lr, #255
	orr	r1, r1, r5
	orr	lr, lr, r5
	add	r5, r3, r2, lsl #3
	lsl	r2, r2, #3
	strh	lr, [r3, r2]	@ movhi
	ldr	r2, .L31+20
	ldr	r2, [r2]
	cmp	r2, #1
	strh	r1, [r5, #2]	@ movhi
	strh	r4, [r5, #4]	@ movhi
	bne	.L21
.L30:
	ldr	r1, .L31+44
	ldr	r2, [r1, #44]
	cmp	r2, #0
	ldrb	r2, [r1, #48]	@ zero_extendqisi2
	bne	.L25
.L29:
	ldr	lr, [r1, #64]
	cmp	lr, #0
	beq	.L25
	mov	r4, #16
	ldr	lr, [r1]
	ldr	r5, [r1, #4]
	sub	r1, lr, ip
	lsl	r1, r1, #23
	sub	lr, r5, r0
	ldr	r5, .L31+40
	lsr	r1, r1, #23
	and	lr, lr, #255
	orr	r1, r1, r5
	orr	lr, lr, r5
	add	r5, r3, r2, lsl #3
	lsl	r2, r2, #3
	strh	r1, [r5, #2]	@ movhi
	strh	lr, [r3, r2]	@ movhi
	strh	r4, [r5, #4]	@ movhi
	b	.L24
.L17:
	ldr	r5, [r4, #36]
	ldr	r4, [r4, #28]
	ldr	r3, .L31+12
	add	r4, r4, r5, lsl #5
	lsl	r4, r4, #2
	add	r5, r3, lr, lsl #3
	and	r4, r4, #1020
	lsl	lr, lr, #3
	strh	r4, [r5, #4]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	strh	r2, [r3, lr]	@ movhi
	b	.L16
.L32:
	.align	2
.L31:
	.word	player
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	door
	.word	level
	.word	door3
	.word	waitForVBlank
	.word	DMANow
	.word	915
	.word	-32768
	.word	door2
	.size	drawPlayer, .-drawPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L59
	ldr	r3, [r5, #44]
	ldr	r6, .L59+4
	ldr	r7, .L59+8
	cmp	r3, #0
	ldr	r1, [r5, #4]
	ldrb	r3, [r5, #48]	@ zero_extendqisi2
	ldr	r0, [r5]
	ldr	lr, [r6]
	ldr	ip, [r7]
	sub	sp, sp, #20
	bne	.L34
	ldr	r2, [r5, #64]
	cmp	r2, #0
	bne	.L35
.L34:
	ldr	r4, .L59+12
	lsl	r3, r3, #3
	ldrh	r2, [r4, r3]
	orr	r2, r2, #512
	strh	r2, [r4, r3]	@ movhi
.L36:
	mov	r2, #160
	mov	r3, #240
	stm	sp, {ip, lr}
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r9, .L59+16
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrbeq	r3, [r5, #48]	@ zero_extendqisi2
	lsleq	r3, r3, #3
	ldrheq	r2, [r4, r3]
	ldr	r8, .L59+20
	orreq	r2, r2, #512
	strheq	r2, [r4, r3]	@ movhi
	ldr	r3, [r5]
	ldr	r2, [r8]
	cmp	r2, r3
	ldr	r10, [r7]
	ble	.L38
	sub	r3, r3, r10
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #36864
	add	r2, r4, r2, lsl #3
	strh	r3, [r2, #2]	@ movhi
.L38:
	ldr	r3, [r5, #72]
	ldr	r2, [r5, #76]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #72]
	blt	.L39
	mov	r2, #0
	ldr	r0, [r5, #36]
	ldr	r3, .L59+24
	str	r2, [r5, #72]
	ldr	r1, [r3, #12]
	add	r0, r0, #1
	ldr	r3, .L59+28
	mov	lr, pc
	bx	r3
	str	r1, [r5, #36]
.L39:
	ldr	r5, .L59+32
	ldr	r3, [r5, #44]
	cmp	r3, #0
	ldr	r1, [r5, #4]
	ldrb	r3, [r5, #48]	@ zero_extendqisi2
	ldr	r0, [r5]
	ldr	ip, [r6]
	bne	.L40
	ldr	r2, [r5, #64]
	cmp	r2, #0
	bne	.L41
.L40:
	lsl	r3, r3, #3
	ldrh	r2, [r4, r3]
	orr	r2, r2, #512
	strh	r2, [r4, r3]	@ movhi
.L42:
	mov	r2, #160
	mov	r3, #240
	stm	sp, {r10, ip}
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrbeq	r3, [r5, #48]	@ zero_extendqisi2
	lsleq	r3, r3, #3
	ldrheq	r2, [r4, r3]
	orreq	r2, r2, #512
	strheq	r2, [r4, r3]	@ movhi
	ldr	r3, [r5]
	ldr	r2, [r8]
	cmp	r2, r3
	ldr	r10, [r7]
	ble	.L44
	sub	r3, r3, r10
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #36864
	add	r2, r4, r2, lsl #3
	strh	r3, [r2, #2]	@ movhi
.L44:
	ldr	r3, [r5, #72]
	ldr	r2, [r5, #76]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #72]
	blt	.L45
	mov	r2, #0
	ldr	r0, [r5, #36]
	ldr	r3, .L59+24
	str	r2, [r5, #72]
	ldr	r1, [r3, #12]
	add	r0, r0, #1
	ldr	r3, .L59+28
	mov	lr, pc
	bx	r3
	str	r1, [r5, #36]
.L45:
	ldr	r5, .L59+36
	ldr	r3, [r5, #44]
	cmp	r3, #0
	ldr	r1, [r5, #4]
	ldrb	r3, [r5, #48]	@ zero_extendqisi2
	ldr	r0, [r5]
	ldr	ip, [r6]
	bne	.L46
	ldr	r2, [r5, #64]
	cmp	r2, #0
	bne	.L47
.L46:
	lsl	r3, r3, #3
	ldrh	r2, [r4, r3]
	orr	r2, r2, #512
	strh	r2, [r4, r3]	@ movhi
.L48:
	mov	r2, #160
	mov	r3, #240
	stm	sp, {r10, ip}
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrbeq	r3, [r5, #48]	@ zero_extendqisi2
	lsleq	r3, r3, #3
	ldrheq	r2, [r4, r3]
	orreq	r2, r2, #512
	strheq	r2, [r4, r3]	@ movhi
	ldr	r3, [r5]
	ldr	r2, [r8]
	cmp	r2, r3
	ldr	r10, [r7]
	ble	.L50
	sub	r3, r3, r10
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #36864
	add	r2, r4, r2, lsl #3
	strh	r3, [r2, #2]	@ movhi
.L50:
	ldr	r3, [r5, #72]
	ldr	r2, [r5, #76]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #72]
	blt	.L51
	mov	r2, #0
	ldr	r0, [r5, #36]
	ldr	r3, .L59+24
	str	r2, [r5, #72]
	ldr	r1, [r3, #12]
	add	r0, r0, #1
	ldr	r3, .L59+28
	mov	lr, pc
	bx	r3
	str	r1, [r5, #36]
.L51:
	ldr	r5, .L59+40
	ldr	r3, [r5, #44]
	cmp	r3, #0
	ldr	r1, [r5, #4]
	ldrb	r3, [r5, #48]	@ zero_extendqisi2
	ldr	r0, [r5]
	ldr	ip, [r6]
	bne	.L52
	ldr	r2, [r5, #64]
	cmp	r2, #0
	bne	.L53
.L52:
	lsl	r3, r3, #3
	ldrh	r2, [r4, r3]
	orr	r2, r2, #512
	strh	r2, [r4, r3]	@ movhi
.L54:
	mov	r2, #160
	mov	r3, #240
	stm	sp, {r10, ip}
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	ldrbeq	r3, [r5, #48]	@ zero_extendqisi2
	lsleq	r3, r3, #3
	ldrheq	r2, [r4, r3]
	orreq	r2, r2, #512
	strheq	r2, [r4, r3]	@ movhi
	ldr	r2, [r8]
	ldr	r3, [r5]
	cmp	r2, r3
	ldrh	r7, [r7]
	ble	.L56
	sub	r3, r3, r7
	ldrb	r2, [r5, #48]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #36864
	add	r4, r4, r2, lsl #3
	strh	r3, [r4, #2]	@ movhi
.L56:
	ldr	r3, [r5, #72]
	ldr	r2, [r5, #76]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r5, #72]
	blt	.L57
	mov	r2, #0
	ldr	r0, [r5, #36]
	ldr	r3, .L59+24
	str	r2, [r5, #72]
	ldr	r1, [r3, #12]
	add	r0, r0, #1
	ldr	r3, .L59+28
	mov	lr, pc
	bx	r3
	str	r1, [r5, #36]
.L57:
	mov	r3, #67108864
	ldrh	r1, [r6]
	strh	r7, [r3, #16]	@ movhi
	ldr	r2, .L59+44
	strh	r1, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L59+48
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L59+12
	mov	lr, pc
	bx	r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L53:
	sub	r2, r0, r10
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	fp, [r5, #36]
	ldr	lr, .L59+24
	ldr	lr, [lr, fp, lsl #2]
	add	fp, r4, r3, lsl #3
	lsl	lr, lr, #5
	strh	r2, [fp, #2]	@ movhi
	add	lr, lr, #16
	sub	r2, r1, ip
	lsl	r3, r3, #3
	and	lr, lr, #1008
	and	r2, r2, #255
	strh	r2, [r4, r3]	@ movhi
	strh	lr, [fp, #4]	@ movhi
	b	.L54
.L47:
	sub	r2, r0, r10
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	fp, [r5, #36]
	ldr	lr, .L59+24
	ldr	lr, [lr, fp, lsl #2]
	add	fp, r4, r3, lsl #3
	lsl	lr, lr, #5
	strh	r2, [fp, #2]	@ movhi
	add	lr, lr, #16
	sub	r2, r1, ip
	lsl	r3, r3, #3
	and	lr, lr, #1008
	and	r2, r2, #255
	strh	r2, [r4, r3]	@ movhi
	strh	lr, [fp, #4]	@ movhi
	b	.L48
.L41:
	sub	r2, r0, r10
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	fp, [r5, #36]
	ldr	lr, .L59+24
	ldr	lr, [lr, fp, lsl #2]
	add	fp, r4, r3, lsl #3
	lsl	lr, lr, #5
	strh	r2, [fp, #2]	@ movhi
	add	lr, lr, #16
	sub	r2, r1, ip
	lsl	r3, r3, #3
	and	lr, lr, #1008
	and	r2, r2, #255
	strh	r2, [r4, r3]	@ movhi
	strh	lr, [fp, #4]	@ movhi
	b	.L42
.L35:
	sub	r2, r0, ip
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r4, .L59+24
	ldr	r8, [r5, #36]
	ldr	r8, [r4, r8, lsl #2]
	ldr	r4, .L59+12
	lsl	r8, r8, #5
	add	r8, r8, #16
	sub	r9, r1, lr
	add	r10, r4, r3, lsl #3
	and	r8, r8, #1008
	lsl	r3, r3, #3
	and	r9, r9, #255
	strh	r2, [r10, #2]	@ movhi
	strh	r8, [r10, #4]	@ movhi
	strh	r9, [r4, r3]	@ movhi
	b	.L36
.L60:
	.align	2
.L59:
	.word	enemy
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	collision
	.word	player
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.word	enemy2
	.word	enemy3
	.word	enemy4
	.word	waitForVBlank
	.word	DMANow
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	drawBoss
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBoss, %function
drawBoss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L67
	ldr	r3, [r4, #44]
	ldr	r1, .L67+4
	ldr	r2, .L67+8
	cmp	r3, #0
	ldrh	r5, [r1]
	ldrb	r3, [r4, #48]	@ zero_extendqisi2
	ldrh	r6, [r2]
	bne	.L62
	ldr	r2, [r4, #64]
	cmp	r2, #0
	bne	.L63
.L62:
	ldr	r1, .L67+12
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	strh	r2, [r1, r3]	@ movhi
.L64:
	ldr	r3, [r4, #72]
	ldr	r2, [r4, #76]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r4, #72]
	blt	.L65
	mov	r2, #0
	ldr	r0, [r4, #36]
	ldr	r3, .L67+16
	str	r2, [r4, #72]
	ldr	r1, [r3, #28]
	add	r0, r0, #1
	ldr	r3, .L67+20
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L65:
	mov	r3, #67108864
	ldr	r2, .L67+24
	strh	r6, [r3, #16]	@ movhi
	strh	r5, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L67+28
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L67+12
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L63:
	ldr	r2, [r4]
	ldr	r1, [r4, #4]
	sub	r2, r2, r6
	lsl	r2, r2, #23
	sub	r1, r1, r5
	lsr	r2, r2, #23
	and	r1, r1, #255
	mvn	r2, r2, lsl #18
	mvn	r1, r1, lsl #17
	mvn	r2, r2, lsr #18
	mvn	r1, r1, lsr #17
	ldr	ip, [r4, #36]
	ldr	r0, .L67+16
	add	r0, r0, ip, lsl #2
	ldr	r0, [r0, #16]
	ldr	ip, .L67+12
	add	r0, r0, #672
	lsl	r0, r0, #22
	add	lr, ip, r3, lsl #3
	lsr	r0, r0, #22
	lsl	r3, r3, #3
	strh	r2, [lr, #2]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	strh	r1, [ip, r3]	@ movhi
	b	.L64
.L68:
	.align	2
.L67:
	.word	rayquaza
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	.LANCHOR0
	.word	__aeabi_idivmod
	.word	waitForVBlank
	.word	DMANow
	.size	drawBoss, .-drawBoss
	.align	2
	.global	drawFireBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFireBall, %function
drawFireBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	ip, .L81
	ldr	r2, [ip, #28]
	ldr	r3, .L81+4
	ldr	lr, .L81+8
	ldr	r0, .L81+12
	cmp	r2, #1
	ldrh	r1, [r3]
	ldrh	r0, [r0]
	ldrb	r3, [lr, #48]	@ zero_extendqisi2
	bls	.L78
	cmp	r2, #3
	bne	.L79
	ldr	r2, [lr]
	sub	r2, r2, r0
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mov	r6, #444
	mvn	r2, r2, lsr #17
	ldr	r4, [lr, #4]
	ldr	ip, .L81+16
	sub	r4, r4, r1
	add	r5, ip, r3, lsl #3
	and	r4, r4, #255
	lsl	r3, r3, #3
	strh	r2, [r5, #2]	@ movhi
	strh	r6, [r5, #4]	@ movhi
	strh	r4, [ip, r3]	@ movhi
.L71:
	ldr	r2, [lr, #44]
	cmp	r2, #0
	bne	.L72
.L80:
	ldr	r2, [lr, #64]
	cmp	r2, #0
	beq	.L72
	mov	r4, #444
	ldm	lr, {r2, lr}
	sub	r2, r2, r0
	lsl	r2, r2, #23
	sub	lr, lr, r1
	lsr	r2, r2, #23
	and	lr, lr, #255
	strh	lr, [ip, r3]	@ movhi
	orr	r2, r2, #36864
	add	r3, ip, r3
	strh	r2, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
.L74:
	mov	r3, #67108864
	ldr	r2, .L81+20
	strh	r0, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L81+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L81+16
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L79:
	ldr	r2, [lr, #44]
	cmp	r2, #0
	ldr	ip, .L81+16
	lsl	r3, r3, #3
	beq	.L80
.L72:
	ldrh	r2, [ip, r3]
	orr	r2, r2, #512
	strh	r2, [ip, r3]	@ movhi
	b	.L74
.L78:
	ldr	r2, [ip]
	sub	r2, r2, #6
	str	r2, [lr]
	ldr	ip, .L81+16
	lsl	r3, r3, #3
	b	.L71
.L82:
	.align	2
.L81:
	.word	player
	.word	vOff
	.word	fireBall
	.word	hOff
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.size	drawFireBall, .-drawFireBall
	.align	2
	.global	drawBossBlast
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBossBlast, %function
drawBossBlast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L92
	push	{r4, r5, r6, lr}
	ldr	r2, [r3, #64]
	ldr	r0, .L92+4
	ldr	r1, .L92+8
	cmp	r2, #0
	ldrh	r0, [r0]
	ldrb	r2, [r3, #48]	@ zero_extendqisi2
	ldrh	ip, [r1]
	beq	.L84
	ldr	r1, .L92+12
	ldr	r4, [r3, #44]
	ldr	lr, [r1, #44]
	orrs	lr, r4, lr
	beq	.L91
.L84:
	ldr	r1, .L92+16
	lsl	r2, r2, #3
	ldrh	r3, [r1, r2]
	orr	r3, r3, #512
	strh	r3, [r1, r2]	@ movhi
.L86:
	mov	r3, #67108864
	ldr	r2, .L92+20
	strh	ip, [r3, #16]	@ movhi
	strh	r0, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r4, .L92+24
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L92+16
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L91:
	ldr	r1, [r1, #64]
	cmp	r1, #0
	beq	.L84
	ldr	r1, [r3, #4]
	sub	r1, r1, r0
	and	r1, r1, #255
	mvn	r1, r1, lsl #17
	mov	r4, #59
	mvn	r1, r1, lsr #17
	ldr	r3, [r3]
	sub	r3, r3, ip
	ldr	lr, .L92+16
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	lsl	r5, r2, #3
	orr	r3, r3, #53248
	add	r2, lr, r2, lsl #3
	strh	r1, [lr, r5]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r4, [r2, #4]	@ movhi
	b	.L86
.L93:
	.align	2
.L92:
	.word	bossBlast
	.word	vOff
	.word	hOff
	.word	rayquaza
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.size	drawBossBlast, .-drawBossBlast
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
	mov	ip, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r2, .L167
	ldr	r4, .L167+4
	ldrh	r2, [r2]
	ldr	r3, [r4]
	ldr	r6, [r4, #16]
	ldr	r1, [r4, #4]
	ldr	r5, [r4, #20]
	add	lr, r6, r3
	add	r0, r5, r1
	tst	r2, #64
	sub	r7, lr, #1
	str	ip, [r4, #32]
	sub	lr, r0, #1
	bne	.L143
	mov	r0, #1
	cmp	r1, ip
	str	r0, [r4, #28]
	str	r0, [r4, #32]
	ble	.L143
	ldr	r0, .L167+8
	ldr	ip, [r0]
	ldr	r0, [r4, #60]
	cmp	ip, #1
	sub	r0, r1, r0
	beq	.L96
	cmp	ip, #2
	beq	.L97
	cmp	ip, #0
	ldreq	ip, .L167+12
	beq	.L158
.L143:
	mov	r0, r1
.L95:
	ands	ip, r2, #128
	bne	.L103
	mov	r8, #1
	str	ip, [r4, #28]
	add	ip, r5, r0
	cmp	ip, #512
	str	r8, [r4, #32]
	blt	.L160
.L103:
	tst	r2, #32
	bne	.L111
	mov	r8, #3
	mov	ip, #1
	cmp	r3, #0
	str	r8, [r4, #28]
	str	ip, [r4, #32]
	ble	.L111
	ldr	ip, .L167+8
	ldr	ip, [ip]
	ldr	r8, [r4, #56]
	cmp	ip, #1
	sub	r8, r3, r8
	beq	.L112
	cmp	ip, #2
	beq	.L113
	cmp	ip, #0
	beq	.L161
.L111:
	tst	r2, #16
	bne	.L119
	mov	r8, #2
	mov	ip, #1
	str	r8, [r4, #28]
	add	r8, r6, r3
	cmp	r8, #512
	str	ip, [r4, #32]
	blt	.L162
.L119:
	ldr	r1, .L167+16
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L127
	tst	r2, #1
	beq	.L163
.L127:
	cmp	r3, #0
	movlt	r2, #0
	movlt	r3, r2
	strlt	r2, [r4]
	cmp	r0, #0
	movlt	r2, #0
	movlt	r0, r2
	strlt	r2, [r4, #4]
	rsb	r2, r6, #512
	cmp	r2, r3
	rsb	r3, r5, #512
	strlt	r2, [r4]
	cmp	r0, r3
	strgt	r3, [r4, #4]
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L134
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	beq	.L164
.L135:
	ldr	r2, [r4]
	rsb	r6, r6, #240
	ldr	r3, [r4, #4]
	add	r6, r6, r6, lsr #31
	rsb	r5, r5, #160
	sub	r6, r2, r6, asr #1
	ldr	r1, .L167+20
	ldr	r2, .L167+24
	add	r5, r5, r5, lsr #31
	sub	r5, r3, r5, asr #1
	cmp	r6, #0
	str	r6, [r1]
	str	r5, [r2]
	blt	.L165
	cmp	r5, #0
	blt	.L166
	cmp	r6, #272
	movgt	r3, #272
	strgt	r3, [r1]
.L137:
	cmp	r5, #352
	ble	.L94
	mov	r3, #352
.L157:
	str	r3, [r2]
.L94:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L134:
	mov	r2, #5
	str	r3, [r4, #36]
	str	r2, [r4, #24]
	b	.L135
.L162:
	ldr	ip, .L167+8
	ldr	ip, [ip]
	ldr	r8, [r4, #56]
	cmp	ip, #1
	add	r7, r7, r8
	beq	.L120
	cmp	ip, #2
	beq	.L121
	cmp	ip, #0
	bne	.L119
	ldr	ip, .L167+12
	add	r1, r7, r1, lsl #9
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L119
.L125:
	add	lr, r7, lr, lsl #9
	ldrb	r1, [lr, ip]	@ zero_extendqisi2
	cmp	r1, #0
	ldrne	r1, [r4, #8]
	addne	r3, r3, r1
	strne	r3, [r4]
	b	.L119
.L160:
	ldr	ip, .L167+8
	ldr	r8, [ip]
	ldr	ip, [r4, #60]
	cmp	r8, #1
	add	ip, lr, ip
	beq	.L104
	cmp	r8, #2
	beq	.L105
	cmp	r8, #0
	ldreq	r8, .L167+12
	bne	.L103
.L159:
	add	r9, r3, ip, lsl #9
	ldrb	r9, [r9, r8]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	ip, ip, #9
	beq	.L103
	add	ip, r7, ip
	ldrb	ip, [ip, r8]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	ip, [r4, #12]
	addne	r0, r0, ip
	strne	r0, [r4, #4]
	b	.L103
.L164:
	ldr	r0, [r4, #36]
	ldr	r3, .L167+28
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #5
	str	r1, [r4, #36]
	str	r3, [r4, #24]
	b	.L135
.L163:
	ldr	r2, [r4, #28]
	ldr	ip, .L167+32
	cmp	r2, #2
	str	r3, [ip]
	addeq	r3, r3, #10
	str	r2, [ip, #28]
	streq	r3, [ip]
	beq	.L129
	cmp	r2, #3
	ldreq	r2, [ip, #16]
	addeq	r2, r2, #10
	subeq	r3, r3, r2
	streq	r3, [ip]
.L129:
	mov	r3, #1
	ldr	r2, .L167+36
	str	r0, [ip, #4]
	ldr	r1, [r2]
	ldr	r0, .L167+40
	str	r3, [ip, #64]
	mov	r2, #0
	ldr	r3, .L167+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, [r4, #16]
	ldr	r5, [r4, #20]
	b	.L127
.L166:
	mov	r3, #0
	cmp	r6, #272
	str	r3, [r2]
	ble	.L94
	mov	r3, #272
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r3, [r1]
	bx	lr
.L97:
	ldr	ip, .L167+48
.L158:
	add	r8, r3, r0, lsl #9
	ldrb	r8, [r8, ip]	@ zero_extendqisi2
	cmp	r8, #0
	lsl	r0, r0, #9
	beq	.L143
	add	r0, r7, r0
	ldrb	r0, [r0, ip]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L143
	ldr	r0, [r4, #12]
	sub	r0, r1, r0
	str	r0, [r4, #4]
	b	.L95
.L165:
	mov	r3, #0
	cmp	r5, r3
	str	r3, [r1]
	bge	.L137
	b	.L157
.L113:
	ldr	r9, .L167+48
	add	ip, r8, r1, lsl #9
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L111
	add	ip, r8, lr, lsl #9
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	b	.L118
.L161:
	ldr	r9, .L167+12
	add	ip, r8, r1, lsl #9
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L111
.L116:
	add	r8, r8, lr, lsl #9
	ldrb	ip, [r8, r9]	@ zero_extendqisi2
.L118:
	cmp	ip, #0
	ldrne	ip, [r4, #8]
	subne	r3, r3, ip
	strne	r3, [r4]
	b	.L111
.L121:
	ldr	ip, .L167+48
	add	r1, r7, r1, lsl #9
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L125
	b	.L119
.L105:
	ldr	r8, .L167+48
	b	.L159
.L104:
	ldr	r8, .L167+52
	b	.L159
.L120:
	ldr	ip, .L167+52
	add	r1, r7, r1, lsl #9
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L125
	b	.L119
.L112:
	ldr	r9, .L167+52
	add	ip, r8, r1, lsl #9
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L116
	b	.L111
.L96:
	ldr	ip, .L167+52
	b	.L158
.L168:
	.align	2
.L167:
	.word	buttons
	.word	player
	.word	level
	.word	collisionMapBitmap
	.word	oldButtons
	.word	hOff
	.word	vOff
	.word	__aeabi_idivmod
	.word	fireBall
	.word	fireballSound_length
	.word	fireballSound_data
	.word	playSoundB
	.word	collisionMap3Bitmap
	.word	collisionMap2Bitmap
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updatePlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer2, %function
updatePlayer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r2, .L242
	ldr	r4, .L242+4
	ldrh	r2, [r2]
	ldr	r3, [r4]
	ldr	r6, [r4, #16]
	ldr	r1, [r4, #4]
	ldr	r5, [r4, #20]
	add	lr, r6, r3
	add	r0, r5, r1
	tst	r2, #64
	sub	r7, lr, #1
	str	ip, [r4, #32]
	sub	lr, r0, #1
	bne	.L219
	mov	r0, #1
	cmp	r1, ip
	str	r0, [r4, #28]
	str	r0, [r4, #32]
	ble	.L219
	ldr	r0, .L242+8
	ldr	ip, [r0]
	ldr	r0, [r4, #60]
	cmp	ip, #1
	sub	r0, r1, r0
	beq	.L171
	cmp	ip, #2
	beq	.L172
	cmp	ip, #0
	ldreq	ip, .L242+12
	beq	.L233
.L219:
	mov	r0, r1
.L170:
	ands	ip, r2, #128
	bne	.L178
	mov	r8, #1
	str	ip, [r4, #28]
	add	ip, r5, r0
	cmp	ip, #512
	str	r8, [r4, #32]
	blt	.L235
.L178:
	tst	r2, #32
	bne	.L186
	mov	r8, #3
	mov	ip, #1
	cmp	r3, #0
	str	r8, [r4, #28]
	str	ip, [r4, #32]
	ble	.L186
	ldr	ip, .L242+8
	ldr	ip, [ip]
	ldr	r8, [r4, #56]
	cmp	ip, #1
	sub	r8, r3, r8
	beq	.L187
	cmp	ip, #2
	beq	.L188
	cmp	ip, #0
	beq	.L236
.L186:
	tst	r2, #16
	beq	.L194
	ldr	ip, [r4, #32]
.L195:
	ldr	r1, .L242+16
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L203
	tst	r2, #1
	beq	.L237
.L203:
	cmp	r3, #0
	movlt	r2, #0
	movlt	r3, r2
	strlt	r2, [r4]
	cmp	r0, #0
	movlt	r2, #0
	movlt	r0, r2
	strlt	r2, [r4, #4]
	rsb	r2, r6, #512
	cmp	r2, r3
	rsb	r3, r5, #512
	strlt	r2, [r4]
	cmp	r3, r0
	strlt	r3, [r4, #4]
	cmp	ip, #0
	beq	.L210
	ldr	r3, [r4, #24]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #24]
	beq	.L238
.L211:
	ldr	r2, [r4]
	rsb	r6, r6, #240
	ldr	r3, [r4, #4]
	add	r6, r6, r6, lsr #31
	rsb	r5, r5, #160
	sub	r6, r2, r6, asr #1
	ldr	r1, .L242+20
	ldr	r2, .L242+24
	add	r5, r5, r5, lsr #31
	sub	r5, r3, r5, asr #1
	cmp	r6, #0
	str	r6, [r1]
	str	r5, [r2]
	blt	.L239
	cmp	r5, #0
	blt	.L240
	cmp	r6, #272
	movgt	r3, #272
	strgt	r3, [r1]
.L213:
	cmp	r5, #352
	ble	.L169
	mov	r3, #352
.L232:
	str	r3, [r2]
.L169:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L210:
	mov	r3, #5
	str	ip, [r4, #36]
	str	r3, [r4, #24]
	b	.L211
.L194:
	mov	ip, #2
	mov	r9, #1
	add	r8, r6, r3
	cmp	r8, #512
	str	ip, [r4, #28]
	str	r9, [r4, #32]
	bge	.L221
	ldr	ip, .L242+8
	ldr	ip, [ip]
	ldr	r8, [r4, #56]
	cmp	ip, r9
	add	r7, r7, r8
	beq	.L196
	cmp	ip, #2
	beq	.L197
	cmp	ip, #0
	beq	.L241
.L221:
	mov	ip, #1
	b	.L195
.L237:
	ldr	r1, [r4, #28]
	ldr	r2, .L242+28
	cmp	r1, #2
	str	r1, [r2, #28]
	addeq	r1, r3, #10
	str	r3, [r2]
	streq	r1, [r2]
	beq	.L205
	cmp	r1, #3
	ldreq	r1, [r2, #16]
	addeq	r1, r1, #10
	subeq	r1, r3, r1
	streq	r1, [r2]
.L205:
	mov	r1, #1
	str	r0, [r2, #4]
	str	r1, [r2, #64]
	b	.L203
.L238:
	ldr	r0, [r4, #36]
	ldr	r3, .L242+32
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	mov	r3, #5
	str	r1, [r4, #36]
	str	r3, [r4, #24]
	b	.L211
.L235:
	ldr	ip, .L242+8
	ldr	r8, [ip]
	ldr	ip, [r4, #60]
	cmp	r8, #1
	add	ip, lr, ip
	beq	.L179
	cmp	r8, #2
	beq	.L180
	cmp	r8, #0
	ldreq	r8, .L242+12
	bne	.L178
.L234:
	add	r9, r3, ip, lsl #9
	ldrb	r9, [r9, r8]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	ip, ip, #9
	beq	.L178
	add	ip, r7, ip
	ldrb	ip, [ip, r8]	@ zero_extendqisi2
	cmp	ip, #0
	ldrne	ip, [r4, #12]
	addne	r0, r0, ip
	strne	r0, [r4, #4]
	b	.L178
.L240:
	mov	r3, #0
	cmp	r6, #272
	str	r3, [r2]
	ble	.L169
	mov	r3, #272
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r3, [r1]
	bx	lr
.L172:
	ldr	ip, .L242+36
.L233:
	add	r8, r3, r0, lsl #9
	ldrb	r8, [r8, ip]	@ zero_extendqisi2
	cmp	r8, #0
	lsl	r0, r0, #9
	beq	.L219
	add	r0, r7, r0
	ldrb	r0, [r0, ip]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L219
	ldr	r0, [r4, #12]
	sub	r0, r1, r0
	str	r0, [r4, #4]
	b	.L170
.L239:
	mov	r3, #0
	cmp	r5, r3
	str	r3, [r1]
	bge	.L213
	b	.L232
.L188:
	ldr	r9, .L242+36
	add	ip, r8, r1, lsl #9
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L186
	add	ip, r8, lr, lsl #9
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	b	.L193
.L236:
	ldr	r9, .L242+12
	add	ip, r8, r1, lsl #9
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L186
.L191:
	add	r8, r8, lr, lsl #9
	ldrb	ip, [r8, r9]	@ zero_extendqisi2
.L193:
	cmp	ip, #0
	ldrne	ip, [r4, #8]
	subne	r3, r3, ip
	strne	r3, [r4]
	b	.L186
.L180:
	ldr	r8, .L242+36
	b	.L234
.L241:
	ldr	ip, .L242+12
	add	r1, r7, r1, lsl #9
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L221
.L201:
	add	lr, r7, lr, lsl #9
	ldrb	r1, [lr, ip]	@ zero_extendqisi2
.L202:
	cmp	r1, #0
	beq	.L221
	ldr	r1, [r4, #8]
	add	r3, r3, r1
	mov	ip, #1
	str	r3, [r4]
	b	.L195
.L197:
	ldr	ip, .L242+36
	add	r1, r7, r1, lsl #9
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L201
	b	.L221
.L196:
	ldr	r9, .L242+40
	add	r1, r7, r1, lsl #9
	ldrb	r1, [r1, r9]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L195
	add	lr, r7, lr, lsl #9
	ldrb	r1, [lr, r9]	@ zero_extendqisi2
	b	.L202
.L179:
	ldr	r8, .L242+40
	b	.L234
.L187:
	ldr	r9, .L242+40
	add	ip, r8, r1, lsl #9
	ldrb	ip, [ip, r9]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L191
	b	.L186
.L171:
	ldr	ip, .L242+40
	b	.L233
.L243:
	.align	2
.L242:
	.word	buttons
	.word	player
	.word	level
	.word	collisionMapBitmap
	.word	oldButtons
	.word	hOff
	.word	vOff
	.word	fireBall
	.word	__aeabi_idivmod
	.word	collisionMap3Bitmap
	.word	collisionMap2Bitmap
	.size	updatePlayer2, .-updatePlayer2
	.align	2
	.global	updatePlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer3, %function
updatePlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayer2
	.size	updatePlayer3, .-updatePlayer3
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	ldr	r3, .L283
	ldr	r2, [r3, #12]
	ldr	r0, [r3, #4]
	ldr	ip, .L283+4
	adds	r0, r2, r0
	str	lr, [sp, #-4]!
	str	r1, [r3, #32]
	str	r1, [ip]
	bmi	.L246
	ldr	r1, [r3, #20]
	add	r1, r0, r1
	cmp	r1, #512
	ble	.L279
.L246:
	rsb	r2, r2, #0
	str	r2, [r3, #12]
.L247:
	mov	r0, #0
	ldr	r2, .L283+8
	ldr	r1, [r2]
	ldr	r3, [r2, #8]
	adds	ip, r1, r3
	str	r0, [r2, #32]
	bmi	.L248
	ldr	r0, [r2, #20]
	add	r0, ip, r0
	cmp	r0, #512
	ble	.L280
.L248:
	rsb	r3, r3, #0
	str	r3, [r2, #8]
.L249:
	mov	r0, #0
	ldr	r2, .L283+12
	ldr	r1, [r2]
	ldr	r3, [r2, #8]
	adds	ip, r1, r3
	str	r0, [r2, #32]
	bmi	.L250
	ldr	r0, [r2, #20]
	add	r0, ip, r0
	cmp	r0, #512
	ble	.L281
.L250:
	rsb	r3, r3, #0
	str	r3, [r2, #8]
.L251:
	mov	r0, #0
	ldr	r3, .L283+16
	ldr	r2, [r3, #12]
	ldr	r1, [r3, #4]
	adds	r1, r2, r1
	str	r0, [r3, #32]
	bmi	.L252
	ldr	r0, [r3, #20]
	add	r0, r1, r0
	cmp	r0, #512
	ble	.L282
.L252:
	rsb	r2, r2, #0
	str	r2, [r3, #12]
.L245:
	ldr	lr, [sp], #4
	bx	lr
.L282:
	ldr	ip, [r3]
	ldr	lr, .L283+20
	add	r0, ip, r0, lsl #9
	ldrb	ip, [r0, lr]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L252
	ldr	ip, [r3, #16]
	sub	lr, lr, #1
	add	r0, r0, ip
	ldrb	r0, [r0, lr]	@ zero_extendqisi2
	cmp	r0, #0
	strne	r1, [r3, #4]
	bne	.L245
	b	.L252
.L281:
	ldr	lr, .L283+20
	add	r1, r1, r0, lsl #9
	ldrb	r0, [r1, lr]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L250
	ldr	r0, [r2, #16]
	sub	lr, lr, #1
	add	r1, r1, r0
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #0
	strne	ip, [r2]
	bne	.L251
	b	.L250
.L280:
	ldr	lr, .L283+20
	add	r1, r1, r0, lsl #9
	ldrb	r0, [r1, lr]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L248
	ldr	r0, [r2, #16]
	sub	lr, lr, #1
	add	r1, r1, r0
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #0
	strne	ip, [r2]
	bne	.L249
	b	.L248
.L279:
	ldr	ip, [r3]
	ldr	lr, .L283+20
	add	r1, ip, r1, lsl #9
	ldrb	ip, [r1, lr]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L246
	ldr	ip, [r3, #16]
	sub	lr, lr, #1
	add	r1, r1, ip
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r0, [r3, #4]
	bne	.L247
	b	.L246
.L284:
	.align	2
.L283:
	.word	enemy
	.word	level
	.word	enemy2
	.word	enemy3
	.word	enemy4
	.word	collisionMapBitmap
	.size	updateEnemy, .-updateEnemy
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Ludwig.x: %d\000"
	.align	2
.LC1:
	.ascii	"Ludwig.y: %d\000"
	.text
	.align	2
	.global	updateEnemy2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy2, %function
updateEnemy2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L313
	ldr	r0, .L313+4
	ldr	r1, [r4]
	ldr	r5, .L313+8
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #4]
	ldr	r0, .L313+12
	mov	lr, pc
	bx	r5
	mov	ip, #0
	mov	r0, #1
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #4]
	ldr	r1, .L313+16
	adds	r2, r3, r2
	str	ip, [r4, #32]
	str	r0, [r1]
	bmi	.L286
	ldr	r1, [r4, #20]
	add	r1, r2, r1
	cmp	r1, #512
	ble	.L311
.L286:
	rsb	r3, r3, #0
	str	r3, [r4, #12]
.L287:
	mov	r0, #0
	ldr	r2, .L313+20
	ldr	r1, [r2]
	ldr	r3, [r2, #8]
	adds	ip, r1, r3
	str	r0, [r2, #32]
	bmi	.L288
	ldr	r0, [r2, #20]
	add	r0, ip, r0
	cmp	r0, #512
	ble	.L312
.L288:
	rsb	r3, r3, #0
	str	r3, [r2, #8]
.L289:
	ldr	r3, .L313+24
	ldr	r2, [r3, #64]
	cmp	r2, #1
	bne	.L290
	ldr	r2, .L313+28
	ldr	r1, [r3]
	ldr	r0, [r2]
	cmp	r0, r1
	ldr	r0, [r3, #8]
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r3, #4]
	str	r1, [r3]
	ldr	r1, [r3, #12]
	cmp	r0, r2
	addgt	r2, r2, r1
	suble	r2, r2, r1
	str	r2, [r3, #4]
.L290:
	ldr	r3, .L313+32
	ldr	r2, [r3, #64]
	cmp	r2, #1
	bne	.L285
	ldr	r2, .L313+28
	ldr	r1, [r3]
	ldr	r0, [r2]
	cmp	r0, r1
	ldr	r0, [r3, #8]
	addgt	r1, r1, r0
	suble	r1, r1, r0
	ldr	r0, [r2, #4]
	ldr	r2, [r3, #4]
	str	r1, [r3]
	ldr	r1, [r3, #12]
	cmp	r0, r2
	addgt	r2, r2, r1
	suble	r2, r2, r1
	str	r2, [r3, #4]
.L285:
	pop	{r4, r5, r6, lr}
	bx	lr
.L312:
	ldr	lr, .L313+36
	add	r1, r1, r0, lsl #9
	ldrb	r0, [r1, lr]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L288
	ldr	r0, [r2, #16]
	sub	lr, lr, #1
	add	r1, r1, r0
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	cmp	r1, #0
	strne	ip, [r2]
	bne	.L289
	b	.L288
.L311:
	ldr	r0, [r4]
	ldr	ip, .L313+36
	add	r1, r0, r1, lsl #9
	ldrb	r0, [r1, ip]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L286
	ldr	r0, [r4, #16]
	sub	ip, ip, #1
	add	r1, r1, r0
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r1, #0
	strne	r2, [r4, #4]
	bne	.L287
	b	.L286
.L314:
	.align	2
.L313:
	.word	Ludwig
	.word	.LC0
	.word	mgba_printf
	.word	.LC1
	.word	level
	.word	Ludwig2
	.word	Ludwig3
	.word	player
	.word	Ludwig4
	.word	collisionMap2Bitmap
	.size	updateEnemy2, .-updateEnemy2
	.align	2
	.global	updateFireBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFireBall, %function
updateFireBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	lr, #0
	ldr	r3, .L356
	ldm	r3, {r0, r1, ip}
	ldr	r4, [r3, #12]
	ldr	r2, [r3, #28]
	str	lr, [r3, #32]
	add	r5, r0, ip
	add	lr, r1, r4
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L315
.L318:
	.word	.L321
	.word	.L320
	.word	.L319
	.word	.L317
.L317:
	cmp	r5, #512
	bcs	.L322
	ldr	r2, .L356+4
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L326
	cmp	r2, #2
	beq	.L327
	cmp	r2, #0
	beq	.L355
.L322:
	mov	r2, #0
	str	r2, [r3, #64]
.L315:
	pop	{r4, r5, lr}
	bx	lr
.L321:
	mvn	r1, lr
	ldr	r2, [r3, #20]
	add	r2, lr, r2
	cmp	r2, #512
	lsr	r1, r1, #31
	movgt	r1, #0
	cmp	r1, #0
	beq	.L322
	ldr	r1, .L356+4
	ldr	r1, [r1]
	cmp	r1, #1
	sub	r2, r2, #1
	beq	.L332
	cmp	r1, #2
	beq	.L333
	cmp	r1, #0
	bne	.L322
	ldr	r1, .L356+8
	add	r2, r0, r2, lsl #9
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
.L334:
	cmp	r2, #0
	beq	.L322
	str	lr, [r3, #4]
	b	.L315
.L320:
	cmp	lr, #512
	bcs	.L322
	ldr	r2, .L356+4
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L329
	cmp	r2, #2
	beq	.L330
	cmp	r2, #0
	bne	.L322
	ldr	r2, .L356+8
	add	r0, r0, lr, lsl #9
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
.L331:
	cmp	r2, #0
	subne	r1, r1, r4
	strne	r1, [r3, #4]
	bne	.L315
	b	.L322
.L319:
	cmp	r5, #0
	blt	.L322
	ldr	r2, [r3, #16]
	add	r2, r5, r2
	cmp	r2, #512
	bgt	.L322
	ldr	r0, .L356+4
	ldr	r0, [r0]
	cmp	r0, #1
	sub	r2, r2, #1
	beq	.L323
	cmp	r0, #2
	beq	.L324
	cmp	r0, #0
	bne	.L322
	ldr	r0, .L356+8
	add	r2, r2, r1, lsl #9
	ldrb	lr, [r2, r0]	@ zero_extendqisi2
.L325:
	cmp	lr, #0
	strne	r5, [r3]
	bne	.L315
	b	.L322
.L333:
	ldr	r1, .L356+12
	add	r0, r0, r2, lsl #9
	ldrb	r2, [r0, r1]	@ zero_extendqisi2
	b	.L334
.L324:
	ldr	r0, .L356+12
	add	r2, r2, r1, lsl #9
	ldrb	lr, [r2, r0]	@ zero_extendqisi2
	b	.L325
.L323:
	ldr	r0, .L356+16
	add	r2, r2, r1, lsl #9
	ldrb	lr, [r2, r0]	@ zero_extendqisi2
	b	.L325
.L332:
	ldr	r1, .L356+16
	add	r2, r0, r2, lsl #9
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	b	.L334
.L329:
	ldr	r2, .L356+16
	add	r0, r0, lr, lsl #9
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	b	.L331
.L330:
	ldr	r2, .L356+12
	add	r0, r0, lr, lsl #9
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	b	.L331
.L326:
	ldr	r2, .L356+16
	add	r1, r5, r1, lsl #9
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
.L328:
	cmp	r2, #0
	subne	r0, r0, ip
	strne	r0, [r3]
	bne	.L315
	b	.L322
.L355:
	ldr	r2, .L356+8
	add	r1, r5, r1, lsl #9
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	b	.L328
.L327:
	ldr	r2, .L356+12
	add	r1, r5, r1, lsl #9
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	b	.L328
.L357:
	.align	2
.L356:
	.word	fireBall
	.word	level
	.word	collisionMapBitmap
	.word	collisionMap3Bitmap
	.word	collisionMap2Bitmap
	.size	updateFireBall, .-updateFireBall
	.align	2
	.global	updateFireBall2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFireBall2, %function
updateFireBall2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updateFireBall
	.size	updateFireBall2, .-updateFireBall2
	.align	2
	.global	checkCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCollision, %function
checkCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L424
	ldr	r2, [r3, #64]
	cmp	r2, #0
	sub	sp, sp, #20
	bne	.L415
.L361:
	ldr	r3, .L424+4
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L416
.L364:
	ldr	r3, .L424+8
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L417
.L367:
	ldr	r3, .L424+12
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L418
.L370:
	ldr	r3, .L424+16
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L419
.L373:
	ldr	r3, .L424+20
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L420
.L376:
	ldr	r3, .L424+24
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L421
.L379:
	ldr	r3, .L424+28
	ldr	r2, [r3, #64]
	cmp	r2, #0
	bne	.L422
.L382:
	ldr	r4, .L424+32
	ldr	r3, [r4, #64]
	cmp	r3, #0
	bne	.L423
.L359:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L415:
	ldr	r0, .L424+36
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	ldm	r3, {ip, lr}
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	str	r5, [sp, #12]
	ldr	r4, .L424+40
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L361
	ldr	r3, .L424+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L424+4
	ldr	r2, [r3, #64]
	cmp	r2, #0
	beq	.L364
.L416:
	ldr	r0, .L424+36
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	ldm	r3, {ip, lr}
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	str	r5, [sp, #12]
	ldr	r4, .L424+40
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L364
	ldr	r3, .L424+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L424+8
	ldr	r2, [r3, #64]
	cmp	r2, #0
	beq	.L367
.L417:
	ldr	r0, .L424+36
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	ldm	r3, {ip, lr}
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	str	r5, [sp, #12]
	ldr	r4, .L424+40
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L367
	ldr	r3, .L424+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L424+12
	ldr	r2, [r3, #64]
	cmp	r2, #0
	beq	.L370
.L418:
	ldr	r0, .L424+36
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	ldm	r3, {ip, lr}
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	str	r5, [sp, #12]
	ldr	r4, .L424+40
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L370
	ldr	r3, .L424+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L424+16
	ldr	r2, [r3, #64]
	cmp	r2, #0
	beq	.L373
.L419:
	ldr	r0, .L424+36
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	ldm	r3, {ip, lr}
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	str	r5, [sp, #12]
	ldr	r4, .L424+40
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L373
	ldr	r3, .L424+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L424+20
	ldr	r2, [r3, #64]
	cmp	r2, #0
	beq	.L376
.L420:
	ldr	r0, .L424+36
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	ldm	r3, {ip, lr}
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	str	r5, [sp, #12]
	ldr	r4, .L424+40
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L376
	ldr	r3, .L424+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L424+24
	ldr	r2, [r3, #64]
	cmp	r2, #0
	beq	.L379
.L421:
	ldr	r0, .L424+36
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	ldm	r3, {ip, lr}
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	str	r5, [sp, #12]
	ldr	r4, .L424+40
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L379
	ldr	r3, .L424+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L424+28
	ldr	r2, [r3, #64]
	cmp	r2, #0
	beq	.L382
.L422:
	ldr	r0, .L424+36
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	ldm	r3, {ip, lr}
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	str	r5, [sp, #12]
	ldr	r4, .L424+40
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L382
	ldr	r4, .L424+32
	ldr	r3, .L424+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #64]
	cmp	r3, #0
	beq	.L359
.L423:
	ldr	r0, .L424+36
	ldr	r5, [r4, #20]
	ldr	ip, [r4, #16]
	add	r2, r0, #16
	ldr	lr, [r4, #4]
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	ldr	r5, .L424+40
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L359
	mov	r2, #0
	ldr	r3, .L424+48
	str	r2, [r4, #64]
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L425:
	.align	2
.L424:
	.word	enemy
	.word	enemy2
	.word	enemy3
	.word	enemy4
	.word	Ludwig
	.word	Ludwig2
	.word	Ludwig3
	.word	Ludwig4
	.word	rayquaza
	.word	player
	.word	collision
	.word	goToLose
	.word	goToBossLose
	.size	checkCollision, .-checkCollision
	.align	2
	.global	checkWinCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkWinCollision, %function
checkWinCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L437
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	sub	sp, sp, #16
	ldr	r4, .L437+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	ldr	r6, .L437+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L427
	ldr	r3, .L437+12
	ldr	r0, [r4]
	ldm	r3, {ip, lr}
	ldr	r1, [r4, #4]
.L428:
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #16]
	stm	sp, {ip, lr}
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L429
	ldm	r4, {r0, r1}
	ldr	r5, .L437+16
.L430:
	ldr	r2, [r5, #20]
	ldr	r3, [r5, #16]
	str	r2, [sp, #12]
	ldr	r2, [r5, #4]
	str	r3, [sp, #8]
	ldr	r3, [r5]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L426
	ldr	r3, .L437+20
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L426
	ldr	r3, [r5, #64]
	cmp	r3, #1
	beq	.L436
.L426:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L429:
	mov	r7, #0
	mov	r1, #2
	ldr	ip, .L437+24
	ldr	r0, .L437+28
	ldr	r2, .L437+32
	ldr	r3, .L437+36
	str	r1, [r2]
	str	r7, [ip, #64]
	str	r7, [r0, #64]
	mov	lr, pc
	bx	r3
	mov	r3, #280
	mov	ip, #230
	mov	r2, #1
	mov	lr, #40
	mov	r1, r3
	ldr	r5, .L437+16
	str	r3, [r4, #4]
	ldr	r3, .L437+20
	mov	r0, ip
	str	ip, [r4]
	str	r7, [r5, #64]
	str	r2, [r4, #28]
	str	r2, [r3, #64]
	str	lr, [r3, #4]
	b	.L430
.L427:
	mov	r7, #0
	mov	r3, #1
	ldr	r1, .L437+40
	ldr	r2, .L437+44
	str	r7, [r1, #64]
	ldr	ip, .L437+48
	ldr	r0, .L437+52
	ldr	r1, .L437+24
	str	r7, [r2, #64]
	ldr	r2, .L437+28
	str	r7, [ip, #64]
	str	r7, [r0, #64]
	ldr	ip, .L437+56
	ldr	r0, .L437+60
	str	r3, [r1, #64]
	ldr	r1, .L437+32
	str	r3, [r2, #64]
	ldr	r2, .L437+64
	str	r3, [ip, #64]
	str	r3, [r0, #64]
	str	r3, [r1]
	str	r7, [r5, #64]
	mov	lr, pc
	bx	r2
	mov	r3, #50
	mov	r8, #90
	mov	r5, #120
	mov	r2, #380
	mov	r1, r3
	str	r3, [r4, #4]
	ldr	r3, .L437+12
	mov	r0, r8
	mov	ip, r5
	mov	lr, r2
	str	r7, [r4, #28]
	str	r8, [r4]
	str	r5, [r3]
	str	r2, [r3, #4]
	b	.L428
.L436:
	ldr	r3, .L437+68
	mov	lr, pc
	bx	r3
	b	.L426
.L438:
	.align	2
.L437:
	.word	door
	.word	player
	.word	collision
	.word	door2
	.word	door3
	.word	rayquaza
	.word	Ludwig
	.word	Ludwig2
	.word	level
	.word	goToBossFight
	.word	enemy
	.word	enemy2
	.word	enemy3
	.word	enemy4
	.word	Ludwig3
	.word	Ludwig4
	.word	goToGame2
	.word	goToWin
	.size	checkWinCollision, .-checkWinCollision
	.align	2
	.global	checkFireBallKillCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkFireBallKillCollision, %function
checkFireBallKillCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L473
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	sub	sp, sp, #16
	ldr	r4, .L473+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldr	r5, .L473+8
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r6, #64]
	ldr	r6, .L473+12
	strne	r3, [r4, #64]
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r6, #64]
	ldr	r6, .L473+16
	strne	r3, [r4, #64]
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r6, #64]
	ldr	r6, .L473+20
	strne	r3, [r4, #64]
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r6, #64]
	ldr	r6, .L473+24
	strne	r3, [r4, #64]
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r6, #64]
	ldr	r6, .L473+28
	strne	r3, [r4, #64]
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r6, #64]
	ldr	r6, .L473+32
	strne	r3, [r4, #64]
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r6, #64]
	ldr	r6, .L473+36
	strne	r3, [r4, #64]
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r6, #64]
	strne	r3, [r4, #64]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L474:
	.align	2
.L473:
	.word	enemy
	.word	fireBall
	.word	collision
	.word	enemy2
	.word	enemy3
	.word	enemy4
	.word	Ludwig
	.word	Ludwig2
	.word	Ludwig3
	.word	Ludwig4
	.size	checkFireBallKillCollision, .-checkFireBallKillCollision
	.align	2
	.global	initBossFight
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBossFight, %function
initBossFight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #100663296
	ldr	r4, .L477
	mov	r0, #3
	ldr	r3, .L477+4
	ldr	r1, .L477+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L477+12
	ldr	r1, .L477+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L477+20
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L477+24
	ldr	r1, .L477+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L477+32
	ldr	r1, .L477+36
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L477+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L477+44
	mov	lr, pc
	bx	r3
	mov	r1, #25
	ldr	r2, .L477+48
	ldr	r3, .L477+52
	str	r1, [r2, #80]
	mov	lr, pc
	bx	r3
	ldr	r3, .L477+56
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L477+60
	ldr	r3, .L477+64
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L478:
	.align	2
.L477:
	.word	DMANow
	.word	6544
	.word	bossFightTiles
	.word	100712448
	.word	bossFightMap
	.word	bossFightPal
	.word	100728832
	.word	chronoSpritesheetTiles
	.word	83886592
	.word	chronoSpritesheetPal
	.word	waitForVBlank
	.word	hideSprites
	.word	rayquaza
	.word	stopSounds
	.word	bossMusic_length
	.word	bossMusic_data
	.word	playSoundA
	.size	initBossFight, .-initBossFight
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"rayquaza lives: %d\000"
	.text
	.align	2
	.global	updateRayquaza
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRayquaza, %function
updateRayquaza:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L491
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	sub	sp, sp, #16
	ldr	r5, .L491+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	ldr	r6, .L491+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L480
	ldr	r1, [r4, #80]
.L481:
	ldr	r3, .L491+12
	ldr	r0, .L491+16
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #80]
	cmp	r3, #0
	movgt	r3, #1
	movle	r3, #0
	str	r3, [r4, #64]
	bgt	.L490
.L479:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L480:
	mov	r3, #0
	ldr	r1, [r4, #80]
	sub	r1, r1, #1
	cmp	r1, r3
	movle	r2, #1
	str	r3, [r5, #64]
	ldrle	r3, .L491+20
	str	r1, [r4, #80]
	strle	r2, [r3, #64]
	b	.L481
.L490:
	ldr	r1, .L491+24
	ldr	r3, [r4]
	ldr	r2, [r1]
	cmp	r2, r3
	ldr	r2, [r4, #8]
	ldr	r1, [r1, #4]
	addgt	r2, r3, r2
	suble	r2, r3, r2
	ldr	r3, [r4, #4]
	ldr	r0, .L491+28
	cmp	r1, r3
	ldr	r1, [r4, #12]
	addgt	r3, r3, r1
	suble	r3, r3, r1
	ldr	r1, [r0]
	add	r1, r1, #1
	cmp	r1, #9
	str	r2, [r4]
	str	r3, [r4, #4]
	str	r1, [r0]
	ble	.L479
	mov	ip, #1
	mov	lr, #0
	ldr	r1, .L491+32
	str	lr, [r0]
	stm	r1, {r2, r3}
	str	ip, [r1, #64]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L492:
	.align	2
.L491:
	.word	rayquaza
	.word	fireBall
	.word	collision
	.word	mgba_printf
	.word	.LC2
	.word	door3
	.word	player
	.word	.LANCHOR1
	.word	bossBlast
	.size	updateRayquaza, .-updateRayquaza
	.global	numRayquazaFrames
	.global	rayquazaFrames
	.global	numMasterHandFrames
	.global	masterHandFrames
	.comm	level,4,4
	.comm	shadowOAM,1024,4
	.comm	soundB,32,4
	.comm	soundA,32,4
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
	.type	masterHandFrames, %object
	.size	masterHandFrames, 12
masterHandFrames:
	.word	4
	.word	8
	.word	12
	.type	numMasterHandFrames, %object
	.size	numMasterHandFrames, 4
numMasterHandFrames:
	.word	3
	.type	rayquazaFrames, %object
	.size	rayquazaFrames, 12
rayquazaFrames:
	.word	18
	.word	23
	.word	28
	.type	numRayquazaFrames, %object
	.size	numRayquazaFrames, 4
numRayquazaFrames:
	.word	3
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	fireCounter.4324, %object
	.size	fireCounter.4324, 4
fireCounter.4324:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
