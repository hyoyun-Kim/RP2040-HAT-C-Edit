add_library(SPI_FILES STATIC
        w5x00_spi.c        
        )

target_include_directories(SPI_FILES PUBLIC
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet
        ${CMAKE_SOURCE_DIR}/port/ioLibrary_Driver
        )

target_link_libraries(SPI_FILES PRIVATE
        pico_stdlib
        hardware_spi
        hardware_dma        
        )
