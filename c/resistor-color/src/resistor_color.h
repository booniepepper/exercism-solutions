#ifndef RESISTOR_COLOR_H
#define RESISTOR_COLOR_H

typedef enum {
      BLACK,
      BROWN,
      RED,
      ORANGE,
      YELLOW,
      GREEN,
      BLUE,
      VIOLET,
      GREY,
      WHITE
} resistor_band_t;

#define NUM_COLORS 10

int color_code(resistor_band_t color);
resistor_band_t *colors();

#endif
