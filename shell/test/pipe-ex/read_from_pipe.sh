#!/bin/bash 

# read_from_pipe.sh

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

start() {
  for bot in "${bots[@]}"; do
    for topic in "${topics[@]}"; do 
      path="$root/$topic/$bot"
      if [ ! -p "$path" ]; then; do 
      echo "Named pipe $path does not exist."
      continue
      fi
      echo "Reading from pipe $path"
      # Read from the named pipe continuously
      while true; do
        # Read a line from the named pipe
        if read -r line < "$path";then
          # Process the received line as needed
          echo "Received data from $path: $line"
        else
          echo "Error reading from named pipe $path."
          exit 1
        fi
      done &
  done
  # Wait for all reading processes to finish 
  wait 


}
