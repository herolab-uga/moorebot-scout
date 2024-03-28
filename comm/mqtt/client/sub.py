import sys
import paho.mqtt.client as paho 
import pub 

# ref: .. 

def message_handling(client, userdata, msg): 
    print(f"{msg.topic}: {msg.payload.decode()}")
    if msg.payload.decode().contains("move_forward"): 
        pub.publish("tuco_service", "forward_move")
    else: 
        pass
    # if msg.payload.decode().contains("service"): do stuff. 

client = paho.Client(paho.CallbackAPIVersion.VERSION2)
client.on_message = message_handling

# hardcoded host address !! needs to be changed. 
if client.connect("192.168.1.83", 1883, 60) != 0: 
    print("Couldn't connect to the mqtt broker")
    sys.exit(1) 

client.subscribe("tuco_service")

try: 
    print("Press CTRL+C to exit...")
    client.loop_forever() 
except Exception: 
    print("Caught an Exception, something went wrong...")
finally:
    print("Disconnecting from the MQTT broker")
    client.disconnect() 
        
