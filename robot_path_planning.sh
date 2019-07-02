#!/bin/bash

gnome-terminal --tab -e "bash -c \"rosrun a_star_pathplanning mod_a_star1.py; exec bash\"" --tab -e "bash -c \"rosrun a_star_pathplanning mod_a_star2.py; exec bash\"" --tab -e "bash -c \"rosrun a_star_pathplanning mod_a_star3.py; exec bash\"" --tab -e "bash -c \"rosrun a_star_pathplanning mod_a_star4.py; exec bash\""

$SHELL
