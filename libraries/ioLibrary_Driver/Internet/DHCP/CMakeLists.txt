add_library(DHCP_FILES STATIC
        dhcp.c
        )

target_include_directories(DHCP_FILES PUBLIC
        ../../Ethernet
        )
