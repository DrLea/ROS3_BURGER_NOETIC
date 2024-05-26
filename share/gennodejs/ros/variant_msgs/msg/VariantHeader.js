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

class VariantHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.publisher = null;
      this.topic = null;
      this.latched = null;
    }
    else {
      if (initObj.hasOwnProperty('publisher')) {
        this.publisher = initObj.publisher
      }
      else {
        this.publisher = '';
      }
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
      if (initObj.hasOwnProperty('latched')) {
        this.latched = initObj.latched
      }
      else {
        this.latched = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VariantHeader
    // Serialize message field [publisher]
    bufferOffset = _serializer.string(obj.publisher, buffer, bufferOffset);
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    // Serialize message field [latched]
    bufferOffset = _serializer.bool(obj.latched, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VariantHeader
    let len;
    let data = new VariantHeader(null);
    // Deserialize message field [publisher]
    data.publisher = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [latched]
    data.latched = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.publisher);
    length += _getByteLength(object.topic);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'variant_msgs/VariantHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4adbe277ed51d50644d64067b86c73d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string publisher              # Name of the publishing node
    string topic                  # Message publishing topic
    bool latched                  # If true, the message publication is latched
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VariantHeader(null);
    if (msg.publisher !== undefined) {
      resolved.publisher = msg.publisher;
    }
    else {
      resolved.publisher = ''
    }

    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    if (msg.latched !== undefined) {
      resolved.latched = msg.latched;
    }
    else {
      resolved.latched = false
    }

    return resolved;
    }
};

module.exports = VariantHeader;
