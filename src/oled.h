#ifndef OLEDC_H
#define OLEDC_H

#include <stdint.h>
#include <stddef.h>

// Funciones
void init_i2c();
void oled_init();
void oled_clear();
void oled_display();
void oled_write_command(uint8_t command);
void oled_write_data(uint8_t *data, size_t length);
void oled_draw_char(char c, int x, int y);
void oled_show_message(const char *message, int x, int y);

// Arreglo de la fuente
extern const uint8_t font[26][8];

#endif