#define MAPHEIGHT 512
#define MAPWIDTH 512

#define BOSSMAPHEIGHT 512
#define BOSSMAPWIDTH 512

#define FIRE_RATE 10 //originally 60

#define GAMEPAK_RAM  ((u8*)0x0E000000)

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

//Level2
void initEnemiesLevel2();
void drawEnemiesLevel2();

//save state functions
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
  // Add any other things you want to save in here!

} SAVE_DATA;

SAVE_DATA saveData;
