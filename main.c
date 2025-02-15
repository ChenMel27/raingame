#include "gba.h"
#include "map.h"
#include "player.h"
#include "rain.h"

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
        buttons = REG_BUTTONS;

        updateGame();
        waitForVBlank();
        drawGame();

        // Check if player reached endpoint
        if (collision(player.x, player.y, player.width + 2, player.height, endpoint.x, endpoint.y, endpoint.width, endpoint.height)) {
            // Erase previous score before increasing
            char oldScoreText[10];
            sprintf(oldScoreText, "Score: %d", score);
            drawString(10, 10, oldScoreText, RGB(10, 10, 20));  
            score++;
            increaseRainFall();  

            // Play a sound when reaching the endpoint
            playAnalogSound(8);

            // Erase player before resetting
            drawRectangle(player.x, player.y, player.width + 3, player.height, RGB(23, 20, 15));
            // Redraw endpoint and floor
            drawRectangle(endpoint.x - 1, endpoint.y, endpoint.width + 1, endpoint.height, BLACK);
            drawRectangle(0, 147, 240, 13, RGB(5, 15, 5));
            resetGame();  
        }

        // Check if a raindrop hit the player
        for (int i = 0; i < currentRainAmount; i++) {
            if (rainDrops[i].active && 
                collision(player.x, player.y - 11, player.width + 6, player.height + 11, rainDrops[i].x, rainDrops[i].y, 3, 3)) {
                // Erase previous score before resetting
                char oldScoreText[10];
                sprintf(oldScoreText, "Score: %d", score);
                drawString(10, 10, oldScoreText, RGB(10, 10, 20));  

                // Reset score
                score = 0;

                // Play a sound when getting hit by rain
                playAnalogSound(6);

                currentRainAmount = 10;
                initRain();

                // Clear rain
                fillScreen(RGB(10, 10, 20));
                drawRectangle(0, 147, 240, 13, RGB(5, 15, 5));
                drawRectangle(endpoint.x - 1, endpoint.y, endpoint.width + 1, endpoint.height, BLACK);

                resetGame();  

                break;
            }
        }
    }
    return 0;
}




void initialize() {
    REG_DISPCTL = MODE(3) | BG_ENABLE(2);
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

//  Draw only what changed
void drawGame() {
    drawPlayer();
    drawRain();

    //  Display Score
    char scoreText[10];
    sprintf(scoreText, "Score: %d", score);
    drawString(10, 10, scoreText, WHITE);
}
