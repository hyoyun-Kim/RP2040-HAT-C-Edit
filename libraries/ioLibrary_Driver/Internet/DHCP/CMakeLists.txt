add_library(DHCP_FILES STATIC
        dhcp.c
        )

target_include_directories(DHCP_FILES PUBLIC
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet  
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Internet/dhcp
        )
