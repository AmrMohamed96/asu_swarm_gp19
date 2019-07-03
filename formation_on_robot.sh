#!/bin/bash

# Launch the Camera Nodes
gnome-terminal --tab -e "bash -c \"roslaunch usb_cam usb_cam-test.launch; exec bash\"" --tab -e "bash -c \"ROS_NAMESPACE=usb_cam rosrun image_proc image_proc; exec bash\"" --tab -e "bash -c \"roslaunch apriltag_ros continuous_detection.launch; exec bash\"" --tab -e "bash -c \"rosrun image_view image_view image:=/tag_detections_image; exec bash\"" --tab -e "bash -c \"rosrun localization_mapping localization.py; exec bash\""

# Launch Formation Global Nodes
gnome-terminal --tab -e "bash -c \"rosrun swarm_formation_19 shape_entering19.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 global_knowledge19.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 hp_range_detector.py; exec bash\""

# Debugging Terminals
gnome-terminal --tab -e "bash -c \"rostopic echo next_goals_px; exec bash\"" --tab -e "bash -c \"rostopic echo robot_status; exec bash\"" --tab -e "bash -c \"rostopic echo robot_to_be_moved; exec bash\"" --tab -e "bash -c \"rostopic echo gtg_flag_rob1; exec bash\"" --tab -e "bash -c \"rostopic echo gtg_flag_rob2; exec bash\"" --tab -e "bash -c \"rostopic echo gtg_flag_rob3; exec bash\"" --tab -e "bash -c \"rostopic echo gtg_flag_rob4; exec bash\""

$SHELL
