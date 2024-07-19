# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/src/custom_interfaces

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces

# Include any dependencies generated for this target.
include CMakeFiles/custom_interfaces__rosidl_generator_c.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/custom_interfaces__rosidl_generator_c.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/custom_interfaces__rosidl_generator_c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/custom_interfaces__rosidl_generator_c.dir/flags.make

rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/lib/rosidl_generator_c/rosidl_generator_c
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/local/lib/python3.10/dist-packages/rosidl_generator_c/__init__.py
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/action__type_support.h.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/idl.h.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/idl__functions.c.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/idl__functions.h.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/idl__struct.h.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/idl__type_support.h.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/msg__functions.c.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/msg__functions.h.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/msg__struct.h.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/msg__type_support.h.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: /opt/ros/humble/share/rosidl_generator_c/resource/srv__type_support.h.em
rosidl_generator_c/custom_interfaces/srv/check_stock.h: rosidl_adapter/custom_interfaces/srv/CheckStock.idl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C code for ROS interfaces"
	/usr/bin/python3 /opt/ros/humble/share/rosidl_generator_c/cmake/../../../lib/rosidl_generator_c/rosidl_generator_c --generator-arguments-file /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces/rosidl_generator_c__arguments.json

rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.h: rosidl_generator_c/custom_interfaces/srv/check_stock.h
	@$(CMAKE_COMMAND) -E touch_nocreate rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.h

rosidl_generator_c/custom_interfaces/srv/detail/check_stock__struct.h: rosidl_generator_c/custom_interfaces/srv/check_stock.h
	@$(CMAKE_COMMAND) -E touch_nocreate rosidl_generator_c/custom_interfaces/srv/detail/check_stock__struct.h

rosidl_generator_c/custom_interfaces/srv/detail/check_stock__type_support.h: rosidl_generator_c/custom_interfaces/srv/check_stock.h
	@$(CMAKE_COMMAND) -E touch_nocreate rosidl_generator_c/custom_interfaces/srv/detail/check_stock__type_support.h

rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c: rosidl_generator_c/custom_interfaces/srv/check_stock.h
	@$(CMAKE_COMMAND) -E touch_nocreate rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c

CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.o: CMakeFiles/custom_interfaces__rosidl_generator_c.dir/flags.make
CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.o: rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c
CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.o: CMakeFiles/custom_interfaces__rosidl_generator_c.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.o -MF CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.o.d -o CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.o -c /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c

CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c > CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.i

CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c -o CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.s

# Object files for target custom_interfaces__rosidl_generator_c
custom_interfaces__rosidl_generator_c_OBJECTS = \
"CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.o"

# External object files for target custom_interfaces__rosidl_generator_c
custom_interfaces__rosidl_generator_c_EXTERNAL_OBJECTS =

libcustom_interfaces__rosidl_generator_c.so: CMakeFiles/custom_interfaces__rosidl_generator_c.dir/rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c.o
libcustom_interfaces__rosidl_generator_c.so: CMakeFiles/custom_interfaces__rosidl_generator_c.dir/build.make
libcustom_interfaces__rosidl_generator_c.so: /opt/ros/humble/lib/librosidl_runtime_c.so
libcustom_interfaces__rosidl_generator_c.so: /opt/ros/humble/lib/librcutils.so
libcustom_interfaces__rosidl_generator_c.so: CMakeFiles/custom_interfaces__rosidl_generator_c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C shared library libcustom_interfaces__rosidl_generator_c.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/custom_interfaces__rosidl_generator_c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/custom_interfaces__rosidl_generator_c.dir/build: libcustom_interfaces__rosidl_generator_c.so
.PHONY : CMakeFiles/custom_interfaces__rosidl_generator_c.dir/build

CMakeFiles/custom_interfaces__rosidl_generator_c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/custom_interfaces__rosidl_generator_c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/custom_interfaces__rosidl_generator_c.dir/clean

CMakeFiles/custom_interfaces__rosidl_generator_c.dir/depend: rosidl_generator_c/custom_interfaces/srv/check_stock.h
CMakeFiles/custom_interfaces__rosidl_generator_c.dir/depend: rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.c
CMakeFiles/custom_interfaces__rosidl_generator_c.dir/depend: rosidl_generator_c/custom_interfaces/srv/detail/check_stock__functions.h
CMakeFiles/custom_interfaces__rosidl_generator_c.dir/depend: rosidl_generator_c/custom_interfaces/srv/detail/check_stock__struct.h
CMakeFiles/custom_interfaces__rosidl_generator_c.dir/depend: rosidl_generator_c/custom_interfaces/srv/detail/check_stock__type_support.h
	cd /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/src/custom_interfaces /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/src/custom_interfaces /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces /home/mohamad/Inmind/Robotics-Session6-Assignment/Session6_ros2_ws/build/custom_interfaces/CMakeFiles/custom_interfaces__rosidl_generator_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/custom_interfaces__rosidl_generator_c.dir/depend

