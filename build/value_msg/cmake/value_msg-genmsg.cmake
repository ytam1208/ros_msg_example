# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "value_msg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ivalue_msg:/home/tm/child/src/value_msg/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(value_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tm/child/src/value_msg/msg/value.msg" NAME_WE)
add_custom_target(_value_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "value_msg" "/home/tm/child/src/value_msg/msg/value.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(value_msg
  "/home/tm/child/src/value_msg/msg/value.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/value_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(value_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/value_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(value_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(value_msg_generate_messages value_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tm/child/src/value_msg/msg/value.msg" NAME_WE)
add_dependencies(value_msg_generate_messages_cpp _value_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(value_msg_gencpp)
add_dependencies(value_msg_gencpp value_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS value_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(value_msg
  "/home/tm/child/src/value_msg/msg/value.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/value_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(value_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/value_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(value_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(value_msg_generate_messages value_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tm/child/src/value_msg/msg/value.msg" NAME_WE)
add_dependencies(value_msg_generate_messages_eus _value_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(value_msg_geneus)
add_dependencies(value_msg_geneus value_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS value_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(value_msg
  "/home/tm/child/src/value_msg/msg/value.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/value_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(value_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/value_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(value_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(value_msg_generate_messages value_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tm/child/src/value_msg/msg/value.msg" NAME_WE)
add_dependencies(value_msg_generate_messages_lisp _value_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(value_msg_genlisp)
add_dependencies(value_msg_genlisp value_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS value_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(value_msg
  "/home/tm/child/src/value_msg/msg/value.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/value_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(value_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/value_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(value_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(value_msg_generate_messages value_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tm/child/src/value_msg/msg/value.msg" NAME_WE)
add_dependencies(value_msg_generate_messages_nodejs _value_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(value_msg_gennodejs)
add_dependencies(value_msg_gennodejs value_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS value_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(value_msg
  "/home/tm/child/src/value_msg/msg/value.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/value_msg
)

### Generating Services

### Generating Module File
_generate_module_py(value_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/value_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(value_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(value_msg_generate_messages value_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tm/child/src/value_msg/msg/value.msg" NAME_WE)
add_dependencies(value_msg_generate_messages_py _value_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(value_msg_genpy)
add_dependencies(value_msg_genpy value_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS value_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/value_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/value_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(value_msg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(value_msg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/value_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/value_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(value_msg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(value_msg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/value_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/value_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(value_msg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(value_msg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/value_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/value_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(value_msg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(value_msg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/value_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/value_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/value_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(value_msg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(value_msg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
