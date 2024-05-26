// Auto-generated. Do not edit!

// (in-package hri_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NormalizedPointOfInterest2D = require('./NormalizedPointOfInterest2D.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Skeleton2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.skeleton = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('skeleton')) {
        this.skeleton = initObj.skeleton
      }
      else {
        this.skeleton = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Skeleton2D
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [skeleton]
    // Serialize the length for message field [skeleton]
    bufferOffset = _serializer.uint32(obj.skeleton.length, buffer, bufferOffset);
    obj.skeleton.forEach((val) => {
      bufferOffset = NormalizedPointOfInterest2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Skeleton2D
    let len;
    let data = new Skeleton2D(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [skeleton]
    // Deserialize array length for message field [skeleton]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.skeleton = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.skeleton[i] = NormalizedPointOfInterest2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 12 * object.skeleton.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hri_msgs/Skeleton2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efedc2dc59671380a1d9b497f0740be4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains a list of skeletal keypoints 
    # (0, 0) is at top-left corner of image
    
    Header header        # Header timestamp should be acquisition time of the original image
    
    # skeletal key points codes
    # Follows OpenPose coco model convention
    # https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/doc/output.md#pose-output-format-coco
    
    uint8 NOSE = 0
    uint8 NECK = 1
    uint8 RIGHT_SHOULDER = 2
    uint8 RIGHT_ELBOW = 3
    uint8 RIGHT_WRIST = 4
    uint8 LEFT_SHOULDER = 5
    uint8 LEFT_ELBOW = 6
    uint8 LEFT_WRIST = 7
    uint8 RIGHT_HIP = 8
    uint8 RIGHT_KNEE = 9
    uint8 RIGHT_ANKLE = 10
    uint8 LEFT_HIP = 11
    uint8 LEFT_KNEE = 12
    uint8 LEFT_ANKLE = 13
    uint8 LEFT_EYE = 14
    uint8 RIGHT_EYE = 15
    uint8 LEFT_EAR = 16
    uint8 RIGHT_EAR = 17
    
    # array of 18 skeletal key points coordinates, one per skeletal key point, ordered per skeletal key points codes
    NormalizedPointOfInterest2D[] skeleton
    
    
    
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
    MSG: hri_msgs/NormalizedPointOfInterest2D
    # This contains the position of a point of interest (typically in an image)
    # the coordinates are always normalized and must belong to [0.,1.].
    # c is a confidence level (between 0. and 1.) associated to that POI
    float32 x
    float32 y
    float32 c
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Skeleton2D(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.skeleton !== undefined) {
      resolved.skeleton = new Array(msg.skeleton.length);
      for (let i = 0; i < resolved.skeleton.length; ++i) {
        resolved.skeleton[i] = NormalizedPointOfInterest2D.Resolve(msg.skeleton[i]);
      }
    }
    else {
      resolved.skeleton = []
    }

    return resolved;
    }
};

// Constants for message
Skeleton2D.Constants = {
  NOSE: 0,
  NECK: 1,
  RIGHT_SHOULDER: 2,
  RIGHT_ELBOW: 3,
  RIGHT_WRIST: 4,
  LEFT_SHOULDER: 5,
  LEFT_ELBOW: 6,
  LEFT_WRIST: 7,
  RIGHT_HIP: 8,
  RIGHT_KNEE: 9,
  RIGHT_ANKLE: 10,
  LEFT_HIP: 11,
  LEFT_KNEE: 12,
  LEFT_ANKLE: 13,
  LEFT_EYE: 14,
  RIGHT_EYE: 15,
  LEFT_EAR: 16,
  RIGHT_EAR: 17,
}

module.exports = Skeleton2D;
