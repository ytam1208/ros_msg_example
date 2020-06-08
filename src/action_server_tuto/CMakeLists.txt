cmake_minimum_required(VERSION 3.0.2)
project(action_server_tuto)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED  COMPONENTS
    roscpp
    std_msgs
    actionlib_msgs
    actionlib
    message_generation
    message_runtime
    value_msg
)
find_package(Boost REQUIRED COMPONENTS system)
find_package(OpenCV REQUIRED)

###################################
## catkin specific configuration ##
###################################

catkin_package(
  LIBRARIES ${PROJECT_NAME}
  INCLUDE_DIRS include
  CATKIN_DEPENDS roscpp std_msgs message_generation message_runtime value_msg
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locatilsons should be listed before other locations

include_directories(
    include
    ${catkin_INCLUDE_DIRS}
    ${Boost_INCLUDE_DIRS}
    ${OpenCV_INCLUDE_DIRS}
    ${PROJECT_SOURCE_DIR}/include/
)

#add_executable(${PROJECT_NAME} nodes/sub.cpp nodes/pub.cpp src/main.cpp)
add_executable(${PROJECT_NAME} src/main.cpp)

add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_link_libraries(${PROJECT_NAME}
  ${catkin_LIBRARIES}
  ${OpenCV_LIBRARIES}
)