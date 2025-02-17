#include "art.h"
#include "gba.h"

void drawSeattleBG() {
    // Flooring
    drawRectangle(0, 0, 240, 40, RGB(3, 1, 19));
    drawRectangle(0, 40, 240, 40, RGB(4, 1, 18));
    drawRectangle(0, 80, 240, 40, RGB(5, 1, 17));
    drawRectangle(0, 120, 240, 40, RGB(6, 1, 15));
    
    drawRectangle(0, 140, 240, 20, BLACK);

    drawRectangle(7, 80, 40, 80, BLACK);
    
    /* *********** Building 1 *********** */

    // Body
    drawRectangle(12.5, 80, 36, 80, BLACK);

    // Windows
    drawRectangle(14, 84, 4, 4, WHITE);
    drawRectangle(14, 92, 4, 4, WHITE);
    drawRectangle(14, 100, 4, 4, WHITE);
    drawRectangle(14, 108, 4, 4, WHITE);
    drawRectangle(14, 116, 4, 4, WHITE);
    drawRectangle(14, 124, 4, 4, WHITE);
    drawRectangle(14, 132, 4, 4, WHITE);
    drawRectangle(22, 84, 4, 4, WHITE);
    drawRectangle(22, 92, 4, 4, WHITE);
    drawRectangle(22, 100, 4, 4, WHITE);
    drawRectangle(22, 108, 4, 4, WHITE);
    drawRectangle(22, 116, 4, 4, WHITE);
    drawRectangle(22, 124, 4, 4, WHITE);
    drawRectangle(22, 132, 4, 4, WHITE);
    drawRectangle(30, 84, 4, 4, WHITE);
    drawRectangle(30, 92, 4, 4, WHITE);
    drawRectangle(30, 100, 4, 4, WHITE);
    drawRectangle(30, 108, 4, 4, WHITE);
    drawRectangle(30, 116, 4, 4, WHITE);
    drawRectangle(30, 124, 4, 4, WHITE);
    drawRectangle(30, 132, 4, 4, WHITE);
    drawRectangle(38, 84, 4, 4, WHITE);
    drawRectangle(38, 92, 4, 4, WHITE);
    drawRectangle(38, 100, 4, 4, WHITE);
    drawRectangle(38, 108, 4, 4, WHITE);
    drawRectangle(38, 116, 4, 4, WHITE);
    drawRectangle(38, 124, 4, 4, WHITE);
    drawRectangle(38, 132, 4, 4, WHITE);

    // Roofing
    drawRectangle(9, 78, 37, 2, BLACK);
    drawRectangle(11, 76, 33, 2, BLACK);
    drawRectangle(14, 74, 27, 2, BLACK);

    /* *********** Building 2 *********** */
    drawRectangle(52, 80, 40, 80, BLACK);

    // Windows
    for (int i = 0; i < 4; i++) { 
        int x = 58 + (i * 8);  
        for (int j = 0; j < 7; j++) { 
            int y = 84 + (j * 8);  
            drawRectangle(x, y, 4, 4, WHITE);
        }
    }

    // Roofing
    drawRectangle(52, 78, 40, 2, BLACK);
    drawRectangle(54, 76, 37, 2, BLACK);
    drawRectangle(57, 74, 30, 2, BLACK);


    /* *********** Building 3 *********** */
    drawRectangle(97, 80, 40, 80, BLACK);

    // Windows
    for (int i = 0; i < 4; i++) { 
        int x = 103 + (i * 8);  
        for (int j = 0; j < 7; j++) { 
            int y = 84 + (j * 8);  
            drawRectangle(x, y, 4, 4, WHITE);
        }
    }

    // Roofing
    drawRectangle(97, 78, 40, 2, BLACK);
    drawRectangle(99, 76, 37, 2, BLACK);
    drawRectangle(102, 74, 30, 2, BLACK);

    /* *********** Building 4 *********** */
    drawRectangle(142, 80, 40, 80, BLACK);

    // Windows for the fourth building
    for (int i = 0; i < 4; i++) { 
        int x = 148 + (i * 8);  
        for (int j = 0; j < 7; j++) { 
            int y = 84 + (j * 8);  
            drawRectangle(x, y, 4, 4, WHITE);
        }
    }

    // Roofing
    drawRectangle(142, 78, 40, 2, BLACK);
    drawRectangle(144, 76, 37, 2, BLACK);
    drawRectangle(147, 74, 30, 2, BLACK);

    /* *********** Building 5 *********** */
    drawRectangle(190, 80, 40, 80, BLACK);

    // Windows
    for (int i = 0; i < 4; i++) { 
        int x = 196 + (i * 8);  
        for (int j = 0; j < 7; j++) { 
            int y = 84 + (j * 8);  
            drawRectangle(x, y, 4, 4, WHITE);
        }
    }

    // Roofing
    drawRectangle(190, 78, 40, 2, BLACK);
    drawRectangle(192, 76, 37, 2, BLACK);
    drawRectangle(195, 74, 30, 2, BLACK);

}

void drawPlayerBG() {
    setPixel(95, 139, RGB(20, 1, 1));
    setPixel(97, 139, RGB(20, 1, 1));
    setPixel(97, 138, RGB(25, 22, 17));
    setPixel(96, 138, RGB(25, 22, 17));
    setPixel(95, 137, BLUE);
    setPixel(96, 137, BLUE);
    setPixel(97, 137, BLUE);
    setPixel(95, 136, YELLOW);
    setPixel(95, 135, YELLOW);
    setPixel(95, 134, YELLOW);
    setPixel(95, 133, YELLOW);
    setPixel(95, 132, YELLOW);
    setPixel(95, 131, YELLOW);
    setPixel(95, 130, YELLOW);
    setPixel(96, 136, RGB(23, 20, 15));
    setPixel(96, 135, RGB(23, 20, 15));
    setPixel(96, 134, YELLOW);
    setPixel(96, 133, YELLOW);
    setPixel(96, 132, RGB(23, 20, 15));
    setPixel(96, 131, YELLOW);
    setPixel(96, 130, YELLOW);
    setPixel(97, 136, YELLOW);
    setPixel(97, 135, YELLOW);
    setPixel(98, 135, RGB(23, 20, 15));
    setPixel(97, 134, YELLOW);
    setPixel(97, 133, YELLOW);
    setPixel(97, 132, RGB(23, 20, 15));
    setPixel(97, 131, RGB(23, 20, 15));
    setPixel(97, 130, YELLOW);
}

void drawUmbrellaBG() {
    setPixel(98, 135, RGB(23, 20, 15));
    setPixel(98, 134, RGB(4, 14, 4));
    setPixel(98, 133, RGB(4, 14, 4));
    setPixel(98, 132, RGB(4, 14, 4));
    setPixel(98, 131, RGB(4, 14, 4));
    setPixel(98, 130, RGB(4, 14, 4));
    setPixel(98, 129, RGB(4, 14, 4));
    setPixel(98, 128, RGB(4, 14, 4));
    setPixel(97, 126, RGB(4, 14, 4));
    setPixel(99, 126, RGB(4, 14, 4));
    setPixel(96, 127, RGB(4, 14, 4));
    setPixel(100, 127, RGB(4, 14, 4));
    setPixel(98, 127, RGB(4, 14, 4));
    setPixel(99, 127, RGB(4, 14, 4));
    setPixel(97, 127, RGB(4, 14, 4));
    setPixel(95, 128, RGB(4, 14, 4));
    setPixel(101, 128, RGB(4, 14, 4));
    setPixel(98, 126, RGB(4, 14, 4));
}