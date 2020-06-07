cmake_minimum_required(VERSION 2.8.3)
project(value_msg)

## add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  message_runtime
  std_msgs
  geometry_msgs
  actionlib_msgs
)

## Generate messages in the 'msg' folder
add_message_files(
  DIRECTORY msg
  FILES
   value.msg
)

add_service_files(
  DIRECTORY msg  
  FILES
  AddTwoInts.srv
)

add_action_files(
  DIRECTORY msg
  FILES
  Averaging.action
  Fibonacci.action
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  actionlib_msgs
)

catkin_package(
 CATKIN_DEPENDS std_msgs message_generation message_runtime geometry_msgs actionlib_msgs
)

include_directories(
include
 ${catkin_INCLUDE_DIRS}
)