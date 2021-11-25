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
include libraries\CMakeFiles\DHCP_FILES.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include libraries\CMakeFiles\DHCP_FILES.dir\compiler_depend.make

# Include the progress variables for this target.
include libraries\CMakeFiles\DHCP_FILES.dir\progress.make

# Include the compile flags for this target's objects.
include libraries\CMakeFiles\DHCP_FILES.dir\flags.make

libraries\CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.obj: libraries\CMakeFiles\DHCP_FILES.dir\flags.make
libraries\CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.obj: ..\libraries\ioLibrary_Driver\Internet\DHCP\dhcp.c
libraries\CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.obj: libraries\CMakeFiles\DHCP_FILES.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Boards\RP2040\RP2040-HAT-C-Edit\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libraries/CMakeFiles/DHCP_FILES.dir/ioLibrary_Driver/Internet/DHCP/dhcp.c.obj"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libraries\CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.obj -MF CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.obj.d -o CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.obj -c D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Internet\DHCP\dhcp.c
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

libraries\CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/DHCP_FILES.dir/ioLibrary_Driver/Internet/DHCP/dhcp.c.i"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Internet\DHCP\dhcp.c > CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.i
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

libraries\CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/DHCP_FILES.dir/ioLibrary_Driver/Internet/DHCP/dhcp.c.s"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	C:\PROGRA~2\GNUARM~1\102020~1\bin\AR19DD~1.EXE $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries\ioLibrary_Driver\Internet\DHCP\dhcp.c -o CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.s
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

# Object files for target DHCP_FILES
DHCP_FILES_OBJECTS = \
"CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.obj"

# External object files for target DHCP_FILES
DHCP_FILES_EXTERNAL_OBJECTS =

libraries\libDHCP_FILES.a: libraries\CMakeFiles\DHCP_FILES.dir\ioLibrary_Driver\Internet\DHCP\dhcp.c.obj
libraries\libDHCP_FILES.a: libraries\CMakeFiles\DHCP_FILES.dir\build.make
libraries\libDHCP_FILES.a: libraries\CMakeFiles\DHCP_FILES.dir\link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Boards\RP2040\RP2040-HAT-C-Edit\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libDHCP_FILES.a"
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	$(CMAKE_COMMAND) -P CMakeFiles\DHCP_FILES.dir\cmake_clean_target.cmake
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\DHCP_FILES.dir\link.txt --verbose=$(VERBOSE)
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build

# Rule to build all files generated by this target.
libraries\CMakeFiles\DHCP_FILES.dir\build: libraries\libDHCP_FILES.a
.PHONY : libraries\CMakeFiles\DHCP_FILES.dir\build

libraries\CMakeFiles\DHCP_FILES.dir\clean:
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries
	$(CMAKE_COMMAND) -P CMakeFiles\DHCP_FILES.dir\cmake_clean.cmake
	cd D:\Boards\RP2040\RP2040-HAT-C-Edit\build
.PHONY : libraries\CMakeFiles\DHCP_FILES.dir\clean

libraries\CMakeFiles\DHCP_FILES.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\Boards\RP2040\RP2040-HAT-C-Edit D:\Boards\RP2040\RP2040-HAT-C-Edit\libraries D:\Boards\RP2040\RP2040-HAT-C-Edit\build D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries D:\Boards\RP2040\RP2040-HAT-C-Edit\build\libraries\CMakeFiles\DHCP_FILES.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : libraries\CMakeFiles\DHCP_FILES.dir\depend

