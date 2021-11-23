add_library(ETHERNET_FILES STATIC
        socket.c        
        wizchip_conf.c        
        )

add_subdirectory(W5100S)

target_include_directories(ETHERNET_FILES PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
#        ${CMAKE_CURRENT_SOURCE_DIR}/W5100
        ${CMAKE_CURRENT_SOURCE_DIR}/W5100S
#        ${CMAKE_CURRENT_SOURCE_DIR}/W5200
#        ${CMAKE_CURRENT_SOURCE_DIR}/W5300
#        ${CMAKE_CURRENT_SOURCE_DIR}/W5500        
        )

target_link_libraries(ETHERNET_FILES PUBLIC
        W5100S_FILES
        )
