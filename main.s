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
	.global	interruptHandler
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L17
	ldrh	r1, [r3, #2]
	tst	r1, #1
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L3
	ldr	r3, .L17+4
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L5
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L5
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L15
	ldr	r1, .L17+8
	ldr	r0, .L17+12
	ldr	r1, [r1]
	strh	r2, [r0, #2]	@ movhi
	str	r2, [r3, #12]
	str	r2, [r1, #20]
.L5:
	ldr	r3, .L17+16
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L3
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L3
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L16
	ldr	r1, .L17+8
	ldr	r0, .L17+12
	ldr	r1, [r1]
	strh	r2, [r0, #6]	@ movhi
	str	r2, [r3, #12]
	str	r2, [r1, #32]
.L3:
	mov	r1, #1
	ldr	r3, .L17
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L15:
	ldm	r3, {r0, r1}
	ldr	r3, .L17+20
	mov	lr, pc
	bx	r3
	b	.L5
.L16:
	ldm	r3, {r0, r1}
	ldr	r3, .L17+24
	mov	lr, pc
	bx	r3
	b	.L3
.L18:
	.align	2
.L17:
	.word	67109376
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.word	playSoundA
	.word	playSoundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause3.part.0, %function
pause3.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L25
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	ldr	r3, .L25+4
	mov	lr, pc
	bx	r3
	mov	r2, #10
	ldr	r3, .L25+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
	.word	buttons
	.word	initBossFight
	.word	state
	.size	pause3.part.0, .-pause3.part.0
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #1
	mov	lr, #8
	mov	ip, #67108864
	ldr	r3, .L29
	ldr	r1, .L29+4
	ldr	r0, .L29+8
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	strh	lr, [ip, #4]	@ movhi
	str	r0, [r1, #4092]
	ldr	lr, [sp], #4
	bx	lr
.L30:
	.align	2
.L29:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
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
	ldr	r3, .L33
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r3, #1792
	mov	r2, #7936
	ldr	r4, .L33+4
	strh	r3, [r5]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L33+8
	mov	r2, #100663296
	add	r3, r3, #2912
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L33+12
	ldr	r1, .L33+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L33+20
	mov	lr, pc
	bx	r4
	ldr	r2, .L33+24
	mov	r3, #2592
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L33+28
	ldr	r1, .L33+32
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L33+36
	ldr	r1, .L33+40
	mov	lr, pc
	bx	r4
	ldr	r2, .L33+44
	mov	r3, #2256
	strh	r2, [r5, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L33+48
	ldr	r1, .L33+52
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L33+56
	ldr	r1, .L33+60
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L33+64
	ldr	r4, .L33+68
	ldr	lr, .L33+72
	str	r3, [r2]
	ldr	ip, .L33+76
	ldr	r0, .L33+80
	ldr	r1, .L33+84
	ldr	r2, .L33+88
	str	r3, [r4]
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	waitForVBlank
	.word	DMANow
	.word	TESTstartScreenTiles
	.word	100726784
	.word	TESTstartScreenMap
	.word	TESTstartScreenPal
	.word	7684
	.word	100679680
	.word	movingCloudsTiles
	.word	100724736
	.word	movingCloudsMap
	.word	7176
	.word	100696064
	.word	secondMovingCloudsTiles
	.word	100720640
	.word	secondMovingCloudsMap
	.word	hOff
	.word	vOff
	.word	startHOFF
	.word	startVOFF
	.word	startHOFF2
	.word	startVOFF2
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #768
	mov	r6, #67108864
	mov	r5, #0
	strh	r3, [r6]	@ movhi
	ldr	r3, .L37
	mov	lr, pc
	bx	r3
	ldr	r2, .L37+4
	ldr	r3, .L37+8
	strh	r5, [r2]	@ movhi
	ldr	r2, .L37+12
	ldrh	r1, [r3, #48]
	ldr	r3, .L37+16
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+20
	mov	lr, pc
	bx	r3
	mov	r3, #8
	mov	r1, #16
	mov	r4, #1
	mov	r8, #17
	mov	lr, #70
	mov	r2, #2
	mov	ip, #3
	mov	r0, #5
	mov	r7, #80
	strh	r3, [r6, #4]	@ movhi
	ldr	r3, .L37+24
	str	r1, [r3, #16]
	ldr	r1, .L37+28
	strb	r5, [r3, #48]
	strh	r4, [r1]	@ movhi
	strh	r4, [r1, #8]	@ movhi
	ldr	r5, .L37+32
	ldr	r1, .L37+36
	str	r8, [r3, #20]
	str	r5, [r1, #4092]
	stm	r3, {r7, lr}
	str	r4, [r3, #28]
	str	ip, [r3, #40]
	str	r0, [r3, #24]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	bl	goToStart
	ldr	r3, .L37+40
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L37+44
	ldr	r3, .L37+48
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	mgba_open
	.word	oldButtons
	.word	67109120
	.word	buttons
	.word	hideSprites
	.word	setupSounds
	.word	player
	.word	67109376
	.word	interruptHandler
	.word	50360320
	.word	LegendOfZelda_length
	.word	LegendOfZelda_data
	.word	playSoundA
	.size	initialize, .-initialize
	.align	2
	.global	updateClouds
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateClouds, %function
updateClouds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L40
	ldr	r1, .L40+4
	ldr	r2, [r0]
	ldr	r3, [r1]
	sub	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r0]
	str	r3, [r1]
	bx	lr
.L41:
	.align	2
.L40:
	.word	startHOFF
	.word	startVOFF2
	.size	updateClouds, .-updateClouds
	.align	2
	.global	drawClouds
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawClouds, %function
drawClouds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L44
	push	{r4, lr}
	ldrh	r1, [r2]
	ldr	r2, .L44+4
	strh	r1, [r3, #20]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L44+8
	strh	r1, [r3, #26]	@ movhi
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	startHOFF
	.word	startVOFF2
	.word	waitForVBlank
	.size	drawClouds, .-drawClouds
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
	push	{r4, r5, r6, lr}
	ldr	r6, .L48
	mov	lr, pc
	bx	r6
	ldr	r3, .L48+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L48+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L48+12
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L48+16
	ldr	r1, .L48+20
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L48+24
	ldr	r1, .L48+28
	mov	lr, pc
	bx	r5
	mov	r4, #67108864
	mov	r3, #768
	mov	r2, #7936
	ldr	r1, .L48+32
	strh	r3, [r4]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #8]	@ movhi
	mov	r3, #2592
	strh	r1, [r4, #10]	@ movhi
	ldr	r2, .L48+36
	ldr	r1, .L48+40
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L48+44
	ldr	r1, .L48+48
	mov	lr, pc
	bx	r5
	ldr	lr, .L48+52
	ldr	ip, .L48+56
	ldr	r2, [lr]
	ldr	r3, [ip]
	sub	r2, r2, #1
	add	r3, r3, #1
	lsl	r0, r2, #16
	lsl	r1, r3, #16
	lsr	r1, r1, #16
	lsr	r0, r0, #16
	str	r2, [lr]
	str	r3, [ip]
	strh	r0, [r4, #20]	@ movhi
	strh	r1, [r4, #26]	@ movhi
	mov	lr, pc
	bx	r6
	mov	r3, #0
	mov	r1, #5
	ldr	r2, .L48+60
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	pausedScreenPal
	.word	6960
	.word	pausedScreenTiles
	.word	100726784
	.word	pausedScreenMap
	.word	7684
	.word	100679680
	.word	movingCloudsTiles
	.word	100724736
	.word	movingCloudsMap
	.word	startHOFF
	.word	startVOFF2
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToPause2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause2, %function
goToPause2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L52+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L52+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L52+16
	ldr	r1, .L52+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L52+24
	ldr	r1, .L52+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #768
	mov	lr, #7936
	mov	r2, #0
	mov	r0, #6
	strh	r1, [r3]	@ movhi
	ldr	ip, .L52+32
	ldr	r1, .L52+36
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L53:
	.align	2
.L52:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	pausedScreenPal
	.word	6960
	.word	pausedScreenTiles
	.word	100726784
	.word	pausedScreenMap
	.word	7684
	.word	state
	.size	goToPause2, .-goToPause2
	.align	2
	.global	goToPause3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause3, %function
goToPause3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L56
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L56+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L56+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L56+16
	ldr	r1, .L56+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L56+24
	ldr	r1, .L56+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #768
	mov	lr, #7936
	mov	r2, #0
	mov	r0, #7
	strh	r1, [r3]	@ movhi
	ldr	ip, .L56+32
	ldr	r1, .L56+36
	strh	lr, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L57:
	.align	2
.L56:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	pausedScreenPal
	.word	6960
	.word	pausedScreenTiles
	.word	100726784
	.word	pausedScreenMap
	.word	7684
	.word	state
	.size	goToPause3, .-goToPause3
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L60
	mov	lr, pc
	bx	r3
	ldr	r4, .L60+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L60+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L60+12
	ldr	r1, .L60+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L60+20
	ldr	r1, .L60+24
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	lr, #256
	mov	r2, #0
	mov	ip, #7936
	mov	r0, #9
	ldr	r1, .L60+28
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L61:
	.align	2
.L60:
	.word	waitForVBlank
	.word	DMANow
	.word	winScreenPal
	.word	6608
	.word	winScreenTiles
	.word	100726784
	.word	winScreenMap
	.word	state
	.size	goToWin, .-goToWin
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
	push	{r4, lr}
	ldr	r3, .L64
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L64+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L64+16
	ldr	r1, .L64+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L64+24
	ldr	r1, .L64+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	lr, #256
	mov	r2, #0
	mov	ip, #7936
	mov	r0, #8
	ldr	r1, .L64+32
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L65:
	.align	2
.L64:
	.word	stopSounds
	.word	waitForVBlank
	.word	DMANow
	.word	loseScreenPal
	.word	8288
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	ldr	r4, .L68+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L68+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L68+12
	ldr	r1, .L68+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L68+20
	ldr	r1, .L68+24
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	lr, #256
	mov	r2, #0
	mov	ip, #7936
	mov	r0, #1
	ldr	r1, .L68+28
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L69:
	.align	2
.L68:
	.word	waitForVBlank
	.word	DMANow
	.word	instructionsScreenPal
	.word	6112
	.word	instructionsScreenTiles
	.word	100726784
	.word	instructionsScreenMap
	.word	state
	.size	goToInstructions, .-goToInstructions
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
	ldr	r3, .L72
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L72+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L73:
	.align	2
.L72:
	.word	stopSounds
	.word	initGame
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, #3
	ldr	r1, .L76+4
	ldr	r3, .L76+8
	str	r0, [r1, #64]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	initGame2
	.word	rayquaza
	.word	state
	.size	goToGame2, .-goToGame2
	.align	2
	.global	goToBossFight
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBossFight, %function
goToBossFight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L80
	mov	lr, pc
	bx	r3
	mov	r2, #10
	ldr	r3, .L80+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L81:
	.align	2
.L80:
	.word	initBossFight
	.word	state
	.size	goToBossFight, .-goToBossFight
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L98
	mov	lr, pc
	bx	r4
	mov	r0, #67108864
	ldr	r1, .L98+4
	ldr	ip, .L98+8
	ldr	r3, [r1]
	ldr	r2, [ip]
	sub	r3, r3, #1
	add	r2, r2, #1
	str	r3, [r1]
	lsl	r1, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsr	r1, r1, #16
	ldr	r5, .L98+12
	str	r2, [ip]
	strh	r3, [r0, #20]	@ movhi
	strh	r1, [r0, #26]	@ movhi
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L83
	ldr	r2, .L98+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L96
.L83:
	tst	r3, #4
	beq	.L84
	ldr	r2, .L98+16
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L97
.L84:
	tst	r3, #2
	beq	.L82
	ldr	r3, .L98+16
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L82
	ldr	r3, .L98+20
	ldr	r2, .L98+24
	ldr	r1, .L98+28
	strh	r3, [r2, #242]	@ movhi
	strh	r3, [r2, #200]	@ movhi
	ldr	r4, .L98+32
	strh	r3, [r1]	@ movhi
	ldr	lr, .L98+36
	add	r1, r1, #1024
	ldr	ip, .L98+40
	ldr	r0, .L98+44
	add	r1, r1, #8
	add	r2, r2, #544
	strh	r3, [r4]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r3, [r1, #14]	@ movhi
	strh	r3, [r2]	@ movhi
.L82:
	pop	{r4, r5, r6, lr}
	bx	lr
.L97:
	bl	goToInstructions
	ldrh	r3, [r5]
	b	.L84
.L96:
	ldr	r3, .L98+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+52
	mov	lr, pc
	bx	r3
	mov	r1, #2
	ldr	r2, .L98+56
	ldr	r3, .L98+60
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L83
.L99:
	.align	2
.L98:
	.word	waitForVBlank
	.word	startHOFF
	.word	startVOFF2
	.word	oldButtons
	.word	buttons
	.word	4320
	.word	100726784
	.word	100727128
	.word	100727148
	.word	100727080
	.word	100727136
	.word	100727808
	.word	stopSounds
	.word	initGame
	.word	state
	.word	initPlayer
	.size	start, .-start
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L107
	mov	lr, pc
	bx	r4
	mov	r0, #67108864
	ldr	r1, .L107+4
	ldr	ip, .L107+8
	ldr	r3, [r1]
	ldr	r2, [ip]
	sub	r3, r3, #1
	add	r2, r2, #1
	str	r3, [r1]
	lsl	r1, r2, #16
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsr	r1, r1, #16
	str	r2, [ip]
	strh	r3, [r0, #20]	@ movhi
	strh	r1, [r0, #26]	@ movhi
	mov	lr, pc
	bx	r4
	ldr	r3, .L107+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L100
	ldr	r3, .L107+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L106
.L100:
	pop	{r4, lr}
	bx	lr
.L106:
	ldr	r3, .L107+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+24
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L107+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L108:
	.align	2
.L107:
	.word	waitForVBlank
	.word	startHOFF
	.word	startVOFF2
	.word	oldButtons
	.word	buttons
	.word	stopSounds
	.word	initGame
	.word	state
	.size	pause, .-pause
	.align	2
	.global	pause2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause2, %function
pause2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L116
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L116+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L109
	ldr	r3, .L116+8
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L115
.L109:
	pop	{r4, lr}
	bx	lr
.L115:
	ldr	r3, .L116+12
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r2, .L116+16
	ldr	r3, .L116+20
	str	r1, [r2]
	str	r4, [r3, #64]
	pop	{r4, lr}
	bx	lr
.L117:
	.align	2
.L116:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initGame2
	.word	state
	.word	rayquaza
	.size	pause2, .-pause2
	.align	2
	.global	pause3
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause3, %function
pause3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L120
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	pause3.part.0
.L121:
	.align	2
.L120:
	.word	oldButtons
	.size	pause3, .-pause3
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L129
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L129+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L122
	ldr	r3, .L129+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L128
.L122:
	pop	{r4, lr}
	bx	lr
.L128:
	bl	goToStart
	ldr	r3, .L129+12
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L129+16
	ldr	r3, .L129+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L130:
	.align	2
.L129:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	LegendOfZelda_length
	.word	LegendOfZelda_data
	.word	playSoundA
	.size	win, .-win
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L138
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L138+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L131
	ldr	r3, .L138+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L137
.L131:
	pop	{r4, lr}
	bx	lr
.L137:
	pop	{r4, lr}
	b	goToStart
.L139:
	.align	2
.L138:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L152
	ldr	r3, .L152+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L141
	ldr	r2, .L152+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L150
.L141:
	tst	r3, #4
	beq	.L140
	ldr	r3, .L152+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L151
.L140:
	pop	{r4, lr}
	bx	lr
.L151:
	pop	{r4, lr}
	b	goToStart
.L150:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L141
.L153:
	.align	2
.L152:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L172
	mov	lr, pc
	bx	r3
	ldr	r3, .L172+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L172+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L172+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L172+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L172+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L172+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L172+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L172+32
	ldr	r3, .L172+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L172+40
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L155
	ldr	r2, .L172+44
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L171
.L155:
	tst	r3, #512
	beq	.L156
	tst	r3, #256
	beq	.L156
	ldr	r2, .L172+44
	ldrh	r2, [r2]
	tst	r2, #768
	bne	.L156
	mov	r1, #31
	mov	r2, #1
	ldr	r3, .L172+48
	ldr	lr, .L172+52
	strh	r1, [r3, #6]	@ movhi
	ldr	ip, .L172+56
	ldr	r0, .L172+60
	ldr	r1, .L172+64
	ldrh	r3, [r4]
	str	r2, [lr, #12]
	str	r2, [lr, #8]
	str	r2, [ip, #12]
	str	r2, [ip, #8]
	str	r2, [r0, #12]
	str	r2, [r0, #8]
	str	r2, [r1, #12]
	str	r2, [r1, #8]
.L156:
	tst	r3, #4
	beq	.L154
	ldr	r3, .L172+44
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L154
	mov	lr, #3
	mov	r3, #7
	ldr	ip, .L172+52
	ldr	r0, .L172+56
	ldr	r1, .L172+60
	ldr	r2, .L172+64
	str	lr, [ip, #12]
	str	lr, [ip, #8]
	ldr	r4, .L172+48
	ldr	ip, .L172+68
	str	r3, [r0, #12]
	str	r3, [r0, #8]
	str	r3, [r1, #12]
	str	r3, [r1, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #8]
	strh	ip, [r4, #6]	@ movhi
.L154:
	pop	{r4, lr}
	bx	lr
.L171:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L155
.L173:
	.align	2
.L172:
	.word	updatePlayer
	.word	updateEnemy
	.word	updateFireBall
	.word	drawPlayer
	.word	drawEnemy
	.word	drawFireBall
	.word	checkCollision
	.word	checkWinCollision
	.word	oldButtons
	.word	checkFireBallKillCollision
	.word	waitForVBlank
	.word	buttons
	.word	83886592
	.word	enemy
	.word	enemy2
	.word	enemy3
	.word	enemy4
	.word	7299
	.size	game, .-game
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L192
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L192+32
	ldr	r3, .L192+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L192+40
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L175
	ldr	r2, .L192+44
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L191
.L175:
	tst	r3, #512
	beq	.L176
	tst	r3, #256
	beq	.L176
	ldr	r2, .L192+44
	ldrh	r2, [r2]
	tst	r2, #768
	bne	.L176
	mov	r1, #31
	mov	r2, #1
	ldr	r3, .L192+48
	ldr	ip, .L192+52
	strh	r1, [r3, #6]	@ movhi
	ldr	r0, .L192+56
	ldr	r1, .L192+60
	ldrh	r3, [r4]
	str	r2, [ip, #8]
	str	r2, [ip, #12]
	str	r2, [r0, #8]
	str	r2, [r0, #12]
	str	r2, [r1, #8]
	str	r2, [r1, #12]
.L176:
	tst	r3, #4
	beq	.L174
	ldr	r3, .L192+44
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L174
	mov	r3, #5
	mov	r1, #2
	ldr	ip, .L192+52
	ldr	r0, .L192+56
	ldr	r2, .L192+60
	ldr	lr, .L192+48
	ldr	r4, .L192+64
	str	r3, [ip, #8]
	str	r3, [ip, #12]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r1, [r2, #8]
	str	r1, [r2, #12]
	strh	r4, [lr, #6]	@ movhi
.L174:
	pop	{r4, lr}
	bx	lr
.L191:
	bl	goToPause2
	ldrh	r3, [r4]
	b	.L175
.L193:
	.align	2
.L192:
	.word	updatePlayer2
	.word	updateEnemy2
	.word	updateFireBall2
	.word	drawPlayer
	.word	drawEnemiesLevel2
	.word	drawFireBall
	.word	checkCollision
	.word	checkWinCollision
	.word	oldButtons
	.word	checkFireBallKillCollision
	.word	waitForVBlank
	.word	buttons
	.word	83886592
	.word	Ludwig
	.word	Ludwig2
	.word	Ludwig3
	.word	7299
	.size	game2, .-game2
	.align	2
	.global	boss
	.syntax unified
	.arm
	.fpu softvfp
	.type	boss, %function
boss:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L212
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L212+36
	ldr	r3, .L212+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L212+44
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L195
	ldr	r2, .L212+48
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L211
.L195:
	tst	r3, #512
	beq	.L196
	tst	r3, #256
	beq	.L196
	ldr	r2, .L212+48
	ldrh	r2, [r2]
	tst	r2, #768
	bne	.L196
	mov	r0, #31
	mov	r1, #1
	ldr	r3, .L212+52
	ldr	r2, .L212+56
	strh	r0, [r3, #6]	@ movhi
	str	r1, [r2, #8]
	ldrh	r3, [r4]
	str	r1, [r2, #12]
.L196:
	tst	r3, #4
	beq	.L194
	ldr	r3, .L212+48
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L194
	mov	r2, #3
	ldr	r3, .L212+56
	ldr	r1, .L212+52
	ldr	r0, .L212+60
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	strh	r0, [r1, #6]	@ movhi
.L194:
	pop	{r4, lr}
	bx	lr
.L211:
	bl	goToPause3
	ldrh	r3, [r4]
	b	.L195
.L213:
	.align	2
.L212:
	.word	updatePlayer3
	.word	updateRayquaza
	.word	drawPlayer
	.word	drawFireBall
	.word	drawBoss
	.word	drawBossBlast
	.word	updateFireBall2
	.word	checkCollision
	.word	checkWinCollision
	.word	oldButtons
	.word	checkFireBallKillCollision
	.word	waitForVBlank
	.word	buttons
	.word	83886592
	.word	rayquaza
	.word	7299
	.size	boss, .-boss
	.align	2
	.global	startScreenParallax
	.syntax unified
	.arm
	.fpu softvfp
	.type	startScreenParallax, %function
startScreenParallax:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L215
	str	r2, [r3]
	bx	lr
.L216:
	.align	2
.L215:
	.word	state
	.size	startScreenParallax, .-startScreenParallax
	.align	2
	.global	goToBossLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBossLose, %function
goToBossLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #11
	ldr	r2, .L219
	push	{r4, lr}
	ldr	r3, .L219+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L219+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L219+12
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L219+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L219+20
	ldr	r1, .L219+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L219+28
	ldr	r1, .L219+32
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #256
	mov	r1, #7936
	strh	r0, [r3]	@ movhi
	pop	{r4, lr}
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L220:
	.align	2
.L219:
	.word	state
	.word	stopSounds
	.word	waitForVBlank
	.word	DMANow
	.word	loseScreenPal
	.word	8288
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.size	goToBossLose, .-goToBossLose
	.align	2
	.global	bossLoseRestart
	.syntax unified
	.arm
	.fpu softvfp
	.type	bossLoseRestart, %function
bossLoseRestart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L231
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L231+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L230
	pop	{r4, lr}
	bx	lr
.L230:
	ldr	r3, .L231+8
	mov	lr, pc
	bx	r3
	mov	ip, #3
	mov	r3, #120
	mov	r0, #215
	mov	r1, #30
	ldr	r2, .L231+12
	str	ip, [r2]
	ldr	r2, .L231+16
	ldr	ip, .L231+20
	str	r3, [r2]
	ldr	r3, .L231+24
	str	r4, [r2, #28]
	str	r4, [r3, #64]
	str	ip, [r2, #4]
	str	r0, [r3]
	str	r1, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L232:
	.align	2
.L231:
	.word	oldButtons
	.word	buttons
	.word	initGame2
	.word	state
	.word	player
	.word	330
	.word	rayquaza
	.size	bossLoseRestart, .-bossLoseRestart
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L254
	mov	lr, pc
	bx	r3
	ldr	r3, .L254+4
	mov	lr, pc
	bx	r3
	ldr	r9, .L254+8
	ldr	r5, .L254+12
	ldr	r4, .L254+16
	ldr	r8, .L254+20
	ldr	r7, .L254+24
	ldr	fp, .L254+28
	ldr	r10, .L254+32
	ldr	r6, .L254+36
.L235:
	mov	lr, pc
	bx	r9
	ldrh	r3, [r4]
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r6, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r8
	ldr	r3, [r7]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L235
.L237:
	.word	.L247
	.word	.L246
	.word	.L245
	.word	.L244
	.word	.L235
	.word	.L243
	.word	.L242
	.word	.L241
	.word	.L240
	.word	.L239
	.word	.L238
	.word	.L236
.L236:
	mov	lr, pc
	bx	r10
	b	.L235
.L238:
	ldr	r3, .L254+40
	mov	lr, pc
	bx	r3
	b	.L235
.L239:
	ldr	r3, .L254+44
	mov	lr, pc
	bx	r3
	b	.L235
.L240:
	ldr	r3, .L254+48
	mov	lr, pc
	bx	r3
	b	.L235
.L241:
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L235
	ldr	r3, .L254+52
	mov	lr, pc
	bx	r3
	b	.L235
.L242:
	ldr	r3, .L254+56
	mov	lr, pc
	bx	r3
	b	.L235
.L243:
	ldr	r3, .L254+60
	mov	lr, pc
	bx	r3
	b	.L235
.L244:
	ldr	r3, .L254+64
	mov	lr, pc
	bx	r3
	b	.L235
.L245:
	ldr	r3, .L254+68
	mov	lr, pc
	bx	r3
	b	.L235
.L246:
	ldr	r3, .L254+72
	mov	lr, pc
	bx	r3
	b	.L235
.L247:
	mov	lr, pc
	bx	fp
	b	.L235
.L255:
	.align	2
.L254:
	.word	initialize
	.word	setupSounds
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	updatePlayer
	.word	state
	.word	start
	.word	bossLoseRestart
	.word	67109120
	.word	boss
	.word	win
	.word	lose
	.word	pause3.part.0
	.word	pause2
	.word	pause
	.word	game2
	.word	game
	.word	instructions
	.size	main, .-main
	.global	bg0HOFF
	.global	bg1HOFF
	.comm	startVOFF2,4,4
	.comm	startHOFF2,4,4
	.comm	startVOFF,4,4
	.comm	startHOFF,4,4
	.comm	livesRemaining,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
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
	.bss
	.align	2
	.type	bg0HOFF, %object
	.size	bg0HOFF, 4
bg0HOFF:
	.space	4
	.type	bg1HOFF, %object
	.size	bg1HOFF, 4
bg1HOFF:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
