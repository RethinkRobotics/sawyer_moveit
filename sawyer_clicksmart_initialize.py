#!/usr/bin/env python

# Copyright (c) 2013-2018, Rethink Robotics Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""
SDK Initialize ClickSmart (EndEffector) File
"""
import rospy

import intera_interface

def main():
    """Initialize ClickSmart
    """

    print("Initializing node... ")
    rospy.init_node('ee_initialize', anonymous=True)

    device = intera_interface.get_current_gripper_interface()
    device.initialize()

    def clean_shutdown():
        print("\nExiting example...")

    rospy.on_shutdown(clean_shutdown)


if __name__ == '__main__':
    main()
