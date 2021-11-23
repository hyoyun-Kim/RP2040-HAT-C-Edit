add_library(TIMER_FILES STATIC
        timer.c        
        )

target_include_directories(TIMER_FILES PUBLIC
        #${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet
        #${CMAKE_SOURCE_DIR}/port/ioLibrary_Driver
        ${CMAKE_SOURCE_DIR}/port/timer
        )

target_link_libraries(TIMER_FILES PUBLIC
        pico_stdlib      
        )
