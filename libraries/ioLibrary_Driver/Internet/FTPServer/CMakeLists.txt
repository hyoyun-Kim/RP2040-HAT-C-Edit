add_library(FTPSERVER_FILES STATIC
        ftpd.c
        )

target_include_directories(FTPSERVER_FILES PUBLIC
        ../../Ethernet
        ${CMAKE_CURRENT_SOURCE_DIR}
        )
