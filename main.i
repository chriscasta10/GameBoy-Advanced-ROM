# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "main.c" 2
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
# 4 "main.c" 2
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
# 5 "main.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[4704];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[256];
# 6 "main.c" 2
# 1 "map1.h" 1
# 22 "map1.h"
extern const unsigned short map1Tiles[43216];


extern const unsigned short map1Map[20294];


extern const unsigned short map1Pal[256];
# 7 "main.c" 2
# 1 "chronoSpritesheet.h" 1
# 21 "chronoSpritesheet.h"
extern const unsigned short chronoSpritesheetTiles[16384];


extern const unsigned short chronoSpritesheetPal[256];
# 8 "main.c" 2
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
# 9 "main.c" 2
# 1 "pausedScreen.h" 1
# 22 "pausedScreen.h"
extern const unsigned short pausedScreenTiles[6960];


extern const unsigned short pausedScreenMap[1024];


extern const unsigned short pausedScreenPal[256];
# 10 "main.c" 2
# 1 "winScreen.h" 1
# 22 "winScreen.h"
extern const unsigned short winScreenTiles[6608];


extern const unsigned short winScreenMap[1024];


extern const unsigned short winScreenPal[256];
# 11 "main.c" 2
# 1 "loseScreen.h" 1
# 22 "loseScreen.h"
extern const unsigned short loseScreenTiles[8288];


extern const unsigned short loseScreenMap[1024];


extern const unsigned short loseScreenPal[256];
# 12 "main.c" 2
# 1 "instructionsScreen.h" 1
# 22 "instructionsScreen.h"
extern const unsigned short instructionsScreenTiles[6112];


extern const unsigned short instructionsScreenMap[1024];


extern const unsigned short instructionsScreenPal[256];
# 13 "main.c" 2
# 1 "level1.h" 1
# 22 "level1.h"
extern const unsigned short level1Tiles[6416];


extern const unsigned short level1Map[6144];


extern const unsigned short level1Pal[256];
# 14 "main.c" 2
# 1 "enemySprite.h" 1
# 22 "enemySprite.h"
extern const unsigned short enemySpriteTiles[2736];


extern const unsigned short enemySpriteMap[1024];


extern const unsigned short enemySpritePal[256];
# 15 "main.c" 2
# 1 "collisionmap.h" 1
# 21 "collisionmap.h"
extern const unsigned short collisionMapBitmap[131072];


extern const unsigned short collisionMapPal[256];
# 16 "main.c" 2
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
# 17 "main.c" 2
# 1 "pokemonDPLake.h" 1


extern const unsigned int pokemonDPLake_sampleRate;
extern const unsigned int pokemonDPLake_length;
extern const signed char pokemonDPLake_data[];
# 18 "main.c" 2
# 1 "LegendOfZelda.h" 1


extern const unsigned int LegendOfZelda_sampleRate;
extern const unsigned int LegendOfZelda_length;
extern const signed char LegendOfZelda_data[];
# 19 "main.c" 2
# 1 "TESTstartScreen.h" 1
# 22 "TESTstartScreen.h"
extern const unsigned short TESTstartScreenTiles[4704];


extern const unsigned short TESTstartScreenMap[1024];


extern const unsigned short TESTstartScreenPal[256];
# 20 "main.c" 2
# 1 "movingClouds.h" 1
# 22 "movingClouds.h"
extern const unsigned short movingCloudsTiles[2592];


extern const unsigned short movingCloudsMap[1024];


extern const unsigned short movingCloudsPal[256];
# 21 "main.c" 2
# 1 "bossFight.h" 1
# 22 "bossFight.h"
extern const unsigned short bossFightTiles[6544];


extern const unsigned short bossFightMap[4096];


extern const unsigned short bossFightPal[256];
# 22 "main.c" 2
# 1 "secondMovingClouds.h" 1
# 22 "secondMovingClouds.h"
extern const unsigned short secondMovingCloudsTiles[2256];


extern const unsigned short secondMovingCloudsMap[1024];


extern const unsigned short secondMovingCloudsPal[256];
# 23 "main.c" 2


void initialize();


void goToStart();
void goToInstructions();
void goToGame();
void goToGame2();
void goToPause();
void goToLose();
void start();
void instructions();
void game();
void game2();
void pause();
void lose();


enum {START, INSTRUCTIONS, GAME, GAME2, GAME3, PAUSE, PAUSE2, PAUSE3, LOSE, WIN, BOSS, BOSSLOSE};
int state;


unsigned short buttons;
unsigned short oldButtons;


int livesRemaining;

int main() {
    initialize();
    setupSounds();
    while (1) {
        waitForVBlank();
        oldButtons = buttons;
        buttons = (*(volatile unsigned short*) 0x04000130);
        updatePlayer();

        switch (state) {
            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME:
                game();
                break;
            case GAME2:
                game2();
                break;
            case BOSS:
                boss();
                break;
            case PAUSE:
                pause();
                break;
            case PAUSE2:
                pause2();
                break;
            case PAUSE3:
                pause3();
                break;
            case LOSE:
                lose();
                break;
            case WIN:
                win();
                break;
            case BOSSLOSE:
                bossLoseRestart();
                break;
        }
    }
}


void initialize() {
    (*(volatile unsigned short*) 0x4000000) = ((0) & 7) | ((1 << (8 + (0 & 3)))) | ((1 << (8 + (1 & 3))));
    mgba_open();
    oldButtons = 0;
    buttons = (*(volatile unsigned short*) 0x04000130);
    hideSprites();

    setupSounds();
    setupInterrupts();

    player.width = 16;
    player.height = 17;
    player.x = 80;
    player.y = 70;
    player.numFrames = 3;
    player.direction = UP;
    player.timeUntilNextFrame = 5;
    player.xVel = 2;
    player.yVel = 2;
    player.oamIndex = 0;
    goToStart();
    playSoundA(LegendOfZelda_data, LegendOfZelda_length, 1);
}

void interruptHandler() {

 (*(unsigned short*) 0x4000208) = 0;


    if ((*(volatile unsigned short*) 0x4000202) & (1 << 0)) {
        if (soundA.isPlaying) {
            soundA.vBlankCount++;
            if (soundA.vBlankCount > soundA.durationInVBlanks) {
                if (soundA.looping) {

                    playSoundA(soundA.data, soundA.dataLength, soundA.looping);
                } else {

                    soundA.isPlaying = 0;
                    (*(volatile unsigned short*) 0x4000102) = (0 << 7);
                    dma[1].cnt = 0;
                }
            }
        }

        if (soundB.isPlaying) {
            soundB.vBlankCount++;
            if (soundB.vBlankCount > soundB.durationInVBlanks) {
                if (soundB.looping) {
                    playSoundB(soundB.data, soundB.dataLength, soundB.looping);
                } else {
                    soundB.isPlaying = 0;
                    (*(volatile unsigned short*) 0x4000106) = (0 << 7);
                    dma[2].cnt = 0;
                }
            }
        }
    }

    (*(volatile unsigned short*) 0x4000202) = (*(volatile unsigned short*) 0x4000202);
 (*(unsigned short*) 0x4000208) = 1;

}

void setupInterrupts() {

 (*(unsigned short*) 0x4000208) = 0;


    (*(unsigned short*) 0x4000200) = (1 << 0);
    (*(unsigned short*) 0x4000004) = (1 << 3);

    (*((ihp*) 0x03007FFC)) = interruptHandler;
 (*(unsigned short*) 0x4000208) = 1;

}

int startHOFF;
int startVOFF;
int startHOFF2;
int startVOFF2;

void goToStart() {

    waitForVBlank();

    (*(volatile unsigned short*) 0x4000000) = ((0) & 7) | ((1 << (8 + (0 & 3)))) | ((1 << (8 + (1 & 3)))) | ((1 << (8 + (2 & 3))));

    (*(volatile unsigned short*) 0x4000008) = (0 << 7) | (0 << 14) | ((0) << 2) | ((31) << 8);
    DMANow(3, &TESTstartScreenTiles, &((CB*) 0x6000000)[0], 9408 / 2);
    DMANow(3, &TESTstartScreenMap, &((SB*) 0x6000000)[31], 2048 / 2);
    DMANow(3, &TESTstartScreenPal, ((unsigned short*) 0x5000000), 512 / 2);

    (*(volatile unsigned short*) 0x400000A) = (0 << 7) | (0 << 14) | ((1) << 2) | ((30) << 8);

    DMANow(3, &movingCloudsTiles, &((CB*) 0x6000000)[1], 5184 / 2);
    DMANow(3, &movingCloudsMap, &((SB*) 0x6000000)[30], 2048 / 2);


    (*(volatile unsigned short*) 0x400000C) = (0 << 7) | (0 << 14) | ((2) << 2) | ((28) << 8);

    DMANow(3, &secondMovingCloudsTiles, &((CB*) 0x6000000)[2], 4512 / 2);
    DMANow(3, &secondMovingCloudsMap, &((SB*) 0x6000000)[28], 2048 / 2);


    hOff = 0;
    vOff = 0;

    startHOFF = 0;
    startVOFF = 0;

    startHOFF2 = 0;
    startVOFF2 = 0;

    state = START;
}

void updateClouds() {
    startHOFF--;
    startVOFF2++;
}
void drawClouds() {
    (*(volatile unsigned short*) 0x04000014) = startHOFF;
    (*(volatile unsigned short*) 0x0400001A) = startVOFF2;
    waitForVBlank();
}

void goToPause() {
    waitForVBlank();
    hideSprites();


    DMANow(3, pausedScreenPal, ((unsigned short*) 0x5000000), 256);
    DMANow(3, pausedScreenTiles, &((CB*) 0x6000000)[0], 13920 / 2);
    DMANow(3, pausedScreenMap, &((SB*) 0x6000000)[31], 2048 / 2);

    (*(volatile unsigned short*) 0x4000000) = ((0) & 7) | ((1 << (8 + (0 & 3)))) | ((1 << (8 + (1 & 3))));
    (*(volatile unsigned short*) 0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8);
    (*(volatile unsigned short*) 0x400000A) = (0 << 14) | ((1) << 2) | ((30) << 8);


    DMANow(3, &movingCloudsTiles, &((CB*) 0x6000000)[1], 5184 / 2);
    DMANow(3, &movingCloudsMap, &((SB*) 0x6000000)[30], 2048 / 2);

    updateClouds();
    drawClouds();

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;

    state = PAUSE;
}

void goToPause2() {
    waitForVBlank();
    hideSprites();


    DMANow(3, pausedScreenPal, ((unsigned short*) 0x5000000), 256);
    DMANow(3, pausedScreenTiles, &((CB*) 0x6000000)[0], 13920 / 2);
    DMANow(3, pausedScreenMap, &((SB*) 0x6000000)[31], 2048 / 2);

    (*(volatile unsigned short*) 0x4000000) = ((0) & 7) | ((1 << (8 + (0 & 3)))) | ((1 << (8 + (1 & 3))));
    (*(volatile unsigned short*) 0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8);
    (*(volatile unsigned short*) 0x400000A) = (0 << 14) | ((1) << 2) | ((30) << 8);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;

    state = PAUSE2;
}

void goToPause3() {
    waitForVBlank();
    hideSprites();


    DMANow(3, pausedScreenPal, ((unsigned short*) 0x5000000), 256);
    DMANow(3, pausedScreenTiles, &((CB*) 0x6000000)[0], 13920 / 2);
    DMANow(3, pausedScreenMap, &((SB*) 0x6000000)[31], 2048 / 2);

    (*(volatile unsigned short*) 0x4000000) = ((0) & 7) | ((1 << (8 + (0 & 3)))) | ((1 << (8 + (1 & 3))));
    (*(volatile unsigned short*) 0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8);
    (*(volatile unsigned short*) 0x400000A) = (0 << 14) | ((1) << 2) | ((30) << 8);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;

    state = PAUSE3;
}

void goToWin() {
    waitForVBlank();

    DMANow(3, winScreenPal, ((unsigned short*) 0x5000000), 256);
    DMANow(3, winScreenTiles, &((CB*) 0x6000000)[0], 13216 / 2);
    DMANow(3, winScreenMap, &((SB*) 0x6000000)[31], 2048 / 2);


    (*(volatile unsigned short*) 0x4000000) = ((0) & 7) | ((1 << (8 + (0 & 3))));
    (*(volatile unsigned short*) 0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;

    state = WIN;
}

void goToLose() {
    stopSounds();
    waitForVBlank();

    DMANow(3, loseScreenPal, ((unsigned short*) 0x5000000), 256);
    DMANow(3, loseScreenTiles, &((CB*) 0x6000000)[0], 16576/2);
    DMANow(3, loseScreenMap, &((SB*) 0x6000000)[31], 2048/2);


    (*(volatile unsigned short*) 0x4000000) = ((0) & 7) | ((1 << (8 + (0 & 3))));
    (*(volatile unsigned short*) 0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;

    state = LOSE;
}

void goToInstructions() {
    waitForVBlank();

    DMANow(3, instructionsScreenPal, ((unsigned short*) 0x5000000), 256);
    DMANow(3, instructionsScreenTiles, &((CB*) 0x6000000)[0], 12224/2);
    DMANow(3, instructionsScreenMap, &((SB*) 0x6000000)[31], 2048/2);


    (*(volatile unsigned short*) 0x4000000) = ((0) & 7) | ((1 << (8 + (0 & 3))));
    (*(volatile unsigned short*) 0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;

    state = INSTRUCTIONS;
}

void goToGame() {
    stopSounds();

    initGame();
    state = GAME;
}

void goToGame2() {
    initGame2();
    rayquaza.isActive = 0;
    state = GAME2;
}

void goToBossFight() {
    initBossFight();
    state = BOSS;
}

void start() {
    waitForVBlank();
    updateClouds();
    drawClouds();


    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToGame();
        initPlayer();
    }


    if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
        goToInstructions();
    }

    if ((!(~(oldButtons) & ((1 << 1))) && (~(buttons) & ((1 << 1))))) {
        ((SB*) 0x6000000)[31].tilemap[((7) * (17) + (2))] = ((1 & 15) << 12) | (224 & 1023);
        ((SB*) 0x6000000)[31].tilemap[((7) * (14) + (2))] = ((1 & 15) << 12) | (224 & 1023);
        ((SB*) 0x6000000)[31].tilemap[((10) * (17) + (2))] = ((1 & 15) << 12) | (224 & 1023);
        ((SB*) 0x6000000)[31].tilemap[((10) * (18) + (2))] = ((1 & 15) << 12) | (224 & 1023);
        ((SB*) 0x6000000)[31].tilemap[((7) * (21) + (2))] = ((1 & 15) << 12) | (224 & 1023);
        ((SB*) 0x6000000)[31].tilemap[((7) * (25) + (2))] = ((1 & 15) << 12) | (224 & 1023);
        ((SB*) 0x6000000)[31].tilemap[((6) * (85) + (2))] = ((1 & 15) << 12) | (224 & 1023);
        ((SB*) 0x6000000)[31].tilemap[((9) * (77) + (2))] = ((1 & 15) << 12) | (224 & 1023);
        ((SB*) 0x6000000)[31].tilemap[272] = ((1 & 15) << 12) | (224 & 1023);
    }
}

void pause() {
    waitForVBlank();
    updateClouds();
    drawClouds();
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToGame();
    }
}

void pause2() {
    waitForVBlank();
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToGame2();
    }
}

void pause3() {
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToBossFight();
    }
}

void win() {
    waitForVBlank();
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToStart();
        playSoundA(LegendOfZelda_data, LegendOfZelda_length, 1);
    }
}

void lose() {
    waitForVBlank();
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToStart();
    }
}

void instructions() {
    waitForVBlank();
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToStart();
    }
    if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
        goToStart();
    }
}

void game() {
    updatePlayer();
    updateEnemy();
    updateFireBall();
    drawPlayer();
    drawEnemy();
    drawFireBall();
    checkCollision();
    checkWinCollision();
    checkFireBallKillCollision();
    waitForVBlank();

    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToPause();
    }

    if ((!(~(oldButtons) & ((1 << 9))) && (~(buttons) & ((1 << 9)))) && (!(~(oldButtons) & ((1 << 8))) && (~(buttons) & ((1 << 8))))) {

        ((u16*) 0x5000200)[3] = (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10);
        enemy.yVel = 1;
        enemy.xVel = 1;
        enemy2.yVel = 1;
        enemy2.xVel = 1;
        enemy3.yVel = 1;
        enemy3.xVel = 1;
        enemy4.yVel = 1;
        enemy4.xVel = 1;
    }

    if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
            ((u16*) 0x5000200)[3] = (((3) & 31) | ((4) & 31) << 5 | ((7) & 31) << 10);
            enemy.yVel = 3;
            enemy.xVel = 3;
            enemy2.yVel = 7;
            enemy2.xVel = 7;
            enemy3.yVel = 7;
            enemy3.xVel = 7;
            enemy4.yVel = 7;
            enemy4.xVel = 7;
    }
}

void game2() {

    updatePlayer2();
    updateEnemy2();
    updateFireBall2();
    drawPlayer();
    drawEnemiesLevel2();
    drawFireBall();
    checkCollision();
    checkWinCollision();
    checkFireBallKillCollision();
    waitForVBlank();

    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToPause2();
    }

    if ((!(~(oldButtons) & ((1 << 9))) && (~(buttons) & ((1 << 9)))) && (!(~(oldButtons) & ((1 << 8))) && (~(buttons) & ((1 << 8))))) {

        ((u16*) 0x5000200)[3] = (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10);
        Ludwig.xVel = 1;
        Ludwig.yVel = 1;
        Ludwig2.xVel = 1;
        Ludwig2.yVel = 1;
        Ludwig3.xVel = 1;
        Ludwig3.yVel = 1;
    }

    if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
        ((u16*) 0x5000200)[3] = (((3) & 31) | ((4) & 31) << 5 | ((7) & 31) << 10);
        Ludwig.xVel = 5;
        Ludwig.yVel = 5;
        Ludwig2.xVel = 5;
        Ludwig2.yVel = 5;
        Ludwig3.xVel = 2;
        Ludwig3.yVel = 2;
    }
}

void boss() {
    updatePlayer3();
    updateRayquaza();
    drawPlayer();
    drawFireBall();
    drawBoss();
    drawBossBlast();
    updateFireBall2();
    checkCollision();
    checkWinCollision();
    checkFireBallKillCollision();
    waitForVBlank();
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToPause3();
    }

    if ((!(~(oldButtons) & ((1 << 9))) && (~(buttons) & ((1 << 9)))) && (!(~(oldButtons) & ((1 << 8))) && (~(buttons) & ((1 << 8))))) {

        ((u16*) 0x5000200)[3] = (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10);
        rayquaza.xVel = 1;
        rayquaza.yVel = 1;
    }

    if ((!(~(oldButtons) & ((1 << 2))) && (~(buttons) & ((1 << 2))))) {
            ((u16*) 0x5000200)[3] = (((3) & 31) | ((4) & 31) << 5 | ((7) & 31) << 10);
            rayquaza.xVel = 3;
            rayquaza.yVel = 3;
    }

}

bg1HOFF = 0;
bg0HOFF = 0;
void startScreenParallax() {

    while (state = START)
   {
     waitForVBlank();





        bg1HOFF++;
        if (bg1HOFF > (512 - 160)) {
            bg1HOFF = 0;
        }


        (*(volatile unsigned short*) 0x04000010) = bg0HOFF;
        (*(volatile unsigned short*) 0x04000014) = bg1HOFF;


   }

}

void goToBossLose() {
    state = BOSSLOSE;
    stopSounds();
    waitForVBlank();

    DMANow(3, loseScreenPal, ((unsigned short*) 0x5000000), 256);
    DMANow(3, loseScreenTiles, &((CB*) 0x6000000)[0], 16576/2);
    DMANow(3, loseScreenMap, &((SB*) 0x6000000)[31], 2048/2);


    (*(volatile unsigned short*) 0x4000000) = ((0) & 7) | ((1 << (8 + (0 & 3))));
    (*(volatile unsigned short*) 0x4000008) = (0 << 14) | ((0) << 2) | ((31) << 8);

    (*(volatile unsigned short*) 0x04000010) = 0;
    (*(volatile unsigned short*) 0x04000012) = 0;
}

void bossLoseRestart() {
    if ((!(~(oldButtons) & ((1 << 3))) && (~(buttons) & ((1 << 3))))) {
        goToGame2();
        player.x = 120;
        player.y = 330;
        player.direction = DOWN;
        rayquaza.x = 215;
        rayquaza.y = 30;
    }
}
