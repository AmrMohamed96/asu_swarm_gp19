# CMake generated Testfile for 
# Source directory: /home/amr/asu_swarm_gp19/src/image_pipeline/camera_calibration
# Build directory: /home/amr/asu_swarm_gp19/build/camera_calibration
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_camera_calibration_nosetests_test.directed.py "/home/amr/asu_swarm_gp19/build/camera_calibration/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/amr/asu_swarm_gp19/build/camera_calibration/test_results/camera_calibration/nosetests-test.directed.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/amr/asu_swarm_gp19/build/camera_calibration/test_results/camera_calibration" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/amr/asu_swarm_gp19/src/image_pipeline/camera_calibration/test/directed.py --with-xunit --xunit-file=/home/amr/asu_swarm_gp19/build/camera_calibration/test_results/camera_calibration/nosetests-test.directed.py.xml")
add_test(_ctest_camera_calibration_nosetests_test.multiple_boards.py "/home/amr/asu_swarm_gp19/build/camera_calibration/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/amr/asu_swarm_gp19/build/camera_calibration/test_results/camera_calibration/nosetests-test.multiple_boards.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/amr/asu_swarm_gp19/build/camera_calibration/test_results/camera_calibration" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/amr/asu_swarm_gp19/src/image_pipeline/camera_calibration/test/multiple_boards.py --with-xunit --xunit-file=/home/amr/asu_swarm_gp19/build/camera_calibration/test_results/camera_calibration/nosetests-test.multiple_boards.py.xml")
subdirs(gtest)
