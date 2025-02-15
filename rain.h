#ifndef RAIN_H
#define RAIN_H

#define MAX_RAIN 20
#define MAX_SPEED 3  // Max rain speed

typedef struct {
    int x;
    int y;
    int speed;
    int active;
} Rain;

extern Rain rainDrops[MAX_RAIN];
extern int currentRound;  // Tracks which round we're in

void initRain();
void updateRain();
void drawRain();
void increaseRainFall();  // Increases rain every round

#endif