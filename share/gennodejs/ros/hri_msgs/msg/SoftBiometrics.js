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

class SoftBiometrics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.age = null;
      this.age_confidence = null;
      this.gender = null;
      this.gender_confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('age_confidence')) {
        this.age_confidence = initObj.age_confidence
      }
      else {
        this.age_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('gender')) {
        this.gender = initObj.gender
      }
      else {
        this.gender = 0;
      }
      if (initObj.hasOwnProperty('gender_confidence')) {
        this.gender_confidence = initObj.gender_confidence
      }
      else {
        this.gender_confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoftBiometrics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint8(obj.age, buffer, bufferOffset);
    // Serialize message field [age_confidence]
    bufferOffset = _serializer.float32(obj.age_confidence, buffer, bufferOffset);
    // Serialize message field [gender]
    bufferOffset = _serializer.uint8(obj.gender, buffer, bufferOffset);
    // Serialize message field [gender_confidence]
    bufferOffset = _serializer.float32(obj.gender_confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoftBiometrics
    let len;
    let data = new SoftBiometrics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [age_confidence]
    data.age_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gender]
    data.gender = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gender_confidence]
    data.gender_confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hri_msgs/SoftBiometrics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '791877398420c10707c4d9a832b0e6ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes soft biometrics (age and gender)
    Header header
    
    uint8 age
    float32 age_confidence
    
    uint8 UNDEFINED=0
    uint8 FEMALE=1
    uint8 MALE=2
    uint8 OTHER=3
    
    uint8 gender # one of UNDEFINED, FEMALE, MALE, OTHER
    float32 gender_confidence 
    
    
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
    const resolved = new SoftBiometrics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.age_confidence !== undefined) {
      resolved.age_confidence = msg.age_confidence;
    }
    else {
      resolved.age_confidence = 0.0
    }

    if (msg.gender !== undefined) {
      resolved.gender = msg.gender;
    }
    else {
      resolved.gender = 0
    }

    if (msg.gender_confidence !== undefined) {
      resolved.gender_confidence = msg.gender_confidence;
    }
    else {
      resolved.gender_confidence = 0.0
    }

    return resolved;
    }
};

// Constants for message
SoftBiometrics.Constants = {
  UNDEFINED: 0,
  FEMALE: 1,
  MALE: 2,
  OTHER: 3,
}

module.exports = SoftBiometrics;
