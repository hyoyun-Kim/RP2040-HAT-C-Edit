# Getting Started with Ethernet Examples

These sections will guide you through a series of steps from configuring development environment to running ethernet examples using the **WIZnet's ethernet products**.

- [**Development environment configuration**](#development_environment_configuration)
- [**Hardware requirements**](#hardware_requirements)
- [**Ethernet example structure**](#ethernet_example_structure)
- [**Ethernet example testing**](#ethernet_example_testing)



<a name="development_environment_configuration"></a>
## Development environment configuration

To test the ethernet examples, the development environment must be configured to use Raspberry Pi Pico.

The ethernet examples were tested by configuring the development environment for **Windows**. Please refer to the '**9.2. Building on MS Windows**' section of '**Getting started with Raspberry Pi Pico**' document below and configure accordingly.

- [**Getting started with Raspberry Pi Pico**][link-getting_started_with_raspberry_pi_pico]

**Visual Studio Code** was used during development and testing of ethernet examples, the guide document in each directory was prepared also base on development with Visual Studio Code. Please refer to corresponding document.

- **Add Cmake Configure Environment Value**

1. Open Cmake Tools Extension Settings
2. Add Cmake: Configure Environment Item as PICO_SDK_PATH
3. ADD Cmake: Configure Environment Valuse as 'D:/RP2040/RP2040-HAT-C/libraries/pico-sdk'

![][link-cmake_configure]



<a name="hardware_requirements"></a>

## Hardware requirements

The ethernet examples use **Raspberry Pi Pico** and **WIZnet Ethernet HAT** - ethernet I/O module built on WIZnet's [**W5100S**][link-w5100s] ethernet chip or **W5100S-EVB-Pico** - ethernet I/O module built on [**RP2040**][link-rp2040] and WIZnet's [**W5100S**][link-w5100s] ethernet chip.

- [**Raspberry Pi Pico**][link-raspberry_pi_pico]

![][link-raspberry_pi_pico_main]

- [**WIZnet Ethernet HAT**][link-wiznet_ethernet_hat]

![][link-wiznet_ethernet_hat_main]

- [**W5100S-EVB-Pico**][link-w5100s-evb-pico]

![][link-w5100s-evb-pico_main]



<a name="ethernet_example_structure"></a>
## Ethernet example structure

Examples are available at '**RP2040-HAT-C/examples/**' directory. As of now, following examples are provided.

- [**DHCP & DNS**][link-dhcp_dns]
- [**FTP**][link-ftp]
	- [**Client**][link-ftp_client]
	- [**Server**][link-ftp_server]
- [**HTTP**][link-http]
	- [**Server**][link-http_server]
- [**Loopback**][link-loopback]
- [**MQTT**][link-mqtt]
	- [**Publish**][link-mqtt_publish]
	- [**Subscribe**][link-mqtt_subscribe]
- [**SNTP**][link-sntp]
- [**TCP Client over SSL**][link-tcp_client_over_ssl]

Note that **ioLibrary_Driver** is needed to run ethernet examples. This library is applicable to WIZnet's W5x00 ethernet chip and is located in the '**RP2040-HAT-C/libraries/**' directory.

- [**ioLibrary_Driver**][link-ioLibrary_driver]



<a name="Ethernet_example_testing"></a>
## Ethernet example testing

1. Download

If the ethernet examples are cloned, the library set as a submodule is an empty directory. Therefore, if you want to download the library set as a submodule together, clone the ethernet examples with the following Git command.

```cpp
/* Change directory */
// change to the directory to clone
cd [user path]

// e.g.
cd D:/RP2040

/* Clone */
git clone --recurse-submodules https://github.com/Wiznet/RP2040-HAT-C.git
```

With Visual Studio Code, the library set as a submodule is automatically downloaded, so it doesn't matter whether the library set as a submodule is an empty directory or not, so refer to it.

2. Patch

With Visual Studio Code, each library set as a submodule is automatically patched, but if you do not use Visual Studio Code, each library set as a submodule must be manually patched with the Git commands below in each library directory.

- ioLibrary_Driver

```cpp
/* Change directory */
// change to the 'ioLibrary_Driver' library directory
cd [user path]/RP2040-HAT-C/libraries/ioLibrary_Driver

// e.g.
cd D:/RP2040/RP2040-HAT-C/libraries/ioLibrary_Driver

/* Patch */
git apply ../../patches/01_ethernet_chip.patch
git apply ../../patches/02_ftp_client.patch
```

- mbedtls

```cpp
/* Change directory */
// change to the 'mbedtls' library directory
cd [user path]/RP2040-HAT-C/libraries/mbedtls

// e.g.
cd D:/RP2040/RP2040-HAT-C/libraries/mbedtls

/* Patch */
git apply --ignore-whitespace ../../patches/03_mbedtls_test_mode.patch
```

3. Test

Please refer to 'README.md' in each example directory to find detail guide for testing ethernet examples.



<!--
Link
-->

[link-cmake_configure]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/main/static/images/getting_started/cmake_configure.png
[link-getting_started_with_raspberry_pi_pico]: https://datasheets.raspberrypi.org/pico/getting-started-with-pico.pdf
[link-w5100s]: https://docs.wiznet.io/Product/iEthernet/W5100S/overview
[link-rp2040]: https://www.raspberrypi.org/products/rp2040/
[link-raspberry_pi_pico]: https://www.raspberrypi.org/products/raspberry-pi-pico/
[link-raspberry_pi_pico_main]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/main/static/images/getting_started/raspberry_pi_pico_main.png
[link-wiznet_ethernet_hat]: https://docs.wiznet.io/Product/Open-Source-Hardware/wiznet_ethernet_hat
[link-wiznet_ethernet_hat_main]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/main/static/images/getting_started/wiznet_ethernet_hat_main.png
[link-w5100s-evb-pico]: https://docs.wiznet.io/Product/iEthernet/W5100S/w5100s-evb-pico
[link-w5100s-evb-pico_main]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/blob/main/static/images/getting_started/w5100s-evb-pico_main.png
[link-dhcp_dns]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/dhcp_dns
[link-ftp]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/ftp
[link-ftp_client]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/ftp/client
[link-ftp_server]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/ftp/server
[link-http]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/http
[link-http_server]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/http/server
[link-loopback]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/loopback
[link-mqtt]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/mqtt
[link-mqtt_publish]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/mqtt/publish
[link-mqtt_subscribe]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/mqtt/subscribe
[link-sntp]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/sntp
[link-tcp_client_over_ssl]: https://github.com/hyoyun-Kim/RP2040-HAT-C-Edit/tree/main/examples/tcp_client_over_ssl
[link-ioLibrary_driver]: https://github.com/Wiznet/ioLibrary_Driver
