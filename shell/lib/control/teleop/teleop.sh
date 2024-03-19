#!/bin/bash

# Path: ./lib/control/teleop/teleop.sh
 
# Author: Samuel Lemus
# Date: 2024-03-16

# Description:
## This script initializes the teleoperation control scheme for scout robot(s).

# Functions:
## [0]: init
## [1]: main 
## [2]: teleop_control

# Scripts called:
## [0]: 
###     ./lib/utility/ekf/ekf.sh 
###     ./lib/utility/pipe/fifo.sh
## [2]: 
###    ./lib/control/teleop/solo_teleop.sh
###    ./lib/control/teleop/solo_secular_teleop.sh
###    ./lib/control/teleop/multi_teleop.sh
###    ./lib/control/teleop/multi_secular_teleop.sh

# initialize the teleoperation control
# init() {
teleop_init() { 
    source ./lib/utility/ekf/ekf.sh
    source ./lib/utility/pipe/fifo.sh
    # source ./lib/utility/teleop/teleop.sh
    # init_host_num 1 # (also observed in ./lib/utility/pipe/fifo.sh) #### unsure of usage
    # create_fifo_pipes 1 # (also observed in ./lib/utility/pipe/fifo.sh) #### unsure of usage
} # end:init

#####
# Function to control the robot teleoperation
## This function determines the type of teleoperation control to use
### based on the input argument.
# @param type: the type of teleoperation control to use
#####
teleop_control() {
    type=$1
    case $type in
        "solo")         
                            source ./lib/control/teleop/solo_teleop.sh
                            ;;
        "solo_secular") 
                            source ./lib/control/teleop/solo_secular_teleop.sh
                            ;;
        "multi") 
                            source ./lib/control/teleop/multi_teleop.sh
                            ;;
        "multi_secular") 
                            source ./lib/control/teleop/multi_secular_teleop.sh
                            ;;
        *) 
                            echo "Invalid input" 
                            ;;
    esac 
} # end:teleop_controller

# Main function
# main() {
#    init
#    teleop_control ## should take arguments determined by the cli. needs to be revised ####
#} # end:main

