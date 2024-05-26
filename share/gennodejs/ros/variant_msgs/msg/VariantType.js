// Auto-generated. Do not edit!

// (in-package variant_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VariantType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.md5_sum = null;
      this.data_type = null;
      this.definition = null;
    }
    else {
      if (initObj.hasOwnProperty('md5_sum')) {
        this.md5_sum = initObj.md5_sum
      }
      else {
        this.md5_sum = '';
      }
      if (initObj.hasOwnProperty('data_type')) {
        this.data_type = initObj.data_type
      }
      else {
        this.data_type = '';
      }
      if (initObj.hasOwnProperty('definition')) {
        this.definition = initObj.definition
      }
      else {
        this.definition = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VariantType
    // Serialize message field [md5_sum]
    bufferOffset = _serializer.string(obj.md5_sum, buffer, bufferOffset);
    // Serialize message field [data_type]
    bufferOffset = _serializer.string(obj.data_type, buffer, bufferOffset);
    // Serialize message field [definition]
    bufferOffset = _serializer.string(obj.definition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VariantType
    let len;
    let data = new VariantType(null);
    // Deserialize message field [md5_sum]
    data.md5_sum = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data_type]
    data.data_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [definition]
    data.definition = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.md5_sum);
    length += _getByteLength(object.data_type);
    length += _getByteLength(object.definition);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'variant_msgs/VariantType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea49579a10d85560b62a77e2f2f84caf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string md5_sum                # Message type md5sum
    string data_type              # Message data type
    string definition             # Message definition
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VariantType(null);
    if (msg.md5_sum !== undefined) {
      resolved.md5_sum = msg.md5_sum;
    }
    else {
      resolved.md5_sum = ''
    }

    if (msg.data_type !== undefined) {
      resolved.data_type = msg.data_type;
    }
    else {
      resolved.data_type = ''
    }

    if (msg.definition !== undefined) {
      resolved.definition = msg.definition;
    }
    else {
      resolved.definition = ''
    }

    return resolved;
    }
};

module.exports = VariantType;
