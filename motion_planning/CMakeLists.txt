cmake_minimum_required(VERSION 2.8.3)
project(motion_planning)

 # Get the information about this package's buildtime dependencies
  find_package(catkin REQUIRED
    COMPONENTS message_generation message_filters roscpp rospy std_msgs sensor_msgs)

  include_directories(${catkin_INCLUDE_DIRS})

  # Declare the message files to be built
  add_message_files(FILES AV.msg Cars.msg Cars_vector.msg
  )

  # Declare the service files to be built
  #add_service_files(FILES
  # MyService.srv
  #)

  # Actually generate the language-specific message and service files
  generate_messages(DEPENDENCIES std_msgs sensor_msgs)
  # Declare that this catkin package's runtime dependencies
  catkin_package(
   CATKIN_DEPENDS message_runtime std_msgs sensor_msgs
  )


  add_executable(motion_planning src/motion_planning.cpp)

catkin_install_python(PROGRAMS src/publisher.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

  add_dependencies(motion_planning ${catkin_EXPORTED_TARGETS})

  add_dependencies(motion_planning motion_planning_generate_messages_cpp)

  target_link_libraries(motion_planning 
  ${catkin_LIBRARIES} ${PCL_LIBRARIES}
  )

 
