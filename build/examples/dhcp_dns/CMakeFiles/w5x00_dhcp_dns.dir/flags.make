# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# compile ASM with C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe
# compile C with C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe
# compile CXX with C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-g++.exe
ASM_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DMBEDTLS_CONFIG_FILE=\"D:/Boards/RP2040/RP2040-HAT-C-Edit/port/mbedtls/inc/ssl_config.h\" -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_TARGET_NAME=\"w5x00_dhcp_dns\" -DPICO_USE_BLOCKED_RAM=0 -DSET_TRUSTED_CERT_IN_SAMPLES

ASM_INCLUDES = -ID:\Boards\RP2040\pico-sdk\src\common\pico_stdlib\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_gpio\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_base\include -ID:\Boards\RP2040\RP2040-HAT-C-Edit\build\generated\pico_base -ID:\Boards\RP2040\pico-sdk\src\boards\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_platform\include -ID:\Boards\RP2040\pico-sdk\src\rp2040\hardware_regs\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_base\include -ID:\Boards\RP2040\pico-sdk\src\rp2040\hardware_structs\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_claim\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_sync\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_uart\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_divider\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_time\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_timer\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_sync\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_util\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_runtime\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_clocks\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_irq\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_resets\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_pll\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_vreg\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_watchdog\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_xosc\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_printf\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_bootrom\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_bit_ops\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_divider\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_double\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_int64_ops\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_float\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_malloc\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\boot_stage2\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_binary_info\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_stdio\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_stdio_usb\include -ID:\Boards\RP2040\pico-sdk\lib\tinyusb\src -ID:\Boards\RP2040\pico-sdk\lib\tinyusb\src\common -ID:\Boards\RP2040\pico-sdk\lib\tinyusb\hw -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_fix\rp2040_usb_device_enumeration\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_unique_id\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_flash\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_spi\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_dma\include -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\W5100S -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Internet\DHCP -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Internet\DNS -ID:\Boards\RP2040\RP2040-HAT-C-Edit\port\ioLibrary_Driver

ASM_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections

C_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DMBEDTLS_CONFIG_FILE=\"D:/Boards/RP2040/RP2040-HAT-C-Edit/port/mbedtls/inc/ssl_config.h\" -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_TARGET_NAME=\"w5x00_dhcp_dns\" -DPICO_USE_BLOCKED_RAM=0 -DSET_TRUSTED_CERT_IN_SAMPLES

C_INCLUDES = -ID:\Boards\RP2040\pico-sdk\src\common\pico_stdlib\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_gpio\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_base\include -ID:\Boards\RP2040\RP2040-HAT-C-Edit\build\generated\pico_base -ID:\Boards\RP2040\pico-sdk\src\boards\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_platform\include -ID:\Boards\RP2040\pico-sdk\src\rp2040\hardware_regs\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_base\include -ID:\Boards\RP2040\pico-sdk\src\rp2040\hardware_structs\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_claim\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_sync\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_uart\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_divider\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_time\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_timer\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_sync\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_util\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_runtime\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_clocks\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_irq\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_resets\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_pll\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_vreg\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_watchdog\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_xosc\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_printf\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_bootrom\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_bit_ops\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_divider\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_double\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_int64_ops\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_float\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_malloc\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\boot_stage2\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_binary_info\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_stdio\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_stdio_usb\include -ID:\Boards\RP2040\pico-sdk\lib\tinyusb\src -ID:\Boards\RP2040\pico-sdk\lib\tinyusb\src\common -ID:\Boards\RP2040\pico-sdk\lib\tinyusb\hw -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_fix\rp2040_usb_device_enumeration\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_unique_id\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_flash\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_spi\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_dma\include -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\W5100S -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Internet\DHCP -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Internet\DNS -ID:\Boards\RP2040\RP2040-HAT-C-Edit\port\ioLibrary_Driver

C_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections -std=gnu11

CXX_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DMBEDTLS_CONFIG_FILE=\"D:/Boards/RP2040/RP2040-HAT-C-Edit/port/mbedtls/inc/ssl_config.h\" -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_TARGET_NAME=\"w5x00_dhcp_dns\" -DPICO_USE_BLOCKED_RAM=0 -DSET_TRUSTED_CERT_IN_SAMPLES

CXX_INCLUDES = -ID:\Boards\RP2040\pico-sdk\src\common\pico_stdlib\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_gpio\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_base\include -ID:\Boards\RP2040\RP2040-HAT-C-Edit\build\generated\pico_base -ID:\Boards\RP2040\pico-sdk\src\boards\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_platform\include -ID:\Boards\RP2040\pico-sdk\src\rp2040\hardware_regs\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_base\include -ID:\Boards\RP2040\pico-sdk\src\rp2040\hardware_structs\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_claim\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_sync\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_uart\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_divider\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_time\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_timer\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_sync\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_util\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_runtime\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_clocks\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_irq\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_resets\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_pll\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_vreg\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_watchdog\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_xosc\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_printf\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_bootrom\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_bit_ops\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_divider\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_double\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_int64_ops\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_float\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_malloc\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\boot_stage2\include -ID:\Boards\RP2040\pico-sdk\src\common\pico_binary_info\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_stdio\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_stdio_usb\include -ID:\Boards\RP2040\pico-sdk\lib\tinyusb\src -ID:\Boards\RP2040\pico-sdk\lib\tinyusb\src\common -ID:\Boards\RP2040\pico-sdk\lib\tinyusb\hw -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_fix\rp2040_usb_device_enumeration\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\pico_unique_id\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_flash\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_spi\include -ID:\Boards\RP2040\pico-sdk\src\rp2_common\hardware_dma\include -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\W5100S -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Internet\DHCP -ID:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Internet\DNS -ID:\Boards\RP2040\RP2040-HAT-C-Edit\port\ioLibrary_Driver

CXX_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections -fno-exceptions -fno-unwind-tables -fno-rtti -fno-use-cxa-atexit -std=gnu++17

