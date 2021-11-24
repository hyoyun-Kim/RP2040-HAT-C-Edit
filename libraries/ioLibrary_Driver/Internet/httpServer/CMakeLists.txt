add_library(HTTPSERVER_FILES STATIC
        httpParser.c
        httpServer.c
        httpUtil.c
        )

target_include_directories(HTTPSERVER_FILES PUBLIC
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Internet/httpServer
        )
