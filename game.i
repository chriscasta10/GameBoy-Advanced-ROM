# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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
# 2 "game.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "game.c" 2
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
# 4 "game.c" 2
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
# 5 "game.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[4704];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[256];
# 6 "game.c" 2
# 1 "map1.h" 1
# 22 "map1.h"
extern const unsigned short map1Tiles[43216];


extern const unsigned short map1Map[20294];


extern const unsigned short map1Pal[256];
# 7 "game.c" 2
# 1 "chronoSpritesheet.h" 1
# 21 "chronoSpritesheet.h"
extern const unsigned short chronoSpritesheetTiles[16384];


extern const unsigned short chronoSpritesheetPal[256];
# 8 "game.c" 2
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
# 9 "game.c" 2
# 1 "pausedScreen.h" 1
# 22 "pausedScreen.h"
extern const unsigned short pausedScreenTiles[6960];


extern const unsigned short pausedScreenMap[1024];


extern const unsigned short pausedScreenPal[256];
# 10 "game.c" 2
# 1 "winScreen.h" 1
# 22 "winScreen.h"
extern const unsigned short winScreenTiles[6608];


extern const unsigned short winScreenMap[1024];


extern const unsigned short winScreenPal[256];
# 11 "game.c" 2
# 1 "loseScreen.h" 1
# 22 "loseScreen.h"
extern const unsigned short loseScreenTiles[8288];


extern const unsigned short loseScreenMap[1024];


extern const unsigned short loseScreenPal[256];
# 12 "game.c" 2
# 1 "instructionsScreen.h" 1
# 22 "instructionsScreen.h"
extern const unsigned short instructionsScreenTiles[6112];


extern const unsigned short instructionsScreenMap[1024];


extern const unsigned short instructionsScreenPal[256];
# 13 "game.c" 2
# 1 "level1.h" 1
# 22 "level1.h"
extern const unsigned short level1Tiles[6416];


extern const unsigned short level1Map[6144];


extern const unsigned short level1Pal[256];
# 14 "game.c" 2
# 1 "enemySprite.h" 1
# 22 "enemySprite.h"
extern const unsigned short enemySpriteTiles[2736];


extern const unsigned short enemySpriteMap[1024];


extern const unsigned short enemySpritePal[256];
# 15 "game.c" 2
# 1 "collisionmap.h" 1
# 21 "collisionmap.h"
extern const unsigned short collisionMapBitmap[131072];


extern const unsigned short collisionMapPal[256];
# 16 "game.c" 2
# 1 "level2.h" 1
# 22 "level2.h"
extern const unsigned short level2Tiles[5504];


extern const unsigned short level2Map[4096];


extern const unsigned short level2Pal[256];
# 17 "game.c" 2
# 1 "collisionMap2.h" 1
# 21 "collisionMap2.h"
extern const unsigned short collisionMap2Bitmap[131072];


extern const unsigned short collisionMap2Pal[256];
# 18 "game.c" 2
# 1 "fireballSound.h" 1


extern const unsigned int fireballSound_sampleRate;
extern const unsigned int fireballSound_length;
extern const signed char fireballSound_data[];
# 19 "game.c" 2
# 1 "digitalSound.h" 1



void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 49 "digitalSound.h"
typedef struct {
    const signed char* data;
    int dataLength;
    int frequency;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int priority;
    int vBlankCount;

} SOUND;

SOUND soundA;
SOUND soundB;
# 20 "game.c" 2
# 1 "pokemonDPLake.h" 1


extern const unsigned int pokemonDPLake_sampleRate;
extern const unsigned int pokemonDPLake_length;
extern const signed char pokemonDPLake_data[];
# 21 "game.c" 2
# 1 "bossFight.h" 1
# 22 "bossFight.h"
extern const unsigned short bossFightTiles[6544];


extern const unsigned short bossFightMap[4096];


extern const unsigned short bossFightPal[256];
# 22 "game.c" 2
# 1 "collisionMap3.h" 1
# 21 "collisionMap3.h"
extern const unsigned short collisionMap3Bitmap[131072];


extern const unsigned short collisionMap3Pal[256];
# 23 "game.c" 2
# 1 "bossMusic.h" 1


extern const unsigned int bossMusic_sampleRate;
extern const unsigned int bossMusic_length;
extern const signed char bossMusic_data[];
# 24 "game.c" 2



OBJ_ATTR shadowOAM[128];
enum {LEVEL1, LEVEL2, BOSS};
int level;

inline unsigned char colorAt(int x, int y){
    switch (level) {
    case LEVEL1:
        return ((unsigned char *)collisionMapBitmap)[((y) * (512) + (x))];
        break;
    case LEVEL2:
        return ((unsigned char *)collisionMap2Bitmap)[((y) * (512) + (x))];
        break;
    case BOSS:
        return ((unsigned char *)collisionMap3Bitmap)[((y) * (512) + (x))];
        break;
    }
}

void initGame() {
    level = LEVEL1;
    playSoundA(pokemonDPLake_data, pokemonDPLake_length, 1);
    (*(volatile unsigned short*) 0x4000008) = (0 << 7) | (3 << 14) | ((0) << 2) | ((24) << 8);
    (*(volatile unsigned short*) 0x4000000) |= ((1 << (8 + (0 & 3)))) | (1 << 12);


    DMANow(3, level1Tiles, &((CB*) 0x6000000)[0], 12832 / 2);
    DMANow(3, level1Map, &((SB*) 0x6000000)[24], 12288 / 2);
    DMANow(3, level1Pal, ((unsigned short*) 0x5000000), 512 / 2);


    DMANow(3, chronoSpritesheetTiles, &((CB*) 0x6000000)[4], 32768 / 2);
    DMANow(3, chronoSpritesheetPal, ((u16*) 0x5000200), 256);

    waitForVBlank();
    hideSprites();

}

void initGame2() {
    (*(volatile unsigned short*) 0x4000008) = (0 << 7) | (3 << 14) | ((0) << 2) | ((24) << 8);
    (*(volatile unsigned short*) 0x4000000) |= ((1 << (8 + (0 & 3)))) | (1 << 12);


    DMANow(3, level2Tiles, &((CB*) 0x6000000)[0], 11008 / 2);
    DMANow(3, level2Map, &((SB*) 0x6000000)[24], 8192 / 2);
    DMANow(3, level2Pal, ((unsigned short*) 0x5000000), 512 / 2);


    DMANow(3, chronoSpritesheetTiles, &((CB*) 0x6000000)[4], 32768 / 2);
    DMANow(3, chronoSpritesheetPal, ((u16*) 0x5000200), 256);

    waitForVBlank();
    hideSprites();
}

void initPlayer() {
    mgba_open();

    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 512);

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


    door.width = 16;
    door.height = 16;
    door.x = 367;
    door.y = 10;
    door.oamIndex = 3;
    door.hide = 0;
    door.isActive = 1;


    door2.width = 16;
    door2.height = 16;


    door2.oamIndex = 20;
    door2.hide = 0;
    door2.isActive = 1;


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


    buttons = (*(volatile unsigned short*) 0x04000130);
    oldButtons = 0;
}

void drawPlayer() {
    if (player.hide) {
        shadowOAM[0].attr0 |= (2 << 8);
    } else if (player.isFighting){
        shadowOAM[player.oamIndex].attr0 = (2 << 14) | ((player.y - vOff) & 0xFF) | (0 << 14);
        shadowOAM[player.oamIndex].attr1 = (2 << 14) | ((player.x - hOff) & 0x1FF);
        shadowOAM[player.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((28) * (32) + (19))) & 0x3FF);
    } else {
        shadowOAM[player.oamIndex].attr0 = (2 << 14) | ((player.y - vOff) & 0xFF) | (0 << 14);
        shadowOAM[player.oamIndex].attr1 = (2 << 14) | ((player.x - hOff) & 0x1FF);
        shadowOAM[player.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((player.currentFrame * 4) * (32) + (player.direction *4))) & 0x3FF);
    }

    if (door.hide || door.isActive == 0) {
        shadowOAM[door.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[door.oamIndex].attr0 = (2 << 14) | ((door.y - vOff) & 0xFF) | (0 << 14);
        shadowOAM[door.oamIndex].attr1 = (2 << 14) | ((door.x - hOff) & 0x1FF);
        shadowOAM[door.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((0) * (32) + (16))) & 0x3FF);
    }

    if (level == LEVEL2) {
        if (door2.hide || door2.isActive == 0) {
        shadowOAM[door2.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[door2.oamIndex].attr0 = (2 << 14) | ((door2.y - vOff) & 0xFF) | (0 << 14);
        shadowOAM[door2.oamIndex].attr1 = (2 << 14) | ((door2.x - hOff) & 0x1FF);
        shadowOAM[door2.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((0) * (32) + (16))) & 0x3FF);
    }
    }

    if (level == BOSS) {
        if (door3.hide || door3.isActive == 0) {
        shadowOAM[door3.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[door3.oamIndex].attr0 = (2 << 14) | ((door3.y - vOff) & 0xFF) | (0 << 14);
        shadowOAM[door3.oamIndex].attr1 = (2 << 14) | ((door3.x - hOff) & 0x1FF);
        shadowOAM[door3.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((0) * (32) + (16))) & 0x3FF);
    }
    }

    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 128*4);
}

int masterHandFrames[] = {4, 8, 12};
int numMasterHandFrames = sizeof(masterHandFrames) / sizeof(masterHandFrames[0]);

int rayquazaFrames[] = {18, 23, 28};
int numRayquazaFrames = sizeof(rayquazaFrames) / sizeof(rayquazaFrames[0]);

void drawEnemy() {

    if (enemy.hide || enemy.isActive == 0) {
        shadowOAM[enemy.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[enemy.oamIndex].attr0 = (0 << 8) | ((enemy.y-vOff) & 0xFF) | (0 << 14);
        shadowOAM[enemy.oamIndex].attr1 = (2 << 14) | ((enemy.x -hOff) & 0x1FF);
        shadowOAM[enemy.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((masterHandFrames[enemy.currentFrame]) * (32) + (16))) & 0x3FF);

    }
    if (!collision(enemy.x, enemy.y, enemy.width, enemy.height,hOff,vOff,240,160)) {
        shadowOAM[enemy.oamIndex].attr0 |= (2 << 8);
    }

    if (player.x > enemy.x) {
        shadowOAM[enemy.oamIndex].attr1 = (2 << 14) | ((enemy.x -hOff) & 0x1FF) | (1 << 12);
    }
    enemy.frameCounter++;
    if (enemy.frameCounter >= enemy.frameChangeRate) {
        enemy.frameCounter = 0;
        enemy.currentFrame = (enemy.currentFrame + 1) % numMasterHandFrames;
    }


    if (enemy2.hide || enemy2.isActive == 0) {
        shadowOAM[enemy2.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[enemy2.oamIndex].attr0 = (0 << 8) | ((enemy2.y-vOff) & 0xFF) | (0 << 14);
        shadowOAM[enemy2.oamIndex].attr1 = (2 << 14) | ((enemy2.x -hOff) & 0x1FF);
        shadowOAM[enemy2.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((masterHandFrames[enemy2.currentFrame]) * (32) + (16))) & 0x3FF);

    }
    if (!collision(enemy2.x, enemy2.y, enemy2.width, enemy2.height,hOff,vOff,240,160)) {
        shadowOAM[enemy2.oamIndex].attr0 |= (2 << 8);
    }

    if (player.x > enemy2.x) {
        shadowOAM[enemy2.oamIndex].attr1 = (2 << 14) | ((enemy2.x -hOff) & 0x1FF) | (1 << 12);
    }
    enemy2.frameCounter++;
    if (enemy2.frameCounter >= enemy2.frameChangeRate) {
        enemy2.frameCounter = 0;
        enemy2.currentFrame = (enemy2.currentFrame + 1) % numMasterHandFrames;
    }


    if (enemy3.hide || enemy3.isActive == 0) {
        shadowOAM[enemy3.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[enemy3.oamIndex].attr0 = (0 << 8) | ((enemy3.y-vOff) & 0xFF) | (0 << 14);
        shadowOAM[enemy3.oamIndex].attr1 = (2 << 14) | ((enemy3.x -hOff) & 0x1FF);
        shadowOAM[enemy3.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((masterHandFrames[enemy3.currentFrame]) * (32) + (16))) & 0x3FF);

    }
    if (!collision(enemy3.x, enemy3.y, enemy3.width, enemy3.height,hOff,vOff,240,160)) {
        shadowOAM[enemy3.oamIndex].attr0 |= (2 << 8);
    }

    if (player.x > enemy3.x) {
        shadowOAM[enemy3.oamIndex].attr1 = (2 << 14) | ((enemy3.x -hOff) & 0x1FF) | (1 << 12);
    }
    enemy3.frameCounter++;
    if (enemy3.frameCounter >= enemy3.frameChangeRate) {
        enemy3.frameCounter = 0;
        enemy3.currentFrame = (enemy3.currentFrame + 1) % numMasterHandFrames;
    }


    if (enemy4.hide || enemy4.isActive == 0) {
        shadowOAM[enemy4.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[enemy4.oamIndex].attr0 = (0 << 8) | ((enemy4.y-vOff) & 0xFF) | (0 << 14);
        shadowOAM[enemy4.oamIndex].attr1 = (2 << 14) | ((enemy4.x -hOff) & 0x1FF);
        shadowOAM[enemy4.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((masterHandFrames[enemy4.currentFrame]) * (32) + (16))) & 0x3FF);

    }
    if (!collision(enemy4.x, enemy4.y, enemy4.width, enemy4.height,hOff,vOff,240,160)) {
        shadowOAM[enemy4.oamIndex].attr0 |= (2 << 8);
    }

    if (player.x > enemy4.x) {
        shadowOAM[enemy4.oamIndex].attr1 = (2 << 14) | ((enemy4.x -hOff) & 0x1FF) | (1 << 12);
    }
    enemy4.frameCounter++;
    if (enemy4.frameCounter >= enemy4.frameChangeRate) {
        enemy4.frameCounter = 0;
        enemy4.currentFrame = (enemy4.currentFrame + 1) % numMasterHandFrames;
    }

    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;


    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 128*4);
}

void drawBoss() {

    if (rayquaza.hide || rayquaza.isActive == 0) {
        shadowOAM[rayquaza.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[rayquaza.oamIndex].attr0 = (2 << 14) | ((rayquaza.y-vOff) & 0xFF) | (0 << 14);
        shadowOAM[rayquaza.oamIndex].attr1 = (3 << 14) | ((rayquaza.x -hOff) & 0x1FF);
        shadowOAM[rayquaza.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((21) * (32) + (rayquazaFrames[rayquaza.currentFrame]))) & 0x3FF);

    }





    rayquaza.frameCounter++;
    if (rayquaza.frameCounter >= rayquaza.frameChangeRate) {
        rayquaza.frameCounter = 0;
        rayquaza.currentFrame = (rayquaza.currentFrame + 1) % numRayquazaFrames;
    }

    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;


    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 128*4);
}

void drawFireBall() {
    if (player.direction == DOWN || player.direction == UP) {
        fireBall.x = player.x-6;
    }
    if (player.direction == LEFT) {
        shadowOAM[fireBall.oamIndex].attr0 = (0 << 8) | ((fireBall.y-vOff) & 0xFF) | (0 << 14);
        shadowOAM[fireBall.oamIndex].attr1 = (2 << 14) | ((fireBall.x -hOff) & 0x1FF);
        shadowOAM[fireBall.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((13) * (32) + (28))) & 0x3FF);
    }
    if (fireBall.hide || fireBall.isActive == 0) {
        shadowOAM[fireBall.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[fireBall.oamIndex].attr0 = (0 << 8) | ((fireBall.y-vOff) & 0xFF) | (0 << 14);
        shadowOAM[fireBall.oamIndex].attr1 = (2 << 14) | ((fireBall.x -hOff) & 0x1FF) | (1 << 12);
        shadowOAM[fireBall.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((13) * (32) + (28))) & 0x3FF);
    }
    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 128*4);
}

void drawBossBlast() {
    if (bossBlast.hide || bossBlast.isActive == 0 || rayquaza.hide || rayquaza.isActive == 0) {
        shadowOAM[bossBlast.oamIndex].attr0 |= (2 << 8);
    } else {
        shadowOAM[bossBlast.oamIndex].attr0 = (2 << 14) | ((bossBlast.y-vOff) & 0xFF) | (0 << 14);
        shadowOAM[bossBlast.oamIndex].attr1 = (3 << 14) | ((bossBlast.x -hOff) & 0x1FF) | (1 << 12);
        shadowOAM[bossBlast.oamIndex].attr2 = (((0) & 0xF) <<12) | (((0) & 3) << 10) | ((((1) * (32) + (27))) & 0x3FF);
    }
    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*) 0x7000000), 128*4);
}


void updatePlayer() {
    player.isAnimating = 0;
    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;


   if ((~(buttons) & ((1 << 6)))) {
        player.direction = UP;
        player.isAnimating = 1;
        if (player.y > 0 && colorAt(leftX, topY-player.yDel) && colorAt(rightX, topY-player.yDel)) player.y-=player.yVel;
    }
    if ((~(buttons) & ((1 << 7)))) {
        player.direction = DOWN;
        player.isAnimating = 1;
        if (player.y + player.height < 512 && colorAt(leftX, bottomY+player.yDel) && colorAt(rightX, bottomY+player.yDel)) player.y+=player.yVel;
    }
    if ((~(buttons) & ((1 << 5)))) {
        player.direction = LEFT;
        player.isAnimating = 1;
        if (player.x > 0 && colorAt(leftX-player.xDel, topY) && colorAt(leftX-player.xDel, bottomY)) player.x-=player.xVel;
    }
    if ((~(buttons) & ((1 << 4)))) {
        player.direction = RIGHT;
        player.isAnimating = 1;
        if (player.x + player.width < 512 && colorAt(rightX+player.xDel, topY) && colorAt(rightX+player.xDel, bottomY)) player.x+=player.xVel;
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        fireBall.direction = player.direction;
        fireBall.x = player.x;
        if (player.direction == RIGHT) {
            fireBall.x += 10;
        } else if (player.direction == LEFT) {
            fireBall.x -= (10 + fireBall.width);
        }

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
    if (player.x > (512 - player.width)) {
        player.x = 512 - player.width;
    }
    if (player.y > (512 - player.height)) {
        player.y = 512 - player.height;
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

    hOff = player.x - ((240 - player.width) / 2);
    vOff = player.y - ((160 - player.height) / 2);

    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > (512 -240)) {
        hOff = (512 - 240);
    }
    if (vOff > (512 - 160)) {
        vOff = (512 - 160);
    }
}

void updatePlayer2() {
    player.isAnimating = 0;
    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;


   if ((~(buttons) & ((1 << 6)))) {
        player.direction = UP;
        player.isAnimating = 1;
        if (player.y > 0 && colorAt(leftX, topY-player.yDel) && colorAt(rightX, topY-player.yDel)) player.y-=player.yVel;
    }
    if ((~(buttons) & ((1 << 7)))) {
        player.direction = DOWN;
        player.isAnimating = 1;
        if (player.y + player.height < 512 && colorAt(leftX, bottomY+player.yDel) && colorAt(rightX, bottomY+player.yDel)) player.y+=player.yVel;
    }
    if ((~(buttons) & ((1 << 5)))) {
        player.direction = LEFT;
        player.isAnimating = 1;
        if (player.x > 0 && colorAt(leftX-player.xDel, topY) && colorAt(leftX-player.xDel, bottomY)) player.x-=player.xVel;
    }
    if ((~(buttons) & ((1 << 4)))) {
        player.direction = RIGHT;
        player.isAnimating = 1;
        if (player.x + player.width < 512 && colorAt(rightX+player.xDel, topY) && colorAt(rightX+player.xDel, bottomY)) player.x+=player.xVel;
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        fireBall.direction = player.direction;
        fireBall.x = player.x;
        if (player.direction == RIGHT) {
            fireBall.x += 10;
        } else if (player.direction == LEFT) {
            fireBall.x -= (10 + fireBall.width);
        }

        fireBall.y = player.y;
        fireBall.isActive = 1;
    }

    if (player.x < 0) {
        player.x = 0;
    }
    if (player.y < 0) {
        player.y = 0;
    }
    if (player.x > (512 - player.width)) {
        player.x = 512 - player.width;
    }
    if (player.y > (512 - player.height)) {
        player.y = 512 - player.height;
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

    hOff = player.x - ((240 - player.width) / 2);
    vOff = player.y - ((160 - player.height) / 2);

    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > (512 -240)) {
        hOff = (512 - 240);
    }
    if (vOff > (512 - 160)) {
        vOff = (512 - 160);
    }

}


void updatePlayer3() {
    player.isAnimating = 0;
    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;


   if ((~(buttons) & ((1 << 6)))) {
        player.direction = UP;
        player.isAnimating = 1;
        if (player.y > 0 && colorAt(leftX, topY-player.yDel) && colorAt(rightX, topY-player.yDel)) player.y-=player.yVel;
    }
    if ((~(buttons) & ((1 << 7)))) {
        player.direction = DOWN;
        player.isAnimating = 1;
        if (player.y + player.height < 512 && colorAt(leftX, bottomY+player.yDel) && colorAt(rightX, bottomY+player.yDel)) player.y+=player.yVel;
    }
    if ((~(buttons) & ((1 << 5)))) {
        player.direction = LEFT;
        player.isAnimating = 1;
        if (player.x > 0 && colorAt(leftX-player.xDel, topY) && colorAt(leftX-player.xDel, bottomY)) player.x-=player.xVel;
    }
    if ((~(buttons) & ((1 << 4)))) {
        player.direction = RIGHT;
        player.isAnimating = 1;
        if (player.x + player.width < 512 && colorAt(rightX+player.xDel, topY) && colorAt(rightX+player.xDel, bottomY)) player.x+=player.xVel;
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~(buttons) & ((1 << 0))))) {
        fireBall.direction = player.direction;
        fireBall.x = player.x;
        if (player.direction == RIGHT) {
            fireBall.x += 10;
        } else if (player.direction == LEFT) {
            fireBall.x -= (10 + fireBall.width);
        }

        fireBall.y = player.y;
        fireBall.isActive = 1;
    }

    if (player.x < 0) {
        player.x = 0;
    }
    if (player.y < 0) {
        player.y = 0;
    }
    if (player.x > (512 - player.width)) {
        player.x = 512 - player.width;
    }
    if (player.y > (512 - player.height)) {
        player.y = 512 - player.height;
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

    hOff = player.x - ((240 - player.width) / 2);
    vOff = player.y - ((160 - player.height) / 2);

    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > (512 -240)) {
        hOff = (512 - 240);
    }
    if (vOff > (512 - 160)) {
        vOff = (512 - 160);
    }

}

void updateEnemy() {

    level = LEVEL1;
    enemy.isAnimating = 0;
    int newY = enemy.y + enemy.yVel;


    if (newY >= 0 && newY + enemy.height - 1 < 512 &&
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


    enemy2.isAnimating = 0;
    int newX = enemy2.x + enemy2.xVel;


    if (newX >= 0 && newX + enemy2.height - 1 < 512 &&
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


    enemy3.isAnimating = 0;
    int newX2 = enemy3.x + enemy3.xVel;


    if (newX2 >= 0 && newX2 + enemy3.height - 1 < 512 &&
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


    enemy4.isAnimating = 0;
    int newY3 = enemy4.y + enemy4.yVel;


    if (newY3 >= 0 && newY3 + enemy4.height - 1 < 512 &&
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

    Ludwig.isAnimating = 0;
    int newY7 = Ludwig.y + Ludwig.yVel;


    if (newY7 >= 0 && newY7 + Ludwig.height - 1 < 512 &&
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


    Ludwig2.isAnimating = 0;
    int newX = Ludwig2.x + Ludwig2.xVel;


    if (newX >= 0 && newX + Ludwig2.height - 1 < 512 &&
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


void updateFireBall() {
    fireBall.isAnimating = 0;
    int newX = fireBall.x + fireBall.xVel;
    int newY = fireBall.y + fireBall.yVel;


    switch (fireBall.direction) {
        case RIGHT:
            if (newX >= 0 && newX + fireBall.width - 1 < 512 &&
                colorAt(newX + fireBall.width - 1, fireBall.y)) {
                fireBall.x = newX;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case LEFT:
            if (newX >= 0 && newX < 512 &&
                colorAt(newX, fireBall.y)) {

                fireBall.x = fireBall.x - fireBall.xVel;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case UP:
            if (newY >= 0 && newY < 512 &&
                colorAt(fireBall.x, newY)) {

                fireBall.y = fireBall.y - fireBall.yVel;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case DOWN:
            if (newY + fireBall.height - 1 < 512 && newY >= 0 &&
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


    switch (fireBall.direction) {
        case RIGHT:
            if (newX >= 0 && newX + fireBall.width - 1 < 512 &&
                colorAt(newX + fireBall.width - 1, fireBall.y)) {
                fireBall.x = newX;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case LEFT:
            if (newX >= 0 && newX < 512 &&
                colorAt(newX, fireBall.y)) {

                fireBall.x = fireBall.x - fireBall.xVel;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case UP:
            if (newY >= 0 && newY < 512 &&
                colorAt(fireBall.x, newY)) {

                fireBall.y = fireBall.y - fireBall.yVel;
            } else {
                fireBall.isActive = 0;
            }
            break;
        case DOWN:
            if (newY + fireBall.height - 1 < 512 && newY >= 0 &&
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

        if (collision(player.x, player.y, player.width, player.height,
                    enemy.x, enemy.y, enemy.width, enemy.height)) {

            goToLose();
        }
    }

    if (enemy2.isActive) {

        if (collision(player.x, player.y, player.width, player.height,
                    enemy2.x, enemy2.y, enemy2.width, enemy2.height)) {

            goToLose();
        }
    }

    if (enemy3.isActive) {

        if (collision(player.x, player.y, player.width, player.height,
                    enemy3.x, enemy3.y, enemy3.width, enemy3.height)) {

            goToLose();
        }
    }

    if (enemy4.isActive) {

        if (collision(player.x, player.y, player.width, player.height,
                    enemy4.x, enemy4.y, enemy4.width, enemy4.height)) {

            goToLose();
        }
    }

    if (Ludwig.isActive) {

        if (collision(player.x, player.y, player.width, player.height,
                    Ludwig.x, Ludwig.y, Ludwig.width, Ludwig.height)) {

            goToLose();
        }
    }

    if (Ludwig2.isActive) {

        if (collision(player.x, player.y, player.width, player.height,
                    Ludwig2.x, Ludwig2.y, Ludwig2.width, Ludwig2.height)) {

            goToLose();
        }
    }

    if (Ludwig3.isActive) {

        if (collision(player.x, player.y, player.width, player.height,
                    Ludwig3.x, Ludwig3.y, Ludwig3.width, Ludwig3.height)) {

            goToLose();
        }
    }

    if (Ludwig4.isActive) {

        if (collision(player.x, player.y, player.width, player.height,
                    Ludwig4.x, Ludwig4.y, Ludwig4.width, Ludwig4.height)) {

            goToLose();
        }
    }

    if (rayquaza.isActive) {

        if (collision(player.x, player.y, player.width, player.height,
                    rayquaza.x, rayquaza.y, rayquaza.width, rayquaza.height)) {

            rayquaza.isActive = 0;
            goToBossLose();
        }
    }
}

void checkWinCollision() {

    if (collision(player.x, player.y, player.width, player.height,
                  door.x, door.y, door.width, door.height)) {


        enemy.isActive = 0;
        enemy2.isActive = 0;
        enemy3.isActive = 0;
        enemy4.isActive = 0;
        door.isActive = 0;
        Ludwig.isActive = 1;
        Ludwig2.isActive = 1;
        Ludwig3.isActive = 1;
        Ludwig4.isActive = 1;

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

    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  enemy2.x, enemy2.y, enemy2.width, enemy2.height)) {

        enemy2.isActive = 0;
        fireBall.isActive = 0;
    }

    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  enemy3.x, enemy3.y, enemy3.width, enemy3.height)) {

        enemy3.isActive = 0;
        fireBall.isActive = 0;
    }

    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  enemy4.x, enemy4.y, enemy4.width, enemy4.height)) {

        enemy4.isActive = 0;
        fireBall.isActive = 0;
    }

    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  Ludwig.x, Ludwig.y, Ludwig.width, Ludwig.height)) {

        Ludwig.isActive = 0;
        fireBall.isActive = 0;
    }

    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  Ludwig2.x, Ludwig2.y, Ludwig2.width, Ludwig2.height)) {

        Ludwig2.isActive = 0;
        fireBall.isActive = 0;
    }

    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  Ludwig3.x, Ludwig3.y, Ludwig3.width, Ludwig3.height)) {

        Ludwig3.isActive = 0;
        fireBall.isActive = 0;
    }

    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  Ludwig4.x, Ludwig4.y, Ludwig4.width, Ludwig4.height)) {

        Ludwig4.isActive = 0;
        fireBall.isActive = 0;
    }
}

void initBossFight() {

    DMANow(3, bossFightTiles, &((CB*) 0x6000000)[0], 13088 / 2);
    DMANow(3, bossFightMap, &((SB*) 0x6000000)[24], 8192 / 2);
    DMANow(3, bossFightPal, ((unsigned short*) 0x5000000), 512 / 2);


    DMANow(3, chronoSpritesheetTiles, &((CB*) 0x6000000)[4], 32768 / 2);
    DMANow(3, chronoSpritesheetPal, ((u16*) 0x5000200), 256);

    waitForVBlank();
    hideSprites();
    rayquaza.lives = 25;
    stopSounds();
    playSoundA(bossMusic_data, bossMusic_length, 1);
}


void updateRayquaza() {
    if (collision(fireBall.x, fireBall.y, fireBall.width, fireBall.height,
                  rayquaza.x, rayquaza.y, rayquaza.width, rayquaza.height)) {
        fireBall.isActive = 0;
        rayquaza.lives = rayquaza.lives - 1;
        if (rayquaza.lives < 1) {

            door3.isActive = 1;
        }
    }
    mgba_printf("rayquaza lives: %d", rayquaza.lives);
    if (rayquaza.lives > 0) {
        rayquaza.isActive = 1;
    } else {
        rayquaza.isActive = 0;
    }


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


    static int fireCounter = 0;
    fireCounter++;
    if (fireCounter >= 10) {

        bossBlast.x = rayquaza.x;
        bossBlast.y = rayquaza.y;
        bossBlast.isActive = 1;
        fireCounter = 0;
    }
    }

}
