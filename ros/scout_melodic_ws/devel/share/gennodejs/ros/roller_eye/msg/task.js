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

class task {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.type = null;
      this.repeateType = null;
      this.repeateDays = null;
      this.timeYear = null;
      this.timeMonth = null;
      this.timeDay = null;
      this.timeHour = null;
      this.timeMinute = null;
      this.timeSecond = null;
      this.expire = null;
      this.param = null;
      this.notice = null;
      this.active = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('repeateType')) {
        this.repeateType = initObj.repeateType
      }
      else {
        this.repeateType = 0;
      }
      if (initObj.hasOwnProperty('repeateDays')) {
        this.repeateDays = initObj.repeateDays
      }
      else {
        this.repeateDays = [];
      }
      if (initObj.hasOwnProperty('timeYear')) {
        this.timeYear = initObj.timeYear
      }
      else {
        this.timeYear = 0;
      }
      if (initObj.hasOwnProperty('timeMonth')) {
        this.timeMonth = initObj.timeMonth
      }
      else {
        this.timeMonth = 0;
      }
      if (initObj.hasOwnProperty('timeDay')) {
        this.timeDay = initObj.timeDay
      }
      else {
        this.timeDay = 0;
      }
      if (initObj.hasOwnProperty('timeHour')) {
        this.timeHour = initObj.timeHour
      }
      else {
        this.timeHour = 0;
      }
      if (initObj.hasOwnProperty('timeMinute')) {
        this.timeMinute = initObj.timeMinute
      }
      else {
        this.timeMinute = 0;
      }
      if (initObj.hasOwnProperty('timeSecond')) {
        this.timeSecond = initObj.timeSecond
      }
      else {
        this.timeSecond = 0;
      }
      if (initObj.hasOwnProperty('expire')) {
        this.expire = initObj.expire
      }
      else {
        this.expire = 0;
      }
      if (initObj.hasOwnProperty('param')) {
        this.param = initObj.param
      }
      else {
        this.param = '';
      }
      if (initObj.hasOwnProperty('notice')) {
        this.notice = initObj.notice
      }
      else {
        this.notice = false;
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type task
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [repeateType]
    bufferOffset = _serializer.int8(obj.repeateType, buffer, bufferOffset);
    // Serialize message field [repeateDays]
    bufferOffset = _arraySerializer.int8(obj.repeateDays, buffer, bufferOffset, null);
    // Serialize message field [timeYear]
    bufferOffset = _serializer.int32(obj.timeYear, buffer, bufferOffset);
    // Serialize message field [timeMonth]
    bufferOffset = _serializer.int8(obj.timeMonth, buffer, bufferOffset);
    // Serialize message field [timeDay]
    bufferOffset = _serializer.int8(obj.timeDay, buffer, bufferOffset);
    // Serialize message field [timeHour]
    bufferOffset = _serializer.int8(obj.timeHour, buffer, bufferOffset);
    // Serialize message field [timeMinute]
    bufferOffset = _serializer.int8(obj.timeMinute, buffer, bufferOffset);
    // Serialize message field [timeSecond]
    bufferOffset = _serializer.int8(obj.timeSecond, buffer, bufferOffset);
    // Serialize message field [expire]
    bufferOffset = _serializer.int32(obj.expire, buffer, bufferOffset);
    // Serialize message field [param]
    bufferOffset = _serializer.string(obj.param, buffer, bufferOffset);
    // Serialize message field [notice]
    bufferOffset = _serializer.bool(obj.notice, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type task
    let len;
    let data = new task(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [repeateType]
    data.repeateType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [repeateDays]
    data.repeateDays = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [timeYear]
    data.timeYear = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [timeMonth]
    data.timeMonth = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [timeDay]
    data.timeDay = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [timeHour]
    data.timeHour = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [timeMinute]
    data.timeMinute = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [timeSecond]
    data.timeSecond = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [expire]
    data.expire = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [param]
    data.param = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [notice]
    data.notice = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.type.length;
    length += object.repeateDays.length;
    length += object.param.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roller_eye/task';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9830df15a89026240f987f0f60f06f98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new task(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.repeateType !== undefined) {
      resolved.repeateType = msg.repeateType;
    }
    else {
      resolved.repeateType = 0
    }

    if (msg.repeateDays !== undefined) {
      resolved.repeateDays = msg.repeateDays;
    }
    else {
      resolved.repeateDays = []
    }

    if (msg.timeYear !== undefined) {
      resolved.timeYear = msg.timeYear;
    }
    else {
      resolved.timeYear = 0
    }

    if (msg.timeMonth !== undefined) {
      resolved.timeMonth = msg.timeMonth;
    }
    else {
      resolved.timeMonth = 0
    }

    if (msg.timeDay !== undefined) {
      resolved.timeDay = msg.timeDay;
    }
    else {
      resolved.timeDay = 0
    }

    if (msg.timeHour !== undefined) {
      resolved.timeHour = msg.timeHour;
    }
    else {
      resolved.timeHour = 0
    }

    if (msg.timeMinute !== undefined) {
      resolved.timeMinute = msg.timeMinute;
    }
    else {
      resolved.timeMinute = 0
    }

    if (msg.timeSecond !== undefined) {
      resolved.timeSecond = msg.timeSecond;
    }
    else {
      resolved.timeSecond = 0
    }

    if (msg.expire !== undefined) {
      resolved.expire = msg.expire;
    }
    else {
      resolved.expire = 0
    }

    if (msg.param !== undefined) {
      resolved.param = msg.param;
    }
    else {
      resolved.param = ''
    }

    if (msg.notice !== undefined) {
      resolved.notice = msg.notice;
    }
    else {
      resolved.notice = false
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    return resolved;
    }
};

module.exports = task;
