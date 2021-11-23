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

# Utility rule file for PioasmBuild.

# Include any custom commands dependencies for this target.
include pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild.dir\compiler_depend.make

# Include the progress variables for this target.
include pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild.dir\progress.make

pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild: pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild-complete
	cd D:\Boards\RP2040\pico-extras\build\pico_extras\src\common\pico_scanvideo
	cd D:\Boards\RP2040\pico-extras\build

pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild-complete: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-install
pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild-complete: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-mkdir
pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild-complete: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-download
pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild-complete: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-update
pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild-complete: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-patch
pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild-complete: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure
pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild-complete: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-build
pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild-complete: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Boards\RP2040\pico-extras\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'PioasmBuild'"
	cd D:\Boards\RP2040\pico-extras\build\pico_extras\src\common\pico_scanvideo
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/CMakeFiles
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E touch D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/CMakeFiles/PioasmBuild-complete
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E touch D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/src/PioasmBuild-stamp/PioasmBuild-done
	cd D:\Boards\RP2040\pico-extras\build

pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-build: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Boards\RP2040\pico-extras\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'PioasmBuild'"
	cd D:\Boards\RP2040\pico-extras\build\pioasm
	$(MAKE)
	cd D:\Boards\RP2040\pico-extras\build

pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure: pico_extras\src\common\pico_scanvideo\pioasm\tmp\PioasmBuild-cfgcmd.txt
pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Boards\RP2040\pico-extras\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'PioasmBuild'"
	cd D:\Boards\RP2040\pico-extras\build\pioasm
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" "-GNMake Makefiles" D:/Boards/RP2040/pico-sdk/tools/pioasm
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E touch D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/src/PioasmBuild-stamp/PioasmBuild-configure
	cd D:\Boards\RP2040\pico-extras\build

pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-download: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Boards\RP2040\pico-extras\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'PioasmBuild'"
	cd D:\Boards\RP2040\pico-extras\build\pico_extras\src\common\pico_scanvideo
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E touch D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/src/PioasmBuild-stamp/PioasmBuild-download
	cd D:\Boards\RP2040\pico-extras\build

pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-install: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Boards\RP2040\pico-extras\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'PioasmBuild'"
	cd D:\Boards\RP2040\pico-extras\build\pioasm
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E touch D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/src/PioasmBuild-stamp/PioasmBuild-install
	cd D:\Boards\RP2040\pico-extras\build

pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Boards\RP2040\pico-extras\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'PioasmBuild'"
	cd D:\Boards\RP2040\pico-extras\build\pico_extras\src\common\pico_scanvideo
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory D:/Boards/RP2040/pico-sdk/tools/pioasm
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory D:/Boards/RP2040/pico-extras/build/pioasm
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/tmp
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/src/PioasmBuild-stamp
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/src
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E make_directory D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/src/PioasmBuild-stamp
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E touch D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/src/PioasmBuild-stamp/PioasmBuild-mkdir
	cd D:\Boards\RP2040\pico-extras\build

pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-patch: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Boards\RP2040\pico-extras\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'PioasmBuild'"
	cd D:\Boards\RP2040\pico-extras\build\pico_extras\src\common\pico_scanvideo
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E touch D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/src/PioasmBuild-stamp/PioasmBuild-patch
	cd D:\Boards\RP2040\pico-extras\build

pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-update: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Boards\RP2040\pico-extras\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'PioasmBuild'"
	cd D:\Boards\RP2040\pico-extras\build\pico_extras\src\common\pico_scanvideo
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\CMake\bin\cmake.exe" -E touch D:/Boards/RP2040/pico-extras/build/pico_extras/src/common/pico_scanvideo/pioasm/src/PioasmBuild-stamp/PioasmBuild-update
	cd D:\Boards\RP2040\pico-extras\build

PioasmBuild: pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild
PioasmBuild: pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild-complete
PioasmBuild: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-build
PioasmBuild: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-configure
PioasmBuild: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-download
PioasmBuild: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-install
PioasmBuild: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-mkdir
PioasmBuild: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-patch
PioasmBuild: pico_extras\src\common\pico_scanvideo\pioasm\src\PioasmBuild-stamp\PioasmBuild-update
PioasmBuild: pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild.dir\build.make
.PHONY : PioasmBuild

# Rule to build all files generated by this target.
pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild.dir\build: PioasmBuild
.PHONY : pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild.dir\build

pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild.dir\clean:
	cd D:\Boards\RP2040\pico-extras\build\pico_extras\src\common\pico_scanvideo
	$(CMAKE_COMMAND) -P CMakeFiles\PioasmBuild.dir\cmake_clean.cmake
	cd D:\Boards\RP2040\pico-extras\build
.PHONY : pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild.dir\clean

pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\Boards\RP2040\pico-extras D:\Boards\RP2040\pico-extras\src\common\pico_scanvideo D:\Boards\RP2040\pico-extras\build D:\Boards\RP2040\pico-extras\build\pico_extras\src\common\pico_scanvideo D:\Boards\RP2040\pico-extras\build\pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : pico_extras\src\common\pico_scanvideo\CMakeFiles\PioasmBuild.dir\depend

