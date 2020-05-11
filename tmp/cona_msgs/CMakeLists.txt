cmake_minimum_required(VERSION 2.8.3)
project(cona_msgs)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  geometry_msgs
  message_generation
  message_runtime
  actionlib
  actionlib_msgs
)

## Generate messages in the 'msg' folder
 add_message_files(
   DIRECTORY msg
   FILES
    cona_BodyTracker.msg
    cona_BodyTrackerArray.msg
    gui.msg
    GoalPose.msg
    cona_main.msg
    dsb.msg
    lsb.msg
    sound_track_num.msg
 )

## Generate services in the 'srv' folder
# add_service_files(
#   DIRECTORY srv 
#   FILES
# )

## Generate actions in the 'action' folder
# add_action_files(
#   DIRECTORY action 
#   FILES
# )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
   geometry_msgs
   actionlib_msgs
 )

catkin_package(
  CATKIN_DEPENDS std_msgs geometry_msgs message_generation message_runtime actionlib actionlib_msgs 
)

include_directories(
 include
  ${catkin_INCLUDE_DIRS}
)

