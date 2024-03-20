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

class alexskill {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.dist = null;
      this.vx = null;
      this.vy = null;
      this.w = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = 0.0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type alexskill
    // Serialize message field [cmd]
    bufferOffset = _serializer.uint32(obj.cmd, buffer, bufferOffset);
    // Serialize message field [dist]
    bufferOffset = _serializer.float32(obj.dist, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.float32(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float32(obj.vy, buffer, bufferOffset);
    // Serialize message field [w]
    bufferOffset = _serializer.float32(obj.w, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type alexskill
    let len;
    let data = new alexskill(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dist]
    data.dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [w]
    data.w = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roller_eye/alexskill';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1709b62875f0d4583ac2cce6d24340c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #alex skill command
    #0-turn left 1-turn right 2-move left 3-move right 4-move forward 
    #5-move bacward 6-clockwise rotate 7-counterclockwise rotate
    #error and ok
    int8 ALEX_S_TURNLEFT                              = 0
    int8 ALEX_S_TURNRIGHT                           = 1
    int8 ALEX_S_MOVELEFT                              = 2
    int8 ALEX_S_MOVERIGHT                           = 3
    int8 ALEX_S_MOVEFORWARD                   = 4
    int8 ALEX_S_MOVEBACKWARD                = 5
    int8 ALEX_S_CLOCKWISEROTATE           = 6
    int8 ALEX_S_COUNTERCLOCKROTATE = 7
    
    uint32 cmd
    
    #motion distance
    float32 dist
    
    #x velocity
    float32 vx
    
    #y velocity
    float32 vy
    
    #Rotationl Speed
    float32 w
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new alexskill(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.dist !== undefined) {
      resolved.dist = msg.dist;
    }
    else {
      resolved.dist = 0.0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = 0.0
    }

    return resolved;
    }
};

// Constants for message
alexskill.Constants = {
  ALEX_S_TURNLEFT: 0,
  ALEX_S_TURNRIGHT: 1,
  ALEX_S_MOVELEFT: 2,
  ALEX_S_MOVERIGHT: 3,
  ALEX_S_MOVEFORWARD: 4,
  ALEX_S_MOVEBACKWARD: 5,
  ALEX_S_CLOCKWISEROTATE: 6,
  ALEX_S_COUNTERCLOCKROTATE: 7,
}

module.exports = alexskill;
