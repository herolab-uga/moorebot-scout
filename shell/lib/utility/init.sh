#!/bin/bash 

source /opt/ros/noetic/setup.bash

# define_ros_topics 
define_ros_topics() {
    echo "shell/lib/utility/init.sh/(define_ros_topics) called" 
    # ROS topics
    export IMU_TOPIC="/SensorNode/imu"
    export ODOM_TOPIC="/MotorNode/baselink_odom_relative"
} # end:define_ros_topics

# define_host_ips
define_host_ips() { 
    echo "shell/lib/utility/init.sh/(define_host_ips) called"
    # host ip's of scout(s)
    export host_ip_list=("192.168.1.190" 
                         "192.168.1.101"
                         "192.168.1.64"
                         "192.168.1.65"
                         "192.168.1.89")
    export DEFAULT_HOSTNAME="linaro"
    # Default ros port 
    export DEFAULT_ROS_PORT=11311
} # end:define_host_ips

# init_check_hosts
init_check_hosts() {
    echo "shell/lib/utility/init.sh/(init_check_hosts) called" 
    # Checking host status
    responded=()
    not_responded=()
} # end:init_check_hosts

# ping_ip
ping_ip() {
    echo "shell/lib/utility/init.sh/(ping_ip) called" 
    if ping -c 1 -W 1 "$1" >/dev/null 2>&1; then 
        echo 1 
    else 
        echo 0 
    fi 
} # end:ping_ip

# start_check_hosts
start_check_hosts() {
    echo "shell/lib/utility/init.sh/(start_check_hosts) called" 
    for ip in "${host_ip_list[@]}"; do
        result=$(ping_ip "$ip")
        if [ "$result" -eq 1 ]; then 
            responded+=("$ip")
        else 
            not_responded+=("$ip")
        fi
    done
    export RESPONDED="${responded[@]}"
    export NOT_RESPONDED="${not_responded[@]}"
    export RESPONDED_COUNT="${#responded[@]}"
    export NOT_RESPONDED_COUNT="${#not_responded[@]}"
} # end:start_check_hosts

# ./lib/utility/pipe/fifo_init.sh $RESPONDED_COUNT 
# ./lib/utility/pipe/fifo.sh $RESPONDED_COUNT 
