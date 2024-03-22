#!/bin/bash 

# shell/sense/pipe/write.sh

# init 
init() { 
    echo "init called"
    # set pipe paths 
    IMU_DIR="/tmp/imu_data"
    ODOM_DIR="/tmp/baselink_odom_relative_data"
    TOF_DIR="/tmp/tof_data"
    BAT_DIR="/tmp/simple_battery_status_data"
    LIGHT_DIR="/tmp/light"
    IMG_DIR="/tmp/h264"
}

# make pipe 
make_pipe() { 
    PIPE_DIR=$1
    if [ ! -p "$PIPE_DIR" ]; then
        echo "creating a new pipe at location: $PIPE_DIR" 
        mkfifo $PIPE_DIR || { echo "failed to create named pipe at location: $PIPE_DIR"; exit 1; }
    fi
    case "$PIPE_DIR" in 
        "$IMU_DIR") 
            echo "imu pipe created at $IMU_DIR"
            rostopic echo /SensorNode/imu > $IMU_DIR;;
        "$ODOM_DIR") 
            echo "odom pipe created at $ODOM_DIR"
            rostopic echo /MotorNode/baselink_odom_relative > $ODOM_DIR;;
        "$TOF_DIR")
            echo "tof pipe created at $TOF_DIR"
            rostopic echo /SensorNode/tof > $TOF_DIR;;
        "$BAT_DIR")
            echo "simple battery status pipe created at $BAT_DIR";;
            rostopic echo /SensorNode/simple_battery_status > $BAT_DIR;;
        "$LIGHT_DIR")
            echo "illuminance pipe created at $LIGHT_DIR";;
            rostopic echo /SensorNode/light
        "$IMG_DIR")
            echo "img pipe created at $IMG_DIR"
            rostopic echo /CoreNode/h264 > $IMG_DIR;;
        *) 
            echo "unknown err";;
    esac
}

# start
start() { 
    echo "start called"
    make_pipe $IMU_DIR & 
    make_pipe $ODOM_DIR &
    # needs to be tested 
    ## 
    # make_pipe $TOF_DIR & 
    # make_pipe $BAT_DIR & 
    # make_pipe $LIGHT_DIR & 
    # make_pipe $IMG_DIR & 
    ## end  
    echo "^+C to quit." 
    wait
}

init
start
