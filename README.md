# robotik-projekt-gruppe-1
Unitree A1 robot simulation in CoppeliaSim
Source: https://github.com/lnotspotl/a1_sim_py/blob/main/README.md
# a1 robot simulation - Python version
This repository contains all the files and code needed to simulate the [a1](https://www.unitree.com/products/a1) quadrupedal robot using [Gazebo](http://gazebosim.org/) and [ROS](https://www.ros.org/).
The software runs on [ROS noetic](http://wiki.ros.org/noetic) and [Ubuntu 20.04](http://www.releases.ubuntu.com/20.04/). If you want to use a different ROS version, you might have to do some changes to the source code.

This software is a copy of my [main project](https://github.com/lnotspotl/notspot_sim_py), where some of the constants have been changed in order to make it work for this particular robot.

<img src="resources/a1" width="300"> 

# This is only a temporary repository, I might remove it soon.

## Setup
```
cd src && catkin_init_workspace
cd .. && catkin_make
source devel/setup.bash
roscd a1_controller/scripts && chmod +x robot_controller_gazebo.py
cp -r RoboticsUtilities ~/.local/lib/python3.8/site-packages
roscd a1_joystick/scripts && chmod +x ramped_joystick.py
```

## Run
```
source devel/setup.bash
roslaunch a1 run_robot_gazebo.launch
```
After all the nodes have started, you can start using your joystick to control the robot.

If the robot happens to be on its back when you start Gazebo, simply press CTRL + R. The simulator will reset the simulation and you're set to use the robot using your joystick.

## Install Joystick functionality
On Ubuntu install the ROS Joystick extension with the following command
```
sudo apt-get install ros-noetic-joy
```
Now you are able to controll the robot with your controller.

## Setup in CoppeliaSim
First of all start ROS Core in your terminal
```
roscore
```
Open new terminal in workspace root and run
```
source devel/setup.bash
```
Make sure that 
```
export PATH="/home/chris/VREP":$PATH
```
is in your .bashrc file

Start CoppeliaSim in root folder with
```
coppeliaSim.sh
``` 
Add your URDF by clicking Add-ons -> URDF importer and add the a1 URDF file

## Control Unitree A1 in CoppeliaSim
In order to be able to simulate and control Unitree A1 robot in CoppeliaSim, you have to follow these steps:

Open a terminal, navigate to the project folder, and execute
```
source devel/setup.bash
roslaunch a1_joystick ramped_joystick.launch
```
Then, open another terminal and type in
```
source devel/setup.bash
roslaunch a1_controller robot_controller.launch
```
Finally, open another terminal and start CoppeliaSim:
```
source devel/setup.bash
coppeliaSim.sh
```
Once CoppeliaSim is loaded, open the scene 'coppelia_scene/a1_coppelia.ttt'
## Credits
 - mike4192: https://github.com/mike4192/spotMicro
 - Unitree Robotics: https://github.com/unitreerobotics/a1_ros
 - QUADRUPED ROBOTICS: https://quadruped.de
