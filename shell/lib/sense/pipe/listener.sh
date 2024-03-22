#!/bin/bash

# Remote host
REMOTE_HOST="192.168.1.140"

# Remote port for IMU data
REMOTE_IMU_PORT=8030

# Remote port for Odom data
REMOTE_ODOM_PORT=8031

REMOTE_TOF_PORT=8032

REMOTE_BAT_PORT=8033

REMOTE_LIGHT_PORT=8034

REMOTE IMG_PORT=8035

# Listen to IMU data
nc $REMOTE_HOST $REMOTE_IMU_PORT > received_imu_data.txt &

# Listen to Odom data
nc $REMOTE_HOST $REMOTE_ODOM_PORT > received_odom_data.txt &

## Needs to be tested 
## 
# nc $REMOTE_HOST $REMOTE_TOF_PORT > received_tof_data.txt & 
# nc $REMOTE_HOST $REMOTE_BAT_PORT > received_battery_status_data.txt & 
# nc $REMOTE_HOST $REMOTE_LIGHT_PORT > received_illuminance_data.txt & 
# nc $REMOTE_HOST $REMOTE_IMG_PORT > received_img_data.txt 
#
##


# Wait for background processes to finish
#wait

