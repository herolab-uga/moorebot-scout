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

class nav_list_pathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nav_list_pathRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nav_list_pathRequest
    let len;
    let data = new nav_list_pathRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/nav_list_pathRequest';
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
    const resolved = new nav_list_pathRequest(null);
    return resolved;
    }
};

class nav_list_pathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_list = null;
      this.size_list = null;
      this.create_time_list = null;
      this.name_list = null;
    }
    else {
      if (initObj.hasOwnProperty('path_list')) {
        this.path_list = initObj.path_list
      }
      else {
        this.path_list = [];
      }
      if (initObj.hasOwnProperty('size_list')) {
        this.size_list = initObj.size_list
      }
      else {
        this.size_list = [];
      }
      if (initObj.hasOwnProperty('create_time_list')) {
        this.create_time_list = initObj.create_time_list
      }
      else {
        this.create_time_list = [];
      }
      if (initObj.hasOwnProperty('name_list')) {
        this.name_list = initObj.name_list
      }
      else {
        this.name_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nav_list_pathResponse
    // Serialize message field [path_list]
    bufferOffset = _arraySerializer.string(obj.path_list, buffer, bufferOffset, null);
    // Serialize message field [size_list]
    bufferOffset = _arraySerializer.int32(obj.size_list, buffer, bufferOffset, null);
    // Serialize message field [create_time_list]
    bufferOffset = _arraySerializer.string(obj.create_time_list, buffer, bufferOffset, null);
    // Serialize message field [name_list]
    bufferOffset = _arraySerializer.string(obj.name_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nav_list_pathResponse
    let len;
    let data = new nav_list_pathResponse(null);
    // Deserialize message field [path_list]
    data.path_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [size_list]
    data.size_list = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [create_time_list]
    data.create_time_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [name_list]
    data.name_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.path_list.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.size_list.length;
    object.create_time_list.forEach((val) => {
      length += 4 + val.length;
    });
    object.name_list.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roller_eye/nav_list_pathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09857f8ab43e3dd303b36715eecbde30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] path_list
    int32[] size_list
    string[] create_time_list
    string[] name_list
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nav_list_pathResponse(null);
    if (msg.path_list !== undefined) {
      resolved.path_list = msg.path_list;
    }
    else {
      resolved.path_list = []
    }

    if (msg.size_list !== undefined) {
      resolved.size_list = msg.size_list;
    }
    else {
      resolved.size_list = []
    }

    if (msg.create_time_list !== undefined) {
      resolved.create_time_list = msg.create_time_list;
    }
    else {
      resolved.create_time_list = []
    }

    if (msg.name_list !== undefined) {
      resolved.name_list = msg.name_list;
    }
    else {
      resolved.name_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: nav_list_pathRequest,
  Response: nav_list_pathResponse,
  md5sum() { return '09857f8ab43e3dd303b36715eecbde30'; },
  datatype() { return 'roller_eye/nav_list_path'; }
};
