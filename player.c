#include "player.h"
#include "map.h"
#include "gba.h"  
#include <stdlib.h> 
#include <stdio.h>

#define PLAYER_SIZE 2
#define MOVE_DELAY 1

// Track move frames
int moveCounter = 0;
Player player;

// Player score
int score = 0;
extern Endpoint endpoint;

// Initialize player at beginning
void initializePlayer() {
    player.x = 5;
    player.y = 145;
    player.width = PLAYER_SIZE;
    player.height = PLAYER_SIZE;
    player.color = RED;
}

void resetGame() {

    // Erase the last player position and clear rain
    drawRectangle(player.x, player.y, player.width, player.height, RGB(10, 10, 20));
    fillScreen(RGB(10, 10, 20));
    drawRectangle(0, 147, 240, 13, RGB(5, 15, 5));
    drawRectangle(endpoint.x - 1, endpoint.y, endpoint.width + 1, endpoint.height, BLACK);

    // Erase the previous score
    char oldScoreText[10];
    sprintf(oldScoreText, "Score: %d", score);
    drawString(10, 10, oldScoreText, RGB(10, 10, 20));

    // Reset player position
    initializePlayer();  
    
    moveCounter = 0;  

    // Re-draw the player at beginning
    drawPlayer();

    // Re-draw the updated score
    char newScoreText[10];
    sprintf(newScoreText, "Score: %d", score);
    drawString(10, 10, newScoreText, WHITE);
}


void updatePlayer() {

    // Erase the previous position of player (3 x 9) rectang;e
    drawRectangle(player.x, player.y - 9, player.width + 3, player.height + 9, RGB(10, 10, 20));

    // Logic to set player movement every MOVE_DELAY frames
    if (moveCounter % MOVE_DELAY == 0) {
        if (BUTTON_HELD(BUTTON_LEFT) && player.x > 1) {
            player.x -= 1;
        }
        if (BUTTON_HELD(BUTTON_RIGHT) && player.x < SCREENWIDTH - player.width) {
            player.x += 1;
        }
    }

    moveCounter++;

    if (player.y > SCREENHEIGHT - player.height) {
        player.y = SCREENHEIGHT - player.height;
    }

    // Re-draw
    drawPlayer();
}

// Draws the player with pixels
void drawPlayer() {

    setPixel(player.x, player.y, BLACK);
    setPixel(player.x + 2, player.y, BLACK);
    setPixel(player.x + 2, player.y - 1, RGB(25, 22, 17));
    setPixel(player.x + 1, player.y - 1, RGB(25, 22, 17));

    setPixel(player.x, player.y - 2, BLUE);
    setPixel(player.x + 1, player.y - 2, BLUE);
    setPixel(player.x + 2, player.y - 2, BLUE);
    
    setPixel(player.x, player.y - 3, YELLOW);
    setPixel(player.x, player.y - 4, YELLOW);
    setPixel(player.x, player.y - 5, YELLOW);
    setPixel(player.x, player.y - 6, YELLOW);
    setPixel(player.x, player.y - 7, YELLOW);
    setPixel(player.x, player.y - 8, YELLOW);
    setPixel(player.x, player.y - 9, YELLOW);


    setPixel(player.x + 1, player.y - 3, RGB(23, 20, 15));
    setPixel(player.x + 1, player.y - 4, RGB(23, 20, 15));
    setPixel(player.x + 1, player.y - 5, YELLOW);
    setPixel(player.x + 1, player.y - 6, YELLOW);
    setPixel(player.x + 1, player.y - 7, RGB(23, 20, 15));
    setPixel(player.x + 1, player.y - 8, YELLOW);
    setPixel(player.x + 1, player.y - 9, YELLOW);

    setPixel(player.x + 2, player.y - 3, RGB(23, 20, 15));
    setPixel(player.x + 2, player.y - 4, RGB(23, 20, 15));
    setPixel(player.x + 2, player.y - 5, YELLOW);
    setPixel(player.x + 2, player.y - 6, YELLOW);
    setPixel(player.x + 2, player.y - 7, RGB(23, 20, 15));
    setPixel(player.x + 2, player.y - 8, RGB(23, 20, 15));
    setPixel(player.x + 2, player.y - 9, YELLOW);
}
