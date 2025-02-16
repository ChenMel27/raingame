#include "map.h"
#include "gba.h"

// Endpoint location
Endpoint endpoint = {228, 0, 12, 147};

void drawBackground() {
    // Background
    fillScreen(RGB(10, 10, 20));

    // Floor
    drawRectangle(0, 147, 240, 13, RGB(5, 15, 5));

    // Endpoint
    drawRectangle(endpoint.x - 1, endpoint.y, endpoint.width + 1, endpoint.height, BLACK);
}

void drawMap() {
    drawBackground();
}
