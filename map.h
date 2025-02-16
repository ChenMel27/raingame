#ifndef MAP_H
#define MAP_H

// Endpoint
typedef struct {
    int x;
    int y;
    int width;
    int height;
} Endpoint;

// Declare functions
void drawMap();
void drawBackground();

#endif
