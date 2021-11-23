# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Boards\RP2040\pico-extras

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Boards\RP2040\pico-extras\build

# Utility rule file for pico_audio_spdif_audio_spdif_pio_h.

# Include any custom commands dependencies for this target.
include pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\compiler_depend.make

# Include the progress variables for this target.
include pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\progress.make

pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h: pico_extras\src\rp2_common\pico_audio_spdif\audio_spdif.pio.h
	cd D:\Boards\RP2040\pico-extras\build\pico_extras\src\rp2_common\pico_audio_spdif
	cd D:\Boards\RP2040\pico-extras\build

pico_extras\src\rp2_common\pico_audio_spdif\audio_spdif.pio.h: ..\src\rp2_common\pico_audio_spdif\audio_spdif.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Boards\RP2040\pico-extras\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating audio_spdif.pio.h"
	cd D:\Boards\RP2040\pico-extras\build\pico_extras\src\rp2_common\pico_audio_spdif
	..\..\..\..\pioasm\pioasm.exe -o c-sdk D:/Boards/RP2040/pico-extras/src/rp2_common/pico_audio_spdif/audio_spdif.pio D:/Boards/RP2040/pico-extras/build/pico_extras/src/rp2_common/pico_audio_spdif/audio_spdif.pio.h
	cd D:\Boards\RP2040\pico-extras\build

pico_audio_spdif_audio_spdif_pio_h: pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h
pico_audio_spdif_audio_spdif_pio_h: pico_extras\src\rp2_common\pico_audio_spdif\audio_spdif.pio.h
pico_audio_spdif_audio_spdif_pio_h: pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\build.make
.PHONY : pico_audio_spdif_audio_spdif_pio_h

# Rule to build all files generated by this target.
pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\build: pico_audio_spdif_audio_spdif_pio_h
.PHONY : pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\build

pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\clean:
	cd D:\Boards\RP2040\pico-extras\build\pico_extras\src\rp2_common\pico_audio_spdif
	$(CMAKE_COMMAND) -P CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\cmake_clean.cmake
	cd D:\Boards\RP2040\pico-extras\build
.PHONY : pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\clean

pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\Boards\RP2040\pico-extras D:\Boards\RP2040\pico-extras\src\rp2_common\pico_audio_spdif D:\Boards\RP2040\pico-extras\build D:\Boards\RP2040\pico-extras\build\pico_extras\src\rp2_common\pico_audio_spdif D:\Boards\RP2040\pico-extras\build\pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : pico_extras\src\rp2_common\pico_audio_spdif\CMakeFiles\pico_audio_spdif_audio_spdif_pio_h.dir\depend

