#include "oled.h"
#include "hardware/i2c.h"
#include "pico/stdlib.h"

// Configuración I2C
#define I2C_ADDRESS 0x3C // Dirección del SSD1306
#define I2C_SDA_PIN 4
#define I2C_SCL_PIN 5
#define I2C_FREQUENCY 100000

// Dimensiones de la pantalla OLED
#define OLED_WIDTH 128
#define OLED_HEIGHT 64

// Buffer de la pantalla OLED
uint8_t oled_buffer[OLED_WIDTH * OLED_HEIGHT / 8];

// Función para inicializar I2C
void init_i2c() {
    i2c_init(i2c0, I2C_FREQUENCY);
    gpio_set_function(I2C_SDA_PIN, GPIO_FUNC_I2C);
    gpio_set_function(I2C_SCL_PIN, GPIO_FUNC_I2C);
    gpio_pull_up(I2C_SDA_PIN);
    gpio_pull_up(I2C_SCL_PIN);
}

// Función para escribir datos en la pantalla
void oled_write_command(uint8_t command) {
    uint8_t data[2] = {0x00, command}; // 0x00 indica un comando
    i2c_write_blocking(i2c0, I2C_ADDRESS, data, 2, false);
}

void oled_write_data(uint8_t *data, size_t length) {
    uint8_t buf[length + 1];
    buf[0] = 0x40; // 0x40 indica datos
    for (size_t i = 0; i < length; i++) {
        buf[i + 1] = data[i];
    }
    i2c_write_blocking(i2c0, I2C_ADDRESS, buf, length + 1, false);
}

// Función para inicializar la pantalla OLED
void oled_init() {
    sleep_ms(100); // Espera para que la pantalla se inicie

    // Comandos de inicialización del SSD1306
    oled_write_command(0xAE); // Apagar la pantalla
    oled_write_command(0x20); // Configurar el modo de memoria
    oled_write_command(0x00); // Modo horizontal
    oled_write_command(0xB0); // Configuración de la página de inicio
    oled_write_command(0xC8); // ComScanDirección inversa
    oled_write_command(0x00); // Configurar baja columna de inicio
    oled_write_command(0x10); // Configurar alta columna de inicio
    oled_write_command(0x40); // Configurar línea de inicio
    oled_write_command(0x81); // Configurar el contraste
    oled_write_command(0xFF); // Contraste al máximo
    oled_write_command(0xA1); // Segment remap 0xA0/0xA1
    oled_write_command(0xA6); // Normal display
    oled_write_command(0xA8); // Multiplex ratio
    oled_write_command(0x3F); // 1/64 duty
    oled_write_command(0xA4); // Pantalla a partir de la RAM
    oled_write_command(0xD3); // Configuración del desplazamiento de la pantalla
    oled_write_command(0x00); // Sin desplazamiento
    oled_write_command(0xD5); // Configurar oscilador de frecuencia
    oled_write_command(0xF0); // Configurar divisor de frecuencia
    oled_write_command(0xD9); // Configurar período de pre-carga
    oled_write_command(0x22); 
    oled_write_command(0xDA); // Configurar configuración de hardware de la pantalla
    oled_write_command(0x12);
    oled_write_command(0xDB); // Configurar nivel de desactivación
    oled_write_command(0x20); // Nivel de VCOMH
    oled_write_command(0x8D); // Habilitar carga de la bomba de voltaje
    oled_write_command(0x14);
    oled_write_command(0xAF); // Encender la pantalla
}

// Función para limpiar el buffer de la pantalla
void oled_clear() {
    for (int i = 0; i < sizeof(oled_buffer); i++) {
        oled_buffer[i] = 0x00;
    }
}

// Función para mostrar el buffer en la pantalla
void oled_display() {
    for (uint8_t page = 0; page < 8; page++) {
        oled_write_command(0xB0 + page); // Página de inicio
        oled_write_command(0x00); // Columna baja
        oled_write_command(0x10); // Columna alta
        oled_write_data(&oled_buffer[OLED_WIDTH * page], OLED_WIDTH);
    }
}

// Función para dibujar un carácter en el buffer
void oled_draw_char(char c, int x, int y) {
    if (c < 'A' || c > 'Z') return; // Solo letras mayúsculas
    int index = c - 'A'; // Índice de la letra en el array font
    for (int i = 0; i < 8; i++) {
        uint8_t col = font[index][i];
        for (int j = 0; j < 8; j++) {
            if (col & (1 << j)) {
                oled_buffer[(x + i) + ((y + j) / 8) * OLED_WIDTH] |= (1 << (y + j) % 8);
            }
        }
    }
}

// Función para mostrar un mensaje en el OLED
void oled_show_message(const char *message, int x, int y) {
    int posX = x;
    int posY = y;
    while (*message) {
        oled_draw_char(*message++, posX, posY);
        posX += 8; // Distancia entre letras
        if (posX >= OLED_WIDTH - 8) {
            posX = x;  // Reseteamos la posición X al inicio
            posY += 8; // Avanzamos a la siguiente línea
            if (posY >= OLED_HEIGHT) break; // Evitar que el texto se desborde
        }
    }
}