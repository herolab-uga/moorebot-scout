#!/bin/bash 

# Path: ./lib/utility/ekf/ekf.sh

# Author: Samuel Lemus
# Date: 2024-03-16

# Description:
## This script initializes the EKF and fuses the IMU and wheel odometry data
### to estimate the robot's pose. 

# Functions:
## [0]: init
## [1]: fuse_data
## [2]: main
## [3]: print_imu_data
## [4]: print_odom_data

# Scripts called:
## [0]: 
###     ./lib/utility/ekf/imu.sh, 
###     ./lib/utility/ekf/odom.sh

# Function to print IMU data 
## This function prints the IMU data to the console for debugging purposes
print_imu_data() {
    echo "IMU data:"
    echo "Orientation: ${imu_orientation[@]}"
    echo "Angular velocity: ${imu_angular_velocity[@]}"
    echo "Linear acceleration: ${imu_linear_acceleration[@]}"
} # end:print_imu_data

# Function to print wheel odometry data
## This function prints the wheel odometry data to the console for debugging purposes
print_odom_data() {
    echo "Wheel odometry data:"
    echo "Position: ${odom_position[@]}"
    echo "Orientation: ${odom_orientation[@]}"
    echo "Linear velocity: ${odom_linear_velocity[@]}"
    echo "Angular velocity: ${odom_angular_velocity[@]}"
} # end:print_odom_data

# Function to fuse IMU and wheel odometry data
## This function reads the IMU and wheel odometry data from the pipes
### and fuses the data to estimate the robot's pose
fuse_data() { 
    while true; do
        read_imu_data
        read_odometry_data
        echo "IMU Data: Orientation: ${imu_orientation[*]}, Angular Velocity: ${imu_angular_velocity[*]}, Linear Acceleration: ${imu_linear_acceleration[*]}"
        echo "Wheel Odometry Data: Position: ${odom_position[*]}, Orientation: ${odom_orientation[*]}, Linear Velocity: ${odom_linear_velocity[*]}, Angular Velocity: ${odom_angular_velocity[*]}"
        sleep 1
    done
} # end:fuse_data

## May need to be altered to account for multiple hosts
init() { 
    source ./lib/utility/ekf/imu.sh
    source ./lib/utility/ekf/odom.sh
    # check host num (also observed in ./lib/utility/pipe/fifo.sh) #####
    init_host_num 1
    create_fifo_pipes 1
} # end:init

# Main function
main() {
    init
    fuse_data
} # end:main

# Start the main function
main

