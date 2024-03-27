import sys 

import paho.mqtt.client as paho 

client = paho.Client(paho.CallbackAPIVersion.VERSION2)

if client.connect("localhost", 8080, 60) != 0: 
    print("Couldn't connect to the mqtt broker")
    sys.exit(1)

if len(sys.argv) > 1: 
    client.publish("test_topic", sys.argv[2], 0)
else:
    client.publish("test_topic", "Hi, paho mqtt client works fine!", 0)


client.disconnect() 