#!/bin/bash

xterm -e "source devel/setup.bash && roslaunch a1_joystick ramped_joystick.launch" &
sleep 5 
xterm -e "source devel/setup.bash && roslaunch a1_controller robot_controller.launch" &  
sleep 5 
xterm -e "source devel/setup.bash && coppeliaSim.sh"
