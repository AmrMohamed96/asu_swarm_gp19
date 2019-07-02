#!/bin/bash

gnome-terminal --tab -e "bash -c \"rosrun swarm_formation_19 global_knowledge19.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 hp_range_detector.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 formation1.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 formation2.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 formation3.py; exec bash\"" --tab -e "bash -c \"rosrun swarm_formation_19 formation4.py; exec bash\""

$SHELL
