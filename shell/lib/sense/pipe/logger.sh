#!/bin/bash 

# Log data from /tmp/imu to the specified port 
cat /tmp/imu_data | nc -l -p 8030 & 

# Log data from /tmp/odom to the specified port 
cat /tmp/odom_data | nc -l -p 8031 & 


cat /tmp/tof_data

cat /tmp/simple_battery_status_data

cat /tmp/h264

cat /tmp/light

