add_library(MQTTPACKET_FILES STATIC        
        MQTTConnectClient.c
        MQTTConnectServer.c
        MQTTDeserializePublish.c
		MQTTFormat.c		
		MQTTPacket.c
		MQTTSerializePublish.c		
		MQTTSubscribeClient.c
		MQTTSubscribeServer.c		
		MQTTUnsubscribeClient.c
		MQTTUnsubscribeServer.c		
        )

target_include_directories(MQTTPACKET_FILES INTERFACE
		${CMAKE_SOURCE_DIR}/libraries/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src
        )
