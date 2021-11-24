add_library(FTPSERVER_FILES STATIC
        ftpd.c
        )

target_include_directories(FTPSERVER_FILES PUBLIC
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Internet/FTPServer
        )
