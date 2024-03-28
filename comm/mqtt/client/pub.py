import sys 

import paho.mqtt.client as paho 

client = paho.Client(paho.CallbackAPIVersion.VERSION2)

# hardcoded host !! need to change. 
if client.connect("192.168.1.83", 1883, 60) != 0: 
    print("Couldn't connect to the mqtt broker")
    sys.exit(1)


client.publish("tuco_service", "Your mother",0)

client.publish("tuco_service", "move_forward", 0) 

client.disconnect()
