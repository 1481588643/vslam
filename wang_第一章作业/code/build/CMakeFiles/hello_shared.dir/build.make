# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wang/L1/code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wang/L1/code/build

# Include any dependencies generated for this target.
include CMakeFiles/hello_shared.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hello_shared.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello_shared.dir/flags.make

CMakeFiles/hello_shared.dir/hello.cpp.o: CMakeFiles/hello_shared.dir/flags.make
CMakeFiles/hello_shared.dir/hello.cpp.o: ../hello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wang/L1/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hello_shared.dir/hello.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello_shared.dir/hello.cpp.o -c /home/wang/L1/code/hello.cpp

CMakeFiles/hello_shared.dir/hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello_shared.dir/hello.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wang/L1/code/hello.cpp > CMakeFiles/hello_shared.dir/hello.cpp.i

CMakeFiles/hello_shared.dir/hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello_shared.dir/hello.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wang/L1/code/hello.cpp -o CMakeFiles/hello_shared.dir/hello.cpp.s

CMakeFiles/hello_shared.dir/hello.cpp.o.requires:

.PHONY : CMakeFiles/hello_shared.dir/hello.cpp.o.requires

CMakeFiles/hello_shared.dir/hello.cpp.o.provides: CMakeFiles/hello_shared.dir/hello.cpp.o.requires
	$(MAKE) -f CMakeFiles/hello_shared.dir/build.make CMakeFiles/hello_shared.dir/hello.cpp.o.provides.build
.PHONY : CMakeFiles/hello_shared.dir/hello.cpp.o.provides

CMakeFiles/hello_shared.dir/hello.cpp.o.provides.build: CMakeFiles/hello_shared.dir/hello.cpp.o


# Object files for target hello_shared
hello_shared_OBJECTS = \
"CMakeFiles/hello_shared.dir/hello.cpp.o"

# External object files for target hello_shared
hello_shared_EXTERNAL_OBJECTS =

libhello_shared.so: CMakeFiles/hello_shared.dir/hello.cpp.o
libhello_shared.so: CMakeFiles/hello_shared.dir/build.make
libhello_shared.so: CMakeFiles/hello_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wang/L1/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libhello_shared.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello_shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hello_shared.dir/build: libhello_shared.so

.PHONY : CMakeFiles/hello_shared.dir/build

CMakeFiles/hello_shared.dir/requires: CMakeFiles/hello_shared.dir/hello.cpp.o.requires

.PHONY : CMakeFiles/hello_shared.dir/requires

CMakeFiles/hello_shared.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello_shared.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello_shared.dir/clean

CMakeFiles/hello_shared.dir/depend:
	cd /home/wang/L1/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wang/L1/code /home/wang/L1/code /home/wang/L1/code/build /home/wang/L1/code/build /home/wang/L1/code/build/CMakeFiles/hello_shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hello_shared.dir/depend

