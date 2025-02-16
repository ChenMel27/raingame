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
# 25 "gba.h"
extern volatile unsigned short* videoBuffer;
# 35 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 55 "gba.h"
void drawRectangle(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
void drawChar(int x, int y, char ch, volatile unsigned short color);
void drawString(int x, int y, char *str, volatile unsigned short color);
void drawLine(int x1, int y1, int x2, int y2, unsigned short color);
void drawHorizontalLine(int x1, int x2, int y, unsigned short color);
void fillBetweenLines(unsigned short color);
# 83 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 123 "gba.h"
void DMANow(int channel, volatile void* src, volatile void* dest, unsigned int ctrl);
# 2 "main.c" 2
# 1 "map.h" 1




typedef struct {
    int x;
    int y;
    int width;
    int height;
} Endpoint;


void drawMap();
void drawBackground();
# 3 "main.c" 2
# 1 "player.h" 1



typedef struct {
    int x;
    int y;
    int width;
    int height;
    int speed;
    int lives;
    int round;
    unsigned short color;
} Player;

extern Player player;
extern int score;
extern int currentRainAmount;
extern int level;

void initPlayer();
void updatePlayer();
# 4 "main.c" 2
# 1 "rain.h" 1






typedef struct {
    int x;
    int y;
    int speed;
    int active;
} Rain;

extern Rain rainDrops[20];
extern int currentRound;

void initRain();
void updateRain();
void drawRain();
void increaseRainFall();
# 5 "main.c" 2

unsigned short buttons;
unsigned short oldButtons;
extern Endpoint endpoint;

void initialize();
void updateGame();
void drawGame();
void resetGame();
void increaseRainFall();

int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        updateGame();
        waitForVBlank();
        drawGame();


        if (collision(player.x, player.y, player.width + 2, player.height, endpoint.x, endpoint.y, endpoint.width, endpoint.height)) {


            char oldScoreText[10];
            sprintf(oldScoreText, "Score: %d", score);
            drawString(10, 10, oldScoreText, (((10) & 31) | ((10) & 31) << 5 | ((20) & 31) << 10));
            score++;


            increaseRainFall();


            playAnalogSound(8);


            resetGame();
        }


        for (int i = 0; i < currentRainAmount; i++) {
            if (rainDrops[i].active &&
                collision(player.x, player.y - 11, player.width + 6, player.height + 11, rainDrops[i].x, rainDrops[i].y, 3, 3)) {


                char oldScoreText[10];
                sprintf(oldScoreText, "Score: %d", score);
                drawString(10, 10, oldScoreText, (((10) & 31) | ((10) & 31) << 5 | ((20) & 31) << 10));


                score = 0;


                playAnalogSound(6);


                currentRainAmount = 10;
                initRain();


                resetGame();

                break;
            }
        }
    }
    return 0;
}




void initialize() {
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | (1 << (8 + ((2) % 4)));
    initializePlayer();
    initRain();
    initSound();
    mgba_open();
    drawMap();
}

void updateGame() {
    updatePlayer();
    updateRain();
}


void drawGame() {
    drawPlayer();
    drawRain();


    char scoreText[10];
    sprintf(scoreText, "Score: %d", score);
    drawString(10, 10, scoreText, (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10));
}
