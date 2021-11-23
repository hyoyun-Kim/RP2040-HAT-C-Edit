add_library(SNTP_FILES STATIC
        sntp.c
        )

target_include_directories(SNTP_FILES PUBLIC
        ../../Ethernet
        )
