// Auto-generated. Do not edit!

// (in-package rosbag_fancy_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TopicStatus = require('./TopicStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
      this.bagfile = null;
      this.bytes = null;
      this.free_bytes = null;
      this.bandwidth = null;
      this.topics = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('bagfile')) {
        this.bagfile = initObj.bagfile
      }
      else {
        this.bagfile = '';
      }
      if (initObj.hasOwnProperty('bytes')) {
        this.bytes = initObj.bytes
      }
      else {
        this.bytes = 0;
      }
      if (initObj.hasOwnProperty('free_bytes')) {
        this.free_bytes = initObj.free_bytes
      }
      else {
        this.free_bytes = 0;
      }
      if (initObj.hasOwnProperty('bandwidth')) {
        this.bandwidth = initObj.bandwidth
      }
      else {
        this.bandwidth = 0.0;
      }
      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics
      }
      else {
        this.topics = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [bagfile]
    bufferOffset = _serializer.string(obj.bagfile, buffer, bufferOffset);
    // Serialize message field [bytes]
    bufferOffset = _serializer.uint64(obj.bytes, buffer, bufferOffset);
    // Serialize message field [free_bytes]
    bufferOffset = _serializer.uint64(obj.free_bytes, buffer, bufferOffset);
    // Serialize message field [bandwidth]
    bufferOffset = _serializer.float32(obj.bandwidth, buffer, bufferOffset);
    // Serialize message field [topics]
    // Serialize the length for message field [topics]
    bufferOffset = _serializer.uint32(obj.topics.length, buffer, bufferOffset);
    obj.topics.forEach((val) => {
      bufferOffset = TopicStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bagfile]
    data.bagfile = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bytes]
    data.bytes = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [free_bytes]
    data.free_bytes = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [bandwidth]
    data.bandwidth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [topics]
    // Deserialize array length for message field [topics]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.topics = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.topics[i] = TopicStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.bagfile);
    object.topics.forEach((val) => {
      length += TopicStatus.getMessageSize(val);
    });
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosbag_fancy_msgs/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '947e6f4818d85a50b2f28a48a2711b80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 STATUS_PAUSED = 0
    uint8 STATUS_RUNNING = 1
    
    
    Header header
    
    uint8 status
    string bagfile
    
    uint64 bytes
    uint64 free_bytes
    float32 bandwidth
    
    TopicStatus[] topics
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: rosbag_fancy_msgs/TopicStatus
    
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
    const resolved = new Status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.bagfile !== undefined) {
      resolved.bagfile = msg.bagfile;
    }
    else {
      resolved.bagfile = ''
    }

    if (msg.bytes !== undefined) {
      resolved.bytes = msg.bytes;
    }
    else {
      resolved.bytes = 0
    }

    if (msg.free_bytes !== undefined) {
      resolved.free_bytes = msg.free_bytes;
    }
    else {
      resolved.free_bytes = 0
    }

    if (msg.bandwidth !== undefined) {
      resolved.bandwidth = msg.bandwidth;
    }
    else {
      resolved.bandwidth = 0.0
    }

    if (msg.topics !== undefined) {
      resolved.topics = new Array(msg.topics.length);
      for (let i = 0; i < resolved.topics.length; ++i) {
        resolved.topics[i] = TopicStatus.Resolve(msg.topics[i]);
      }
    }
    else {
      resolved.topics = []
    }

    return resolved;
    }
};

// Constants for message
Status.Constants = {
  STATUS_PAUSED: 0,
  STATUS_RUNNING: 1,
}

module.exports = Status;
