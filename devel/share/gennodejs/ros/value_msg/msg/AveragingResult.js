// Auto-generated. Do not edit!

// (in-package value_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AveragingResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mean = null;
      this.std_dev = null;
    }
    else {
      if (initObj.hasOwnProperty('mean')) {
        this.mean = initObj.mean
      }
      else {
        this.mean = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev')) {
        this.std_dev = initObj.std_dev
      }
      else {
        this.std_dev = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AveragingResult
    // Serialize message field [mean]
    bufferOffset = _serializer.float32(obj.mean, buffer, bufferOffset);
    // Serialize message field [std_dev]
    bufferOffset = _serializer.float32(obj.std_dev, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AveragingResult
    let len;
    let data = new AveragingResult(null);
    // Deserialize message field [mean]
    data.mean = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev]
    data.std_dev = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'value_msg/AveragingResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5c7decf6df75ffb4367a05c1bcc7612';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    float32 mean
    float32 std_dev
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AveragingResult(null);
    if (msg.mean !== undefined) {
      resolved.mean = msg.mean;
    }
    else {
      resolved.mean = 0.0
    }

    if (msg.std_dev !== undefined) {
      resolved.std_dev = msg.std_dev;
    }
    else {
      resolved.std_dev = 0.0
    }

    return resolved;
    }
};

module.exports = AveragingResult;
