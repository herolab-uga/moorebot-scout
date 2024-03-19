#!/bin/bash 

# init
init() { 
  echo "(init) called"
  bots=(\
        "scout0"
        "scout1"
        "scout2"
        "scout3"
        "scout4"
        )
  topics=(\
          "imu"
          "odom"
          "tof"
          "battery_status"
          )
  root="tmp"
} # end:init

# start
start() {
  for bot in "${bots[@]}"; do
    if [ ! -p "$pipe" ]; then 
      echo "Creating new pipeline for $bot"
      for topic in "${topics[@]}"; do 
        path="$root/$topic/$bot"
        mkfifo "$path" || { echo "Failed to create IMU pipe"; exit 1; } 
        case "$topic" in
          "imu")
            rostopic echo /SensorNode/imu | tee "$path" 
            ;;
          "odom")
            rostopic echo /SensorNode/odom | tee "$path"
            ;; 
          "tof")
            rostopic echo /SensorNode/tof | tee "$path"
            ;; 
          "battery_status")
            rostopic echo /SensorNode/BatteryStatus | tee "$path" 
            ;;
          *)
            echo "fault"
            ;;
          esac
      done &
    fi 
  done
  # Wait for all processes to finish
  wait
}
