# Install script for directory: /home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gralerfics/MyFiles/Workspace/tr_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teach_repeat/msg" TYPE FILE FILES
    "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/CompressedImageSynchronised.msg"
    "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/msg/Goal.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teach_repeat/srv" TYPE FILE FILES
    "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/ImageMatch.srv"
    "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SaveImageAndPose.srv"
    "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetGoal.srv"
    "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/srv/SetJointState.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teach_repeat/cmake" TYPE FILE FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/teach_repeat-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/devel/include/teach_repeat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/devel/share/roseus/ros/teach_repeat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/devel/share/common-lisp/ros/teach_repeat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/devel/share/gennodejs/ros/teach_repeat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/gralerfics/MyFiles/Workspace/tr_ws/devel/lib/python3/dist-packages/teach_repeat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/devel/lib/python3/dist-packages/teach_repeat" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/devel/lib/python3/dist-packages/teach_repeat" FILES_MATCHING REGEX "/home/gralerfics/MyFiles/Workspace/tr_ws/devel/lib/python3/dist-packages/teach_repeat/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/teach_repeat.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teach_repeat/cmake" TYPE FILE FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/teach_repeat-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teach_repeat/cmake" TYPE FILE FILES
    "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/teach_repeatConfig.cmake"
    "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/teach_repeatConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/teach_repeat" TYPE FILE FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/camera_calibrator.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/data_collect.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/data_save.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/drive_straight_controller.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/drive_to_pose_controller.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/image_matcher.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/image_stitcher.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/localiser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/miro_setup.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/odom_corrupter.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/save_ground_truth.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/teleop_joy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/twist_stamper.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/teleop_joy_miro_b.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/data_pub_save.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/image_sub_matcher.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/teach_repeat" TYPE PROGRAM FILES "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/installspace/student_localiser.py")
endif()

