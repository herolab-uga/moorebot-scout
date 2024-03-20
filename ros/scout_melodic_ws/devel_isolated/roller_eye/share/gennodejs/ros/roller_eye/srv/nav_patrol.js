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

class nav_patrolRequest {
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
    // Serializes a message object of type nav_patrolRequest
    // Serialize message field [isFromOutStart]
    bufferOffset = _serializer.int8(obj.isFromOutStart, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nav_patrolRequest
    let len;
    let data = new nav_patrolRequest(null);
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
    return 'roller_eye/nav_patrolRequest';
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
    const resolved = new nav_patrolRequest(null);
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

class nav_patrolResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nav_patrolResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int32(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nav_patrolResponse
    let len;
    let data = new nav_patrolResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/nav_patrolResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bd113e2f12c9c571d32a0bd71d59b8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ret
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nav_patrolResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: nav_patrolRequest,
  Response: nav_patrolResponse,
  md5sum() { return 'd6a5af10fcc8d2d1a3207d2742669e6d'; },
  datatype() { return 'roller_eye/nav_patrol'; }
};
