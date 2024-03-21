#!/bin/bash 

# Log data from /tmp/imu to the specified port 
cat /tmp/imu_pipe | nc -l -p 8030 & 

# Log data from /tmp/odom to the specified port 
cat /tmp/odom_pipe | nc -l -p 8031 & 
