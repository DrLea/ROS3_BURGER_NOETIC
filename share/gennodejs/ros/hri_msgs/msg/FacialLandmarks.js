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

class FacialLandmarks {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.landmarks = null;
      this.height = null;
      this.width = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('landmarks')) {
        this.landmarks = initObj.landmarks
      }
      else {
        this.landmarks = [];
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FacialLandmarks
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [landmarks]
    // Serialize the length for message field [landmarks]
    bufferOffset = _serializer.uint32(obj.landmarks.length, buffer, bufferOffset);
    obj.landmarks.forEach((val) => {
      bufferOffset = NormalizedPointOfInterest2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [height]
    bufferOffset = _serializer.uint32(obj.height, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.uint32(obj.width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FacialLandmarks
    let len;
    let data = new FacialLandmarks(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [landmarks]
    // Deserialize array length for message field [landmarks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmarks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmarks[i] = NormalizedPointOfInterest2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [height]
    data.height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 12 * object.landmarks.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hri_msgs/FacialLandmarks';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c779d9fd02c1af8ab6a1712921ab9da5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains a list of facial features detected on a face
    # (0, 0) is at top-left corner of image
    # Features' coordinates are expressed in normalised pixel coordinates 
    # (in the range [0., 1.]), from the top-left corner.
    Header header
    
    # Facial landmarks codes
    # Follows dlib and OpenPose convention
    # https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/doc/02_output.md#face-output-format
    uint8 RIGHT_EAR=0
    uint8 RIGHT_PROFILE_1=1
    uint8 RIGHT_PROFILE_2=2
    uint8 RIGHT_PROFILE_3=3
    uint8 RIGHT_PROFILE_4=4
    uint8 RIGHT_PROFILE_5=5
    uint8 RIGHT_PROFILE_6=6
    uint8 RIGHT_PROFILE_7=7
    
    uint8 MENTON=8
    
    uint8 LEFT_EAR=16
    uint8 LEFT_PROFILE_1=15
    uint8 LEFT_PROFILE_2=14
    uint8 LEFT_PROFILE_3=13
    uint8 LEFT_PROFILE_4=12
    uint8 LEFT_PROFILE_5=11
    uint8 LEFT_PROFILE_6=10
    uint8 LEFT_PROFILE_7=9
    
    uint8 RIGHT_EYEBROW_OUTSIDE=17
    uint8 RIGHT_EYEBROW_1=18
    uint8 RIGHT_EYEBROW_2=19
    uint8 RIGHT_EYEBROW_3=20
    uint8 RIGHT_EYEBROW_INSIDE=21
    
    uint8 RIGHT_EYE_OUTSIDE=36
    uint8 RIGHT_EYE_TOP_1=37
    uint8 RIGHT_EYE_TOP_2=38
    uint8 RIGHT_EYE_INSIDE=39
    uint8 RIGHT_EYE_BOTTOM_1=41
    uint8 RIGHT_EYE_BOTTOM_2=40
    
    uint8 RIGHT_PUPIL=68
    
    uint8 LEFT_EYEBROW_OUTSIDE=26
    uint8 LEFT_EYEBROW_1=25
    uint8 LEFT_EYEBROW_2=24
    uint8 LEFT_EYEBROW_3=23
    uint8 LEFT_EYEBROW_INSIDE=22
    
    uint8 LEFT_EYE_OUTSIDE=45
    uint8 LEFT_EYE_TOP_1=44
    uint8 LEFT_EYE_TOP_2=43
    uint8 LEFT_EYE_INSIDE=42
    uint8 LEFT_EYE_BOTTOM_1=46
    uint8 LEFT_EYE_BOTTOM_2=47
    
    uint8 LEFT_PUPIL=69
    
    uint8 SELLION=27
    uint8 NOSE_1=28
    uint8 NOSE_2=29
    uint8 NOSE=30
    
    uint8 NOSTRIL_1=31
    uint8 NOSTRIL_2=32
    uint8 NOSTRIL_3=33
    uint8 NOSTRIL_4=34
    uint8 NOSTRIL_5=35
    
    uint8 MOUTH_OUTER_RIGHT=48
    uint8 MOUTH_OUTER_TOP_1=49
    uint8 MOUTH_OUTER_TOP_2=50
    uint8 MOUTH_OUTER_TOP_3=51
    uint8 MOUTH_OUTER_TOP_4=52
    uint8 MOUTH_OUTER_TOP_5=53
    uint8 MOUTH_OUTER_LEFT=54
    uint8 MOUTH_OUTER_BOTTOM_1=59
    uint8 MOUTH_OUTER_BOTTOM_2=58
    uint8 MOUTH_OUTER_BOTTOM_3=57
    uint8 MOUTH_OUTER_BOTTOM_4=56
    uint8 MOUTH_OUTER_BOTTOM_5=55
    
    uint8 MOUTH_INNER_RIGHT=60
    uint8 MOUTH_INNER_TOP_1=61
    uint8 MOUTH_INNER_TOP_2=62
    uint8 MOUTH_INNER_TOP_3=63
    uint8 MOUTH_INNER_LEFT=64
    uint8 MOUTH_INNER_BOTTOM_1=67
    uint8 MOUTH_INNER_BOTTOM_2=66
    uint8 MOUTH_INNER_BOTTOM_3=65
    
    # array of 70 landmark normalized coordinates, one per landmark, ordered per landmarks codes
    NormalizedPointOfInterest2D[] landmarks
    
    uint32 height # image height in pixels, that is, number of rows
    uint32 width # image width in pixels, that is, number of columns
    
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
    const resolved = new FacialLandmarks(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.landmarks !== undefined) {
      resolved.landmarks = new Array(msg.landmarks.length);
      for (let i = 0; i < resolved.landmarks.length; ++i) {
        resolved.landmarks[i] = NormalizedPointOfInterest2D.Resolve(msg.landmarks[i]);
      }
    }
    else {
      resolved.landmarks = []
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    return resolved;
    }
};

// Constants for message
FacialLandmarks.Constants = {
  RIGHT_EAR: 0,
  RIGHT_PROFILE_1: 1,
  RIGHT_PROFILE_2: 2,
  RIGHT_PROFILE_3: 3,
  RIGHT_PROFILE_4: 4,
  RIGHT_PROFILE_5: 5,
  RIGHT_PROFILE_6: 6,
  RIGHT_PROFILE_7: 7,
  MENTON: 8,
  LEFT_EAR: 16,
  LEFT_PROFILE_1: 15,
  LEFT_PROFILE_2: 14,
  LEFT_PROFILE_3: 13,
  LEFT_PROFILE_4: 12,
  LEFT_PROFILE_5: 11,
  LEFT_PROFILE_6: 10,
  LEFT_PROFILE_7: 9,
  RIGHT_EYEBROW_OUTSIDE: 17,
  RIGHT_EYEBROW_1: 18,
  RIGHT_EYEBROW_2: 19,
  RIGHT_EYEBROW_3: 20,
  RIGHT_EYEBROW_INSIDE: 21,
  RIGHT_EYE_OUTSIDE: 36,
  RIGHT_EYE_TOP_1: 37,
  RIGHT_EYE_TOP_2: 38,
  RIGHT_EYE_INSIDE: 39,
  RIGHT_EYE_BOTTOM_1: 41,
  RIGHT_EYE_BOTTOM_2: 40,
  RIGHT_PUPIL: 68,
  LEFT_EYEBROW_OUTSIDE: 26,
  LEFT_EYEBROW_1: 25,
  LEFT_EYEBROW_2: 24,
  LEFT_EYEBROW_3: 23,
  LEFT_EYEBROW_INSIDE: 22,
  LEFT_EYE_OUTSIDE: 45,
  LEFT_EYE_TOP_1: 44,
  LEFT_EYE_TOP_2: 43,
  LEFT_EYE_INSIDE: 42,
  LEFT_EYE_BOTTOM_1: 46,
  LEFT_EYE_BOTTOM_2: 47,
  LEFT_PUPIL: 69,
  SELLION: 27,
  NOSE_1: 28,
  NOSE_2: 29,
  NOSE: 30,
  NOSTRIL_1: 31,
  NOSTRIL_2: 32,
  NOSTRIL_3: 33,
  NOSTRIL_4: 34,
  NOSTRIL_5: 35,
  MOUTH_OUTER_RIGHT: 48,
  MOUTH_OUTER_TOP_1: 49,
  MOUTH_OUTER_TOP_2: 50,
  MOUTH_OUTER_TOP_3: 51,
  MOUTH_OUTER_TOP_4: 52,
  MOUTH_OUTER_TOP_5: 53,
  MOUTH_OUTER_LEFT: 54,
  MOUTH_OUTER_BOTTOM_1: 59,
  MOUTH_OUTER_BOTTOM_2: 58,
  MOUTH_OUTER_BOTTOM_3: 57,
  MOUTH_OUTER_BOTTOM_4: 56,
  MOUTH_OUTER_BOTTOM_5: 55,
  MOUTH_INNER_RIGHT: 60,
  MOUTH_INNER_TOP_1: 61,
  MOUTH_INNER_TOP_2: 62,
  MOUTH_INNER_TOP_3: 63,
  MOUTH_INNER_LEFT: 64,
  MOUTH_INNER_BOTTOM_1: 67,
  MOUTH_INNER_BOTTOM_2: 66,
  MOUTH_INNER_BOTTOM_3: 65,
}

module.exports = FacialLandmarks;
