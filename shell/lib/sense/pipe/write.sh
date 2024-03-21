#!/bin/bash 

# shell/sense/pipe/write.sh

# init 
init() { 
    echo "init called"
    # set pipe paths 
    IMU_PIPE="/tmp/imu_pipe"
    ODOM_PIPE="/tmp/odom_pipe"
}

# make pipe 
make_pipe() { 
    PIPE_DIR=$1
    if [ ! -p "$PIPE_DIR" ]; then
        echo "creating a new pipe at location: $PIPE_DIR" 
        mkfifo $PIPE_DIR || { echo "failed to create named pipe at location: $PIPE_DIR"; exit 1; }
    fi
    case "$PIPE_DIR" in 
        "$IMU_PIPE") 
            echo "IMU pipe created"
            rostopic echo /SensorNode/IMU > $IMU_PIPE 
            ;;
        "$ODOM_PIPE") 
            echo "ODOM pipe created"
            rostopic echo /SensorNode/Odom > $ODOM_PIPE 
            ;;
        *) 
            echo "unknown err"
            ;;
    
    esac
    
}

# start
start() { 
    echo "start called"
    make_pipe $IMU_PIPE & 
    make_pipe $ODOM_PIPE &
    echo "^+C to quit." 
    wait
}

init
start
