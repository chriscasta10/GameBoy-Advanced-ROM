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
#include "fireballSound.h"
#include "digitalSound.h"
#include "pokemonDPLake.h"
#include "bossFight.h"
#include "collisionMap3.h"
#include "bossMusic.h"


// shadowOAM
OBJ_ATTR shadowOAM[128];
enum {LEVEL1, LEVEL2, BOSS};
int level;

inline unsigned char colorAt(int x, int y){
    switch (level) {
    case LEVEL1:
        return ((unsigned char *)collisionMapBitmap)[OFFSET(x, y, MAPWIDTH)];
        break;
    case LEVEL2:
        return ((unsigned char *)collisionMap2Bitmap)[OFFSET(x, y, MAPWIDTH)];
        break;
    case BOSS:
        return ((unsigned char *)collisionMap3Bitmap)[OFFSET(x, y, MAPWIDTH)];
        break;
    }
}

void initGame() {
    level = LEVEL1;
    playSoundA(pokemonDPLake_data, pokemonDPLake_length, 1);
    REG_BG0CNT = BG_4BPP | BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(24);
    REG_DISPCTL |= BG0_ENABLE | SPRITE_ENABLE;
    
    
    DMANow(3, level1Tiles, &CHARBLOCK[0], level1TilesLen / 2);
    DMANow(3, level1Map, &SCREENBLOCK[24], level1MapLen / 2);
    DMANow(3, level1Pal, BG_PALETTE, level1PalLen / 2);
    
    
    DMANow(3, chronoSpritesheetTiles, &CHARBLOCK[4], chronoSpritesheetTilesLen / 2);
    DMANow(3, chronoSpritesheetPal, SPRITE_PALETTE, 256);

    waitForVBlank();
    hideSprites();
    
}

void initGame2() {
    REG_BG0CNT = BG_4BPP | BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(24);
    REG_DISPCTL |= BG0_ENABLE | SPRITE_ENABLE;
    
    
    DMANow(3, level2Tiles, &CHARBLOCK[0], level2TilesLen / 2);
    DMANow(3, level2Map, &SCREENBLOCK[24], level2MapLen / 2);
    DMANow(3, level2Pal, BG_PALETTE, level2PalLen / 2);
    
    
    DMANow(3, chronoSpritesheetTiles, &CHARBLOCK[4], chronoSpritesheetTilesLen / 2);
    DMANow(3, chronoSpritesheetPal, SPRITE_PALETTE, 256);

    waitForVBlank();
    hideSprites();
}

void initPlayer() {
    mgba_open();
    
    DMANow(3, shadowOAM, OAM, 512);

    player.width = 16;
    player.height = 16;
    player.x = 30;
    player.y = 330;
    player.numFrames = 3;
    player.direction = RIGHT;
    player.timeUntilNextFrame = 5;
    player.xVel = 2;
    player.yVel = 2;
    player.oamIndex = 0;
    player.hide = 0;
    player.currentFrame = 2;
    player.xDel = 1;
    player.yDel = 1;
    player.isFighting = 0;

    enemy.width = 16;
    enemy.height = 16;
    enemy.x = 135;
    enemy.y = 270;
    enemy.numFrames = 3;
    enemy.direction = LEFT;
    enemy.timeUntilNextFrame = 5;
    enemy.xVel = 3;
    enemy.yVel = 3;
    enemy.oamIndex = 2;
    enemy.hide = 0;
    enemy.currentFrame = 2;
    enemy.xDel = 1;
    enemy.yDel = 1;
    enemy.isActive = 1;
    enemy.frameChangeRate = 3;
    enemy.frameCounter = 0;

    enemy2.width = 16;
    enemy2.height = 16;
    enemy2.x = 170;
    enemy2.y = 200;
    enemy2.numFrames = 3;
    enemy2.direction = LEFT;
    enemy2.timeUntilNextFrame = 5;
    enemy2.xVel = 7;
    enemy2.yVel = 7;
    enemy2.oamIndex = 6;
    enemy2.hide = 0;
    enemy2.currentFrame = 2;
    enemy2.xDel = 1;
    enemy2.yDel = 1;
    enemy2.isActive = 1;
    enemy2.frameChangeRate = 5;
    enemy2.frameCounter = 0;

    enemy3.width = 16;
    enemy3.height = 16;
    enemy3.x = 380;
    enemy3.y = 120;
    enemy3.numFrames = 3;
    enemy3.direction = LEFT;
    enemy3.timeUntilNextFrame = 5;
    enemy3.xVel = 7;
    enemy3.yVel = 7;
    enemy3.oamIndex = 7;
    enemy3.hide = 0;
    enemy3.currentFrame = 2;
    enemy3.xDel = 1;
    enemy3.yDel = 1;
    enemy3.isActive = 1;
    enemy3.frameChangeRate = 5;
    enemy3.frameCounter = 0;

    enemy4.width = 16;
    enemy4.height = 16;
    enemy4.x = 280;
    enemy4.y = 380;
    enemy4.numFrames = 3;
    enemy4.direction = LEFT;
    enemy4.timeUntilNextFrame = 5;
    enemy4.xVel = 7;
    enemy4.yVel = 7;
    enemy4.oamIndex = 10;
    enemy4.hide = 0;
    enemy4.currentFrame = 2;
    enemy4.xDel = 1;
    enemy4.yDel = 1;
    enemy4.isActive = 1;
    enemy4.frameChangeRate = 5;
    enemy4.frameCounter = 0;

    //Ludwig 1 (moving vertically)
    Ludwig.width = 25;
    Ludwig.height = 33;
    Ludwig.x = 370;
    Ludwig.y = 145;
    Ludwig.numFrames = 3;
    Ludwig.direction = LEFT;
    Ludwig.timeUntilNextFrame = 5;
    Ludwig.xVel = 5;
    Ludwig.yVel = 5;
    Ludwig.oamIndex = 13;
    Ludwig.hide = 0;
    Ludwig.currentFrame = 2;
    Ludwig.frameCounter = 0;
    Ludwig.frameChangeRate = 5;
    Ludwig.xDel = 1;
    Ludwig.yDel = 1;
    Ludwig.isActive = 0;
    
    //Ludwig 2 (moving horizontally)
    Ludwig2.width = 25;
    Ludwig2.height = 25;
    Ludwig2.x = 200;
    Ludwig2.y = 135;
    Ludwig2.numFrames = 3;
    Ludwig2.direction = LEFT;
    Ludwig2.timeUntilNextFrame = 5;
    Ludwig2.xVel = 5;
    Ludwig2.yVel = 5;
    Ludwig2.oamIndex = 11;
    Ludwig2.hide = 0;
    Ludwig2.currentFrame = 0;
    Ludwig2.frameCounter = 0;
    Ludwig2.frameChangeRate = 5;
    Ludwig2.xDel = 1;
    Ludwig2.yDel = 1;
    Ludwig2.isActive = 0;

    //Ludwig 3 (moving towards player)
    Ludwig3.width = 25;
    Ludwig3.height = 25;
    Ludwig3.x = 150;
    Ludwig3.y = 300;
    Ludwig3.numFrames = 3;
    Ludwig3.direction = LEFT;
    Ludwig3.timeUntilNextFrame = 5;
    Ludwig3.xVel = 2;
    Ludwig3.yVel = 2;
    Ludwig3.oamIndex = 48;
    Ludwig3.hide = 0;
    Ludwig3.currentFrame = 0;
    Ludwig3.frameCounter = 0;
    Ludwig3.frameChangeRate = 5;
    Ludwig3.xDel = 1;
    Ludwig3.yDel = 1;
    Ludwig3.isActive = 0;

    //Ludwig 4 (moving towards player)
    Ludwig4.width = 25;
    Ludwig4.height = 25;
    Ludwig4.x = 450;
    Ludwig4.y = 450;
    Ludwig4.numFrames = 3;
    Ludwig4.direction = LEFT;
    Ludwig4.timeUntilNextFrame = 5;
    Ludwig4.xVel = 2;
    Ludwig4.yVel = 2;
    Ludwig4.oamIndex = 53;
    Ludwig4.hide = 0;
    Ludwig4.currentFrame = 0;
    Ludwig4.frameCounter = 0;
    Ludwig4.frameChangeRate = 5;
    Ludwig4.xDel = 1;
    Ludwig4.yDel = 1;
    Ludwig4.isActive = 0;

    //Teleport portal
    door.width = 16;
    door.height = 16;
    door.x = 367;
    door.y = 10;
    door.oamIndex = 3;
    door.hide = 0;
    door.isActive = 1;

    //Teleport portal level2
    door2.width = 16;
    door2.height = 16;
    //door2.x = 120;
    //door2.y = 400;
    door2.oamIndex = 20;
    door2.hide = 0;
    door2.isActive = 1;

    //Win portal at boss
    door3.width = 16;
    door3.height = 16;
    door3.x = 223;
    door3.y = 50;
    door3.oamIndex = 44;
    door3.hide = 0;
    door3.isActive = 0;

    rayquaza.x = 215;
    rayquaza.y = 150;
    rayquaza.height = 20;
    rayquaza.width = 20;
    rayquaza.numFrames = 3;
    rayquaza.direction = DOWN;
    rayquaza.timeUntilNextFrame = 5;
    rayquaza.xVel = 3;
    rayquaza.yVel = 3;
    rayquaza.oamIndex = 29;
    rayquaza.hide = 0;
    rayquaza.currentFrame = 0;
    rayquaza.frameCounter = 0;
    rayquaza.frameChangeRate = 5;
    rayquaza.xDel = 1;
    rayquaza.yDel = 1;
    rayquaza.isActive = 0;
    rayquaza.lives = 40;

    fireBall.width = 16;
    fireBall.height = 16;
    fireBall.x = player.x+10;
    fireBall.y = player.y;
    fireBall.oamIndex = 5;
    fireBall.hide = 0;
    fireBall.isActive = 0;
    fireBall.direction = player.direction;
    fireBall.xVel = 8;
    fireBall.yVel = 8;
    fireBall.currentFrame = 1;
    fireBall.timeUntilNextFrame = 5;

    bossBlast.width = 18;
    bossBlast.height = 20;
    bossBlast.x = rayquaza.x;
    bossBlast.y = rayquaza.y;
    bossBlast.oamIndex = 36;
    bossBlast.isActive = 0;
    bossBlast.direction = DOWN;
    bossBlast.xVel = 10;
    bossBlast.yVel = 10;
    bossBlast.currentFrame = 1;
    bossBlast.timeUntilNextFrame = 5;
    

    buttons = REG_BUTTONS;
    oldButtons = 0;
}

void drawPlayer() {
    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else if (player.isFighting){
        shadowOAM[player.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(player.y - vOff) | ATTR0_SQUARE;
        shadowOAM[player.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - hOff);
        shadowOAM[player.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(19, 28);
    } else {
        shadowOAM[player.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(player.y - vOff) | ATTR0_SQUARE;
        shadowOAM[player.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(player.x - hOff);
        shadowOAM[player.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(player.direction *4, player.currentFrame * 4);
    }

    if (door.hide || door.isActive == 0) {
        shadowOAM[door.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[door.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(door.y - vOff) |  ATTR0_SQUARE;
        shadowOAM[door.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(door.x - hOff);
        shadowOAM[door.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(16, 0);
    }

    if (level == LEVEL2) {
        if (door2.hide || door2.isActive == 0) {
        shadowOAM[door2.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[door2.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(door2.y - vOff) |  ATTR0_SQUARE;
        shadowOAM[door2.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(door2.x - hOff);
        shadowOAM[door2.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(16, 0);
    }
    }

    if (level == BOSS) {
        if (door3.hide || door3.isActive == 0) {
        shadowOAM[door3.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[door3.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(door3.y - vOff) |  ATTR0_SQUARE;
        shadowOAM[door3.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(door3.x - hOff);
        shadowOAM[door3.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(16, 0);
    }
    }

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

int masterHandFrames[] = {4, 8, 12};
int numMasterHandFrames = sizeof(masterHandFrames) / sizeof(masterHandFrames[0]);

int rayquazaFrames[] = {18, 23, 28};
int numRayquazaFrames = sizeof(rayquazaFrames) / sizeof(rayquazaFrames[0]);

void drawEnemy() {
    //Enemy 1
    if (enemy.hide || enemy.isActive == 0) {
        shadowOAM[enemy.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[enemy.oamIndex].attr0 = ATTR0_REGULAR | ATTR0_Y(enemy.y-vOff) |  ATTR0_SQUARE;
        shadowOAM[enemy.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(enemy.x -hOff);
        shadowOAM[enemy.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(16, masterHandFrames[enemy.currentFrame]);
 
    }
    if (!collision(enemy.x, enemy.y, enemy.width, enemy.height,hOff,vOff,SCREENWIDTH,SCREENHEIGHT)) {
        shadowOAM[enemy.oamIndex].attr0 |= ATTR0_HIDE;
    }

    if (player.x > enemy.x) {
        shadowOAM[enemy.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(enemy.x -hOff) | ATTR1_HFLIP;
    }
    enemy.frameCounter++;
    if (enemy.frameCounter >= enemy.frameChangeRate) {
        enemy.frameCounter = 0;
        enemy.currentFrame = (enemy.currentFrame + 1) % numMasterHandFrames;
    }

    //Enemy 2
    if (enemy2.hide || enemy2.isActive == 0) {
        shadowOAM[enemy2.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[enemy2.oamIndex].attr0 = ATTR0_REGULAR | ATTR0_Y(enemy2.y-vOff) |  ATTR0_SQUARE;
        shadowOAM[enemy2.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(enemy2.x -hOff);
        shadowOAM[enemy2.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(16, masterHandFrames[enemy2.currentFrame]);
 
    }
    if (!collision(enemy2.x, enemy2.y, enemy2.width, enemy2.height,hOff,vOff,SCREENWIDTH,SCREENHEIGHT)) {
        shadowOAM[enemy2.oamIndex].attr0 |= ATTR0_HIDE;
    }

    if (player.x > enemy2.x) {
        shadowOAM[enemy2.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(enemy2.x -hOff) | ATTR1_HFLIP;
    }
    enemy2.frameCounter++;
    if (enemy2.frameCounter >= enemy2.frameChangeRate) {
        enemy2.frameCounter = 0;
        enemy2.currentFrame = (enemy2.currentFrame + 1) % numMasterHandFrames;
    }
    
    //Enemy 3
    if (enemy3.hide || enemy3.isActive == 0) {
        shadowOAM[enemy3.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[enemy3.oamIndex].attr0 = ATTR0_REGULAR | ATTR0_Y(enemy3.y-vOff) |  ATTR0_SQUARE;
        shadowOAM[enemy3.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(enemy3.x -hOff);
        shadowOAM[enemy3.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(16, masterHandFrames[enemy3.currentFrame]);
 
    }
    if (!collision(enemy3.x, enemy3.y, enemy3.width, enemy3.height,hOff,vOff,SCREENWIDTH,SCREENHEIGHT)) {
        shadowOAM[enemy3.oamIndex].attr0 |= ATTR0_HIDE;
    }

    if (player.x > enemy3.x) {
        shadowOAM[enemy3.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(enemy3.x -hOff) | ATTR1_HFLIP;
    }
    enemy3.frameCounter++;
    if (enemy3.frameCounter >= enemy3.frameChangeRate) {
        enemy3.frameCounter = 0;
        enemy3.currentFrame = (enemy3.currentFrame + 1) % numMasterHandFrames;
    }

    //Enemy 4
    if (enemy4.hide || enemy4.isActive == 0) {
        shadowOAM[enemy4.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[enemy4.oamIndex].attr0 = ATTR0_REGULAR | ATTR0_Y(enemy4.y-vOff) |  ATTR0_SQUARE;
        shadowOAM[enemy4.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(enemy4.x -hOff);
        shadowOAM[enemy4.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(16, masterHandFrames[enemy4.currentFrame]);
 
    }
    if (!collision(enemy4.x, enemy4.y, enemy4.width, enemy4.height,hOff,vOff,SCREENWIDTH,SCREENHEIGHT)) {
        shadowOAM[enemy4.oamIndex].attr0 |= ATTR0_HIDE;
    }

    if (player.x > enemy4.x) {
        shadowOAM[enemy4.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(enemy4.x -hOff) | ATTR1_HFLIP;
    }
    enemy4.frameCounter++;
    if (enemy4.frameCounter >= enemy4.frameChangeRate) {
        enemy4.frameCounter = 0;
        enemy4.currentFrame = (enemy4.currentFrame + 1) % numMasterHandFrames;
    }

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;


    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

void drawBoss() {
    //Enemy 1
    if (rayquaza.hide || rayquaza.isActive == 0) {
        shadowOAM[rayquaza.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[rayquaza.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(rayquaza.y-vOff) |  ATTR0_SQUARE;
        shadowOAM[rayquaza.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(rayquaza.x -hOff);
        shadowOAM[rayquaza.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(rayquazaFrames[rayquaza.currentFrame], 21);
 
    }
    /*
    if (!collision(rayquaza.x, rayquaza.y, rayquaza.width, rayquaza.height,hOff,vOff,SCREENWIDTH,SCREENHEIGHT)) {
        shadowOAM[rayquaza.oamIndex].attr0 |= ATTR0_HIDE;
    }*/

    rayquaza.frameCounter++;
    if (rayquaza.frameCounter >= rayquaza.frameChangeRate) {
        rayquaza.frameCounter = 0;
        rayquaza.currentFrame = (rayquaza.currentFrame + 1) % numRayquazaFrames;
    }

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;


    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

void drawFireBall() {
    if (player.direction == DOWN || player.direction == UP) {
        fireBall.x = player.x-6;
    }
    if (player.direction == LEFT) {
        shadowOAM[fireBall.oamIndex].attr0 = ATTR0_REGULAR | ATTR0_Y(fireBall.y-vOff) |  ATTR0_SQUARE;
        shadowOAM[fireBall.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(fireBall.x -hOff);
        shadowOAM[fireBall.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(28, 13);
    }
    if (fireBall.hide || fireBall.isActive == 0) {
        shadowOAM[fireBall.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[fireBall.oamIndex].attr0 = ATTR0_REGULAR | ATTR0_Y(fireBall.y-vOff) |  ATTR0_SQUARE;
        shadowOAM[fireBall.oamIndex].attr1 = ATTR1_MEDIUM | ATTR1_X(fireBall.x -hOff) | ATTR1_HFLIP;
        shadowOAM[fireBall.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(28, 13);
    }
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

void drawBossBlast() {
    if (bossBlast.hide || bossBlast.isActive == 0 || rayquaza.hide || rayquaza.isActive == 0) {
        shadowOAM[bossBlast.oamIndex].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[bossBlast.oamIndex].attr0 = ATTR0_TALL | ATTR0_Y(bossBlast.y-vOff) |  ATTR0_SQUARE;
        shadowOAM[bossBlast.oamIndex].attr1 = ATTR1_LARGE | ATTR1_X(bossBlast.x -hOff) | ATTR1_HFLIP;
        shadowOAM[bossBlast.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_PRIORITY(0) | ATTR2_TILEID(27, 1);
    }
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}


void updatePlayer() {
    player.isAnimating = 0;
    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    // COLLISION
   if (BUTTON_HELD(BUTTON_UP)) {
        player.direction = UP;
        player.isAnimating = 1;
        if (player.y > 0 && colorAt(leftX, topY-player.yDel) && colorAt(rightX, topY-player.yDel)) player.y-=player.yVel;
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        player.direction = DOWN;
        player.isAnimating = 1;
        if (player.y + player.height < MAPHEIGHT && colorAt(leftX, bottomY+player.yDel) && colorAt(rightX, bottomY+player.yDel)) player.y+=player.yVel;
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.direction = LEFT;
        player.isAnimating = 1;
        if (player.x > 0 && colorAt(leftX-player.xDel, topY) && colorAt(leftX-player.xDel, bottomY)) player.x-=player.xVel;
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.direction = RIGHT;
        player.isAnimating = 1;
        if (player.x + player.width < MAPWIDTH && colorAt(rightX+player.xDel, topY) && colorAt(rightX+player.xDel, bottomY)) player.x+=player.xVel;
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        fireBall.direction = player.direction; // Update the fireball direction
        fireBall.x = player.x; // Default position
        if (player.direction == RIGHT) {
            fireBall.x += 10; // Adjust for right direction
        } else if (player.direction == LEFT) {
            fireBall.x -= (10 + fireBall.width); // Adjust for left direction
        }
        // Adjustments for UP and DOWN can also be made here if needed
        fireBall.y = player.y;
        fireBall.isActive = 1;
        playSoundB(fireballSound_data, fireballSound_length, 0);
    }


    if (player.x < 0) {
        player.x = 0;
    }
    if (player.y < 0) {
        player.y = 0;
    }
    if (player.x > (MAPWIDTH - player.width)) {
        player.x = MAPWIDTH - player.width;
    }
    if (player.y > (MAPHEIGHT - player.height)) {
        player.y = MAPHEIGHT - player.height;
    }

    if (player.isAnimating) {
        --player.timeUntilNextFrame;
        if (player.timeUntilNextFrame == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.numFrames;
            player.timeUntilNextFrame = 5;
        }
    } else {
        player.currentFrame = 0;
        player.timeUntilNextFrame = 5;
    }

    hOff = player.x - ((SCREENWIDTH - player.width) / 2);
    vOff = player.y - ((SCREENHEIGHT - player.height) / 2);

    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > (MAPWIDTH-SCREENWIDTH)) {
        hOff = (MAPWIDTH - SCREENWIDTH);
    }
    if (vOff > (MAPHEIGHT - SCREENHEIGHT)) {
        vOff = (MAPHEIGHT - SCREENHEIGHT);
    }
}

void updatePlayer2() {
    player.isAnimating = 0;
    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    // COLLISION
   if (BUTTON_HELD(BUTTON_UP)) {
        player.direction = UP;
        player.isAnimating = 1;
        if (player.y > 0 && colorAt(leftX, topY-player.yDel) && colorAt(rightX, topY-player.yDel)) player.y-=player.yVel;
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        player.direction = DOWN;
        player.isAnimating = 1;
        if (player.y + player.height < MAPHEIGHT && colorAt(leftX, bottomY+player.yDel) && colorAt(rightX, bottomY+player.yDel)) player.y+=player.yVel;
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.direction = LEFT;
        player.isAnimating = 1;
        if (player.x > 0 && colorAt(leftX-player.xDel, topY) && colorAt(leftX-player.xDel, bottomY)) player.x-=player.xVel;
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.direction = RIGHT;
        player.isAnimating = 1;
        if (player.x + player.width < MAPWIDTH && colorAt(rightX+player.xDel, topY) && colorAt(rightX+player.xDel, bottomY)) player.x+=player.xVel;
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        fireBall.direction = player.direction; // Update the fireball direction
        fireBall.x = player.x; // Default position
        if (player.direction == RIGHT) {
            fireBall.x += 10; // Adjust for right direction
        } else if (player.direction == LEFT) {
            fireBall.x -= (10 + fireBall.width); // Adjust for left direction
        }
        // Adjustments for UP and DOWN can also be made here if needed
        fireBall.y = player.y;
        fireBall.isActive = 1;
    }

    if (player.x < 0) {
        player.x = 0;
    }
    if (player.y < 0) {
        player.y = 0;
    }
    if (player.x > (MAPWIDTH - player.width)) {
        player.x = MAPWIDTH - player.width;
    }
    if (player.y > (MAPHEIGHT - player.height)) {
        player.y = MAPHEIGHT - player.height;
    }

    if (player.isAnimating) {
        --player.timeUntilNextFrame;
        if (player.timeUntilNextFrame == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.numFrames;
            player.timeUntilNextFrame = 5;
        }
    } else {
        player.currentFrame = 0;
        player.timeUntilNextFrame = 5;
    }

    hOff = player.x - ((SCREENWIDTH - player.width) / 2);
    vOff = player.y - ((SCREENHEIGHT - player.height) / 2);

    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > (MAPWIDTH-SCREENWIDTH)) {
        hOff = (MAPWIDTH - SCREENWIDTH);
    }
    if (vOff > (MAPHEIGHT - SCREENHEIGHT)) {
        vOff = (MAPHEIGHT - SCREENHEIGHT);
    }
    //saveGame();
}

//Updates player movement for boss fight
void updatePlayer3() {
    player.isAnimating = 0;
    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    // COLLISION
   if (BUTTON_HELD(BUTTON_UP)) {
        player.direction = UP;
        player.isAnimating = 1;
        if (player.y > 0 && colorAt(leftX, topY-player.yDel) && colorAt(rightX, topY-player.yDel)) player.y-=player.yVel;
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        player.direction = DOWN;
        player.isAnimating = 1;
        if (player.y + player.height < BOSSMAPHEIGHT && colorAt(leftX, bottomY+player.yDel) && colorAt(rightX, bottomY+player.yDel)) player.y+=player.yVel;
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.direction = LEFT;
        player.isAnimating = 1;
        if (player.x > 0 && colorAt(leftX-player.xDel, topY) && colorAt(leftX-player.xDel, bottomY)) player.x-=player.xVel;
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.direction = RIGHT;
        player.isAnimating = 1;
        if (player.x + player.width < BOSSMAPWIDTH && colorAt(rightX+player.xDel, topY) && colorAt(rightX+player.xDel, bottomY)) player.x+=player.xVel;
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        fireBall.direction = player.direction; // Update the fireball direction
        fireBall.x = player.x; // Default position
        if (player.direction == RIGHT) {
            fireBall.x += 10; // Adjust for right direction
        } else if (player.direction == LEFT) {
            fireBall.x -= (10 + fireBall.width); // Adjust for left direction
        }
        // Adjustments for UP and DOWN can also be made here if needed
        fireBall.y = player.y;
        fireBall.isActive = 1;
    }

    if (player.x < 0) {
        player.x = 0;
    }
    if (player.y < 0) {
        player.y = 0;
    }
    if (player.x > (BOSSMAPWIDTH - player.width)) {
        player.x = BOSSMAPWIDTH - player.width;
    }
    if (player.y > (BOSSMAPHEIGHT - player.height)) {
        player.y = BOSSMAPHEIGHT - player.height;
    }

    if (player.isAnimating) {
        --player.timeUntilNextFrame;
        if (player.timeUntilNextFrame == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.numFrames;
            player.timeUntilNextFrame = 5;
        }
    } else {
        player.currentFrame = 0;
        player.timeUntilNextFrame = 5;
    }

    hOff = player.x - ((SCREENWIDTH - player.width) / 2);
    vOff = player.y - ((SCREENHEIGHT - player.height) / 2);

    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > (BOSSMAPWIDTH-SCREENWIDTH)) {
        hOff = (BOSSMAPWIDTH - SCREENWIDTH);
    }
    if (vOff > (BOSSMAPHEIGHT - SCREENHEIGHT)) {
        vOff = (BOSSMAPHEIGHT - SCREENHEIGHT);
    }
    //saveGame();
}

void updateEnemy() {
    //Enemy1
    level = LEVEL1;
    enemy.isAnimating = 0;
    int newY = enemy.y + enemy.yVel;

    // Check if the new position is within bounds and there are no obstacles
    if (newY >= 0 && newY + enemy.height - 1 < MAPHEIGHT &&
        colorAt(enemy.x, newY + enemy.height) &&
        colorAt(enemy.x + enemy.width - 1, newY + enemy.height)) {
        
        enemy.y = newY;
    } else {
        enemy.yVel = -enemy.yVel;
    }

    if (enemy.isAnimating) {
        --enemy.timeUntilNextFrame;
        if (enemy.timeUntilNextFrame == 0) {
            enemy.currentFrame = (enemy.currentFrame + 1) % enemy.numFrames;
            enemy.timeUntilNextFrame = 5;
        } else {
            enemy.currentFrame = 0;
            enemy.timeUntilNextFrame = 5;
        }
    }

    //Enemy2
    enemy2.isAnimating = 0;
    int newX = enemy2.x + enemy2.xVel;

    // Check if the new position is within bounds and there are no obstacles
    if (newX >= 0 && newX + enemy2.height - 1 < MAPHEIGHT &&
        colorAt(enemy2.x, newX + enemy2.height) &&
        colorAt(enemy2.x + enemy2.width - 1, newX + enemy2.height)) {
        
        enemy2.x = newX;
    } else {
        enemy2.xVel = -enemy2.xVel;
    }

    if (enemy2.isAnimating) {
        --enemy2.timeUntilNextFrame;
        if (enemy2.timeUntilNextFrame == 0) {
            enemy2.currentFrame = (enemy2.currentFrame + 1) % enemy2.numFrames;
            enemy2.timeUntilNextFrame = 5;
        } else {
            enemy2.currentFrame = 0;
            enemy2.timeUntilNextFrame = 5;
        }
    }

    //Enemy3
    enemy3.isAnimating = 0;
    int newX2 = enemy3.x + enemy3.xVel;

    // Check if the new position is within bounds and there are no obstacles
    if (newX2 >= 0 && newX2 + enemy3.height - 1 < MAPHEIGHT &&
        colorAt(enemy3.x, newX2 + enemy3.height) &&
        colorAt(enemy3.x + enemy3.width - 1, newX2 + enemy3.height)) {
        
        enemy3.x = newX2;
    } else {
        enemy3.xVel = -enemy3.xVel;
    }

    if (enemy3.isAnimating) {
        --enemy3.timeUntilNextFrame;
        if (enemy3.timeUntilNextFrame == 0) {
            enemy3.currentFrame = (enemy3.currentFrame + 1) % enemy3.numFrames;
            enemy3.timeUntilNextFrame = 5;
        } else {
            enemy3.currentFrame = 0;
            enemy3.timeUntilNextFrame = 5;
        }
    }

    //Enemy4
    enemy4.isAnimating = 0;
    int newY3 = enemy4.y + enemy4.yVel;

    // Check if the new position is within bounds and there are no obstacles
    if (newY3 >= 0 && newY3 + enemy4.height - 1 < MAPHEIGHT &&
        colorAt(enemy4.x, newY3 + enemy4.height) &&
        colorAt(enemy4.x + enemy4.width - 1, newY3 + enemy4.height)) {
        
        enemy4.y = newY3;
    } else {
        enemy4.yVel = -enemy4.yVel;
    }

    if (enemy4.isAnimating) {
        --enemy4.timeUntilNextFrame;
        if (enemy4.timeUntilNextFrame == 0) {
            enemy4.currentFrame = (enemy4.currentFrame + 1) % enemy4.numFrames;
            enemy4.timeUntilNextFrame = 5;
        } else {
            enemy4.currentFrame = 0;
            enemy4.timeUntilNextFrame = 5;
        }
    }
}

void updateEnemy2() {
    mgba_printf("Ludwig.x: %d", Ludwig.x);
    mgba_printf("Ludwig.y: %d", Ludwig.y);
    level = LEVEL2;
    //Enemy1
    Ludwig.isAnimating = 0;
    int newY7 = Ludwig.y + Ludwig.yVel;

    // Check if the new position is within bounds and there are no obstacles
    if (newY7 >= 0 && newY7 + Ludwig.height - 1 < MAPHEIGHT &&
        colorAt(Ludwig.x, newY7 + Ludwig.height) &&
        colorAt(Ludwig.x + Ludwig.width - 1, newY7 + Ludwig.height)) {
        Ludwig.y = newY7;
    } else {
        Ludwig.yVel = -Ludwig.yVel;
    }

    
    if (Ludwig.isAnimating) {
        --Ludwig.timeUntilNextFrame;
        if (Ludwig.timeUntilNextFrame == 0) {
            Ludwig.currentFrame = (Ludwig.currentFrame + 1) % Ludwig.numFrames;
            Ludwig.timeUntilNextFrame = 5;
        } else {
            Ludwig.currentFrame = 0;
            Ludwig.timeUntilNextFrame = 5;
        }
    }

    //Enemy2
    Ludwig2.isAnimating = 0;
    int newX = Ludwig2.x + Ludwig2.xVel;

    // Check if the new position is within bounds and there are no obstacles
    if (newX >= 0 && newX + Ludwig2.height - 1 < MAPHEIGHT &&
        colorAt(Ludwig2.x, newX + Ludwig2.height) &&
        colorAt(Ludwig2.x + Ludwig2.width - 1, newX + Ludwig2.height)) {
        
        Ludwig2.x = newX;
    } else {
        Ludwig2.xVel = -Ludwig2.xVel;
    }

    if (Ludwig2.isAnimating) {
        --Ludwig2.timeUntilNextFrame;
        if (Ludwig2.timeUntilNextFrame == 0) {
            Ludwig2.currentFrame = (Ludwig2.currentFrame + 1) % Ludwig2.numFrames;
            Ludwig2.timeUntilNextFrame = 5;
        } else {
            Ludwig2.currentFrame = 0;
            Ludwig2.timeUntilNextFrame = 5;
        }
    }
    
    //Enemy 3
    // Ludwig 3 moves towards the player
    if (Ludwig3.isActive == 1) {
        if (player.x > Ludwig3.x) {
            Ludwig3.x += Ludwig3.xVel;
        } else {
        Ludwig3.x -= Ludwig3.xVel;
        }

        if (player.y > Ludwig3.y) {
            Ludwig3.y += Ludwig3.yVel;
        } else {
            Ludwig3.y -= Ludwig3.yVel;
        }
    }

    //Enemy 4
    if (Ludwig4.isActive == 1) {
        if (player.x > Ludwig4.x) {
            Ludwig4.x += Ludwig4.xVel;
        } else {
        Ludwig4.x -= Ludwig4.xVel;
        }

        if (player.y > Ludwig4.y) {
            Ludwig4.y += Ludwig4.yVel;
        } else {
            Ludwig4.y -= Ludwig4.yVel;
        }
    }
}

//THIS ONE BELOW WORKS BETTER THAN ABOVE
void updateFireBall() {
    fireBall.isAnimating = 0;
    int newX = fireBall.x + fireBall.xVel;
    int newY = fireBall.y + fireBall.yVel;

    // Check if the new position is within bounds and there are no obstacles
    switch (fireBall.direction) {
        case RIGHT:
            if (newX >= 0 && newX + fireBall.width - 1 < MAPWIDTH &&
                colorAt(newX + fireBall.width - 1, fireBall.y)) {
                fireBall.x = newX;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case LEFT:
            if (newX >= 0 && newX < MAPWIDTH &&
                colorAt(newX, fireBall.y)) {
                //fireBall.x = newX;
                fireBall.x = fireBall.x - fireBall.xVel;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case UP:
            if (newY >= 0 && newY < MAPHEIGHT &&
                colorAt(fireBall.x, newY)) {
                //fireBall.y = newY;
                fireBall.y = fireBall.y - fireBall.yVel;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case DOWN:
            if (newY + fireBall.height - 1 < MAPHEIGHT && newY >= 0 &&
                colorAt(fireBall.x, newY + fireBall.height - 1)) {
                fireBall.y = newY;
            } else {
                fireBall.isActive = 0;
            }
            break;
    }

    if (fireBall.isAnimating) {
        --fireBall.timeUntilNextFrame;
        if (fireBall.timeUntilNextFrame == 0) {
            fireBall.currentFrame = (fireBall.currentFrame + 1) % fireBall.numFrames;
            fireBall.timeUntilNextFrame = 5;
        } else {
            fireBall.currentFrame = 0;
            fireBall.timeUntilNextFrame = 5;
        }
    }
}

void updateFireBall2() {
    fireBall.isAnimating = 0;
    int newX = fireBall.x + fireBall.xVel;
    int newY = fireBall.y + fireBall.yVel;

    // Check if the new position is within bounds and there are no obstacles
    switch (fireBall.direction) {
        case RIGHT:
            if (newX >= 0 && newX + fireBall.width - 1 < MAPWIDTH &&
                colorAt(newX + fireBall.width - 1, fireBall.y)) {
                fireBall.x = newX;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case LEFT:
            if (newX >= 0 && newX < MAPWIDTH &&
                colorAt(newX, fireBall.y)) {
                //fireBall.x = newX;
                fireBall.x = fireBall.x - fireBall.xVel;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case UP:
            if (newY >= 0 && newY < MAPHEIGHT &&
                colorAt(fireBall.x, newY)) {
                //fireBall.y = newY;
                fireBall.y = fireBall.y - fireBall.yVel;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case DOWN:
            if (newY + fireBall.height - 1 < MAPHEIGHT && newY >= 0 &&
                colorAt(fireBall.x, newY + fireBall.height - 1)) {
                fireBall.y = newY;
            } else {
                fireBall.isActive = 0;
            }
            break;
    }

    if (fireBall.isAnimating) {
        --fireBall.timeUntilNextFrame;
        if (fireBall.timeUntilNextFrame == 0) {
            fireBall.currentFrame = (fireBall.currentFrame + 1) % fireBall.numFrames;
            fireBall.timeUntilNextFrame = 5;
        } else {
            fireBall.currentFrame = 0;
            fireBall.timeUntilNextFrame = 5;
        }
    }
}

void checkCollision() {
    if (enemy.isActive) {
        // Call the collision function to check if player and enemy sprites collide
        if (collision(player.x, player.y, player.width, player.height,
                    enemy.x, enemy.y, enemy.width, enemy.height)) {
            // If collision occurs, call goToLose function
            goToLose();
        }
    }
    //ememy2
    if (enemy2.isActive) {
        // Call the collision function to check if player and enemy sprites collide
        if (collision(player.x, player.y, player.width, player.height,
                    enemy2.x, enemy2.y, enemy2.width, enemy2.height)) {
            // If collision occurs, call goToLose function
            goToLose();
        }
    }
    //enemy3
    if (enemy3.isActive) {
        // Call the collision function to check if player and enemy sprites collide
        if (collision(player.x, player.y, player.width, player.height,
                    enemy3.x, enemy3.y, enemy3.width, enemy3.height)) {
            // If collision occurs, call goToLose function
            goToLose();
        }
    }
    //enemy4
    if (enemy4.isActive) {
        // Call the collision function to check if player and enemy sprites collide
        if (collision(player.x, player.y, player.width, player.height,
                    enemy4.x, enemy4.y, enemy4.width, enemy4.height)) {
            // If collision occurs, call goToLose function
            goToLose();
        }
    }
    //Ludwig1
    if (Ludwig.isActive) {
        // Call the collision function to check if player and enemy sprites collide
        if (collision(player.x, player.y, player.width, player.height,
                    Ludwig.x, Ludwig.y, Ludwig.width, Ludwig.height)) {
            // If collision occurs, call goToLose function
            goToLose();
        }
    }
    //Ludwig2
    if (Ludwig2.isActive) {
        // Call the collision function to check if player and enemy sprites collide
        if (collision(player.x, player.y, player.width, player.height,
                    Ludwig2.x, Ludwig2.y, Ludwig2.width, Ludwig2.height)) {
            // If collision occurs, call goToLose function
            goToLose();
        }
    }
    //Ludwig3 (chases player)
    if (Ludwig3.isActive) {
        // Call the collision function to check if player and enemy sprites collide
        if (collision(player.x, player.y, player.width, player.height,
                    Ludwig3.x, Ludwig3.y, Ludwig3.width, Ludwig3.height)) {
            // If collision occurs, call goToLose function
            goToLose();
        }
    }
    //Ludwig4 (chases player)
    if (Ludwig4.isActive) {
        // Call the collision function to check if player and enemy sprites collide
        if (collision(player.x, player.y, player.width, player.height,
                    Ludwig4.x, Ludwig4.y, Ludwig4.width, Ludwig4.height)) {
            // If collision occurs, call goToLose function
            goToLose();
        }
    }
    //Boss
    if (rayquaza.isActive) {
        // Call the collision function to check if player and enemy sprites collide
        if (collision(player.x, player.y, player.width, player.height,
                    rayquaza.x, rayquaza.y, rayquaza.width, rayquaza.height)) {
            // If collision occurs, call goToLose function
            rayquaza.isActive = 0;
            goToBossLose();
        }
    }
}

void checkWinCollision() {
    // Call the collision function to check if player and enemy sprites collide
    if (collision(player.x, player.y, player.width, player.height,
                  door.x, door.y, door.width, door.height)) {
        // If collision occurs, call goToWin function
        //goToWin();
        enemy.isActive = 0;
        enemy2.isActive = 0;
        enemy3.isActive = 0;
        enemy4.isActive = 0;
        door.isActive = 0;
        Ludwig.isActive = 1;
        Ludwig2.isActive = 1;
        Ludwig3.isActive = 1;
        Ludwig4.isActive = 1;
        //door2.isActive = 1;
        level = LEVEL2;
        goToGame2();
        player.x = 90;
        player.y = 50;
        door2.x = 120;
        door2.y = 380;
        player.direction = DOWN;
    }
    if (collision(player.x, player.y, player.width, player.height,
                  door2.x, door2.y, door2.width, door2.height)) {
        Ludwig.isActive = 0;
        Ludwig2.isActive = 0;
        level = BOSS;
        goToBossFight();
        rayquaza.isActive = 1;
        rayquaza.y = 40;
        door3.isActive = 0;
        player.x = 230;
        player.y = 280;
        player.direction = UP;
    }
    if (collision(player.x, player.y, player.width, player.height,
                  door3.x, door3.y, door3.width, door3.height) && 
                  rayquaza.isActive == 0 && door3.isActive == 1) {
        goToWin();
    }
}

void checkFireBallKillCollision() {
    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  enemy.x, enemy.y, enemy.width, enemy.height)) {
        
        enemy.isActive = 0;
        fireBall.isActive = 0;
    }
    //enemy 2
    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  enemy2.x, enemy2.y, enemy2.width, enemy2.height)) {
        
        enemy2.isActive = 0;
        fireBall.isActive = 0;
    }
    //enemy 3
    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  enemy3.x, enemy3.y, enemy3.width, enemy3.height)) {
        
        enemy3.isActive = 0;
        fireBall.isActive = 0;
    }
    //enemy 4
    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  enemy4.x, enemy4.y, enemy4.width, enemy4.height)) {
        
        enemy4.isActive = 0;
        fireBall.isActive = 0;
    }
    //Ludwig1
    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  Ludwig.x, Ludwig.y, Ludwig.width, Ludwig.height)) {
        
        Ludwig.isActive = 0;
        fireBall.isActive = 0;
    }
    //Ludwig2
    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  Ludwig2.x, Ludwig2.y, Ludwig2.width, Ludwig2.height)) {
        
        Ludwig2.isActive = 0;
        fireBall.isActive = 0;
    }
    //Ludwig3
    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  Ludwig3.x, Ludwig3.y, Ludwig3.width, Ludwig3.height)) {
        
        Ludwig3.isActive = 0;
        fireBall.isActive = 0;
    }
    //Ludwig4
    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  Ludwig4.x, Ludwig4.y, Ludwig4.width, Ludwig4.height)) {
        
        Ludwig4.isActive = 0;
        fireBall.isActive = 0;
    }
}

void initBossFight() {
    
    DMANow(3, bossFightTiles, &CHARBLOCK[0], bossFightTilesLen / 2);
    DMANow(3, bossFightMap, &SCREENBLOCK[24], bossFightMapLen / 2);
    DMANow(3, bossFightPal, BG_PALETTE, bossFightPalLen / 2);
    
    
    DMANow(3, chronoSpritesheetTiles, &CHARBLOCK[4], chronoSpritesheetTilesLen / 2);
    DMANow(3, chronoSpritesheetPal, SPRITE_PALETTE, 256);

    waitForVBlank();
    hideSprites();
    rayquaza.lives = 25;
    stopSounds();
    playSoundA(bossMusic_data, bossMusic_length, 1);
}

// Function to control Rayquaza's behavior and firing
void updateRayquaza() {
    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  rayquaza.x, rayquaza.y, rayquaza.width, rayquaza.height)) {
        fireBall.isActive = 0;
        rayquaza.lives = rayquaza.lives - 1;
        if (rayquaza.lives < 1) {
            //rayquaza.isActive = 0;
            door3.isActive = 1;
        }
    }
    mgba_printf("rayquaza lives: %d", rayquaza.lives);
    if (rayquaza.lives > 0) {
        rayquaza.isActive = 1;
    } else {
        rayquaza.isActive = 0;
    }
    // Move Rayquaza
    // Rayquaza moves towards the player
    if (rayquaza.isActive == 1) {
    if (player.x > rayquaza.x) {
        rayquaza.x += rayquaza.xVel;
    } else {
        rayquaza.x -= rayquaza.xVel;
    }

    if (player.y > rayquaza.y) {
        rayquaza.y += rayquaza.yVel;
    } else {
        rayquaza.y -= rayquaza.yVel;
    }

    // Check if it's time to fire
    static int fireCounter = 0;
    fireCounter++;
    if (fireCounter >= FIRE_RATE) {
        // Fire towards the player
        bossBlast.x = rayquaza.x;
        bossBlast.y = rayquaza.y;
        bossBlast.isActive = 1;
        fireCounter = 0; // Reset the fire counter
    }
    }

}
