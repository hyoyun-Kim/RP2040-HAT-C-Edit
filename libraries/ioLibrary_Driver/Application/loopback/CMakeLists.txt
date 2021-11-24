add_library(LOOPBACK_FILES STATIC
        loopback.c
        )

target_include_directories(LOOPBACK_FILES PUBLIC        
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Application/loopback
        )
