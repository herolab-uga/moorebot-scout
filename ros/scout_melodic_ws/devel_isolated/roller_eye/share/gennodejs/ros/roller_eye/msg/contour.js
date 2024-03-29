// Auto-generated. Do not edit!

// (in-package roller_eye.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let point = require('./point.js');

//-----------------------------------------------------------

class contour {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.inside = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('inside')) {
        this.inside = initObj.inside
      }
      else {
        this.inside = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type contour
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [inside]
    bufferOffset = _serializer.bool(obj.inside, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type contour
    let len;
    let data = new contour(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [inside]
    data.inside = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.points.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roller_eye/contour';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a642c753275229829f5cad7ec8aa4996';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    point[] points
    bool inside
    ================================================================================
    MSG: roller_eye/point
    float32 x
    float32 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new contour(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = point.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.inside !== undefined) {
      resolved.inside = msg.inside;
    }
    else {
      resolved.inside = false
    }

    return resolved;
    }
};

module.exports = contour;
