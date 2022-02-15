add_executable(w5x00_dhcp_dns
        w5x00_dhcp_dns.c        
        )

target_link_libraries(w5x00_dhcp_dns PUBLIC
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

pico_enable_stdio_usb(w5x00_dhcp_dns 1)
pico_enable_stdio_uart(w5x00_dhcp_dns 0)

pico_add_extra_outputs(w5x00_dhcp_dns)
