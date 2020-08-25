# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "odom: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iodom:/home/user/catkin_ws/src/odom/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(odom_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/src/odom/msg/Age.msg" NAME_WE)
add_custom_target(_odom_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "odom" "/home/user/catkin_ws/src/odom/msg/Age.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(odom
  "/home/user/catkin_ws/src/odom/msg/Age.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odom
)

### Generating Services

### Generating Module File
_generate_module_cpp(odom
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odom
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(odom_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(odom_generate_messages odom_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/odom/msg/Age.msg" NAME_WE)
add_dependencies(odom_generate_messages_cpp _odom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odom_gencpp)
add_dependencies(odom_gencpp odom_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odom_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(odom
  "/home/user/catkin_ws/src/odom/msg/Age.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odom
)

### Generating Services

### Generating Module File
_generate_module_eus(odom
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odom
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(odom_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(odom_generate_messages odom_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/odom/msg/Age.msg" NAME_WE)
add_dependencies(odom_generate_messages_eus _odom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odom_geneus)
add_dependencies(odom_geneus odom_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odom_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(odom
  "/home/user/catkin_ws/src/odom/msg/Age.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odom
)

### Generating Services

### Generating Module File
_generate_module_lisp(odom
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odom
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(odom_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(odom_generate_messages odom_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/odom/msg/Age.msg" NAME_WE)
add_dependencies(odom_generate_messages_lisp _odom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odom_genlisp)
add_dependencies(odom_genlisp odom_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odom_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(odom
  "/home/user/catkin_ws/src/odom/msg/Age.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odom
)

### Generating Services

### Generating Module File
_generate_module_nodejs(odom
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odom
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(odom_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(odom_generate_messages odom_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/odom/msg/Age.msg" NAME_WE)
add_dependencies(odom_generate_messages_nodejs _odom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odom_gennodejs)
add_dependencies(odom_gennodejs odom_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odom_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(odom
  "/home/user/catkin_ws/src/odom/msg/Age.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom
)

### Generating Services

### Generating Module File
_generate_module_py(odom
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(odom_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(odom_generate_messages odom_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/src/odom/msg/Age.msg" NAME_WE)
add_dependencies(odom_generate_messages_py _odom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odom_genpy)
add_dependencies(odom_genpy odom_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odom_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odom
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(odom_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odom
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(odom_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odom
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(odom_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odom
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(odom_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odom
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(odom_generate_messages_py std_msgs_generate_messages_py)
endif()
