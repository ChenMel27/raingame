#ifndef PLAYER_H
#define PLAYER_H

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

void initializePlayer();
void updatePlayer();
void drawPlayer();
void resetGame();

#endif
