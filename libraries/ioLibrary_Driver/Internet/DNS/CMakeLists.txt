add_library(DNS_FILES STATIC
        dns.c
        )

target_include_directories(DNS_FILES PUBLIC
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet  
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Internet/dns
        )
