# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.30.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.30.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jinpeng/Desktop/CS660PA4/CS660_PA4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build

# Include any dependencies generated for this target.
include src/db/CMakeFiles/db.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/db/CMakeFiles/db.dir/compiler_depend.make

# Include the progress variables for this target.
include src/db/CMakeFiles/db.dir/progress.make

# Include the compile flags for this target's objects.
include src/db/CMakeFiles/db.dir/flags.make

src/db/CMakeFiles/db.dir/BTreeFile.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/BTreeFile.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/BTreeFile.cpp
src/db/CMakeFiles/db.dir/BTreeFile.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/db/CMakeFiles/db.dir/BTreeFile.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/BTreeFile.cpp.o -MF CMakeFiles/db.dir/BTreeFile.cpp.o.d -o CMakeFiles/db.dir/BTreeFile.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/BTreeFile.cpp

src/db/CMakeFiles/db.dir/BTreeFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/BTreeFile.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/BTreeFile.cpp > CMakeFiles/db.dir/BTreeFile.cpp.i

src/db/CMakeFiles/db.dir/BTreeFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/BTreeFile.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/BTreeFile.cpp -o CMakeFiles/db.dir/BTreeFile.cpp.s

src/db/CMakeFiles/db.dir/BufferPool.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/BufferPool.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/BufferPool.cpp
src/db/CMakeFiles/db.dir/BufferPool.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/db/CMakeFiles/db.dir/BufferPool.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/BufferPool.cpp.o -MF CMakeFiles/db.dir/BufferPool.cpp.o.d -o CMakeFiles/db.dir/BufferPool.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/BufferPool.cpp

src/db/CMakeFiles/db.dir/BufferPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/BufferPool.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/BufferPool.cpp > CMakeFiles/db.dir/BufferPool.cpp.i

src/db/CMakeFiles/db.dir/BufferPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/BufferPool.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/BufferPool.cpp -o CMakeFiles/db.dir/BufferPool.cpp.s

src/db/CMakeFiles/db.dir/ColumnStats.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/ColumnStats.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/ColumnStats.cpp
src/db/CMakeFiles/db.dir/ColumnStats.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/db/CMakeFiles/db.dir/ColumnStats.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/ColumnStats.cpp.o -MF CMakeFiles/db.dir/ColumnStats.cpp.o.d -o CMakeFiles/db.dir/ColumnStats.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/ColumnStats.cpp

src/db/CMakeFiles/db.dir/ColumnStats.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/ColumnStats.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/ColumnStats.cpp > CMakeFiles/db.dir/ColumnStats.cpp.i

src/db/CMakeFiles/db.dir/ColumnStats.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/ColumnStats.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/ColumnStats.cpp -o CMakeFiles/db.dir/ColumnStats.cpp.s

src/db/CMakeFiles/db.dir/Database.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/Database.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Database.cpp
src/db/CMakeFiles/db.dir/Database.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/db/CMakeFiles/db.dir/Database.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/Database.cpp.o -MF CMakeFiles/db.dir/Database.cpp.o.d -o CMakeFiles/db.dir/Database.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Database.cpp

src/db/CMakeFiles/db.dir/Database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/Database.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Database.cpp > CMakeFiles/db.dir/Database.cpp.i

src/db/CMakeFiles/db.dir/Database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/Database.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Database.cpp -o CMakeFiles/db.dir/Database.cpp.s

src/db/CMakeFiles/db.dir/DbFile.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/DbFile.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/DbFile.cpp
src/db/CMakeFiles/db.dir/DbFile.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/db/CMakeFiles/db.dir/DbFile.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/DbFile.cpp.o -MF CMakeFiles/db.dir/DbFile.cpp.o.d -o CMakeFiles/db.dir/DbFile.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/DbFile.cpp

src/db/CMakeFiles/db.dir/DbFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/DbFile.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/DbFile.cpp > CMakeFiles/db.dir/DbFile.cpp.i

src/db/CMakeFiles/db.dir/DbFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/DbFile.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/DbFile.cpp -o CMakeFiles/db.dir/DbFile.cpp.s

src/db/CMakeFiles/db.dir/HeapFile.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/HeapFile.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/HeapFile.cpp
src/db/CMakeFiles/db.dir/HeapFile.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/db/CMakeFiles/db.dir/HeapFile.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/HeapFile.cpp.o -MF CMakeFiles/db.dir/HeapFile.cpp.o.d -o CMakeFiles/db.dir/HeapFile.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/HeapFile.cpp

src/db/CMakeFiles/db.dir/HeapFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/HeapFile.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/HeapFile.cpp > CMakeFiles/db.dir/HeapFile.cpp.i

src/db/CMakeFiles/db.dir/HeapFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/HeapFile.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/HeapFile.cpp -o CMakeFiles/db.dir/HeapFile.cpp.s

src/db/CMakeFiles/db.dir/HeapPage.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/HeapPage.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/HeapPage.cpp
src/db/CMakeFiles/db.dir/HeapPage.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/db/CMakeFiles/db.dir/HeapPage.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/HeapPage.cpp.o -MF CMakeFiles/db.dir/HeapPage.cpp.o.d -o CMakeFiles/db.dir/HeapPage.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/HeapPage.cpp

src/db/CMakeFiles/db.dir/HeapPage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/HeapPage.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/HeapPage.cpp > CMakeFiles/db.dir/HeapPage.cpp.i

src/db/CMakeFiles/db.dir/HeapPage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/HeapPage.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/HeapPage.cpp -o CMakeFiles/db.dir/HeapPage.cpp.s

src/db/CMakeFiles/db.dir/IndexPage.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/IndexPage.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/IndexPage.cpp
src/db/CMakeFiles/db.dir/IndexPage.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/db/CMakeFiles/db.dir/IndexPage.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/IndexPage.cpp.o -MF CMakeFiles/db.dir/IndexPage.cpp.o.d -o CMakeFiles/db.dir/IndexPage.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/IndexPage.cpp

src/db/CMakeFiles/db.dir/IndexPage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/IndexPage.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/IndexPage.cpp > CMakeFiles/db.dir/IndexPage.cpp.i

src/db/CMakeFiles/db.dir/IndexPage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/IndexPage.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/IndexPage.cpp -o CMakeFiles/db.dir/IndexPage.cpp.s

src/db/CMakeFiles/db.dir/Iterator.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/Iterator.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Iterator.cpp
src/db/CMakeFiles/db.dir/Iterator.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/db/CMakeFiles/db.dir/Iterator.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/Iterator.cpp.o -MF CMakeFiles/db.dir/Iterator.cpp.o.d -o CMakeFiles/db.dir/Iterator.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Iterator.cpp

src/db/CMakeFiles/db.dir/Iterator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/Iterator.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Iterator.cpp > CMakeFiles/db.dir/Iterator.cpp.i

src/db/CMakeFiles/db.dir/Iterator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/Iterator.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Iterator.cpp -o CMakeFiles/db.dir/Iterator.cpp.s

src/db/CMakeFiles/db.dir/LeafPage.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/LeafPage.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/LeafPage.cpp
src/db/CMakeFiles/db.dir/LeafPage.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/db/CMakeFiles/db.dir/LeafPage.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/LeafPage.cpp.o -MF CMakeFiles/db.dir/LeafPage.cpp.o.d -o CMakeFiles/db.dir/LeafPage.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/LeafPage.cpp

src/db/CMakeFiles/db.dir/LeafPage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/LeafPage.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/LeafPage.cpp > CMakeFiles/db.dir/LeafPage.cpp.i

src/db/CMakeFiles/db.dir/LeafPage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/LeafPage.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/LeafPage.cpp -o CMakeFiles/db.dir/LeafPage.cpp.s

src/db/CMakeFiles/db.dir/Query.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/Query.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Query.cpp
src/db/CMakeFiles/db.dir/Query.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/db/CMakeFiles/db.dir/Query.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/Query.cpp.o -MF CMakeFiles/db.dir/Query.cpp.o.d -o CMakeFiles/db.dir/Query.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Query.cpp

src/db/CMakeFiles/db.dir/Query.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/Query.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Query.cpp > CMakeFiles/db.dir/Query.cpp.i

src/db/CMakeFiles/db.dir/Query.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/Query.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Query.cpp -o CMakeFiles/db.dir/Query.cpp.s

src/db/CMakeFiles/db.dir/Tuple.cpp.o: src/db/CMakeFiles/db.dir/flags.make
src/db/CMakeFiles/db.dir/Tuple.cpp.o: /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Tuple.cpp
src/db/CMakeFiles/db.dir/Tuple.cpp.o: src/db/CMakeFiles/db.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/db/CMakeFiles/db.dir/Tuple.cpp.o"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/db/CMakeFiles/db.dir/Tuple.cpp.o -MF CMakeFiles/db.dir/Tuple.cpp.o.d -o CMakeFiles/db.dir/Tuple.cpp.o -c /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Tuple.cpp

src/db/CMakeFiles/db.dir/Tuple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/db.dir/Tuple.cpp.i"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Tuple.cpp > CMakeFiles/db.dir/Tuple.cpp.i

src/db/CMakeFiles/db.dir/Tuple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/db.dir/Tuple.cpp.s"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db/Tuple.cpp -o CMakeFiles/db.dir/Tuple.cpp.s

# Object files for target db
db_OBJECTS = \
"CMakeFiles/db.dir/BTreeFile.cpp.o" \
"CMakeFiles/db.dir/BufferPool.cpp.o" \
"CMakeFiles/db.dir/ColumnStats.cpp.o" \
"CMakeFiles/db.dir/Database.cpp.o" \
"CMakeFiles/db.dir/DbFile.cpp.o" \
"CMakeFiles/db.dir/HeapFile.cpp.o" \
"CMakeFiles/db.dir/HeapPage.cpp.o" \
"CMakeFiles/db.dir/IndexPage.cpp.o" \
"CMakeFiles/db.dir/Iterator.cpp.o" \
"CMakeFiles/db.dir/LeafPage.cpp.o" \
"CMakeFiles/db.dir/Query.cpp.o" \
"CMakeFiles/db.dir/Tuple.cpp.o"

# External object files for target db
db_EXTERNAL_OBJECTS =

src/db/libdb.a: src/db/CMakeFiles/db.dir/BTreeFile.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/BufferPool.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/ColumnStats.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/Database.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/DbFile.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/HeapFile.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/HeapPage.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/IndexPage.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/Iterator.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/LeafPage.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/Query.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/Tuple.cpp.o
src/db/libdb.a: src/db/CMakeFiles/db.dir/build.make
src/db/libdb.a: src/db/CMakeFiles/db.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX static library libdb.a"
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && $(CMAKE_COMMAND) -P CMakeFiles/db.dir/cmake_clean_target.cmake
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/db.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/db/CMakeFiles/db.dir/build: src/db/libdb.a
.PHONY : src/db/CMakeFiles/db.dir/build

src/db/CMakeFiles/db.dir/clean:
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db && $(CMAKE_COMMAND) -P CMakeFiles/db.dir/cmake_clean.cmake
.PHONY : src/db/CMakeFiles/db.dir/clean

src/db/CMakeFiles/db.dir/depend:
	cd /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jinpeng/Desktop/CS660PA4/CS660_PA4 /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/src/db /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db /Users/jinpeng/Desktop/CS660PA4/CS660_PA4/build/src/db/CMakeFiles/db.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/db/CMakeFiles/db.dir/depend

