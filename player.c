#include "player.h"
#include "map.h"
#include "gba.h"  
#include <stdlib.h> 

#define PLAYER_SIZE 2
#define MOVE_DELAY 1  // The higher the number, the slower the movement

int moveCounter = 0;  // Counter to track movement frames
Player player;
int score = 0;
extern Endpoint endpoint;

// Initialize player at the first checkpoint
void initializePlayer() {
    player.x = 5;
    player.y = 145;
    player.width = PLAYER_SIZE;
    player.height = PLAYER_SIZE;
    player.color = RED;
}

void resetGame() {
    // Erase the last player position before resetting
    drawRectangle(player.x, player.y, player.width, player.height, RGB(10, 10, 20));
    fillScreen(RGB(10, 10, 20));
    drawRectangle(0, 147, 240, 13, RGB(5, 15, 5));
    drawRectangle(endpoint.x - 1, endpoint.y, endpoint.width + 1, endpoint.height, BLACK);

    // Erase the previous score
    char oldScoreText[10];
    sprintf(oldScoreText, "Score: %d", score);
    drawString(10, 10, oldScoreText, RGB(10, 10, 20));  // Overwrite score with background color

    // Reset player position
    initializePlayer();  
    
    moveCounter = 0;  

    // Immediately draw the player again
    drawPlayer();

    // Redraw the updated score
    char newScoreText[10];
    sprintf(newScoreText, "Score: %d", score);
    drawString(10, 10, newScoreText, WHITE);
}


void updatePlayer() {
    // Erase the previous position by drawing over it with the background color
    drawRectangle(player.x, player.y - 9, player.width + 3, player.height + 9, RGB(10, 10, 20));

    // Only move every MOVE_DELAY frames
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

    // Draw new position
    drawPlayer();
}

// Draws the player
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
