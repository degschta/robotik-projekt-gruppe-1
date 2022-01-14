#!/bin/bash
xterm -e "source devel/setup.bash && roslaunch a1_controller robot_controller.launch" &  
sleep 5 
xterm -e "source devel/setup.bash && coppeliaSim.sh coppelia_scenes/a1_coppelia_imu.ttt"
