add_library(W5100S_FILES STATIC
        w5100s.c
        )

target_include_directories(W5100S_FILES INTERFACE
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet       
        )

target_link_libraries(W5100S_FILES PRIVATE
        ETHERNET_FILES
        )
