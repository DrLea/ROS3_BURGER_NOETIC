// Auto-generated. Do not edit!

// (in-package hri_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EngagementLevel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.level = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EngagementLevel
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.uint8(obj.level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EngagementLevel
    let len;
    let data = new EngagementLevel(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hri_msgs/EngagementLevel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98693df082bea7da40fa598b187373d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Discrete engagement levels of a person with respect to the robot
    # It is for instance published on /humans/persons/person_id/engagement_status 
    # to access to the engagement level of a detected human. 
    # It will output one of the five following levels: unknown, disengaged, 
    # engaging, engaged and disengaging.
    Header header  
    
    # unknown: no information is provided about the engagement level 
    uint8 UNKNOWN=0
    # disengaged: the human has not looked in the direction of the robot
    uint8 DISENGAGED=1
    # engaging: the human has started to look in the direction of the robot
    uint8 ENGAGING=2
    # engaged: the human is fully engaged with the robot
    uint8 ENGAGED=3
    # disengaging: the human has started to look away from the robot
    uint8 DISENGAGING=4
    
    uint8 level
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EngagementLevel(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

    return resolved;
    }
};

// Constants for message
EngagementLevel.Constants = {
  UNKNOWN: 0,
  DISENGAGED: 1,
  ENGAGING: 2,
  ENGAGED: 3,
  DISENGAGING: 4,
}

module.exports = EngagementLevel;
