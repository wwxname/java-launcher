# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/wwx/clion-2017.2.4/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/wwx/clion-2017.2.4/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest

# Include any dependencies generated for this target.
include CMakeFiles/J2C.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/J2C.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/J2C.dir/flags.make

CMakeFiles/J2C.dir/J2C.c.o: CMakeFiles/J2C.dir/flags.make
CMakeFiles/J2C.dir/J2C.c.o: J2C.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/J2C.dir/J2C.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/J2C.dir/J2C.c.o   -c /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest/J2C.c

CMakeFiles/J2C.dir/J2C.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/J2C.dir/J2C.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest/J2C.c > CMakeFiles/J2C.dir/J2C.c.i

CMakeFiles/J2C.dir/J2C.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/J2C.dir/J2C.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest/J2C.c -o CMakeFiles/J2C.dir/J2C.c.s

CMakeFiles/J2C.dir/J2C.c.o.requires:

.PHONY : CMakeFiles/J2C.dir/J2C.c.o.requires

CMakeFiles/J2C.dir/J2C.c.o.provides: CMakeFiles/J2C.dir/J2C.c.o.requires
	$(MAKE) -f CMakeFiles/J2C.dir/build.make CMakeFiles/J2C.dir/J2C.c.o.provides.build
.PHONY : CMakeFiles/J2C.dir/J2C.c.o.provides

CMakeFiles/J2C.dir/J2C.c.o.provides.build: CMakeFiles/J2C.dir/J2C.c.o


# Object files for target J2C
J2C_OBJECTS = \
"CMakeFiles/J2C.dir/J2C.c.o"

# External object files for target J2C
J2C_EXTERNAL_OBJECTS =

libJ2C.so: CMakeFiles/J2C.dir/J2C.c.o
libJ2C.so: CMakeFiles/J2C.dir/build.make
libJ2C.so: CMakeFiles/J2C.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libJ2C.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/J2C.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/J2C.dir/build: libJ2C.so

.PHONY : CMakeFiles/J2C.dir/build

CMakeFiles/J2C.dir/requires: CMakeFiles/J2C.dir/J2C.c.o.requires

.PHONY : CMakeFiles/J2C.dir/requires

CMakeFiles/J2C.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/J2C.dir/cmake_clean.cmake
.PHONY : CMakeFiles/J2C.dir/clean

CMakeFiles/J2C.dir/depend:
	cd /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest /home/wwx/CLionProjects/hotspot-dev/src/share/tools/launcher/jnitest/CMakeFiles/J2C.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/J2C.dir/depend

