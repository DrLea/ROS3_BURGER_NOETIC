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

class Expression {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.expression = null;
      this.valence = null;
      this.arousal = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('expression')) {
        this.expression = initObj.expression
      }
      else {
        this.expression = '';
      }
      if (initObj.hasOwnProperty('valence')) {
        this.valence = initObj.valence
      }
      else {
        this.valence = 0.0;
      }
      if (initObj.hasOwnProperty('arousal')) {
        this.arousal = initObj.arousal
      }
      else {
        this.arousal = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Expression
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [expression]
    bufferOffset = _serializer.string(obj.expression, buffer, bufferOffset);
    // Serialize message field [valence]
    bufferOffset = _serializer.float32(obj.valence, buffer, bufferOffset);
    // Serialize message field [arousal]
    bufferOffset = _serializer.float32(obj.arousal, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Expression
    let len;
    let data = new Expression(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [expression]
    data.expression = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [valence]
    data.valence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arousal]
    data.arousal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.expression);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hri_msgs/Expression';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0f698742672d3238cdc31c07c7d835b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Represents a human facial expression, either in a categorical way, or
    # using the valence/arousal model of emotions
    Header header
    
    # the list of expressions is based on Chambers MSc thesis, Bristol Robotics Lab 2020, and includes the six basic emotions in Eckman's model.
    #
    # Note that a node making use of this message definition is not supposed or
    # expected to handle all listed expressions.
    #
    # This list might change based on future needs/requests.
    
    string NEUTRAL="neutral"
    string ANGRY="angry"
    string SAD="sad"
    string HAPPY="happy"
    string SURPRISED="surprised"
    string DISGUSTED="disgusted"
    string SCARED="scared"
    string PLEADING="pleading"
    string VULNERABLE="vulnerable"
    string DESPAIRED="despaired"
    string GUILTY="guilty"
    string DISAPPOINTED="disappointed"
    string EMBARRASSED="embarrassed"
    string HORRIFIED="horrified"
    string SKEPTICAL="skeptical"
    string ANNOYED="annoyed"
    string FURIOUS="furious"
    string SUSPICIOUS="suspicious"
    string REJECTED="rejected"
    string BORED="bored"
    string TIRED="tired"
    string ASLEEP="asleep"
    string CONFUSED="confused"
    string AMAZED="amazed"
    string EXCITED="excited"
    
    string expression # one of the listed expressions
    
    # Valence/Arousal model of emotions
    float32 valence # from -1.0 to +1.0
    float32 arousal # from -1.0 to +1.0
    
    float32 confidence # from 0.0 to 1.0
    
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
    const resolved = new Expression(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.expression !== undefined) {
      resolved.expression = msg.expression;
    }
    else {
      resolved.expression = ''
    }

    if (msg.valence !== undefined) {
      resolved.valence = msg.valence;
    }
    else {
      resolved.valence = 0.0
    }

    if (msg.arousal !== undefined) {
      resolved.arousal = msg.arousal;
    }
    else {
      resolved.arousal = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

// Constants for message
Expression.Constants = {
  NEUTRAL: '"neutral"',
  ANGRY: '"angry"',
  SAD: '"sad"',
  HAPPY: '"happy"',
  SURPRISED: '"surprised"',
  DISGUSTED: '"disgusted"',
  SCARED: '"scared"',
  PLEADING: '"pleading"',
  VULNERABLE: '"vulnerable"',
  DESPAIRED: '"despaired"',
  GUILTY: '"guilty"',
  DISAPPOINTED: '"disappointed"',
  EMBARRASSED: '"embarrassed"',
  HORRIFIED: '"horrified"',
  SKEPTICAL: '"skeptical"',
  ANNOYED: '"annoyed"',
  FURIOUS: '"furious"',
  SUSPICIOUS: '"suspicious"',
  REJECTED: '"rejected"',
  BORED: '"bored"',
  TIRED: '"tired"',
  ASLEEP: '"asleep"',
  CONFUSED: '"confused"',
  AMAZED: '"amazed"',
  EXCITED: '"excited"',
}

module.exports = Expression;
