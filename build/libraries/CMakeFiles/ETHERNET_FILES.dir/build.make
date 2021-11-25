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
CMAKE_SOURCE_DIR = D:\Boards\RP2040\RP2040-HAT-C-Edit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Boards\RP2040\RP2040-HAT-C-Edit\build

# Include any dependencies generated for this target.
include libraries\CMakeFiles\ETHERNET_FILES.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include libraries\CMakeFiles\ETHERNET_FILES.dir\compiler_depend.make

# Include the progress variables for this target.
include libraries\CMakeFiles\ETHERNET_FILES.dir\progress.make

# Include the compile flags for this target's objects.
include libraries\CMakeFiles\ETHERNET_FILES.dir\flags.make

libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.obj: libraries\CMakeFiles\ETHERNET_FILES.dir\flags.make
libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.obj: ..\libraries\ioLibrary_Driver\Ethernet\socket.c
libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.obj: libraries\CMakeFiles\ETHERNET_FILES.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Boards\RP2040\RP2040-HAT-C-Edit\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libraries/CMakeFiles/ETHERNET_FILES.dir/ioLibrary_Driver/Ethernet/socket.c.obj"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.obj -MF CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.obj.d -o CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.obj -c D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\socket.c
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ETHERNET_FILES.dir/ioLibrary_Driver/Ethernet/socket.c.i"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\socket.c > CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.i
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ETHERNET_FILES.dir/ioLibrary_Driver/Ethernet/socket.c.s"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\socket.c -o CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.s
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.obj: libraries\CMakeFiles\ETHERNET_FILES.dir\flags.make
libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.obj: ..\libraries\ioLibrary_Driver\Ethernet\wizchip_conf.c
libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.obj: libraries\CMakeFiles\ETHERNET_FILES.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Boards\RP2040\RP2040-HAT-C-Edit\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libraries/CMakeFiles/ETHERNET_FILES.dir/ioLibrary_Driver/Ethernet/wizchip_conf.c.obj"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.obj -MF CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.obj.d -o CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.obj -c D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\wizchip_conf.c
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ETHERNET_FILES.dir/ioLibrary_Driver/Ethernet/wizchip_conf.c.i"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\wizchip_conf.c > CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.i
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ETHERNET_FILES.dir/ioLibrary_Driver/Ethernet/wizchip_conf.c.s"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\wizchip_conf.c -o CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.s
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.obj: libraries\CMakeFiles\ETHERNET_FILES.dir\flags.make
libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.obj: ..\libraries\ioLibrary_Driver\Ethernet\W5100S\w5100s.c
libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.obj: libraries\CMakeFiles\ETHERNET_FILES.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Boards\RP2040\RP2040-HAT-C-Edit\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libraries/CMakeFiles/ETHERNET_FILES.dir/ioLibrary_Driver/Ethernet/W5100S/w5100s.c.obj"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.obj -MF CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.obj.d -o CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.obj -c D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\W5100S\w5100s.c
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ETHERNET_FILES.dir/ioLibrary_Driver/Ethernet/W5100S/w5100s.c.i"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\W5100S\w5100s.c > CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.i
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ETHERNET_FILES.dir/ioLibrary_Driver/Ethernet/W5100S/w5100s.c.s"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Ethernet\W5100S\w5100s.c -o CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.s
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

# Object files for target ETHERNET_FILES
ETHERNET_FILES_OBJECTS = \
"CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.obj" \
"CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.obj" \
"CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.obj"

# External object files for target ETHERNET_FILES
ETHERNET_FILES_EXTERNAL_OBJECTS =

libraries\libETHERNET_FILES.a: libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\socket.c.obj
libraries\libETHERNET_FILES.a: libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\wizchip_conf.c.obj
libraries\libETHERNET_FILES.a: libraries\CMakeFiles\ETHERNET_FILES.dir\ioLibrary_Driver\Ethernet\W5100S\w5100s.c.obj
libraries\libETHERNET_FILES.a: libraries\CMakeFiles\ETHERNET_FILES.dir\build.make
libraries\libETHERNET_FILES.a: libraries\CMakeFiles\ETHERNET_FILES.dir\link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Boards\RP2040\RP2040-HAT-C-Edit\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libETHERNET_FILES.a"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	$(CMAKE_COMMAND) -P CMakeFiles\ETHERNET_FILES.dir\cmake_clean_target.cmake
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ETHERNET_FILES.dir\link.txt --verbose=$(VERBOSE)
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

# Rule to build all files generated by this target.
libraries\CMakeFiles\ETHERNET_FILES.dir\build: libraries\libETHERNET_FILES.a
.PHONY : libraries\CMakeFiles\ETHERNET_FILES.dir\build

libraries\CMakeFiles\ETHERNET_FILES.dir\clean:
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	$(CMAKE_COMMAND) -P CMakeFiles\ETHERNET_FILES.dir\cmake_clean.cmake
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build
.PHONY : libraries\CMakeFiles\ETHERNET_FILES.dir\clean

libraries\CMakeFiles\ETHERNET_FILES.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\Boards\RP2040\RP2040-HAT-C-Edit D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries D:\Boards\RP2040\RP2040-HAT-C-Edit\build D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries\CMakeFiles\ETHERNET_FILES.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : libraries\CMakeFiles\ETHERNET_FILES.dir\depend

