#!/bin/bash
# Copyright (c) 2013-2018, Rethink Robotics
# All rights reserved.

# This file is to be used in the *root* of your Catkin workspace.
# This is a convenient script which will set up your clicksmart gripper id to srdf file and
# sawyer_moveit.launch file.

# get clicksmart id
echo $(rostopic list | grep config | grep stp | cut -d'/' -f 4)
device_name="$(rostopic list | grep config | grep stp | cut -d'/' -f 4)";
echo ${device_name}

python sawyer_clicksmart_initialize.py
# launch moveit
roslaunch sawyer_moveit_config sawyer_moveit.launch clicksmart_gripper:=true tip_name:="${device_name}_tip" stp_device_name:="${device_name}"


