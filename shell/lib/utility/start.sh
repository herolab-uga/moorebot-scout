#!/bin/bash 

# Author: Samuel Lemus


## list of responded hosts 

HOST_LIST=$RESPONDED

for host in $HOST_LIST; do 
    echo "${host}"
done

source ./lib/utility/data/imu.sh 

## main loop
main() { 
    local imu_weight=.6
    local odom_weight=.4
    local num_host=0
    for host in $HOST_LIST; do 
        export ROS_MASTER_URI=http://${host}:11311
        rostopic echo $IMU_TOPIC | while read -r imu_data; do 
            imu_values=$(process_imu "$imu_data")
            rostopic echo $ODOM_TOPIC | while read -r odom_data; do 
                odom_values=$(process_odometry "$odom_data")
                fused_data=$(awk -v imu="$imu_values" -v odom="$odom_values"\
                            -v imu_w="$imu_weight" -v odom_w="$odom_weight"\
                            'BEGIN{ split(imu, imu_arr); split(odom, odom_arr);
                                    print imu_w*imu_arr[1]+odom_w*odom_arr[1]
                                    }')  
                echo "Fused data: $fused_data"
            done
        done
    done
}

main 