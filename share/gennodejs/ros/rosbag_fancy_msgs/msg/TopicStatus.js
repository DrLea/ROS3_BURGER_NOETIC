// Auto-generated. Do not edit!

// (in-package rosbag_fancy_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TopicStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.publishers = null;
      this.messages = null;
      this.messages_in_current_bag = null;
      this.rate = null;
      this.bytes = null;
      this.bandwidth = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('publishers')) {
        this.publishers = initObj.publishers
      }
      else {
        this.publishers = 0;
      }
      if (initObj.hasOwnProperty('messages')) {
        this.messages = initObj.messages
      }
      else {
        this.messages = 0;
      }
      if (initObj.hasOwnProperty('messages_in_current_bag')) {
        this.messages_in_current_bag = initObj.messages_in_current_bag
      }
      else {
        this.messages_in_current_bag = 0;
      }
      if (initObj.hasOwnProperty('rate')) {
        this.rate = initObj.rate
      }
      else {
        this.rate = 0.0;
      }
      if (initObj.hasOwnProperty('bytes')) {
        this.bytes = initObj.bytes
      }
      else {
        this.bytes = 0;
      }
      if (initObj.hasOwnProperty('bandwidth')) {
        this.bandwidth = initObj.bandwidth
      }
      else {
        this.bandwidth = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicStatus
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [publishers]
    bufferOffset = _serializer.uint32(obj.publishers, buffer, bufferOffset);
    // Serialize message field [messages]
    bufferOffset = _serializer.uint64(obj.messages, buffer, bufferOffset);
    // Serialize message field [messages_in_current_bag]
    bufferOffset = _serializer.uint64(obj.messages_in_current_bag, buffer, bufferOffset);
    // Serialize message field [rate]
    bufferOffset = _serializer.float32(obj.rate, buffer, bufferOffset);
    // Serialize message field [bytes]
    bufferOffset = _serializer.uint64(obj.bytes, buffer, bufferOffset);
    // Serialize message field [bandwidth]
    bufferOffset = _serializer.float32(obj.bandwidth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopicStatus
    let len;
    let data = new TopicStatus(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [publishers]
    data.publishers = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [messages]
    data.messages = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [messages_in_current_bag]
    data.messages_in_current_bag = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [rate]
    data.rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bytes]
    data.bytes = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [bandwidth]
    data.bandwidth = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosbag_fancy_msgs/TopicStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab1d1b0e9b845daddfffb9265d5bb87c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string name
    
    uint32 publishers
    uint64 messages
    uint64 messages_in_current_bag
    float32 rate
    uint64 bytes
    float32 bandwidth
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TopicStatus(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.publishers !== undefined) {
      resolved.publishers = msg.publishers;
    }
    else {
      resolved.publishers = 0
    }

    if (msg.messages !== undefined) {
      resolved.messages = msg.messages;
    }
    else {
      resolved.messages = 0
    }

    if (msg.messages_in_current_bag !== undefined) {
      resolved.messages_in_current_bag = msg.messages_in_current_bag;
    }
    else {
      resolved.messages_in_current_bag = 0
    }

    if (msg.rate !== undefined) {
      resolved.rate = msg.rate;
    }
    else {
      resolved.rate = 0.0
    }

    if (msg.bytes !== undefined) {
      resolved.bytes = msg.bytes;
    }
    else {
      resolved.bytes = 0
    }

    if (msg.bandwidth !== undefined) {
      resolved.bandwidth = msg.bandwidth;
    }
    else {
      resolved.bandwidth = 0.0
    }

    return resolved;
    }
};

module.exports = TopicStatus;
