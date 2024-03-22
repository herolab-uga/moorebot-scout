#!/bin/bash 

# Log data from /tmp/imu to the specified port 
cat /tmp/imu_data | nc -l -p 8030 & 

# Log data from /tmp/odom to the specified port 
cat /tmp/odom_data | nc -l -p 8031 & 


cat /tmp/tof_data | nc -l -p 8032 &

cat /tmp/simple_battery_status_data | nc -l -p 8033 & 

cat /tmp/h264 | nc -l -p 8034 & 

cat /tmp/light | nc -l -p 8035 & 

