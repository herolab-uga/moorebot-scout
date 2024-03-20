// Auto-generated. Do not edit!

// (in-package roller_eye.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class wifi_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ssid = null;
      this.quality = null;
      this.signal = null;
      this.noisy = null;
      this.freq = null;
      this.channel = null;
    }
    else {
      if (initObj.hasOwnProperty('ssid')) {
        this.ssid = initObj.ssid
      }
      else {
        this.ssid = '';
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0.0;
      }
      if (initObj.hasOwnProperty('signal')) {
        this.signal = initObj.signal
      }
      else {
        this.signal = 0;
      }
      if (initObj.hasOwnProperty('noisy')) {
        this.noisy = initObj.noisy
      }
      else {
        this.noisy = 0;
      }
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0.0;
      }
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wifi_info
    // Serialize message field [ssid]
    bufferOffset = _serializer.string(obj.ssid, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.float32(obj.quality, buffer, bufferOffset);
    // Serialize message field [signal]
    bufferOffset = _serializer.int32(obj.signal, buffer, bufferOffset);
    // Serialize message field [noisy]
    bufferOffset = _serializer.int32(obj.noisy, buffer, bufferOffset);
    // Serialize message field [freq]
    bufferOffset = _serializer.float32(obj.freq, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = _serializer.int32(obj.channel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wifi_info
    let len;
    let data = new wifi_info(null);
    // Deserialize message field [ssid]
    data.ssid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [signal]
    data.signal = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [noisy]
    data.noisy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [freq]
    data.freq = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ssid.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roller_eye/wifi_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8fb5b560bac4c87ce2cb6e8e897ae350';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ssid
    float32 quality
    int32 signal
    int32 noisy
    float32 freq
    int32 channel
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wifi_info(null);
    if (msg.ssid !== undefined) {
      resolved.ssid = msg.ssid;
    }
    else {
      resolved.ssid = ''
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0.0
    }

    if (msg.signal !== undefined) {
      resolved.signal = msg.signal;
    }
    else {
      resolved.signal = 0
    }

    if (msg.noisy !== undefined) {
      resolved.noisy = msg.noisy;
    }
    else {
      resolved.noisy = 0
    }

    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0.0
    }

    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    return resolved;
    }
};

module.exports = wifi_info;
