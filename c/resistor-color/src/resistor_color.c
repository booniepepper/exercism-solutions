#include "resistor_color.h"

#include <stdbool.h>
#include <stdlib.h>

const bool COLORS_INITIALIZED = false;
static resistor_band_t COLORS[NUM_COLORS];

int color_code(resistor_band_t color)
{
    return color;
}

resistor_band_t *colors()
{
    if (!COLORS_INITIALIZED) {
        for (int i = 0; i <= NUM_COLORS; i++) {
            COLORS[i] = i;
        }
    }
    return COLORS;
}

