#!/bin/bash 

# This script is used to send specific commands to the MQTT broker  

move_forward() {
    python3 util/mqtt_pub.py "forward" "forward_message"
}

move_backward() {
    python3 util/mqtt_pub.py "backward" "backward_message"
}

move_left() {
    python3 util/mqtt_pub.py "left" "left_message"
}

move_right() {
    python3 util/mqtt_pub.py "right" "right_message"
}

stop() {
    python3 util/mqtt_pub.py "stop" "stop_message"
}

sense() {
    python3 util/mqtt_pub.py "sense" "sense_message"
}

fetch() { 
    case "$1" in 
        "battery") 
            python3 util/mqtt_pub.py "battery" "request: battery_status; interval: 10"
            ;;
        "tof") 
            python3 util/mqtt_pub.py "tof" "request: tof_status; interval: 10" 
            ;;
        "camera")
            python3 util/mqtt_pub.py "camera" "request: camera_status; interval: 10" 
            ;;
        "imu")
            python3 util/mqtt_pub.py "imu" "request: imu_status; interval: 10" 
            ;;
        *) echo "Invalid context" ;;
    esac
}

command_keys() {
    while true; do
        read -rsn1 input 
        case "$input" in 
            w) move_forward ;;
            s) move_backward ;;
            a) move_left ;;
            d) move_right ;;
            k) stop ;;
            h) sense ;;
            b) fetch "battery" ;;
            t) fetch "tof" ;;
            c) fetch "camera" ;;
            i) fetch "imu" ;;
            *) echo "Invalid input" ;;
        esac
        sleep 0.1
    done
}

command_keys
