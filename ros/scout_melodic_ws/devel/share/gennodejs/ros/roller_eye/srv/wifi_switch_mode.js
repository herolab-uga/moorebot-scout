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


//-----------------------------------------------------------

class wifi_switch_modeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.kill = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('kill')) {
        this.kill = initObj.kill
      }
      else {
        this.kill = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wifi_switch_modeRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    // Serialize message field [kill]
    bufferOffset = _serializer.int8(obj.kill, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wifi_switch_modeRequest
    let len;
    let data = new wifi_switch_modeRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [kill]
    data.kill = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/wifi_switch_modeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '737d8b71a06308636512985c8e5af86e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 mode
    #0-don't 1-kill wifi_start_sta.sh 2-kill wifi_start_ap.sh
    int8 kill
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wifi_switch_modeRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.kill !== undefined) {
      resolved.kill = msg.kill;
    }
    else {
      resolved.kill = 0
    }

    return resolved;
    }
};

class wifi_switch_modeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wifi_switch_modeResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wifi_switch_modeResponse
    let len;
    let data = new wifi_switch_modeResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/wifi_switch_modeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '581cc55c12abfc219e446416014f6d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wifi_switch_modeResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: wifi_switch_modeRequest,
  Response: wifi_switch_modeResponse,
  md5sum() { return '106fdf359311f6beba452ddefdd87f1b'; },
  datatype() { return 'roller_eye/wifi_switch_mode'; }
};
