# 1 "game2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game2.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short *videoBuffer;
# 48 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 67 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 99 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 2 "game2.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "game2.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;
    int timeUntilNextFrame;
    int direction;
    int isAnimating;
    int currentFrame;
    int numFrames;
    int hide;
    u8 oamIndex;
    int numOfFrames;
    int xDel;
    int yDel;
    int isActive;
    int isFighting;
    int frameCounter;
    int frameChangeRate;
    int lives;
} SPRITE;
# 4 "game2.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 5 "game2.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[4704];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[256];
# 6 "game2.c" 2
# 1 "map1.h" 1
# 22 "map1.h"
extern const unsigned short map1Tiles[43216];


extern const unsigned short map1Map[20294];


extern const unsigned short map1Pal[256];
# 7 "game2.c" 2
# 1 "chronoSpritesheet.h" 1
# 21 "chronoSpritesheet.h"
extern const unsigned short chronoSpritesheetTiles[16384];


extern const unsigned short chronoSpritesheetPal[256];
# 8 "game2.c" 2
# 1 "game.h" 1
# 11 "game.h"
void updatePlayer();
void updatePlayer2();
void updatePlayer3();
void updateEnemy();
void updateEnemy2();
void updateFireBall();
void updateFireBall2();
void updateRayquaza();
void initGame();
void initGame2();
void initPlayer();
void initBossFight();
void drawPlayer();
void drawEnemy();
void drawFireBall();
void drawBoss();
void drawBossBlast();
void initGameState();
void goToLose();
void goToWin();
void goToBossLose();
void goToGame2();
void goToPause3();
void goToBossFight();
void game2();
void checkCollision();
void checkWinCollision();
void checkFireBallKillCollision();


void initEnemiesLevel2();
void drawEnemiesLevel2();


void saveToCartridgeRAM();
void loadFromCartridgeRAM();
void saveGame();
void loadGame();

SPRITE player;
SPRITE enemy;
SPRITE door;
SPRITE door2;
SPRITE door3;
SPRITE fireBall;
SPRITE enemy2;
SPRITE enemy3;
SPRITE enemy4;
SPRITE Ludwig;
SPRITE Ludwig2;
SPRITE Ludwig3;
SPRITE Ludwig4;
SPRITE rayquaza;
SPRITE bossBlast;

int hOff;
int vOff;

typedef enum {DOWN, UP, RIGHT, LEFT} DIRECTION;


typedef struct {
  int playerX;
  int playerY;
  int playerDirection;
  int hOff;
  int vOff;

  int hasSavedBefore;


} SAVE_DATA;

SAVE_DATA saveData;
# 9 "game2.c" 2
# 1 "pausedScreen.h" 1
# 22 "pausedScreen.h"
extern const unsigned short pausedScreenTiles[6960];


extern const unsigned short pausedScreenMap[1024];


extern const unsigned short pausedScreenPal[256];
# 10 "game2.c" 2
# 1 "winScreen.h" 1
# 22 "winScreen.h"
extern const unsigned short winScreenTiles[6608];


extern const unsigned short winScreenMap[1024];


extern const unsigned short winScreenPal[256];
# 11 "game2.c" 2
# 1 "loseScreen.h" 1
# 22 "loseScreen.h"
extern const unsigned short loseScreenTiles[8288];


extern const unsigned short loseScreenMap[1024];


extern const unsigned short loseScreenPal[256];
# 12 "game2.c" 2
# 1 "instructionsScreen.h" 1
# 22 "instructionsScreen.h"
extern const unsigned short instructionsScreenTiles[6112];


extern const unsigned short instructionsScreenMap[1024];


extern const unsigned short instructionsScreenPal[256];
# 13 "game2.c" 2
# 1 "level1.h" 1
# 22 "level1.h"
extern const unsigned short level1Tiles[6416];


extern const unsigned short level1Map[6144];


extern const unsigned short level1Pal[256];
# 14 "game2.c" 2
# 1 "enemySprite.h" 1
# 22 "enemySprite.h"
extern const unsigned short enemySpriteTiles[2736];


extern const unsigned short enemySpriteMap[1024];


extern const unsigned short enemySpritePal[256];
# 15 "game2.c" 2
# 1 "collisionmap.h" 1
# 21 "collisionmap.h"
extern const unsigned short collisionMapBitmap[131072];


extern const unsigned short collisionMapPal[256];
# 16 "game2.c" 2
# 1 "level2.h" 1
# 22 "level2.h"
extern const unsigned short level2Tiles[5504];


extern const unsigned short level2Map[4096];


extern const unsigned short level2Pal[256];
# 17 "game2.c" 2
# 1 "collisionMap2.h" 1
# 21 "collisionMap2.h"
extern const unsigned short collisionMap2Bitmap[131072];


extern const unsigned short collisionMap2Pal[256];
# 18 "game2.c" 2

void initEnemiesLevel2() {
# 60 "game2.c"
}


int ludwigFrames[] = {0, 6, 13};
int numLudwigFrames = sizeof(ludwigFrames) / sizeof(ludwigFrames[0]);

void drawEnemiesLevel2() {

    if (Ludwig.hide || Ludwig.isActive == 0) {
        shadowOAM[Ludwig.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[Ludwig.oamIndex].attr0 = (0 << 14) | ((Ludwig.y-vOff) & 0xFF) | (2 << 14);
        shadowOAM[Ludwig.oamIndex].attr1 = (3 << 14) | ((Ludwig.x -hOff) & 0x1FF);
        shadowOAM[Ludwig.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((16) * (32) + (ludwigFrames[Ludwig.currentFrame]))) & 0x3FF);

    }

    Ludwig.frameCounter++;
    if (Ludwig.frameCounter >= Ludwig.frameChangeRate) {
        Ludwig.frameCounter = 0;
        Ludwig.currentFrame = (Ludwig.currentFrame + 1) % numLudwigFrames;
    }
    if (!collision(Ludwig.x, Ludwig.y, Ludwig.width, Ludwig.height,hOff,vOff,240,160)) {
        shadowOAM[Ludwig.oamIndex].attr0 |= (2 << 8);
    }

    if (player.x > Ludwig.x) {
        shadowOAM[Ludwig.oamIndex].attr1 = (3 << 14) | ((Ludwig.x -hOff) & 0x1FF) | (1 << 12);
    }


    if (Ludwig2.hide || Ludwig2.isActive == 0) {
        shadowOAM[Ludwig2.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[Ludwig2.oamIndex].attr0 = (0 << 8) | ((Ludwig2.y-vOff) & 0xFF) | (2 << 14);
        shadowOAM[Ludwig2.oamIndex].attr1 = (3 << 14) | ((Ludwig2.x -hOff) & 0x1FF);
        shadowOAM[Ludwig2.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((16) * (32) + (ludwigFrames[Ludwig2.currentFrame]))) & 0x3FF);

    }

    Ludwig2.frameCounter++;
    if (Ludwig2.frameCounter >= Ludwig2.frameChangeRate) {
        Ludwig2.frameCounter = 0;
        Ludwig2.currentFrame = (Ludwig2.currentFrame + 1) % numLudwigFrames;
    }
    if (!collision(Ludwig2.x, Ludwig2.y, Ludwig2.width, Ludwig2.height,hOff,vOff,240,160)) {
        shadowOAM[Ludwig2.oamIndex].attr0 |= (2 << 8);
    }

    if (player.x > Ludwig2.x) {
        shadowOAM[Ludwig2.oamIndex].attr1 = (3 << 14) | ((Ludwig2.x -hOff) & 0x1FF) | (1 << 12);
    }


    if (Ludwig3.hide || Ludwig3.isActive == 0) {
        shadowOAM[Ludwig3.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[Ludwig3.oamIndex].attr0 = (0 << 8) | ((Ludwig3.y-vOff) & 0xFF) | (2 << 14);
        shadowOAM[Ludwig3.oamIndex].attr1 = (3 << 14) | ((Ludwig3.x -hOff) & 0x1FF);
        shadowOAM[Ludwig3.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((16) * (32) + (ludwigFrames[Ludwig3.currentFrame]))) & 0x3FF);

    }

    Ludwig3.frameCounter++;
    if (Ludwig3.frameCounter >= Ludwig3.frameChangeRate) {
        Ludwig3.frameCounter = 0;
        Ludwig3.currentFrame = (Ludwig3.currentFrame + 1) % numLudwigFrames;
    }
    if (!collision(Ludwig3.x, Ludwig3.y, Ludwig3.width, Ludwig3.height,hOff,vOff,240,160)) {
        shadowOAM[Ludwig3.oamIndex].attr0 |= (2 << 8);
    }

    if (player.x > Ludwig3.x) {
        shadowOAM[Ludwig3.oamIndex].attr1 = (3 << 14) | ((Ludwig3.x -hOff) & 0x1FF) | (1 << 12);
    }


    if (Ludwig4.hide || Ludwig4.isActive == 0) {
        shadowOAM[Ludwig4.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[Ludwig4.oamIndex].attr0 = (0 << 8) | ((Ludwig4.y-vOff) & 0xFF) | (2 << 14);
        shadowOAM[Ludwig4.oamIndex].attr1 = (3 << 14) | ((Ludwig4.x -hOff) & 0x1FF);
        shadowOAM[Ludwig4.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((16) * (32) + (ludwigFrames[Ludwig4.currentFrame]))) & 0x3FF);

    }

    Ludwig4.frameCounter++;
    if (Ludwig4.frameCounter >= Ludwig4.frameChangeRate) {
        Ludwig4.frameCounter = 0;
        Ludwig4.currentFrame = (Ludwig4.currentFrame + 1) % numLudwigFrames;
    }
    if (!collision(Ludwig4.x, Ludwig4.y, Ludwig4.width, Ludwig4.height,hOff,vOff,240,160)) {
        shadowOAM[Ludwig4.oamIndex].attr0 |= (2 << 8);
    }

    if (player.x > Ludwig4.x) {
        shadowOAM[Ludwig4.oamIndex].attr1 = (3 << 14) | ((Ludwig4.x -hOff) & 0x1FF) | (1 << 12);
    }


    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;


    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 128*4);
}
