# Establecer la versión mínima de CMake
cmake_minimum_required(VERSION 3.13)

# Definir la placa de la Raspberry Pi Pico (ajusta esto si usas otra)
set(PICO_BOARD pico_w)

# Importar el SDK de Raspberry Pi Pico
include(pico_sdk_import.cmake)

# Definir el nombre del proyecto
project(proyecto-pico)

# Inicializar el SDK
pico_sdk_init()

# Agregar los archivos fuente al proyecto
add_executable(proyecto-pico
    src/main.c       # Archivo principal
    src/oled.c       # Funciones para la pantalla OLED
    src/font.c       # Definición de la fuente
)

# Directorios de inclusión
target_include_directories(proyecto-pico PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/src  # Carpeta de archivos fuente locales
)

# Generar archivos de salida como map/bin/hex
pico_add_extra_outputs(proyecto-pico)

# Vincular las bibliotecas necesarias para el proyecto
target_link_libraries(proyecto-pico
    pico_stdlib      # Biblioteca estándar de Pico
    hardware_i2c     # Biblioteca para trabajar con I2C
)

# Habilitar salida por USB (para usar el puerto USB para depuración)
pico_enable_stdio_usb(proyecto-pico 1)
pico_enable_stdio_uart(proyecto-pico 0)