# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = C:\CMake\bin\cmake.exe

# The command to remove a file.
RM = C:\CMake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\MICRO_RASP\ACT_6\build\_deps\picotool-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\MICRO_RASP\ACT_6\build\_deps\picotool-build

# Include any dependencies generated for this target.
include elf\CMakeFiles\elf.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include elf\CMakeFiles\elf.dir\compiler_depend.make

# Include the compile flags for this target's objects.
include elf\CMakeFiles\elf.dir\flags.make

elf\CMakeFiles\elf.dir\codegen:
.PHONY : elf\CMakeFiles\elf.dir\codegen

elf\CMakeFiles\elf.dir\elf_file.cpp.obj: elf\CMakeFiles\elf.dir\flags.make
elf\CMakeFiles\elf.dir\elf_file.cpp.obj: C:\MICRO_RASP\ACT_6\build\_deps\picotool-src\elf\elf_file.cpp
elf\CMakeFiles\elf.dir\elf_file.cpp.obj: elf\CMakeFiles\elf.dir\compiler_depend.ts
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build\elf
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\elf.dir\elf_file.cpp.obj.d --working-dir=C:\MICRO_RASP\ACT_6\build\_deps\picotool-build\elf --filter-prefix="Nota: inclusi�n del archivo: " -- C:\PROGRA~2\MICROS~2\2022\BUILDT~1\VC\Tools\MSVC\1441~1.341\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles\elf.dir\elf_file.cpp.obj /FdCMakeFiles\elf.dir\elf.pdb /FS -c C:\MICRO_RASP\ACT_6\build\_deps\picotool-src\elf\elf_file.cpp
<<
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build

elf\CMakeFiles\elf.dir\elf_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/elf.dir/elf_file.cpp.i"
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build\elf
	C:\PROGRA~2\MICROS~2\2022\BUILDT~1\VC\Tools\MSVC\1441~1.341\bin\Hostx86\x86\cl.exe > CMakeFiles\elf.dir\elf_file.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\MICRO_RASP\ACT_6\build\_deps\picotool-src\elf\elf_file.cpp
<<
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build

elf\CMakeFiles\elf.dir\elf_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/elf.dir/elf_file.cpp.s"
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build\elf
	C:\PROGRA~2\MICROS~2\2022\BUILDT~1\VC\Tools\MSVC\1441~1.341\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\elf.dir\elf_file.cpp.s /c C:\MICRO_RASP\ACT_6\build\_deps\picotool-src\elf\elf_file.cpp
<<
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build

# Object files for target elf
elf_OBJECTS = \
"CMakeFiles\elf.dir\elf_file.cpp.obj"

# External object files for target elf
elf_EXTERNAL_OBJECTS =

elf\elf.lib: elf\CMakeFiles\elf.dir\elf_file.cpp.obj
elf\elf.lib: elf\CMakeFiles\elf.dir\build.make
elf\elf.lib: elf\CMakeFiles\elf.dir\objects1.rsp
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build\elf
	$(CMAKE_COMMAND) -P CMakeFiles\elf.dir\cmake_clean_target.cmake
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build\elf
	C:\PROGRA~2\MICROS~2\2022\BUILDT~1\VC\Tools\MSVC\1441~1.341\bin\Hostx86\x86\lib.exe /nologo /machine:X86 /out:elf.lib @CMakeFiles\elf.dir\objects1.rsp
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build

# Rule to build all files generated by this target.
elf\CMakeFiles\elf.dir\build: elf\elf.lib
.PHONY : elf\CMakeFiles\elf.dir\build

elf\CMakeFiles\elf.dir\clean:
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build\elf
	$(CMAKE_COMMAND) -P CMakeFiles\elf.dir\cmake_clean.cmake
	cd C:\MICRO_RASP\ACT_6\build\_deps\picotool-build
.PHONY : elf\CMakeFiles\elf.dir\clean

elf\CMakeFiles\elf.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\MICRO_RASP\ACT_6\build\_deps\picotool-src C:\MICRO_RASP\ACT_6\build\_deps\picotool-src\elf C:\MICRO_RASP\ACT_6\build\_deps\picotool-build C:\MICRO_RASP\ACT_6\build\_deps\picotool-build\elf C:\MICRO_RASP\ACT_6\build\_deps\picotool-build\elf\CMakeFiles\elf.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : elf\CMakeFiles\elf.dir\depend

