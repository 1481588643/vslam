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
CMAKE_SOURCE_DIR = /home/wang/L1/code_google

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wang/L1/code_google/build

# Include any dependencies generated for this target.
include CMakeFiles/demo01.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/demo01.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/demo01.dir/flags.make

CMakeFiles/demo01.dir/glog.cpp.o: CMakeFiles/demo01.dir/flags.make
CMakeFiles/demo01.dir/glog.cpp.o: ../glog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wang/L1/code_google/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/demo01.dir/glog.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/demo01.dir/glog.cpp.o -c /home/wang/L1/code_google/glog.cpp

CMakeFiles/demo01.dir/glog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo01.dir/glog.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wang/L1/code_google/glog.cpp > CMakeFiles/demo01.dir/glog.cpp.i

CMakeFiles/demo01.dir/glog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo01.dir/glog.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wang/L1/code_google/glog.cpp -o CMakeFiles/demo01.dir/glog.cpp.s

CMakeFiles/demo01.dir/glog.cpp.o.requires:

.PHONY : CMakeFiles/demo01.dir/glog.cpp.o.requires

CMakeFiles/demo01.dir/glog.cpp.o.provides: CMakeFiles/demo01.dir/glog.cpp.o.requires
	$(MAKE) -f CMakeFiles/demo01.dir/build.make CMakeFiles/demo01.dir/glog.cpp.o.provides.build
.PHONY : CMakeFiles/demo01.dir/glog.cpp.o.provides

CMakeFiles/demo01.dir/glog.cpp.o.provides.build: CMakeFiles/demo01.dir/glog.cpp.o


# Object files for target demo01
demo01_OBJECTS = \
"CMakeFiles/demo01.dir/glog.cpp.o"

# External object files for target demo01
demo01_EXTERNAL_OBJECTS =

demo01: CMakeFiles/demo01.dir/glog.cpp.o
demo01: CMakeFiles/demo01.dir/build.make
demo01: /usr/local/lib/libglog.so.0.6.0
demo01: /usr/local/lib/libgflags.so.2.2.2
demo01: CMakeFiles/demo01.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wang/L1/code_google/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable demo01"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo01.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/demo01.dir/build: demo01

.PHONY : CMakeFiles/demo01.dir/build

CMakeFiles/demo01.dir/requires: CMakeFiles/demo01.dir/glog.cpp.o.requires

.PHONY : CMakeFiles/demo01.dir/requires

CMakeFiles/demo01.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/demo01.dir/cmake_clean.cmake
.PHONY : CMakeFiles/demo01.dir/clean

CMakeFiles/demo01.dir/depend:
	cd /home/wang/L1/code_google/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wang/L1/code_google /home/wang/L1/code_google /home/wang/L1/code_google/build /home/wang/L1/code_google/build /home/wang/L1/code_google/build/CMakeFiles/demo01.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/demo01.dir/depend

