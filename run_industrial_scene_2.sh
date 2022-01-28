#!/bin/bash
xterm -e "source devel/setup.bash && roslaunch a1_controller robot_controller.launch" &
sleep 5
xterm -e "source devel/setup.bash && roslaunch a1_gazebo simulation.launch" & 
sleep 5 
xterm -e "source devel/setup.bash && coppeliaSim.sh coppelia_scenes/corridor_and_conveyor_belt.ttt"
