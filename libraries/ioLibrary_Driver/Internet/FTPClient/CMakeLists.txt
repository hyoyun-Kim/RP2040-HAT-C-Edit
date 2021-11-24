add_library(FTPCLIENT_FILES STATIC
        ftpc.c
        )

target_include_directories(FTPCLIENT_FILES PUBLIC
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Internet/FTPClient
        )
