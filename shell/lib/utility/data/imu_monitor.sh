#!/bin/bash 

## we are running from the /shell/lib/control/data/ directory 
source ./imu.sh 

monitor_z_roation=0


monitor_imu_data() {

    local velo_z= #need to get this from the imu.sh script

    timestamp = #need to use /SensorNode/imu to get the timestamp

    local theta=$(echo "$velo_z * $timestamp" | bc) #angular displacement to calcualte the turn it took

    monitor_z_roation=$(echo "$monitor_z_roation + $theta" | bc) #update the total rotation made

    if (( $(echo "$monitor_z_roation >= 1.57" | bc -1) )); then
        echo "90 degree turn is completed"

        #reset back to 0
        monitor_z_roation=0
    fi


}


main