set(LWIP_PATH ${PICO_EXTRAS_PATH}/lib/lwip)

add_executable(w5x00_lwiperf
        w5x00_lwiperf.c
        ${LWIP_PATH}/src/apps/lwiperf/lwiperf.c
        )

target_link_libraries(w5x00_lwiperf PUBLIC
        pico_stdlib
        hardware_spi
        hardware_dma  
        lwip
        ETHERNET_FILES
        SPI_FILES        
        W5x00_LWIP_FILES
)

# This is required to include lwipopts.h
target_include_directories(lwip INTERFACE        
        ${PORT_DIR}/lwip
)

pico_enable_stdio_usb(w5x00_lwiperf 1)
pico_enable_stdio_uart(w5x00_lwiperf 0)

pico_add_extra_outputs(w5x00_lwiperf)
