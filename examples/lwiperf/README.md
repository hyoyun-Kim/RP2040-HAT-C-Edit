# How to Test lwiperf Example



## Step 1: Prepare software

The following serial terminal programs are required for lwiperf example test, download and install from below links.

- [**Tera Term**][link-tera_term]
- [**iPerf 2.0.9**][link-iperf]



## Step 2: Prepare hardware

If you are using W5100S-EVB-Pico, you can skip '1. Combine...'

1. Combine WIZnet Ethernet HAT with Raspberry Pi Pico.

2. Connect ethernet cable to WIZnet Ethernet HAT or W5100S-EVB-Pico ethernet port.

3. Connect Raspberry Pi Pico or W5100S-EVB-Pico to desktop or laptop using 5 pin micro USB cable.



## Step 3: Setup lwiperf Example

To test the lwiperf example, minor settings shall be done in code.

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

If you want to test with the lwiperf example using SPI DMA, uncomment USE_SPI_DMA.

```cpp
/* Use SPI DMA */
//#define USE_SPI_DMA // if you want to use SPI DMA, uncomment.
```

2. Setup network configuration such as IP in 'RP2040-HAT-C-LWIP/examples/lwiperf/w5x00_lwiperf.c' directory.

Setup IP and other network settings to suit your network environment.

```cpp
/* Network */
IP4_ADDR(&static_ip, 192, 168, 1, 15);
IP4_ADDR(&mask, 255, 255, 255, 0);
IP4_ADDR(&addr, 192, 168, 1, 1);
```

3. Setup lwiperf configuration in 'RP2040-HAT-C-LWIP/examples/lwiperf/w5x00_lwiperf.c' directory.

```cpp
/* Port */
#define PORT_LWIPERF 5001
```



## Step 4: Build

1. After completing the lwiperf example configuration, click 'build' in the status bar at the bottom of Visual Studio Code or press the 'F7' button on the keyboard to build.

2. When the build is completed, 'w5x00_lwiperf.uf2' is generated in 'RP2040-HAT-C-LWIP/build/examples/lwiperf/' directory.



## Step 5: Upload and Run

1. While pressing the BOOTSEL button of Raspberry Pi Pico or W5100S-EVB-Pico power on the board, the USB mass storage 'RPI-RP2' is automatically mounted.

![][link-raspberry_pi_pico_usb_mass_storage]

2. Drag and drop 'w5x00_lwiperf.uf2' onto the USB mass storage device 'RPI-RP2'.

3. Connect to the serial COM port of Raspberry Pi Pico or W5100S-EVB-Pico with Tera Term.

![][link-connect_to_serial_com_port]

4. Reset your board.

5. If the lwiperf example works normally on Raspberry Pi Pico or W5100S-EVB-Pico, you can see the network information of Raspberry Pi Pico.

![][link-see_network_information_of_raspberry_pi_pico]

6. Move to iperf path.

![][link-move_to_iperf_path]

7. On the server that will be sending data, open a command window and run the following command: "iperf -c x.x.x.x -i 1 -t 10".

![][link-iperf_server_send_data]





<!--
Link
-->

[link-tera_term]: https://osdn.net/projects/ttssh2/releases/
[link-iperf]: https://iperf.fr/iperf-download.php
[link-raspberry_pi_pico_usb_mass_storage]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/lwip-version/static/images/lwiperf/raspberry_pi_pico_usb_mass_storage.png
[link-connect_to_serial_com_port]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/lwip-version/static/images/lwiperf/connect_to_serial_com_port.png
[link-see_network_information_of_raspberry_pi_pico]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/lwip-version/static/images/lwiperf/see_network_information_of_raspberry_pi_pico.png
[link-move_to_iperf_path]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/lwip-version/static/images/lwiperf/move_to_iperf_path.png
[link-iperf_server_send_data]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/lwip-version/static/images/lwiperf/iperf_server_send_data.png

