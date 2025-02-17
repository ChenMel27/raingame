# 1 "map.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "map.c"
# 1 "map.h" 1




typedef struct {
    int x;
    int y;
    int width;
    int height;
} Endpoint;


void drawMap();
void drawBackground();
# 2 "map.c" 2
# 1 "gba.h" 1
# 15 "gba.h"
extern volatile unsigned short* videoBuffer;
# 25 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 45 "gba.h"
void drawRectangle(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
void drawChar(int x, int y, char ch, volatile unsigned short color);
void drawString(int x, int y, char *str, volatile unsigned short color);
void drawLine(int x1, int y1, int x2, int y2, unsigned short color);
void drawHorizontalLine(int x1, int x2, int y, unsigned short color);
void fillBetweenLines(unsigned short color);
# 73 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 113 "gba.h"
void DMANow(int channel, volatile void* src, volatile void* dest, unsigned int ctrl);
# 3 "map.c" 2


Endpoint endpoint = {228, 0, 12, 147};

void drawBackground() {

    fillScreen((((10) & 31) | ((10) & 31) << 5 | ((20) & 31) << 10));


    drawRectangle(0, 147, 240, 13, (((5) & 31) | ((15) & 31) << 5 | ((5) & 31) << 10));


    drawRectangle(endpoint.x - 1, endpoint.y, endpoint.width + 1, endpoint.height, (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10));
}

void drawMap() {
    drawBackground();
}
