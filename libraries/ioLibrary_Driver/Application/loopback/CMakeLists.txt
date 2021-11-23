add_library(LOOPBACK_FILES STATIC
        loopback.c
        )

target_include_directories(LOOPBACK_FILES PUBLIC
        ../../Ethernet        
        )
