#!/bin/bash    

# Path: ./lib/utility/ekf/imu.sh

# Author: Samuel Lemus
# Date: 2024-03-16

# Description:
## This script listens and parses the IMU data from the IMU sensor node
### located in the pipe /tmp/imu_pipe${i}

# Functions:
## [0]: read_imu_data
## [1]: main

# Scripts called:

# ROS topic:
# IMU_TOPIC="/SensorNode/imu"

# FIFO pipe:
# IMU_PIPE="/tmp/imu_pipe"

# Function to parse IMU data
parse_imu() {
    local data="$1"
    export linear_acceleration_x=($(echo $data | awk '/x:/ {print $3}'))
    export linear_acceleration_y=($(echo $data | awk '/y:/ {print $3}'))
    export linear_acceleration_z=($(echo $data | awk '/z:/ {print $3}'))
}

# Function to read IMU data from pipe
read_imu_data() {
    while read -r imu_msg; do
        process_imu "$imu_msg"
    done < "$IMU_PIPE"
}



process_imu() { 
    local imu_data=$1
    linear_acceleration_x=($(echo "$imu_data" | awk '/x:/ {print $2}'))
    linear_acceleration_y=($(echo "$imu_data"  | awk '/y:/ {print $2}'))
    linear_acceleration_z=($(echo "$imu_data" | awk '/z:/ {print $2}'))
    angular_velocity_x=($(echo "$imu_data" | awk '/x:/ {print $3}'))
    angular_velocity_y=($(echo "$imu_data" | awk '/y:/ {print $3}'))
    angular_velocity_z=($(echo "$imu_data" | awk '/z:/ {print $3}'))
    echo "$linear_acceleration_x $linear_acceleration_y $linear_acceleration_z"
}

read_imu_data