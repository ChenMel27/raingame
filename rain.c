#include "rain.h"
#include "gba.h"
#include <stdlib.h>

Rain rainDrops[MAX_RAIN];
int currentRainAmount = 10;  // Start with 10 raindrops
int currentRound = 1;  // Track round (1, 2, or 3)
extern int score;

void initRain() {
    for (int i = 0; i < MAX_RAIN; i++) {
        rainDrops[i].x = rand() % 226;  // Ensures 0 ≤ x ≤ 225
        rainDrops[i].y = rand() % SCREENHEIGHT;
        rainDrops[i].speed = 1 + (rand() % MAX_SPEED);
        rainDrops[i].active = (i < currentRainAmount);  // Only some raindrops are active
    }
}

// Update all rain drops *without erasing individually*
void updateRain() {
    waitForVBlank();  //  Wait before clearing and redrawing the whole layer

    // Erase entire previous rain layer at once (minimizes flicker)
    for (int i = 0; i < MAX_RAIN; i++) {
        if (rainDrops[i].active && rainDrops[i].y < 146) {
            drawRectangle(rainDrops[i].x, rainDrops[i].y, 2, 2, RGB(10, 10, 20));  
        }
    }

    // Move all raindrops down
    for (int i = 0; i < MAX_RAIN; i++) {
        if (rainDrops[i].active) {
            rainDrops[i].y += rainDrops[i].speed;

            // If the raindrop goes off-screen, reset it at the top
            if (rainDrops[i].y > SCREENHEIGHT - 15) {
                rainDrops[i].y = 0;
                rainDrops[i].x = rand() % 226;
            }
        }
    }
}

// Draws all active raindrops *after updating positions*
void drawRain() {
    for (int i = 0; i < MAX_RAIN; i++) {
        if (rainDrops[i].active) {
            drawRectangle(rainDrops[i].x, rainDrops[i].y, 2, 2, BLUE);
        }
    }
}

void increaseRainFall() {
    if (score < 10) {  //  Limit rain increase to level 10
        currentRainAmount += 5;  //  Add more raindrops every level
    }

    if (currentRainAmount > MAX_RAIN) {  
        currentRainAmount = MAX_RAIN;  
    }

    //  Increase speed slightly for each level
    for (int i = 0; i < currentRainAmount; i++) {  
        if (!rainDrops[i].active) {  
            rainDrops[i].active = 1;  
            rainDrops[i].speed = 1 + (rand() % MAX_SPEED) + (score / 3);  //  Faster rain per level
            rainDrops[i].x = rand() % 226;  
            rainDrops[i].y = rand() % 23;  
        }
    }
}


