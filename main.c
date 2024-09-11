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
#include "digitalSound.h"
#include "pokemonDPLake.h"
#include "LegendOfZelda.h"
#include "TESTstartScreen.h"
#include "movingClouds.h"
#include "bossFight.h"
#include "secondMovingClouds.h"

// prototypes
void initialize();

// state prototypes
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

// game states
enum {START, INSTRUCTIONS, GAME, GAME2, GAME3, PAUSE, PAUSE2, PAUSE3, LOSE, WIN, BOSS, BOSSLOSE};
int state;

// buttons
unsigned short buttons;
unsigned short oldButtons;

// determines game state
int livesRemaining;

int main() {
    initialize();
    setupSounds();
    while (1) {
        waitForVBlank();
        oldButtons = buttons;
        buttons = REG_BUTTONS;
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

// set up GBA
void initialize() {
    REG_DISPCTL = MODE(0) | BG0_ENABLE | BG1_ENABLE;
    mgba_open();
    oldButtons = 0;
    buttons = REG_BUTTONS;
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

	REG_IME = 0;

    //Handle VBlank interrupts
    if (REG_IF & IRQ_VBLANK) {
        if (soundA.isPlaying) {
            soundA.vBlankCount++;
            if (soundA.vBlankCount > soundA.durationInVBlanks) {
                if (soundA.looping) {
                    //loop sound
                    playSoundA(soundA.data, soundA.dataLength, soundA.looping);
                } else {
                    //stop sound
                    soundA.isPlaying = 0;
                    REG_TM0CNT = TIMER_OFF;
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
                    REG_TM1CNT = TIMER_OFF;
                    dma[2].cnt = 0;
                }
            }
        }
    }

    REG_IF = REG_IF;
	REG_IME = 1;

} 

void setupInterrupts() {

	REG_IME = 0;

    //Enable VBlank interrupts
    REG_IE = IRQ_VBLANK;
    REG_DISPSTAT = DISPSTAT_VBLANK_IRQ;

    REG_INTERRUPT = interruptHandler;
	REG_IME = 1;

}

int startHOFF;
int startVOFF;
int startHOFF2;
int startVOFF2;

void goToStart() {
    //playSoundA(LegendOfZelda_data, LegendOfZelda_length, 1);
    waitForVBlank();
    
    REG_DISPCTL = MODE(0) | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE;
    
    REG_BG0CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    DMANow(3, &TESTstartScreenTiles, &CHARBLOCK[0], TESTstartScreenTilesLen / 2);
    DMANow(3, &TESTstartScreenMap, &SCREENBLOCK[31], TESTstartScreenMapLen / 2);
    DMANow(3, &TESTstartScreenPal, BG_PALETTE, TESTstartScreenPalLen / 2);

    REG_BG1CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30);
    // Load movingCloud
    DMANow(3, &movingCloudsTiles, &CHARBLOCK[1], movingCloudsTilesLen / 2);
    DMANow(3, &movingCloudsMap, &SCREENBLOCK[30], movingCloudsMapLen / 2);
    //DMANow(3, &movingCloudsPal, BG_PALETTE, movingCloudsPalLen / 2);

    REG_BG2CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(2) | BG_SCREENBLOCK(28);
    //Second Moving Clouds
    DMANow(3, &secondMovingCloudsTiles, &CHARBLOCK[2], secondMovingCloudsTilesLen / 2);
    DMANow(3, &secondMovingCloudsMap, &SCREENBLOCK[28], secondMovingCloudsMapLen / 2);
    //DMANow(3, &secondMovingCloudsPal, BG_PALETTE, secondMovingCloudsPalLen / 2);

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
    REG_BG1HOFF = startHOFF;
    REG_BG2VOFF = startVOFF2;
    waitForVBlank();
}

void goToPause() {
    waitForVBlank();
    hideSprites();
    
    //Load background for pause screen
    DMANow(3, pausedScreenPal, BG_PALETTE, 256);
    DMANow(3, pausedScreenTiles, &CHARBLOCK[0], pausedScreenTilesLen / 2);
    DMANow(3, pausedScreenMap, &SCREENBLOCK[31], pausedScreenMapLen / 2);

    REG_DISPCTL = MODE(0) | BG0_ENABLE | BG1_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30);

    // Load movingCloud
    DMANow(3, &movingCloudsTiles, &CHARBLOCK[1], movingCloudsTilesLen / 2);
    DMANow(3, &movingCloudsMap, &SCREENBLOCK[30], movingCloudsMapLen / 2);

    updateClouds();
    drawClouds();

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = PAUSE;
}

void goToPause2() {
    waitForVBlank();
    hideSprites();

    //Load background for pause screen
    DMANow(3, pausedScreenPal, BG_PALETTE, 256);
    DMANow(3, pausedScreenTiles, &CHARBLOCK[0], pausedScreenTilesLen / 2);
    DMANow(3, pausedScreenMap, &SCREENBLOCK[31], pausedScreenMapLen / 2);

    REG_DISPCTL = MODE(0) | BG0_ENABLE | BG1_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = PAUSE2;
}

void goToPause3() {
    waitForVBlank();
    hideSprites();

    //Load background for pause screen
    DMANow(3, pausedScreenPal, BG_PALETTE, 256);
    DMANow(3, pausedScreenTiles, &CHARBLOCK[0], pausedScreenTilesLen / 2);
    DMANow(3, pausedScreenMap, &SCREENBLOCK[31], pausedScreenMapLen / 2);

    REG_DISPCTL = MODE(0) | BG0_ENABLE | BG1_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = PAUSE3;
}

void goToWin() {
    waitForVBlank();

    DMANow(3, winScreenPal, BG_PALETTE, 256);
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen / 2);
    DMANow(3, winScreenMap, &SCREENBLOCK[31], winScreenMapLen / 2);

    // Sets up and shows background
    REG_DISPCTL = MODE(0) | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = WIN;
}

void goToLose() {
    stopSounds();
    waitForVBlank();

    DMANow(3, loseScreenPal, BG_PALETTE, 256);
    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen/2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[31], loseScreenMapLen/2);

    // Sets up and shows the background
    REG_DISPCTL = MODE(0) | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = LOSE;
}

void goToInstructions() {
    waitForVBlank();

    DMANow(3, instructionsScreenPal, BG_PALETTE, 256);
    DMANow(3, instructionsScreenTiles, &CHARBLOCK[0], instructionsScreenTilesLen/2);
    DMANow(3, instructionsScreenMap, &SCREENBLOCK[31], instructionsScreenMapLen/2);

    // Sets up and shows the background
    REG_DISPCTL = MODE(0) | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = INSTRUCTIONS;
}

void goToGame() {
    stopSounds();
    //waitForVBlank();
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
    
    // Press START to go to the game
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        initPlayer();
    }

    // Press SELECT to go to the instructions
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstructions();
    }
    //tilemap modification and palette mod
    if (BUTTON_PRESSED(BUTTON_B)) {
        SCREENBLOCK[31].tilemap[OFFSET(2, 7, 17)] = TILEMAP_ENTRY_PALROW(1) | TILEMAP_ENTRY_TILEID(224);
        SCREENBLOCK[31].tilemap[OFFSET(2, 7, 14)] = TILEMAP_ENTRY_PALROW(1) | TILEMAP_ENTRY_TILEID(224);
        SCREENBLOCK[31].tilemap[OFFSET(2, 10, 17)] = TILEMAP_ENTRY_PALROW(1) | TILEMAP_ENTRY_TILEID(224);
        SCREENBLOCK[31].tilemap[OFFSET(2, 10, 18)] = TILEMAP_ENTRY_PALROW(1) | TILEMAP_ENTRY_TILEID(224);
        SCREENBLOCK[31].tilemap[OFFSET(2, 7, 21)] = TILEMAP_ENTRY_PALROW(1) | TILEMAP_ENTRY_TILEID(224);
        SCREENBLOCK[31].tilemap[OFFSET(2, 7, 25)] = TILEMAP_ENTRY_PALROW(1) | TILEMAP_ENTRY_TILEID(224);
        SCREENBLOCK[31].tilemap[OFFSET(2, 6, 85)] = TILEMAP_ENTRY_PALROW(1) | TILEMAP_ENTRY_TILEID(224);
        SCREENBLOCK[31].tilemap[OFFSET(2, 9, 77)] = TILEMAP_ENTRY_PALROW(1) | TILEMAP_ENTRY_TILEID(224);
        SCREENBLOCK[31].tilemap[272] = TILEMAP_ENTRY_PALROW(1) | TILEMAP_ENTRY_TILEID(224);
    }
}

void pause() {
    waitForVBlank();
    updateClouds();
    drawClouds();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

void pause2() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame2();
    }
}

void pause3() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToBossFight();
    }
}

void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
        playSoundA(LegendOfZelda_data, LegendOfZelda_length, 1);
    }
}

void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void instructions() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
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
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    //CHEAT MODE
    if (BUTTON_PRESSED(BUTTON_LSHOULDER) && BUTTON_PRESSED(BUTTON_RSHOULDER)) {
        //u16 temp = SPRITE_PALETTE[3];
        SPRITE_PALETTE[3] = RGB(31, 0, 0);
        enemy.yVel = 1;
        enemy.xVel = 1;
        enemy2.yVel = 1;
        enemy2.xVel = 1;
        enemy3.yVel = 1;
        enemy3.xVel = 1;
        enemy4.yVel = 1;
        enemy4.xVel = 1;
    }
    //Disable cheat mode
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
            SPRITE_PALETTE[3] = RGB(3, 4, 7);
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
    //initEnemiesLevel2();
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
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause2();
    }
    //CHEAT MODE
    if (BUTTON_PRESSED(BUTTON_LSHOULDER) && BUTTON_PRESSED(BUTTON_RSHOULDER)) {
        //u16 temp = SPRITE_PALETTE[3];
        SPRITE_PALETTE[3] = RGB(31, 0, 0);
        Ludwig.xVel = 1;
        Ludwig.yVel = 1;
        Ludwig2.xVel = 1;
        Ludwig2.yVel = 1;
        Ludwig3.xVel = 1;
        Ludwig3.yVel = 1;
    }
    //Disable cheat mode
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        SPRITE_PALETTE[3] = RGB(3, 4, 7);
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
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause3();
    }
    //CHEAT MODE
    if (BUTTON_PRESSED(BUTTON_LSHOULDER) && BUTTON_PRESSED(BUTTON_RSHOULDER)) {
        //u16 temp = SPRITE_PALETTE[3];
        SPRITE_PALETTE[3] = RGB(31, 0, 0);
        rayquaza.xVel = 1;
        rayquaza.yVel = 1;
    }
    //Disable cheat mode
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
            SPRITE_PALETTE[3] = RGB(3, 4, 7);
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

        // Update background 0 (far background) horizontal scroll
        // bg0HOFF++;

        // Update background 1 (near background) vertical scroll
        bg1HOFF++;
        if (bg1HOFF > (MAPHEIGHT - SCREENHEIGHT)) {
            bg1HOFF = 0;
        }

        // Apply scroll offsets to background registers
        REG_BG0HOFF = bg0HOFF;
        REG_BG1HOFF = bg1HOFF;

        // Check for input to transition to the game state
   }
   
}

void goToBossLose() {
    state = BOSSLOSE;
    stopSounds();
    waitForVBlank();

    DMANow(3, loseScreenPal, BG_PALETTE, 256);
    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen/2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[31], loseScreenMapLen/2);

    // Sets up and shows the background
    REG_DISPCTL = MODE(0) | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;
}

void bossLoseRestart() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame2();
        player.x = 120;
        player.y = 330;
        player.direction = DOWN;
        rayquaza.x = 215;
        rayquaza.y = 30;
    }
}