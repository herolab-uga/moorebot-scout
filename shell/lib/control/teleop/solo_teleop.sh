#!/bin/bash

# Path: ./lib/control/teleop/solo_teleop.sh

# Author: Samuel Lemus
# Date: 2024-03-16

# Description:
## This script runs the teleoperation control scheme for a single scout robot.

# Functions:
## [0]: main
## [1]: move 
## [2]: move_forward
## [3]: move_left
## [4]: move_right
## [5]: move_backward
## [6]: stop
## [7]: turn 
## [8]: turn_left
## [9]: turn_right
## [10]: listen_tof
## [11]: listen_battery
## [11]: read_usr_input

# Scripts called:
## [0]:
### ...

# Function to move the robot 
## This function moves the robot in the specified direction
# ex. 
# actions: {move, sense}
# values: 
#   {
#    [move, f{forward, left, right, backward, stop, turn}], 
#    [sense,{sense forward, sense left, sense right, sense backward}]
#   }
# speed: {0.0,8.0}
move() { # usage: move $1 $2 $3 $4 $5 $6
    echo "shell/lib/control/teleop/solo_teleop.sh(move) called."
    local x_lin=$1
    local y_lin=$2
    local z_lin=$3
    local x_ang=$4
    local y_ang=$5
    local z_ang=$6

    if (( $(echo "$x_lin < 0" | bc -l) )); then 
        echo "moving left."
    elif (( $(echo "$x_lin > 0" | bc -l) )); then 
        echo "moving right."
    elif (( $(echo "$y_lin < 0" | bc -l) )); then 
        echo "moving back." 
    elif (( $(echo "$y_lin > 0" | bc -l) )); then 
        echo "moving forward."
    elif (( $(echo "$z_ang > 0" | bc -l) )); then 
        echo "turning counter-clockwise." 
    elif (( $(echo "$z_ang < 0" | bc -l) )); then 
        echo "turning clock-wise."
    fi 

    x_lin=$(echo "$x_lin" | awk '{printf "%.2f", $0}')
    y_lin=$(echo "$y_lin" | awk '{printf "%.2f", $0}')
    z_ang=$(echo "$z_ang" | awk '{printf "%.2f", $0}')
    publish $x_lin $y_lin $z_lin $x_ang $y_ang $z_ang &  
    wait
}

set_uri() { 
    ip=$1
    echo "shell/lib/control/teleop/solo_teleop.sh(publish) called"
    export ROS_MASTER_URI=http://$ip:11311   
}

publish() { 
    echo "shell/lib/control/teleop/solo_teleop.sh(publish) called"
    local x_lin=$1 
    local y_lin=$2
    local z_lin=$3
    local x_ang=$4
    local y_ang=$5
    local z_ang=$6

    rostopic pub /cmd_vel geometry_msgs/Twist \
    "{linear: {x: $x_lin, y: $y_lin, z: $z_lin}, angular: {x: $x_ang, y: $y_ang, z: $z_ang}}" -r 10
}

connect_to_host() { 
    echo "shell/lib/control/teleop/solo_teleop.sh(publish) called"
    local host_ip="$1"
    export ROS_MASTER_URI="http://${host_ip}:11311"
}


print_battery_status() { 
    rostopic echo /SensorNode/simple_battery_status 
}

print_tof_data() { 
    rostopic echo /SensorNode/tof
}

print_imu_data() { 
    rostopic echo /SensorNode/imu
}


teleop_loop() { 
    local inc=0.1
    local x_lin=0.0 
    local y_lin=0.0
    local z_lin=0.0
    local x_ang=0.0
    local y_ang=0.0
    local z_ang=0.00
    
    while true; do 
        read -rsn1 input 
        case "$input" in 
            w) 
                echo "(pressed) w"
                y_lin=$(bc <<< "$y_lin + $inc")
                move $x_lin $y_lin $z_lin $x_ang $y_ang $z_ang &   
                ;; 
            a)
                echo "(pressed) a"
                x_lin=$(bc <<< "$x_lin - $inc")
                move $x_lin $y_lin $z_lin $x_ang $y_ang $z_ang & 
                ;; 
            s) 
                echo "(pressed) s"
                y_lin=$(bc <<< "$y_lin - $inc")
                move $x_lin $y_lin $z_lin $x_ang $y_ang $z_ang &  
                ;; 
            d) 
                echo "(pressed) d"
                x_lin=$(bc <<<  "$x_lin +$inc")
                move $x_lin $y_lin $z_lin $x_ang $y_ang $z_ang & 
                ;;
            q)  
                echo "(pressed) q"
                z_ang=$(bc <<< "$z_ang + $inc")
                move $x_lin $y_lin $z_lin $x_ang $y_ang $z_ang & 
                ;;
            e) 
                echo "(pressed) e"
                z_ang=$(bc <<< "$z_ang - $inc")
                move $x_lin $y_lin $z_lin $x_ang $y_ang $z_ang & 
                ;;
            r) 
                echo "(pressed) r"
                # listen to battery data
                print_battery_status
                wait
                ;;
            t) 
                echo "(pressed) t"
                # listen to tof data
                print_tof_data
                wait 
                ;;
            *) 
                echo "Invalid key"
                ;;
        esac
    done    
}

