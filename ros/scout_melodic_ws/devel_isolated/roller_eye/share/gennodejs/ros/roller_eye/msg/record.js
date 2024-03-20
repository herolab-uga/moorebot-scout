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

class record {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.dur = null;
      this.type = null;
      this.create = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('dur')) {
        this.dur = initObj.dur
      }
      else {
        this.dur = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('create')) {
        this.create = initObj.create
      }
      else {
        this.create = {secs: 0, nsecs: 0};
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
    // Serializes a message object of type record
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [dur]
    bufferOffset = _serializer.uint32(obj.dur, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [create]
    bufferOffset = _serializer.time(obj.create, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type record
    let len;
    let data = new record(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dur]
    data.dur = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [create]
    data.create = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += object.name.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roller_eye/record';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '544f18c422ce92fad9c49fbb341e07c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new record(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.dur !== undefined) {
      resolved.dur = msg.dur;
    }
    else {
      resolved.dur = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.create !== undefined) {
      resolved.create = msg.create;
    }
    else {
      resolved.create = {secs: 0, nsecs: 0}
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

// Constants for message
record.Constants = {
  RECORD_TYPE_ALL: 0,
  RECORD_TYPE_SNAPSHOT: 1,
  RECORD_TYPE_RECORD: 2,
  RECORD_TYPE_THUMB: 3,
  RECORD_TYPE_SCHED_RECORD: 4,
}

module.exports = record;
