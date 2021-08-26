# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "biox_read: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ibiox_read:/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(biox_read_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg" NAME_WE)
add_custom_target(_biox_read_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "biox_read" "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg" ""
)

get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg" NAME_WE)
add_custom_target(_biox_read_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "biox_read" "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg" "geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(biox_read
  "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/biox_read
)
_generate_msg_cpp(biox_read
  "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/biox_read
)

### Generating Services

### Generating Module File
_generate_module_cpp(biox_read
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/biox_read
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(biox_read_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(biox_read_generate_messages biox_read_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg" NAME_WE)
add_dependencies(biox_read_generate_messages_cpp _biox_read_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg" NAME_WE)
add_dependencies(biox_read_generate_messages_cpp _biox_read_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(biox_read_gencpp)
add_dependencies(biox_read_gencpp biox_read_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS biox_read_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(biox_read
  "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/biox_read
)
_generate_msg_eus(biox_read
  "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/biox_read
)

### Generating Services

### Generating Module File
_generate_module_eus(biox_read
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/biox_read
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(biox_read_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(biox_read_generate_messages biox_read_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg" NAME_WE)
add_dependencies(biox_read_generate_messages_eus _biox_read_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg" NAME_WE)
add_dependencies(biox_read_generate_messages_eus _biox_read_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(biox_read_geneus)
add_dependencies(biox_read_geneus biox_read_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS biox_read_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(biox_read
  "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/biox_read
)
_generate_msg_lisp(biox_read
  "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/biox_read
)

### Generating Services

### Generating Module File
_generate_module_lisp(biox_read
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/biox_read
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(biox_read_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(biox_read_generate_messages biox_read_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg" NAME_WE)
add_dependencies(biox_read_generate_messages_lisp _biox_read_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg" NAME_WE)
add_dependencies(biox_read_generate_messages_lisp _biox_read_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(biox_read_genlisp)
add_dependencies(biox_read_genlisp biox_read_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS biox_read_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(biox_read
  "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/biox_read
)
_generate_msg_nodejs(biox_read
  "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/biox_read
)

### Generating Services

### Generating Module File
_generate_module_nodejs(biox_read
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/biox_read
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(biox_read_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(biox_read_generate_messages biox_read_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg" NAME_WE)
add_dependencies(biox_read_generate_messages_nodejs _biox_read_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg" NAME_WE)
add_dependencies(biox_read_generate_messages_nodejs _biox_read_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(biox_read_gennodejs)
add_dependencies(biox_read_gennodejs biox_read_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS biox_read_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(biox_read
  "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/biox_read
)
_generate_msg_py(biox_read
  "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/biox_read
)

### Generating Services

### Generating Module File
_generate_module_py(biox_read
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/biox_read
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(biox_read_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(biox_read_generate_messages biox_read_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/FSR.msg" NAME_WE)
add_dependencies(biox_read_generate_messages_py _biox_read_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/repositories/firmware/biox_ws/src/biox_read/msg/IMU.msg" NAME_WE)
add_dependencies(biox_read_generate_messages_py _biox_read_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(biox_read_genpy)
add_dependencies(biox_read_genpy biox_read_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS biox_read_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/biox_read)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/biox_read
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(biox_read_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(biox_read_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/biox_read)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/biox_read
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(biox_read_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(biox_read_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/biox_read)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/biox_read
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(biox_read_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(biox_read_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/biox_read)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/biox_read
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(biox_read_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(biox_read_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/biox_read)
  install(CODE "execute_process(COMMAND \"/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/biox_read\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/biox_read
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(biox_read_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(biox_read_generate_messages_py geometry_msgs_generate_messages_py)
endif()
