#!/bin/bash
# Copyright (c) 2013-2018, Rethink Robotics
# All rights reserved.

# This file is to be used in the *root* of your Catkin workspace.
# This is a convenient script which will set up your clicksmart gripper id to srdf file and
# sawyer_moveit.launch file.

# get clicksmart id
echo $(rostopic list | grep state | grep stp | cut -d'/' -f 4)
device_name="$(rostopic list | grep state | grep stp | cut -d'/' -f 4)";
echo ${device_name}
# replace the device name 
sed -i -e "s/stp_device_name/$device_name/g" ./sawyer_moveit_config/launch/sawyer_moveit.launch
sed -i -e "s/stp_device_name/$device_name/g" ./sawyer_moveit_config/srdf/rethink_clicksmart_gripper.srdf.xacro
# launch moveit
$(roslaunch sawyer_moveit_config sawyer_moveit.launch clicksmart_gripper:=true) > clicksmartmoveit.log &
# replace the device name back to default
sed -i -e "s/$device_name/stp_device_name/g" ./sawyer_moveit_config/launch/sawyer_moveit.launch
sed -i -e "s/$device_name/stp_device_name/g" ./sawyer_moveit_config/srdf/rethink_clicksmart_gripper.srdf.xacro

