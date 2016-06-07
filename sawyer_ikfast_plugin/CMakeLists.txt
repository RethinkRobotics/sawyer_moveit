cmake_minimum_required(VERSION 2.8.3)
project(sawyer_ikfast_plugin)

find_package(catkin REQUIRED COMPONENTS
  moveit_core
  pluginlib
  roscpp
  tf_conversions
  urdf
)

find_package(Eigen3 REQUIRED)
include_directories(SYSTEM ${Eigen3_INCLUDE_DIRS})

include_directories(${catkin_INCLUDE_DIRS})
link_directories(${catkin_LIBRARY_DIRS})

catkin_package(
  LIBRARIES
  DEPENDS
  moveit_core
  pluginlib
  roscpp
  tf_conversions
)

include_directories(include)

set(IKFAST_LIBRARY_NAME sawyer_moveit_ikfast_plugin)

find_package(LAPACK REQUIRED)

#add_library(${IKFAST_LIBRARY_NAME} src/sawyer_ikfast_moveit_plugin.cpp)
#target_link_libraries(${IKFAST_LIBRARY_NAME} ${Eigen3_INCLUDE_DIRS}
#                      ${catkin_LIBRARIES} ${Boost_LIBRARIES} ${LAPACK_LIBRARIES})

#install(TARGETS ${IKFAST_LIBRARY_NAME} LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION})
#install(DIRECTORY include/ DESTINATION include)

#install(
#  FILES
#  sawyer_moveit_ikfast_plugin_description.xml
#  DESTINATION
#  ${CATKIN_PACKAGE_SHARE_DESTINATION}
#)
