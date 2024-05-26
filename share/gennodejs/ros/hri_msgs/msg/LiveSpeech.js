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

class LiveSpeech {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.incremental = null;
      this.final = null;
      this.confidence = null;
      this.language = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('incremental')) {
        this.incremental = initObj.incremental
      }
      else {
        this.incremental = '';
      }
      if (initObj.hasOwnProperty('final')) {
        this.final = initObj.final
      }
      else {
        this.final = '';
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LiveSpeech
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [incremental]
    bufferOffset = _serializer.string(obj.incremental, buffer, bufferOffset);
    // Serialize message field [final]
    bufferOffset = _serializer.string(obj.final, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [language]
    bufferOffset = _serializer.string(obj.language, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LiveSpeech
    let len;
    let data = new LiveSpeech(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [incremental]
    data.incremental = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [final]
    data.final = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [language]
    data.language = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.incremental);
    length += _getByteLength(object.final);
    length += _getByteLength(object.language);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hri_msgs/LiveSpeech';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '691fad051ce92a736be494854c99c2d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message encodes the live result of a speech recognition process.
    # A series of incremental results might be provided, until a final recognition
    # hypothesis is returned.
    
    Header header
    
    string incremental # incremental recognition results
    string final # final recognised text
    
    float64 confidence # confidence of the final recognised speech, [0-1]
    
    string language # IETF language code, e.g. 'en-GB'
    
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
    const resolved = new LiveSpeech(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.incremental !== undefined) {
      resolved.incremental = msg.incremental;
    }
    else {
      resolved.incremental = ''
    }

    if (msg.final !== undefined) {
      resolved.final = msg.final;
    }
    else {
      resolved.final = ''
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.language !== undefined) {
      resolved.language = msg.language;
    }
    else {
      resolved.language = ''
    }

    return resolved;
    }
};

module.exports = LiveSpeech;
