add_library(SNTP_FILES STATIC
        sntp.c
        )

target_include_directories(SNTP_FILES PUBLIC
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Internet/SNTP
        )
