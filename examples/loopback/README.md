# How to Test Loopback Example



## Step 1: Prepare software

The following serial terminal programs are required for Loopback example test, download and install from below links.

- [**Tera Term**][link-tera_term]
- [**Hercules**][link-hercules]



## Step 2: Prepare hardware

If you are using W5100S-EVB-Pico, you can skip '1. Combine...'

1. Combine WIZnet Ethernet HAT with Raspberry Pi Pico.

2. Connect ethernet cable to WIZnet Ethernet HAT or W5100S-EVB-Pico ethernet port.

3. Connect Raspberry Pi Pico or W5100S-EVB-Pico to desktop or laptop using 5 pin micro USB cable.



## Step 3: Setup Loopback Example

To test the Loopback example, minor settings shall be done in code.

1. Setup SPI port and pin in 'RP2040-HAT-C-LWIP/port/ioLibrary_Driver/w5x00spi.h' directory.

Setup the SPI interface you use.

```cpp
/* SPI */
#define SPI_PORT spi0

#define PIN_SCK 18
#define PIN_MOSI 19
#define PIN_MISO 16
#define PIN_CS 17
#define PIN_RST 20
```

If you want to test with the Loopback example using SPI DMA, uncomment USE_SPI_DMA.

```cpp
/* Use SPI DMA */
//#define USE_SPI_DMA // if you want to use SPI DMA, uncomment.
```

2. Setup network configuration such as IP in 'RP2040-HAT-C-LWIP/examples/loopback/w5x00_loopback.c' directory.

Setup IP and other network settings to suit your network environment.

```cpp
/* Network */
IP4_ADDR(&static_ip, 192, 168, 1, 15);
IP4_ADDR(&mask, 255, 255, 255, 0);
IP4_ADDR(&addr, 192, 168, 1, 1);
```

3. Setup loopback configuration in 'RP2040-HAT-C-LWIP/examples/loopback/tcp_echoserver.h' directory.

```cpp
/* Port */
#define PORT_LOOPBACK 5001
```



## Step 4: Build

1. After completing the Loopback example configuration, click 'build' in the status bar at the bottom of Visual Studio Code or press the 'F7' button on the keyboard to build.

2. When the build is completed, 'w5x00_loopback.uf2' is generated in 'RP2040-HAT-C-LWIP/build/examples/loopback/' directory.



## Step 5: Upload and Run

1. While pressing the BOOTSEL button of Raspberry Pi Pico or W5100S-EVB-Pico power on the board, the USB mass storage 'RPI-RP2' is automatically mounted.

![][link-raspberry_pi_pico_usb_mass_storage]

2. Drag and drop 'w5x00_loopback.uf2' onto the USB mass storage device 'RPI-RP2'.

3. Connect to the serial COM port of Raspberry Pi Pico or W5100S-EVB-Pico with Tera Term.

![][link-connect_to_serial_com_port]

4. Reset your board.

5. If the Loopback example works normally on Raspberry Pi Pico or W5100S-EVB-Pico, you can see the network information of Raspberry Pi Pico or W5100S-EVB-Pico and the loopback server is open.

![][link-see_network_information_of_raspberry_pi_pico_and_open_loopback_server]

6. Connect to the open loopback server using Hercules TCP client. When connecting to the loopback server, you need to enter is the IP that was configured in Step 3, the port is 5001 by default.

![][link-connect_to_loopback_server_using_hercules_tcp_client_1]

7. Once connected if you send data to the loopback server, you should be able to receive back the sent message.

![][link-receive_back_sent_message]



<!--
Link
-->

[link-tera_term]: https://osdn.net/projects/ttssh2/releases/
[link-hercules]: https://www.hw-group.com/software/hercules-setup-utility
[link-raspberry_pi_pico_usb_mass_storage]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/lwip-version/static/images/loopback/raspberry_pi_pico_usb_mass_storage.png
[link-connect_to_serial_com_port]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/lwip-version/static/images/loopback/connect_to_serial_com_port.png
[link-see_network_information_of_raspberry_pi_pico_and_open_loopback_server]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/lwip-version/static/images/loopback/see_network_information_of_raspberry_pi_pico_and_open_loopback_server.png
[link-connect_to_loopback_server_using_hercules_tcp_client_1]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/lwip-version/static/images/loopback/connect_to_loopback_server_using_hercules_tcp_client_1.png
[link-receive_back_sent_message]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/lwip-version/static/images/loopback/receive_back_sent_message.png
