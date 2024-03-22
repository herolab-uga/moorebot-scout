#!/bin/bash 

# Author: Samuel Lemus
# Date: 2024-03-16

# This script is used to start the CLI control sequence for 
## manipulating the moorebot scout robot interface.

# This script is intended to be run with from the '/shell' directory

# initialize the variables
## call the init function from the init.sh script.
## (located in the './lib/utility/' directory)
#source ./lib/utility/init.sh

# start peripheral sensor data collection
## call the start function from the start.sh script.
## (located in the './lib/utility/' directory)
#source ./lib/utility/start.sh 

# start the CLI controller script
## call the cli function from the cli.sh script.
## (located in the './lib/controller/' directory)
#source ./lib/utility/cli.sh


######################################
## the above code is intended to be a part of the completed code.
## the code below is intended to help with development of this script sequence. 
######################################

##### lets get teleop to work for 1 scout. 

# init 
# source ./lib/utility/init.sh
# teleop
# source ./lib/control/teleop/solo_teleop.sh
# teleop_loop
## On scout
./lib/sense/write.sh &
./lib/sense/logger.sh
## On PC
./lib/sense/listener.sh &
