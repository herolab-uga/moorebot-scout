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

let record = require('../msg/record.js');

//-----------------------------------------------------------

class record_get_filesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.id = null;
      this.start = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = 0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type record_get_filesRequest
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = _serializer.int32(obj.start, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.int32(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type record_get_filesRequest
    let len;
    let data = new record_get_filesRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/record_get_filesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f598a3600f6b7e4727ee537fd0c27ab3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # snapshot or record
    int8 type
    string id
    int32 start
    int32 size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new record_get_filesRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = 0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    return resolved;
    }
};

class record_get_filesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.files = null;
    }
    else {
      if (initObj.hasOwnProperty('files')) {
        this.files = initObj.files
      }
      else {
        this.files = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type record_get_filesResponse
    // Serialize message field [files]
    // Serialize the length for message field [files]
    bufferOffset = _serializer.uint32(obj.files.length, buffer, bufferOffset);
    obj.files.forEach((val) => {
      bufferOffset = record.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type record_get_filesResponse
    let len;
    let data = new record_get_filesResponse(null);
    // Deserialize message field [files]
    // Deserialize array length for message field [files]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.files = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.files[i] = record.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.files.forEach((val) => {
      length += record.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/record_get_filesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3eb0b1c52dafe591ce627d5472f2c69e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    record[] files
    
    ================================================================================
    MSG: roller_eye/record
    int8 RECORD_TYPE_ALL=0
    int8 RECORD_TYPE_SNAPSHOT=1
    int8 RECORD_TYPE_RECORD=2
    int8 RECORD_TYPE_THUMB=3
    int8 RECORD_TYPE_SCHED_RECORD=4
    
    #record file descriptor
    string id
    string name
    uint32 dur
    int8 type
    time create
    uint32 size
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new record_get_filesResponse(null);
    if (msg.files !== undefined) {
      resolved.files = new Array(msg.files.length);
      for (let i = 0; i < resolved.files.length; ++i) {
        resolved.files[i] = record.Resolve(msg.files[i]);
      }
    }
    else {
      resolved.files = []
    }

    return resolved;
    }
};

module.exports = {
  Request: record_get_filesRequest,
  Response: record_get_filesResponse,
  md5sum() { return '75b0c1893df243a157454eb4b9a2c1ea'; },
  datatype() { return 'roller_eye/record_get_files'; }
};
