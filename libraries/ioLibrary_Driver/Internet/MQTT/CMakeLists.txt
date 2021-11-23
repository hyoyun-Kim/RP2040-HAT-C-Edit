add_library(MQTT_FILES STATIC
        mqtt_interface.c
        MQTTClient.c
        )

add_subdirectory(MQTTPacket)

target_include_directories(MQTT_FILES PUBLIC
        ../../Ethernet
        ${CMAKE_CURRENT_SOURCE_DIR}
        )

target_link_libraries(MQTT_FILES PUBLIC
        MQTTPACKET_FILES
        )
