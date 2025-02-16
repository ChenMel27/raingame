#ifndef RAIN_H
#define RAIN_H
// Max rain amount
#define MAX_RAIN 100
// Max rain speed
#define MAX_SPEED 3

typedef struct {
    int x;
    int y;
    int speed;
    int active;
} Rain;

extern Rain rainDrops[MAX_RAIN];

// Tracks round
extern int currentRound;

void initRain();
void updateRain();
void drawRain();
void increaseRainFall();

#endif