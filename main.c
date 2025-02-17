#include "gba.h"
#include "map.h"
#include "player.h"
#include "rain.h"
#include "print.h"
#include <stdio.h>
#include "analogSound.h"

unsigned short buttons;
unsigned short oldButtons;
extern Endpoint endpoint;
// Define game states here
typedef enum { START, GAME, PAUSE, LOSE } GameState;
GameState state;


void initialize();
void updateGame();
void drawGame();
void resetGame();
void increaseRainFall();
void goToStart();
void goToGame();
void goToPause();
void goToLose();
void updateState();

int main() {
    initialize();
    state = START;
    goToStart();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        updateState();

        if (state == GAME) {
            updateGame();
            waitForVBlank();
            drawGame();

            // Collision check for player and endpoint (Score increases)
            if (collision(player.x, player.y, player.width + 2, player.height,
                          endpoint.x, endpoint.y, endpoint.width, endpoint.height)) {
                
                // Erase previous score before increasing
                char oldScoreText[10];
                sprintf(oldScoreText, "Score: %d", score);
                drawString(10, 10, oldScoreText, RGB(10, 10, 20));  
                score++;

                // Increase difficulty when score increases
                increaseRainFall();  

                // Play a sound when reaching the endpoint
                playAnalogSound(8);

                // Reset and clear pixels
                resetGame();  
            }

            // Collision check for player and rain (Game Over)
            for (int i = 0; i < currentRainAmount; i++) {
                if (rainDrops[i].active &&
                    collision(player.x, player.y - 10, player.width + 3, player.height + 10,
                              rainDrops[i].x, rainDrops[i].y, 3, 3)) {

                    // Erase previous score before resetting
                    char oldScoreText[10];
                    sprintf(oldScoreText, "Score: %d", score);
                    drawString(10, 10, oldScoreText, RGB(10, 10, 20));  

                    // Reset score
                    score = 0;

                    // Play a bad sound when getting hit by rain
                    playAnalogSound(6);

                    // Reset rain
                    currentRainAmount = 10;
                    initRain();

                    // Transition to the lose state
                    goToLose();  
                    break;
                }
            }
        }
    }
    return 0;
}

void initialize() {
    REG_DISPCTL = MODE(3) | BG_ENABLE(2);
    initSound();
    initializePlayer();
    initRain();
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

    // Display Score
    char scoreText[10];
    sprintf(scoreText, "Score: %d", score);
    drawString(10, 10, scoreText, WHITE);
}

void goToStart() {
    fillScreen(BLACK);
    drawRectangle(10, 50, 60, 110, GRAY);
    drawRectangle(90, 50, 60, 110, GRAY);
    drawRectangle(170, 50, 60, 110, GRAY);
    drawRectangle(40, 80, 50, 80, RGB(1, 1, 10));
    drawRectangle(120, 80, 50, 80, RGB(1, 1, 10));
    drawRectangle(200, 80, 50, 80, RGB(1, 1, 10));


    drawString(65, 10, "Welcome to Seattle", WHITE);
    drawString(60, 30, "Press START to Begin", WHITE);
    state = START;
}

void goToGame() {
    fillScreen(BLUE);
    initialize();
    state = GAME;
}

void goToPause() {
    fillScreen(GRAY);
    drawString(100, 80, "Paused - Press START", WHITE);
    state = PAUSE;
}

void goToLose() {
    fillScreen(RED);
    drawString(65, 30, "You got rained on?", WHITE);
    drawString(40, 45, "Are you even from Seattle?", WHITE);
    drawString(45, 60, "Press START to play again!", WHITE);
    state = LOSE;
}

void updateState() {
    switch (state) {
        case START:
            if (BUTTON_PRESSED(BUTTON_START)) {
                goToGame();
            }
            break;

        case GAME:
            if (BUTTON_PRESSED(BUTTON_SELECT)) {
                goToPause();
            }
            break;

        case PAUSE:
            if (BUTTON_PRESSED(BUTTON_START)) {
                goToGame();
            }
            break;

        case LOSE:
            if (BUTTON_PRESSED(BUTTON_START)) {
                goToStart();
            }
            break;
    }
}
