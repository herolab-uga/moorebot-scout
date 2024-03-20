// Auto-generated. Do not edit!

// (in-package roller_eye.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let wifi_info = require('../msg/wifi_info.js');

//-----------------------------------------------------------

class wifi_scan_listRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wifi_scan_listRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wifi_scan_listRequest
    let len;
    let data = new wifi_scan_listRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/wifi_scan_listRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wifi_scan_listRequest(null);
    return resolved;
    }
};

class wifi_scan_listResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wifi_scan_listResponse
    // Serialize message field [result]
    // Serialize the length for message field [result]
    bufferOffset = _serializer.uint32(obj.result.length, buffer, bufferOffset);
    obj.result.forEach((val) => {
      bufferOffset = wifi_info.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wifi_scan_listResponse
    let len;
    let data = new wifi_scan_listResponse(null);
    // Deserialize message field [result]
    // Deserialize array length for message field [result]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.result = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.result[i] = wifi_info.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.result.forEach((val) => {
      length += wifi_info.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/wifi_scan_listResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd54a28d4e6325d269f60a72dc202a7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    wifi_info[] result
    
    ================================================================================
    MSG: roller_eye/wifi_info
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
    const resolved = new wifi_scan_listResponse(null);
    if (msg.result !== undefined) {
      resolved.result = new Array(msg.result.length);
      for (let i = 0; i < resolved.result.length; ++i) {
        resolved.result[i] = wifi_info.Resolve(msg.result[i]);
      }
    }
    else {
      resolved.result = []
    }

    return resolved;
    }
};

module.exports = {
  Request: wifi_scan_listRequest,
  Response: wifi_scan_listResponse,
  md5sum() { return 'fd54a28d4e6325d269f60a72dc202a7b'; },
  datatype() { return 'roller_eye/wifi_scan_list'; }
};
