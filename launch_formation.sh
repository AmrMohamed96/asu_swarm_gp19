#!/bin/bash
#Setting global ros parameters
gnome-terminal --tab -e "bash -c \"rosparam set /grid_dimension 25;rosparam set /grid_blocks 7; rosparam set /visibility_blocks 2; echo parameters_set; exec bash\""

# Launch the test scenario
gnome-terminal --tab -e "bash -c \"rosrun swarm_formation_19 testing_scenario.py; exec bash\""

# Launch the Camera Nodes
#gnome-terminal --tab -e "bash -c \"roslaunch usb_cam usb_cam-test.launch; exec bash\"" --tab -e "bash -c \"ROS_NAMESPACE=usb_cam rosrun image_proc image_proc; exec bash\"" --tab -e "bash -c \"roslaunch apriltag_ros continuous_detection.launch; exec bash\"" --tab -e "bash -c \"rosrun image_view image_view image:=/tag_detections_image; exec bash\"" --tab -e "bash -c \"rosrun localization_mapping localization.py; exec bash\""

# Launch Formation
#gnome-terminal --tab -e "bash -c \"rosrun swarm_formation_19 shape_entering19.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 global_knowledge19.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 hp_range_detector.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 formation1.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 formation2.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 formation3.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 formation4.py; exec bash\""

# Launch Path Planning
gnome-terminal --tab -e "bash -c \"rosrun path_planning a_star_ros1.py; exec bash\"" --tab -e "bash -c \"rosrun path_planning a_star_ros2.py; exec bash\"" --tab -e "bash -c \"rosrun path_planning a_star_ros3.py; exec bash\"" --tab -e "bash -c \"rosrun path_planning a_star_ros4.py; exec bash\""

# Launch GTG 
gnome-terminal --tab -e "bash -c \"rosrun go_to_goal mod_go1.py; exec bash\"" --tab -e "bash -c \"rosrun go_to_goal mod_go2.py; exec bash\"" --tab -e "bash -c \"rosrun go_to_goal mod_go3.py; exec bash\"" --tab -e "bash -c \"rosrun go_to_goal mod_go4.py; exec bash\""


# Debugging Terminals
#gnome-terminal --tab -e "bash -c \"rostopic echo next_goals_px; exec bash\"" --tab -e "bash -c \"rostopic echo robot_status; exec bash\"" --tab -e "bash -c \"rostopic echo robot_to_be_moved; exec bash\"" --tab -e "bash -c \"rostopic echo gtg_flag_rob1; exec bash\"" --tab -e "bash -c \"rostopic echo gtg_flag_rob2; exec bash\"" --tab -e "bash -c \"rostopic echo gtg_flag_rob3; exec bash\"" --tab -e "bash -c \"rostopic echo gtg_flag_rob4; exec bash\""


$SHELL
