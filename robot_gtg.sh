#!/bin/bash

gnome-terminal --tab -e "bash -c \"rosrun go_to_goal mod_go1.py; exec bash\"" --tab -e "bash -c \"rosrun go_to_goal mod_go2.py; exec bash\"" --tab -e "bash -c \"rosrun go_to_goal mod_go3.py; exec bash\"" --tab -e "bash -c \"rosrun go_to_goal mod_go4.py; exec bash\""

$SHELL
