add_library(MQTT_FILES STATIC
        mqtt_interface.c
        MQTTClient.c
        )

add_subdirectory(MQTTPacket)

target_include_directories(MQTT_FILES PUBLIC
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Ethernet
        ${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Internet/MQTT
        )

target_link_libraries(MQTT_FILES PUBLIC
        MQTTPACKET_FILES
        )
