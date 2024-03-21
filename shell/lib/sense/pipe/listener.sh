#!/bin/bash 

# Remote host 
REMOTE_HOST="linaro@192.168.1.140"

# Remote port for IMU data 
REMOTE_IMU_PORT=8030

# Remote port for Odom data
REMOTE_ODOM_PORT=8031

# Listen to IMU data 
nc $REMOTE_HOST $REMOTE_IMU_PORT > received_imu_data.txt & 

# Listen to Odom data 
nc $REMOTE_HOST $REMOTE_ODOM_PORT > received_odom_data.txt & 
