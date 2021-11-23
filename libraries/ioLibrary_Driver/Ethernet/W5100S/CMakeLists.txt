add_library(W5100S_FILES STATIC
        w5100s.c
        )

target_include_directories(W5100S_FILES PUBLIC
        ../../Ethernet        
        )

target_link_libraries(W5100S_FILES PUBLIC
        ETHERNET_FILES
        )
