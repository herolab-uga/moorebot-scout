#### HeroLab
> Samuel Lemus
> March 27th, 2024 
### Moorebot Scout MQTT Implementation Doc
# General Notes: 

# Scratch Notes: 
* Scout: 

    
> source ./commands.sh...
<br> [ Scout ]
<br> listens to topic
<br> [ bot identifier ] :
<br>  scout - cname: tuco 
<br> [ subscribed topic ] : 
<br> /tuco_service 
<br> [ using channels ] : 
<br> /tuco_service
<br> /tuco_telem

* general cases: 
    * note: 
        * over the /tuco/service topic, there will be available bidirectional communication between the server and client nodes. 
            * host sends any command intended to be interpreted on scout. 
            * client sends validation messages to received commands. nothing more. 
        * over the /tuco_telem topic is a one-way channel where the scout mqtt node is not listening for anything in particular. the scout mqtt node is publishing data corresponding to the commands received from the host node internal to the /tuco/service topic. 
            * this ensures a refinement of the output messages intended for a general user. 
    * ..
    * move: 
        * direction: 
            * 'ahead'
            * 'back'
            * 'left'
            * 'right'
            * 'turn' + {direction}
    * sense: 
        * direction: 
            * 'ahead'
                * return to original orientation before sense action was induced. 
                * if this call is the first action in the 'sense' sequence, do nothing
            * 'left'
                * turn to the leftmost position from the current orientation. 
                    * over action time t, the delta angular orientation z would be a sum resulting in (pi/2) (+-) some threshold.
                * log orientation 
            *  'right'
                * ''
            * 'behind'
                * ''

* special cases: 
    * fetch: 
        * tof: 
            * message example: 
                * "request: tof_data; num_msgs: 10; rate: 1;"
        * battery_status:
            * message example: 
                * "request: battery_status; num_msgs: 10; rate: 1;"
        * imu_data: 
            * message example: 
                * "request: imu_data; num_msgs: 10; rate: 1;"
        * odom_data: 
            * message example: 
                * "request: odom_data; num_msgs: 10; rate: 1;"