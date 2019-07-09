#!/bin/bash

# Set the Global Ros Parameters
gnome-terminal --tab -e "bash -c \"rosparam set /grid_dimension 25;rosparam set /grid_blocks 7; rosparam set /visibility_blocks 2; echo parameters_set; exec bash\""

# Launch the Camera Nodes
gnome-terminal --tab -e "bash -c \"roslaunch usb_cam usb_cam-test.launch; exec bash\"" --tab -e "bash -c \"ROS_NAMESPACE=usb_cam rosrun image_proc image_proc; exec bash\"" --tab -e "bash -c \"roslaunch apriltag_ros continuous_detection.launch; exec bash\"" --tab -e "bash -c \"rosrun image_view image_view image:=/tag_detections_image; exec bash\"" --tab -e "bash -c \"rosrun localization_mapping localization.py; exec bash\"" --tab -e "bash -c \"rosrun localization_mapping mapping_rob1.py; exec bash\"" --tab -e "bash -c \"rosrun localization_mapping mapping_rob2.py; exec bash\"" --tab -e "bash -c \"rosrun localization_mapping mapping_rob3.py; exec bash\"" --tab -e "bash -c \"rosrun localization_mapping mapping_rob4.py; exec bash\""

$SHELL
