# ioLibrary_Driver
add_library(SPI_FILES STATIC)

target_sources(SPI_FILES PUBLIC
        ${PORT_DIR}/ioLibrary_Driver/w5x00_spi.c
)

target_include_directories(SPI_FILES PUBLIC
        ${WIZNET_DIR}/Ethernet
        ${PORT_DIR}/ioLibrary_Driver
        ${PORT_DIR}
        )

target_link_libraries(SPI_FILES PRIVATE
        pico_stdlib
        hardware_spi
        hardware_dma
        hardware_clocks
        )

# mbedtls
add_library(SSL_FILES STATIC)

target_sources(SSL_FILES PUBLIC
        ${PORT_DIR}/mbedtls/src/w5x00_ssl.c
)

target_include_directories(SSL_FILES PUBLIC
        ${WIZNET_DIR}/Ethernet
        ${PORT_DIR}/mbedtls/inc
        ${PORT_DIR}/timer
        )

target_link_libraries(SSL_FILES PRIVATE
        pico_stdlib
        ETHERNET_FILES
        TIMER_FILES
        mbedcrypto
        mbedx509
        mbedtls
        )

# timer
add_library(TIMER_FILES STATIC)

target_sources(TIMER_FILES PUBLIC
        ${PORT_DIR}/timer/timer.c
)

target_include_directories(TIMER_FILES PUBLIC
        ${PORT_DIR}/timer
        )

target_link_libraries(TIMER_FILES PRIVATE
        pico_stdlib      
        )

