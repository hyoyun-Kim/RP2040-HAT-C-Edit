add_library(FTPCLIENT_FILES STATIC
        ftpc.c
        )

target_include_directories(FTPCLIENT_FILES PUBLIC
        ../../Ethernet
        ${CMAKE_CURRENT_SOURCE_DIR}
        )
