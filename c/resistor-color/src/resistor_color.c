#include "resistor_color.h"

#include <stdlib.h>

static resistor_band_t COLORS[] = { BLACK, BROWN, RED, ORANGE, YELLOW, GREEN, BLUE, VIOLET, GREY, WHITE };

int color_code(resistor_band_t color)
{
    return color;
}

resistor_band_t *colors()
{
    return COLORS;
}

