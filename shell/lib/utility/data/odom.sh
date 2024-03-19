#!/bin/bash 

# Path: ./lib/utility/ekf/odom.sh

# Author: Samuel Lemus
# Date: 2024-03-16

# Description:
## This script listens and parses the wheel odometry data from the MotorNode
### located in the pipe /tmp/odom_pipe${i}

# Functions:
## [0]: read_odom_data
## [1]: main

# Scripts called:

## ROS topic:
# ODOM_TOPIC="/MotorNode/baselink_odom_relative"

## FIFO pipe:
# ODOM_PIPE="/tmp/odom_pipe"

# Function to parse wheel odometry data
parse_odometry() {
    local data="$1"
    odom_position=($(echo "$data" | awk '/x:/ {print $2,$4,$6}'))
    odom_orientation=($(echo "$data" | awk '/w:/ {print $2,$4,$6,$8}'))
    odom_linear_velocity=($(echo "$data" | awk '/linear_x:/ {print $2,$4,$6}'))
    odom_angular_velocity=($(echo "$data" | awk '/angular_x:/ {print $2,$4,$6}'))
}

# Function to read wheel odometry data from pipe
read_odom_data() {
    while read -r odom_msg; do
        parse_odometry "$odom_msg"
    done < "$ODOM_PIPE"
}

# Main function
main() {
    read_odom_data 
} # end:main

# Start the main function
# main 

process_odometry() {
    local odom_data=$1
    position_x=($(echo "$odom_data" | awk '/x:/ {print $2}'))
    position_y=($(echo "$odom_data"  | awk '/y:/ {print $2}'))
    position_z=($(echo "$odom_data" | awk '/z:/ {print $2}'))
    orientation_x=($(echo "$odom_data" | awk '/x:/ {print $3}'))
    orientation_y=($(echo "$odom_data" | awk '/y:/ {print $3}'))
    orientation_z=($(echo "$odom_data" | awk '/z:/ {print $3}'))
    echo "$orientation_x $orientation_y $orientation_z"
}