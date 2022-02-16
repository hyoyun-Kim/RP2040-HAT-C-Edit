set(LWIP_PATH ${PICO_EXTRAS_PATH}/lib/lwip)

add_executable(w5x00_loopback
        w5x00_loopback.c
        tcp_echoserver.c
        )

target_link_libraries(w5x00_loopback PUBLIC
        pico_stdlib
        hardware_spi
        hardware_dma  
        lwip
        ETHERNET_FILES
        SPI_FILES        
        W5x00_LWIP_FILES
)

target_include_directories(w5x00_loopback PUBLIC
        ${LWIP_PATH}/src/include
        ${CMAKE_CURRENT_SOURCE_DIR}
)

# This is required to include lwipopts.h
target_include_directories(lwip INTERFACE        
        ${PORT_DIR}/lwip        
)

pico_enable_stdio_usb(w5x00_loopback 1)
pico_enable_stdio_uart(w5x00_loopback 0)

pico_add_extra_outputs(w5x00_loopback)
