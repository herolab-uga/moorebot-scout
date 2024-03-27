import sys
import paho.mqtt.client as paho

# ref: https://github.com/eclipse/paho.mqtt.python/blob/master/examples/client_sub.py

def message_handling(client, userdata, msg):
    print(f"{msg.topic}: {msg.payload.decode()}")
    if msg.payload.decode() == "exit":
        client.disconnect()
    elif msg.payload.decode().contains("request: "):
        client.unsubscribe("test_topic")

client = paho.Client(paho.CallbackAPIVersion.VERSION2)
client.on_message = message_handling

if client.connect("localhost", 8080, 60) != 0:
    print("Couldn't connect to the mqtt broker")
    sys.exit(1)

client.subscribe("test_topic")
# client.subscribe("my_topic")

try:
    print("Press CTRL+C to exit...")
    client.loop_forever()
except Exception:
    print("Caught an Exception, something went wrong...")
finally:
    print("Disconnecting from the MQTT broker")
    client.disconnect()
