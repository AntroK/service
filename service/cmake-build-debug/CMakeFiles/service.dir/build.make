# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/liuhoukai/CLionProjects/service

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/liuhoukai/CLionProjects/service/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/service.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/service.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/service.dir/flags.make

CMakeFiles/service.dir/main.cpp.o: CMakeFiles/service.dir/flags.make
CMakeFiles/service.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liuhoukai/CLionProjects/service/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/service.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/service.dir/main.cpp.o -c /Users/liuhoukai/CLionProjects/service/main.cpp

CMakeFiles/service.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/service.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liuhoukai/CLionProjects/service/main.cpp > CMakeFiles/service.dir/main.cpp.i

CMakeFiles/service.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/service.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liuhoukai/CLionProjects/service/main.cpp -o CMakeFiles/service.dir/main.cpp.s

CMakeFiles/service.dir/logger.cpp.o: CMakeFiles/service.dir/flags.make
CMakeFiles/service.dir/logger.cpp.o: ../logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liuhoukai/CLionProjects/service/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/service.dir/logger.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/service.dir/logger.cpp.o -c /Users/liuhoukai/CLionProjects/service/logger.cpp

CMakeFiles/service.dir/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/service.dir/logger.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liuhoukai/CLionProjects/service/logger.cpp > CMakeFiles/service.dir/logger.cpp.i

CMakeFiles/service.dir/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/service.dir/logger.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liuhoukai/CLionProjects/service/logger.cpp -o CMakeFiles/service.dir/logger.cpp.s

# Object files for target service
service_OBJECTS = \
"CMakeFiles/service.dir/main.cpp.o" \
"CMakeFiles/service.dir/logger.cpp.o"

# External object files for target service
service_EXTERNAL_OBJECTS =

service: CMakeFiles/service.dir/main.cpp.o
service: CMakeFiles/service.dir/logger.cpp.o
service: CMakeFiles/service.dir/build.make
service: CMakeFiles/service.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/liuhoukai/CLionProjects/service/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable service"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/service.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/service.dir/build: service

.PHONY : CMakeFiles/service.dir/build

CMakeFiles/service.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/service.dir/cmake_clean.cmake
.PHONY : CMakeFiles/service.dir/clean

CMakeFiles/service.dir/depend:
	cd /Users/liuhoukai/CLionProjects/service/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/liuhoukai/CLionProjects/service /Users/liuhoukai/CLionProjects/service /Users/liuhoukai/CLionProjects/service/cmake-build-debug /Users/liuhoukai/CLionProjects/service/cmake-build-debug /Users/liuhoukai/CLionProjects/service/cmake-build-debug/CMakeFiles/service.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/service.dir/depend

