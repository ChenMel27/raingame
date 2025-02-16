#include "rain.h"
#include "gba.h"
#include <stdlib.h>

Rain rainDrops[MAX_RAIN];

// 10 raindrops to start with
int currentRainAmount = 10;

// 1 / 3 rounds
int currentRound = 1;
extern int score;

void initRain() {
    for (int i = 0; i < MAX_RAIN; i++) {
        // Don't go past endpoint 
        rainDrops[i].x = rand() % 226;
        rainDrops[i].y = rand() % SCREENHEIGHT;
        rainDrops[i].speed = 1 + (rand() % MAX_SPEED);

        // Only activate current rain number of rain 
        rainDrops[i].active = (i < currentRainAmount);
    }
}

// Update rain
void updateRain() {
    waitForVBlank();

    // Erase previous rain layer
    for (int i = 0; i < MAX_RAIN; i++) {
        if (rainDrops[i].active && rainDrops[i].y < 146) {
            drawRectangle(rainDrops[i].x, rainDrops[i].y, 2, 2, RGB(10, 10, 20));  
        }
    }

    // Controls the movement of the rain down
    // By incsreasing y by the speed of the active rain
    for (int i = 0; i < MAX_RAIN; i++) {
        if (rainDrops[i].active) {
            rainDrops[i].y += rainDrops[i].speed;

            // If the raindrop goes off-screen / maxes out y, reset it
            if (rainDrops[i].y > SCREENHEIGHT - 15) {
                rainDrops[i].y = 0;
                rainDrops[i].x = rand() % 226;
            }
        }
    }
}

// Draws active raindrops
void drawRain() {
    for (int i = 0; i < MAX_RAIN; i++) {
        if (rainDrops[i].active) {
            drawRectangle(rainDrops[i].x, rainDrops[i].y, 2, 2, BLUE);
        }
    }
}

void increaseRainFall() {
      // Add 5 more raindrops every level
    currentRainAmount += 5;


    if (currentRainAmount > MAX_RAIN) {  
        currentRainAmount = MAX_RAIN;  
    }

    // Increase the speed for each level
    for (int i = 0; i < currentRainAmount; i++) {  
        if (!rainDrops[i].active) {  
            rainDrops[i].active = 1;  

            // Faster rain per each increased level
            rainDrops[i].speed = 1 + (rand() % MAX_SPEED) + (score / 3);
            rainDrops[i].x = rand() % 226;  
            rainDrops[i].y = rand() % 23;  
        }
    }
}


