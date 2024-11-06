#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/i2c.h"
#include "oled.h"

// Función principal
int main() {
    stdio_init_all();
    init_i2c();
    oled_init();
    oled_clear();

    // Mostrar mensaje en la pantalla
    oled_show_message("ROBERTO YAEL", 0, 0);  // Línea 1
    oled_show_message("SAN PEDRO", 0, 16);     // Línea 2
    oled_show_message("RIVERA", 0, 32);         // Línea 3

    oled_display();

    while (1) {
        // Bucle infinito
    }

    return 0;
}
