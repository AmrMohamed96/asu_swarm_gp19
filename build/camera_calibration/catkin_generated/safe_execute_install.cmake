execute_process(COMMAND "/home/amr/asu_swarm_gp19/build/camera_calibration/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/amr/asu_swarm_gp19/build/camera_calibration/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
