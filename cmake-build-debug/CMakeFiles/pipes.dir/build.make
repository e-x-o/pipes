# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\JetBrains\Toolbox\apps\CLion\ch-0\211.7442.42\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\JetBrains\Toolbox\apps\CLion\ch-0\211.7442.42\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\c programms\pipes"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\c programms\pipes\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/pipes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pipes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pipes.dir/flags.make

CMakeFiles/pipes.dir/main.cpp.obj: CMakeFiles/pipes.dir/flags.make
CMakeFiles/pipes.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\c programms\pipes\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pipes.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\pipes.dir\main.cpp.obj -c "D:\c programms\pipes\main.cpp"

CMakeFiles/pipes.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pipes.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\c programms\pipes\main.cpp" > CMakeFiles\pipes.dir\main.cpp.i

CMakeFiles/pipes.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pipes.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\c programms\pipes\main.cpp" -o CMakeFiles\pipes.dir\main.cpp.s

# Object files for target pipes
pipes_OBJECTS = \
"CMakeFiles/pipes.dir/main.cpp.obj"

# External object files for target pipes
pipes_EXTERNAL_OBJECTS =

pipes.exe: CMakeFiles/pipes.dir/main.cpp.obj
pipes.exe: CMakeFiles/pipes.dir/build.make
pipes.exe: CMakeFiles/pipes.dir/linklibs.rsp
pipes.exe: CMakeFiles/pipes.dir/objects1.rsp
pipes.exe: CMakeFiles/pipes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\c programms\pipes\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pipes.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pipes.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pipes.dir/build: pipes.exe

.PHONY : CMakeFiles/pipes.dir/build

CMakeFiles/pipes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\pipes.dir\cmake_clean.cmake
.PHONY : CMakeFiles/pipes.dir/clean

CMakeFiles/pipes.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\c programms\pipes" "D:\c programms\pipes" "D:\c programms\pipes\cmake-build-debug" "D:\c programms\pipes\cmake-build-debug" "D:\c programms\pipes\cmake-build-debug\CMakeFiles\pipes.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/pipes.dir/depend

