#!/bin/bash 

# read.sh

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
    for bot in "${bots[@]}"; do # Iterate over each bot
        for topic in "${topics[@]}"; do # Iterate over each topic
            path="/$root/$topic/$bot" # Set the path to the named pipe
            if [ ! -p "$path" ]; then; do # If the named pipe does not exist
                echo "Named pipe $path does not exist." # print an error message
                continue # Skip to the next iteration of the loop
            fi # End if statement
            echo "Reading from pipe $path"
            # Read from the named pipe continuously
            while true; do # Loop 
                # Read a line from the named pipe
                if read -r line < "$path";then
                    # Process the received line as needed
                    echo "Received data from $path: $line"
                else # If there was an error reading from the named pipe
                    echo "Error reading from named pipe $path." # Print an error message
                    exit 1 # Exit with an error code
                fi # End if statement
            done & # Run the loop in the background
        done # End inner loop
    done
  wait # Wait for all reading processes to finish
} # End outer loop

init # Call the init function
start # Call the start function
# end of script
