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

class nav_path_startRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isFromOutStart = null;
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('isFromOutStart')) {
        this.isFromOutStart = initObj.isFromOutStart
      }
      else {
        this.isFromOutStart = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nav_path_startRequest
    // Serialize message field [isFromOutStart]
    bufferOffset = _serializer.int8(obj.isFromOutStart, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nav_path_startRequest
    let len;
    let data = new nav_path_startRequest(null);
    // Deserialize message field [isFromOutStart]
    data.isFromOutStart = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/nav_path_startRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c9f7c0536edb947c8a33193074afe9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #0-no, 1-yes
    int8     isFromOutStart
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nav_path_startRequest(null);
    if (msg.isFromOutStart !== undefined) {
      resolved.isFromOutStart = msg.isFromOutStart;
    }
    else {
      resolved.isFromOutStart = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class nav_path_startResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nav_path_startResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nav_path_startResponse
    let len;
    let data = new nav_path_startResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/nav_path_startResponse';
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
    const resolved = new nav_path_startResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: nav_path_startRequest,
  Response: nav_path_startResponse,
  md5sum() { return '3c9f7c0536edb947c8a33193074afe9e'; },
  datatype() { return 'roller_eye/nav_path_start'; }
};
