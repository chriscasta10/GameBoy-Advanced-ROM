#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "startScreen.h"
#include "map1.h"
#include "chronoSpritesheet.h"
#include "game.h"
#include "pausedScreen.h"
#include "winScreen.h"
#include "loseScreen.h"
#include "instructionsScreen.h"
#include "level1.h"
#include "enemySprite.h"
#include "collisionmap.h"
#include "level2.h"
#include "collisionMap2.h"

void initEnemiesLevel2() {
    //Enemy 1
    /*
    Ludwig.width = 16;
    Ludwig.height = 16;
    Ludwig.x = 370;
    Ludwig.y = 145;
    Ludwig.numFrames = 3;
    Ludwig.direction = LEFT;
    Ludwig.timeUntilNextFrame = 5;
    Ludwig.xVel = 2;
    Ludwig.yVel = 2;
    Ludwig.oamIndex = 13;
    Ludwig.hide = 0;
    Ludwig.currentFrame = 2;
    Ludwig.frameCounter = 0;
    Ludwig.frameChangeRate = 5;
    Ludwig.xDel = 1;
    Ludwig.yDel = 1;
    Ludwig.isActive = 1;
    

    //Enemy 2
    Ludwig2.width = 16;
    Ludwig2.height = 16;
    Ludwig2.x = 200;
    Ludwig2.y = 130;
    Ludwig2.numFrames = 3;
    Ludwig2.direction = LEFT;
    Ludwig2.timeUntilNextFrame = 5;
    Ludwig2.xVel = 2;
    Ludwig2.yVel = 2;
    Ludwig2.oamIndex = 11;
    Ludwig2.hide = 0;
    Ludwig2.currentFrame = 0;
    Ludwig2.frameCounter = 0;
    Ludwig2.frameChangeRate = 5;
    Ludwig2.xDel = 1;
    Ludwig2.yDel = 1;
    Ludwig2.isActive = 1;
    */
}

// Define the frame indices for Ludwig's animation
int ludwigFrames[] = {0, 6, 13};  // Assuming these indices correspond to the frames at row 16
int numLudwigFrames = sizeof(ludwigFrames) / sizeof(ludwigFrames[0]);

void drawEnemiesLevel2() {
    //Enemy 1
    if (Ludwig.hide || Ludwig.isActive == 0) {
        shadowOAM[Ludwig.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[Ludwig.oamIndex].attr0 = ATTR0_SQUARE | ATTR0_Y(Ludwig.y-vOff) |  ATTR0_TALL;
        shadowOAM[Ludwig.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(Ludwig.x -hOff);
        shadowOAM[Ludwig.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(ludwigFrames[Ludwig.currentFrame], 16);
 
    }
    // Frame animation logic
    Ludwig.frameCounter++;
    if (Ludwig.frameCounter >= Ludwig.frameChangeRate) {
        Ludwig.frameCounter = 0;
        Ludwig.currentFrame = (Ludwig.currentFrame + 1) % numLudwigFrames;
    }
    if (!collision(Ludwig.x, Ludwig.y, Ludwig.width, Ludwig.height,hOff,vOff,SCREENWIDTH,SCREENHEIGHT)) {
        shadowOAM[Ludwig.oamIndex].attr0 |= ATTR0_HIDE;
    }

    if (player.x > Ludwig.x) {
        shadowOAM[Ludwig.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(Ludwig.x -hOff) | ATTR1_HFLIP;
    }

    //Enemy 2
    if (Ludwig2.hide || Ludwig2.isActive == 0) {
        shadowOAM[Ludwig2.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[Ludwig2.oamIndex].attr0 = ATTR0_REGULAR | ATTR0_Y(Ludwig2.y-vOff) |  ATTR0_TALL;
        shadowOAM[Ludwig2.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(Ludwig2.x -hOff);
        shadowOAM[Ludwig2.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(ludwigFrames[Ludwig2.currentFrame], 16);
 
    }
    // Frame animation logic
    Ludwig2.frameCounter++;
    if (Ludwig2.frameCounter >= Ludwig2.frameChangeRate) {
        Ludwig2.frameCounter = 0;
        Ludwig2.currentFrame = (Ludwig2.currentFrame + 1) % numLudwigFrames;
    }
    if (!collision(Ludwig2.x, Ludwig2.y, Ludwig2.width, Ludwig2.height,hOff,vOff,SCREENWIDTH,SCREENHEIGHT)) {
        shadowOAM[Ludwig2.oamIndex].attr0 |= ATTR0_HIDE;
    }

    if (player.x > Ludwig2.x) {
        shadowOAM[Ludwig2.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(Ludwig2.x -hOff) | ATTR1_HFLIP;
    }

    //Enemy 3
    if (Ludwig3.hide || Ludwig3.isActive == 0) {
        shadowOAM[Ludwig3.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[Ludwig3.oamIndex].attr0 = ATTR0_REGULAR | ATTR0_Y(Ludwig3.y-vOff) |  ATTR0_TALL;
        shadowOAM[Ludwig3.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(Ludwig3.x -hOff);
        shadowOAM[Ludwig3.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(ludwigFrames[Ludwig3.currentFrame], 16);
 
    }
    // Frame animation logic
    Ludwig3.frameCounter++;
    if (Ludwig3.frameCounter >= Ludwig3.frameChangeRate) {
        Ludwig3.frameCounter = 0;
        Ludwig3.currentFrame = (Ludwig3.currentFrame + 1) % numLudwigFrames;
    }
    if (!collision(Ludwig3.x, Ludwig3.y, Ludwig3.width, Ludwig3.height,hOff,vOff,SCREENWIDTH,SCREENHEIGHT)) {
        shadowOAM[Ludwig3.oamIndex].attr0 |= ATTR0_HIDE;
    }

    if (player.x > Ludwig3.x) {
        shadowOAM[Ludwig3.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(Ludwig3.x -hOff) | ATTR1_HFLIP;
    }

    //Enemy 4
    if (Ludwig4.hide || Ludwig4.isActive == 0) {
        shadowOAM[Ludwig4.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[Ludwig4.oamIndex].attr0 = ATTR0_REGULAR | ATTR0_Y(Ludwig4.y-vOff) |  ATTR0_TALL;
        shadowOAM[Ludwig4.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(Ludwig4.x -hOff);
        shadowOAM[Ludwig4.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(ludwigFrames[Ludwig4.currentFrame], 16);
 
    }
    // Frame animation logic
    Ludwig4.frameCounter++;
    if (Ludwig4.frameCounter >= Ludwig4.frameChangeRate) {
        Ludwig4.frameCounter = 0;
        Ludwig4.currentFrame = (Ludwig4.currentFrame + 1) % numLudwigFrames;
    }
    if (!collision(Ludwig4.x, Ludwig4.y, Ludwig4.width, Ludwig4.height,hOff,vOff,SCREENWIDTH,SCREENHEIGHT)) {
        shadowOAM[Ludwig4.oamIndex].attr0 |= ATTR0_HIDE;
    }

    if (player.x > Ludwig4.x) {
        shadowOAM[Ludwig4.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(Ludwig4.x -hOff) | ATTR1_HFLIP;
    }
    

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;


    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}
