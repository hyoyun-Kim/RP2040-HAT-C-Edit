add_library(DNS_FILES STATIC
        dns.c
        )

target_include_directories(DNS_FILES PUBLIC
        ../../Ethernet
        )
