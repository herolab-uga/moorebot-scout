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

class status {
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
        this.status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type status
    // Serialize message field [status]
    bufferOffset = _arraySerializer.int32(obj.status, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type status
    let len;
    let data = new status(null);
    // Deserialize message field [status]
    data.status = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.status.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roller_eye/status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6919a5b3f28e39f677c7c81d4e5a2ef4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #error and ok
    int8 PROCESS_OK=0
    int8 PROCESS_ERROR=-1
    
    
    #const for object detecting
    int8 OBJ_DETECT_CHARGE=1
    
    
    #const for recording
    int8 RECORD_START=1
    int8 RECORD_STOP=2
    int8 RECORD_ERROR=3
    
    
    
    #const for p2p av module
    int8 P2P_AV_PLAYING=1
    int8 P2P_AV_STOP=2
    int8 P2P_AV_ERROR=3
    
    #const define for wifi
    int8 WIFI_MODE_AP=0
    int8 WIFI_MODE_STA=1
    
    int8 WIFI_STATUS_DISCONNECT=0
    int8 WIFI_STATUS_CONNECTED=1
    int8 WIFI_STATUS_CONNECTING=2
    int8 WIFI_STATUS_WRONG_KEY=3
    int8 WIFI_STATUS_CONN_FAIL=4
    int8 WIFI_STATUS_STOP=5
    
    int8 BACK_UP_DETECT=1
    int8 BACK_UP_ALIGN=2
    int8 BACK_UP_BACK=3
    int8 BACK_UP_SUCCESS=4
    int8 BACK_UP_FAIL=5
    int8 BACK_UP_INACTIVE=6
    int8 BACK_UP_CANCEL=7
    int8 BACK_UP_REDETECT=8
    
    int8 BATTERY_CHARGING=0
    int8 BATTERY_UNCHARGE=1
    int8 BATTERY_FULL=2
    int8 BATTERY_UNKOWN=3
    
    #msg define
    int32[]  status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new status(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = []
    }

    return resolved;
    }
};

// Constants for message
status.Constants = {
  PROCESS_OK: 0,
  PROCESS_ERROR: -1,
  OBJ_DETECT_CHARGE: 1,
  RECORD_START: 1,
  RECORD_STOP: 2,
  RECORD_ERROR: 3,
  P2P_AV_PLAYING: 1,
  P2P_AV_STOP: 2,
  P2P_AV_ERROR: 3,
  WIFI_MODE_AP: 0,
  WIFI_MODE_STA: 1,
  WIFI_STATUS_DISCONNECT: 0,
  WIFI_STATUS_CONNECTED: 1,
  WIFI_STATUS_CONNECTING: 2,
  WIFI_STATUS_WRONG_KEY: 3,
  WIFI_STATUS_CONN_FAIL: 4,
  WIFI_STATUS_STOP: 5,
  BACK_UP_DETECT: 1,
  BACK_UP_ALIGN: 2,
  BACK_UP_BACK: 3,
  BACK_UP_SUCCESS: 4,
  BACK_UP_FAIL: 5,
  BACK_UP_INACTIVE: 6,
  BACK_UP_CANCEL: 7,
  BACK_UP_REDETECT: 8,
  BATTERY_CHARGING: 0,
  BATTERY_UNCHARGE: 1,
  BATTERY_FULL: 2,
  BATTERY_UNKOWN: 3,
}

module.exports = status;
