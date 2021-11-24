add_library(TIMER_FILES STATIC
        timer.c        
        )

target_include_directories(TIMER_FILES PUBLIC
        ${CMAKE_SOURCE_DIR}/port/timer
        )

target_link_libraries(TIMER_FILES PRIVATE
        pico_stdlib      
        )
