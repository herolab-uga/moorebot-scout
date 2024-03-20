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

class frame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seq = null;
      this.stamp = null;
      this.session = null;
      this.type = null;
      this.oseq = null;
      this.par1 = null;
      this.par2 = null;
      this.par3 = null;
      this.par4 = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = 0;
      }
      if (initObj.hasOwnProperty('session')) {
        this.session = initObj.session
      }
      else {
        this.session = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('oseq')) {
        this.oseq = initObj.oseq
      }
      else {
        this.oseq = 0;
      }
      if (initObj.hasOwnProperty('par1')) {
        this.par1 = initObj.par1
      }
      else {
        this.par1 = 0;
      }
      if (initObj.hasOwnProperty('par2')) {
        this.par2 = initObj.par2
      }
      else {
        this.par2 = 0;
      }
      if (initObj.hasOwnProperty('par3')) {
        this.par3 = initObj.par3
      }
      else {
        this.par3 = 0;
      }
      if (initObj.hasOwnProperty('par4')) {
        this.par4 = initObj.par4
      }
      else {
        this.par4 = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type frame
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.uint64(obj.stamp, buffer, bufferOffset);
    // Serialize message field [session]
    bufferOffset = _serializer.uint32(obj.session, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [oseq]
    bufferOffset = _serializer.uint32(obj.oseq, buffer, bufferOffset);
    // Serialize message field [par1]
    bufferOffset = _serializer.int32(obj.par1, buffer, bufferOffset);
    // Serialize message field [par2]
    bufferOffset = _serializer.int32(obj.par2, buffer, bufferOffset);
    // Serialize message field [par3]
    bufferOffset = _serializer.int32(obj.par3, buffer, bufferOffset);
    // Serialize message field [par4]
    bufferOffset = _serializer.int32(obj.par4, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type frame
    let len;
    let data = new frame(null);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [session]
    data.session = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [oseq]
    data.oseq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [par1]
    data.par1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [par2]
    data.par2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [par3]
    data.par3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [par4]
    data.par4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roller_eye/frame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bce5a3441e8f21e02d2b9d7ce432bea2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 VIDEO_STREAM_H264=0
    int8 VIDEO_STREAM_JPG=1
    int8 AUDIO_STREAM_AAC=2
    
    #common frame for video/audio stream,compress picture
    #do not use common head,define a new header
    uint32 seq
    uint64 stamp
    uint32 session
    int8 type
    
    # origin frame seq
    uint32 oseq           
    
    #in video frame,par1 is width,par2 is height,par3 is key frame
    #in audio  frame,par1 is sample rate,par2 is bitwidth,par3 is channels
    #in file frame,par3 is frame flag:0->frame  1->eof  2->error
    #par4 used to extend
    int32 par1
    int32 par2
    int32 par3
    int32 par4
    
    #frame data
    uint8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new frame(null);
    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = 0
    }

    if (msg.session !== undefined) {
      resolved.session = msg.session;
    }
    else {
      resolved.session = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.oseq !== undefined) {
      resolved.oseq = msg.oseq;
    }
    else {
      resolved.oseq = 0
    }

    if (msg.par1 !== undefined) {
      resolved.par1 = msg.par1;
    }
    else {
      resolved.par1 = 0
    }

    if (msg.par2 !== undefined) {
      resolved.par2 = msg.par2;
    }
    else {
      resolved.par2 = 0
    }

    if (msg.par3 !== undefined) {
      resolved.par3 = msg.par3;
    }
    else {
      resolved.par3 = 0
    }

    if (msg.par4 !== undefined) {
      resolved.par4 = msg.par4;
    }
    else {
      resolved.par4 = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

// Constants for message
frame.Constants = {
  VIDEO_STREAM_H264: 0,
  VIDEO_STREAM_JPG: 1,
  AUDIO_STREAM_AAC: 2,
}

module.exports = frame;
