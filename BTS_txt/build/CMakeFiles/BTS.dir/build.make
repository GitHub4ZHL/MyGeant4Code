# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ZHL/g4_test/BTS230831

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ZHL/g4_test/BTS230831/build

# Include any dependencies generated for this target.
include CMakeFiles/BTS.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/BTS.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BTS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BTS.dir/flags.make

CMakeFiles/BTS.dir/BTS.cc.o: CMakeFiles/BTS.dir/flags.make
CMakeFiles/BTS.dir/BTS.cc.o: ../BTS.cc
CMakeFiles/BTS.dir/BTS.cc.o: CMakeFiles/BTS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ZHL/g4_test/BTS230831/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BTS.dir/BTS.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BTS.dir/BTS.cc.o -MF CMakeFiles/BTS.dir/BTS.cc.o.d -o CMakeFiles/BTS.dir/BTS.cc.o -c /home/ZHL/g4_test/BTS230831/BTS.cc

CMakeFiles/BTS.dir/BTS.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BTS.dir/BTS.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ZHL/g4_test/BTS230831/BTS.cc > CMakeFiles/BTS.dir/BTS.cc.i

CMakeFiles/BTS.dir/BTS.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BTS.dir/BTS.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ZHL/g4_test/BTS230831/BTS.cc -o CMakeFiles/BTS.dir/BTS.cc.s

CMakeFiles/BTS.dir/src/ActionInitialization.cc.o: CMakeFiles/BTS.dir/flags.make
CMakeFiles/BTS.dir/src/ActionInitialization.cc.o: ../src/ActionInitialization.cc
CMakeFiles/BTS.dir/src/ActionInitialization.cc.o: CMakeFiles/BTS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ZHL/g4_test/BTS230831/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BTS.dir/src/ActionInitialization.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BTS.dir/src/ActionInitialization.cc.o -MF CMakeFiles/BTS.dir/src/ActionInitialization.cc.o.d -o CMakeFiles/BTS.dir/src/ActionInitialization.cc.o -c /home/ZHL/g4_test/BTS230831/src/ActionInitialization.cc

CMakeFiles/BTS.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BTS.dir/src/ActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ZHL/g4_test/BTS230831/src/ActionInitialization.cc > CMakeFiles/BTS.dir/src/ActionInitialization.cc.i

CMakeFiles/BTS.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BTS.dir/src/ActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ZHL/g4_test/BTS230831/src/ActionInitialization.cc -o CMakeFiles/BTS.dir/src/ActionInitialization.cc.s

CMakeFiles/BTS.dir/src/DetectorConstruction.cc.o: CMakeFiles/BTS.dir/flags.make
CMakeFiles/BTS.dir/src/DetectorConstruction.cc.o: ../src/DetectorConstruction.cc
CMakeFiles/BTS.dir/src/DetectorConstruction.cc.o: CMakeFiles/BTS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ZHL/g4_test/BTS230831/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/BTS.dir/src/DetectorConstruction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BTS.dir/src/DetectorConstruction.cc.o -MF CMakeFiles/BTS.dir/src/DetectorConstruction.cc.o.d -o CMakeFiles/BTS.dir/src/DetectorConstruction.cc.o -c /home/ZHL/g4_test/BTS230831/src/DetectorConstruction.cc

CMakeFiles/BTS.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BTS.dir/src/DetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ZHL/g4_test/BTS230831/src/DetectorConstruction.cc > CMakeFiles/BTS.dir/src/DetectorConstruction.cc.i

CMakeFiles/BTS.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BTS.dir/src/DetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ZHL/g4_test/BTS230831/src/DetectorConstruction.cc -o CMakeFiles/BTS.dir/src/DetectorConstruction.cc.s

CMakeFiles/BTS.dir/src/EventAction.cc.o: CMakeFiles/BTS.dir/flags.make
CMakeFiles/BTS.dir/src/EventAction.cc.o: ../src/EventAction.cc
CMakeFiles/BTS.dir/src/EventAction.cc.o: CMakeFiles/BTS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ZHL/g4_test/BTS230831/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/BTS.dir/src/EventAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BTS.dir/src/EventAction.cc.o -MF CMakeFiles/BTS.dir/src/EventAction.cc.o.d -o CMakeFiles/BTS.dir/src/EventAction.cc.o -c /home/ZHL/g4_test/BTS230831/src/EventAction.cc

CMakeFiles/BTS.dir/src/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BTS.dir/src/EventAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ZHL/g4_test/BTS230831/src/EventAction.cc > CMakeFiles/BTS.dir/src/EventAction.cc.i

CMakeFiles/BTS.dir/src/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BTS.dir/src/EventAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ZHL/g4_test/BTS230831/src/EventAction.cc -o CMakeFiles/BTS.dir/src/EventAction.cc.s

CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/BTS.dir/flags.make
CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.o: ../src/PrimaryGeneratorAction.cc
CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/BTS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ZHL/g4_test/BTS230831/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.o -MF CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.o.d -o CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.o -c /home/ZHL/g4_test/BTS230831/src/PrimaryGeneratorAction.cc

CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ZHL/g4_test/BTS230831/src/PrimaryGeneratorAction.cc > CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ZHL/g4_test/BTS230831/src/PrimaryGeneratorAction.cc -o CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/BTS.dir/src/RunAction.cc.o: CMakeFiles/BTS.dir/flags.make
CMakeFiles/BTS.dir/src/RunAction.cc.o: ../src/RunAction.cc
CMakeFiles/BTS.dir/src/RunAction.cc.o: CMakeFiles/BTS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ZHL/g4_test/BTS230831/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/BTS.dir/src/RunAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BTS.dir/src/RunAction.cc.o -MF CMakeFiles/BTS.dir/src/RunAction.cc.o.d -o CMakeFiles/BTS.dir/src/RunAction.cc.o -c /home/ZHL/g4_test/BTS230831/src/RunAction.cc

CMakeFiles/BTS.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BTS.dir/src/RunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ZHL/g4_test/BTS230831/src/RunAction.cc > CMakeFiles/BTS.dir/src/RunAction.cc.i

CMakeFiles/BTS.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BTS.dir/src/RunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ZHL/g4_test/BTS230831/src/RunAction.cc -o CMakeFiles/BTS.dir/src/RunAction.cc.s

CMakeFiles/BTS.dir/src/SteppingAction.cc.o: CMakeFiles/BTS.dir/flags.make
CMakeFiles/BTS.dir/src/SteppingAction.cc.o: ../src/SteppingAction.cc
CMakeFiles/BTS.dir/src/SteppingAction.cc.o: CMakeFiles/BTS.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ZHL/g4_test/BTS230831/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/BTS.dir/src/SteppingAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BTS.dir/src/SteppingAction.cc.o -MF CMakeFiles/BTS.dir/src/SteppingAction.cc.o.d -o CMakeFiles/BTS.dir/src/SteppingAction.cc.o -c /home/ZHL/g4_test/BTS230831/src/SteppingAction.cc

CMakeFiles/BTS.dir/src/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BTS.dir/src/SteppingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ZHL/g4_test/BTS230831/src/SteppingAction.cc > CMakeFiles/BTS.dir/src/SteppingAction.cc.i

CMakeFiles/BTS.dir/src/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BTS.dir/src/SteppingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ZHL/g4_test/BTS230831/src/SteppingAction.cc -o CMakeFiles/BTS.dir/src/SteppingAction.cc.s

# Object files for target BTS
BTS_OBJECTS = \
"CMakeFiles/BTS.dir/BTS.cc.o" \
"CMakeFiles/BTS.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/BTS.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/BTS.dir/src/EventAction.cc.o" \
"CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/BTS.dir/src/RunAction.cc.o" \
"CMakeFiles/BTS.dir/src/SteppingAction.cc.o"

# External object files for target BTS
BTS_EXTERNAL_OBJECTS =

BTS: CMakeFiles/BTS.dir/BTS.cc.o
BTS: CMakeFiles/BTS.dir/src/ActionInitialization.cc.o
BTS: CMakeFiles/BTS.dir/src/DetectorConstruction.cc.o
BTS: CMakeFiles/BTS.dir/src/EventAction.cc.o
BTS: CMakeFiles/BTS.dir/src/PrimaryGeneratorAction.cc.o
BTS: CMakeFiles/BTS.dir/src/RunAction.cc.o
BTS: CMakeFiles/BTS.dir/src/SteppingAction.cc.o
BTS: CMakeFiles/BTS.dir/build.make
BTS: /home/ZHL/Geant4/install/lib64/libG4Tree.so
BTS: /home/ZHL/Geant4/install/lib64/libG4FR.so
BTS: /home/ZHL/Geant4/install/lib64/libG4GMocren.so
BTS: /home/ZHL/Geant4/install/lib64/libG4visHepRep.so
BTS: /home/ZHL/Geant4/install/lib64/libG4RayTracer.so
BTS: /home/ZHL/Geant4/install/lib64/libG4VRML.so
BTS: /home/ZHL/Geant4/install/lib64/libG4ToolsSG.so
BTS: /home/ZHL/Geant4/install/lib64/libG4OpenGL.so
BTS: /home/ZHL/Geant4/install/lib64/libG4visQt3D.so
BTS: /home/ZHL/Geant4/install/lib64/libG4vis_management.so
BTS: /home/ZHL/Geant4/install/lib64/libG4modeling.so
BTS: /home/ZHL/Geant4/install/lib64/libG4interfaces.so
BTS: /home/ZHL/Geant4/install/lib64/libG4persistency.so
BTS: /home/ZHL/Geant4/install/lib64/libG4error_propagation.so
BTS: /home/ZHL/Geant4/install/lib64/libG4readout.so
BTS: /home/ZHL/Geant4/install/lib64/libG4physicslists.so
BTS: /home/ZHL/Geant4/install/lib64/libG4run.so
BTS: /home/ZHL/Geant4/install/lib64/libG4event.so
BTS: /home/ZHL/Geant4/install/lib64/libG4tracking.so
BTS: /home/ZHL/Geant4/install/lib64/libG4parmodels.so
BTS: /home/ZHL/Geant4/install/lib64/libG4processes.so
BTS: /home/ZHL/Geant4/install/lib64/libG4digits_hits.so
BTS: /home/ZHL/Geant4/install/lib64/libG4track.so
BTS: /home/ZHL/Geant4/install/lib64/libG4particles.so
BTS: /home/ZHL/Geant4/install/lib64/libG4geometry.so
BTS: /home/ZHL/Geant4/install/lib64/libG4materials.so
BTS: /home/ZHL/Geant4/install/lib64/libG4graphics_reps.so
BTS: /usr/lib64/libGL.so
BTS: /usr/lib64/libQt5OpenGL.so.5.15.3
BTS: /usr/lib64/libQt5PrintSupport.so.5.15.3
BTS: /usr/lib64/libQt5Widgets.so.5.15.3
BTS: /usr/lib64/libQt53DExtras.so.5.15.3
BTS: /usr/lib64/libQt53DInput.so.5.15.3
BTS: /usr/lib64/libQt53DLogic.so.5.15.3
BTS: /usr/lib64/libQt53DRender.so.5.15.3
BTS: /usr/lib64/libQt53DCore.so.5.15.3
BTS: /usr/lib64/libQt5Gui.so.5.15.3
BTS: /usr/lib64/libQt5Network.so.5.15.3
BTS: /usr/lib64/libQt5Core.so.5.15.3
BTS: /usr/lib64/libxerces-c.so
BTS: /home/ZHL/Geant4/install/lib64/libG4analysis.so
BTS: /usr/lib64/libz.so
BTS: /usr/lib64/libexpat.so
BTS: /home/ZHL/Geant4/install/lib64/libG4intercoms.so
BTS: /home/ZHL/Geant4/install/lib64/libG4global.so
BTS: /home/ZHL/Geant4/install/lib64/libG4ptl.so.2.3.3
BTS: /usr/local/lib/libCLHEP-2.4.6.4.so
BTS: CMakeFiles/BTS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ZHL/g4_test/BTS230831/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable BTS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BTS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BTS.dir/build: BTS
.PHONY : CMakeFiles/BTS.dir/build

CMakeFiles/BTS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BTS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BTS.dir/clean

CMakeFiles/BTS.dir/depend:
	cd /home/ZHL/g4_test/BTS230831/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ZHL/g4_test/BTS230831 /home/ZHL/g4_test/BTS230831 /home/ZHL/g4_test/BTS230831/build /home/ZHL/g4_test/BTS230831/build /home/ZHL/g4_test/BTS230831/build/CMakeFiles/BTS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BTS.dir/depend

