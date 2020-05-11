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

class value {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('msg_msg')) {
        this.msg_msg = initObj.msg_msg
      }
      else {
        this.msg_msg = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type value
    // Serialize message field [msg_msg]
    bufferOffset = _serializer.int64(obj.msg_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type value
    let len;
    let data = new value(null);
    // Deserialize message field [msg_msg]
    data.msg_msg = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'value_msg/value';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27d68748e893d7f456dfb185e9ecf1a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 msg_msg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new value(null);
    if (msg.msg_msg !== undefined) {
      resolved.msg_msg = msg.msg_msg;
    }
    else {
      resolved.msg_msg = 0
    }

    return resolved;
    }
};

module.exports = value;
