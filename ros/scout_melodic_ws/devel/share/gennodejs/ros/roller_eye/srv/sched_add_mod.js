// Auto-generated. Do not edit!

// (in-package roller_eye.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let task = require('../msg/task.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class sched_add_modRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tsk = null;
    }
    else {
      if (initObj.hasOwnProperty('tsk')) {
        this.tsk = initObj.tsk
      }
      else {
        this.tsk = new task();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sched_add_modRequest
    // Serialize message field [tsk]
    bufferOffset = task.serialize(obj.tsk, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sched_add_modRequest
    let len;
    let data = new sched_add_modRequest(null);
    // Deserialize message field [tsk]
    data.tsk = task.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += task.getMessageSize(object.tsk);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/sched_add_modRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc1faf861ce145533cfd6c3511ccd1dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    task tsk
    
    ================================================================================
    MSG: roller_eye/task
    int32 id
    string name
    string type
    int8 repeateType
    int8[] repeateDays
    int32 timeYear
    int8 timeMonth
    int8 timeDay
    int8 timeHour
    int8 timeMinute
    int8 timeSecond
    int32 expire
    string param
    bool notice
    bool active
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sched_add_modRequest(null);
    if (msg.tsk !== undefined) {
      resolved.tsk = task.Resolve(msg.tsk)
    }
    else {
      resolved.tsk = new task()
    }

    return resolved;
    }
};

class sched_add_modResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sched_add_modResponse
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sched_add_modResponse
    let len;
    let data = new sched_add_modResponse(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/sched_add_modResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5e4a7d59c68f74eabcec876a00216aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sched_add_modResponse(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: sched_add_modRequest,
  Response: sched_add_modResponse,
  md5sum() { return 'e0be7b42d9f9c638e488c09d9f0ede84'; },
  datatype() { return 'roller_eye/sched_add_mod'; }
};
