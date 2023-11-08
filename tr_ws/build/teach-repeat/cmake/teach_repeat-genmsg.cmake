# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "teach_repeat: 2 messages, 4 services")

set(MSG_I_FLAGS "-Iteach_repeat:/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(teach_repeat_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg" NAME_WE)
add_custom_target(_teach_repeat_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "teach_repeat" "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg" "sensor_msgs/CompressedImage:std_msgs/Header"
)

get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg" NAME_WE)
add_custom_target(_teach_repeat_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "teach_repeat" "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg" "geometry_msgs/Pose:std_msgs/Bool:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv" NAME_WE)
add_custom_target(_teach_repeat_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "teach_repeat" "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv" "std_msgs/UInt32:std_msgs/Int32MultiArray:std_msgs/Header:sensor_msgs/Image:std_msgs/MultiArrayLayout:std_msgs/Float32MultiArray:std_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv" NAME_WE)
add_custom_target(_teach_repeat_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "teach_repeat" "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv" NAME_WE)
add_custom_target(_teach_repeat_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "teach_repeat" "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv" ""
)

get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv" NAME_WE)
add_custom_target(_teach_repeat_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "teach_repeat" "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv" "sensor_msgs/JointState:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teach_repeat
)
_generate_msg_cpp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teach_repeat
)

### Generating Services
_generate_srv_cpp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/UInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teach_repeat
)
_generate_srv_cpp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teach_repeat
)
_generate_srv_cpp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teach_repeat
)
_generate_srv_cpp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teach_repeat
)

### Generating Module File
_generate_module_cpp(teach_repeat
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teach_repeat
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(teach_repeat_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(teach_repeat_generate_messages teach_repeat_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg" NAME_WE)
add_dependencies(teach_repeat_generate_messages_cpp _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg" NAME_WE)
add_dependencies(teach_repeat_generate_messages_cpp _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_cpp _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_cpp _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_cpp _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_cpp _teach_repeat_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(teach_repeat_gencpp)
add_dependencies(teach_repeat_gencpp teach_repeat_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS teach_repeat_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teach_repeat
)
_generate_msg_eus(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teach_repeat
)

### Generating Services
_generate_srv_eus(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/UInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teach_repeat
)
_generate_srv_eus(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teach_repeat
)
_generate_srv_eus(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teach_repeat
)
_generate_srv_eus(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teach_repeat
)

### Generating Module File
_generate_module_eus(teach_repeat
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teach_repeat
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(teach_repeat_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(teach_repeat_generate_messages teach_repeat_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg" NAME_WE)
add_dependencies(teach_repeat_generate_messages_eus _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg" NAME_WE)
add_dependencies(teach_repeat_generate_messages_eus _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_eus _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_eus _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_eus _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_eus _teach_repeat_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(teach_repeat_geneus)
add_dependencies(teach_repeat_geneus teach_repeat_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS teach_repeat_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teach_repeat
)
_generate_msg_lisp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teach_repeat
)

### Generating Services
_generate_srv_lisp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/UInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teach_repeat
)
_generate_srv_lisp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teach_repeat
)
_generate_srv_lisp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teach_repeat
)
_generate_srv_lisp(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teach_repeat
)

### Generating Module File
_generate_module_lisp(teach_repeat
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teach_repeat
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(teach_repeat_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(teach_repeat_generate_messages teach_repeat_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg" NAME_WE)
add_dependencies(teach_repeat_generate_messages_lisp _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg" NAME_WE)
add_dependencies(teach_repeat_generate_messages_lisp _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_lisp _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_lisp _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_lisp _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_lisp _teach_repeat_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(teach_repeat_genlisp)
add_dependencies(teach_repeat_genlisp teach_repeat_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS teach_repeat_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teach_repeat
)
_generate_msg_nodejs(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teach_repeat
)

### Generating Services
_generate_srv_nodejs(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/UInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teach_repeat
)
_generate_srv_nodejs(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teach_repeat
)
_generate_srv_nodejs(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teach_repeat
)
_generate_srv_nodejs(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teach_repeat
)

### Generating Module File
_generate_module_nodejs(teach_repeat
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teach_repeat
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(teach_repeat_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(teach_repeat_generate_messages teach_repeat_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg" NAME_WE)
add_dependencies(teach_repeat_generate_messages_nodejs _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg" NAME_WE)
add_dependencies(teach_repeat_generate_messages_nodejs _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_nodejs _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_nodejs _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_nodejs _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_nodejs _teach_repeat_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(teach_repeat_gennodejs)
add_dependencies(teach_repeat_gennodejs teach_repeat_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS teach_repeat_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat
)
_generate_msg_py(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat
)

### Generating Services
_generate_srv_py(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/UInt32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat
)
_generate_srv_py(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat
)
_generate_srv_py(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat
)
_generate_srv_py(teach_repeat
  "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat
)

### Generating Module File
_generate_module_py(teach_repeat
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(teach_repeat_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(teach_repeat_generate_messages teach_repeat_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg" NAME_WE)
add_dependencies(teach_repeat_generate_messages_py _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg" NAME_WE)
add_dependencies(teach_repeat_generate_messages_py _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_py _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_py _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_py _teach_repeat_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv" NAME_WE)
add_dependencies(teach_repeat_generate_messages_py _teach_repeat_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(teach_repeat_genpy)
add_dependencies(teach_repeat_genpy teach_repeat_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS teach_repeat_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teach_repeat)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teach_repeat
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(teach_repeat_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(teach_repeat_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(teach_repeat_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teach_repeat)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teach_repeat
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(teach_repeat_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(teach_repeat_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(teach_repeat_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teach_repeat)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teach_repeat
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(teach_repeat_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(teach_repeat_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(teach_repeat_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teach_repeat)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teach_repeat
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(teach_repeat_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(teach_repeat_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(teach_repeat_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teach_repeat
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(teach_repeat_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(teach_repeat_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(teach_repeat_generate_messages_py std_msgs_generate_messages_py)
endif()
