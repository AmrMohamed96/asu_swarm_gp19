#!/bin/bash

# Launch Formation Global Nodes
gnome-terminal --tab -e "bash -c \"rosrun swarm_formation_19 shape_entering19.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 global_knowledge19.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 leader_node.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 range_sensor_sim.py; exec bash\""

# Debugging Terminals
gnome-terminal --tab -e "bash -c \"rostopic echo next_goals_px; exec bash\"" --tab -e "bash -c \"rostopic echo robot_status; exec bash\"" --tab -e "bash -c \"rostopic echo robot_to_be_moved; exec bash\""

$SHELL
