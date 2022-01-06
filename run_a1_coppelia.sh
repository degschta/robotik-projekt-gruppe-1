#!/bin/bash

xterm -e "source devel/setup.bash" &
xterm -e "roslaunch a1_joystick ramped_joystick.launch" &
xterm -e "roslaunch a1_controller robot_controller.launch" &
xterm -e "coppeliaSim.sh"
