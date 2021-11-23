add_library(HTTPSERVER_FILES STATIC
        httpParser.c
        httpServer.c
        httpUtil.c
        )

target_include_directories(HTTPSERVER_FILES PUBLIC
        ../../Ethernet        
        )
