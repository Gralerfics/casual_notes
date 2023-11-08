execute_process(COMMAND "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
