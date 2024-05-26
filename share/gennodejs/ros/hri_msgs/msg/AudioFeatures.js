// Auto-generated. Do not edit!

// (in-package hri_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AudioFeatures {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ZCR = null;
      this.RMS = null;
      this.pitch = null;
      this.HNR = null;
      this.MFCC = null;
    }
    else {
      if (initObj.hasOwnProperty('ZCR')) {
        this.ZCR = initObj.ZCR
      }
      else {
        this.ZCR = 0.0;
      }
      if (initObj.hasOwnProperty('RMS')) {
        this.RMS = initObj.RMS
      }
      else {
        this.RMS = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('HNR')) {
        this.HNR = initObj.HNR
      }
      else {
        this.HNR = 0.0;
      }
      if (initObj.hasOwnProperty('MFCC')) {
        this.MFCC = initObj.MFCC
      }
      else {
        this.MFCC = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AudioFeatures
    // Serialize message field [ZCR]
    bufferOffset = _serializer.float32(obj.ZCR, buffer, bufferOffset);
    // Serialize message field [RMS]
    bufferOffset = _serializer.float32(obj.RMS, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [HNR]
    bufferOffset = _serializer.float32(obj.HNR, buffer, bufferOffset);
    // Serialize message field [MFCC]
    bufferOffset = _arraySerializer.float32(obj.MFCC, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AudioFeatures
    let len;
    let data = new AudioFeatures(null);
    // Deserialize message field [ZCR]
    data.ZCR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RMS]
    data.RMS = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [HNR]
    data.HNR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [MFCC]
    data.MFCC = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.MFCC.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hri_msgs/AudioFeatures';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1942f4cd8b6bb147f1ccb9aded9b6535';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message encodes the 16 audio features selected
    # in the INTERSPEECH2009 challenge.
    # 
    # Reference: Schuller, Steidl, Batliner, The INTERSPEECH 2009 Emotion Challenge
    # 
    # They can be extract using the OpenSMILE toolkit with the present
    # IS09_emotion.conf
    
    float32 ZCR # zero-crossing rate from the time signal
    float32 RMS # root mean square frame energy
    float32 pitch # pitch frequency (normalised to 500 Hz)
    float32 HNR # harmonics-to-noise ratio by autocorrelation function
    float32[] MFCC # mel-frequency cepstral coefficients 1 to 12
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AudioFeatures(null);
    if (msg.ZCR !== undefined) {
      resolved.ZCR = msg.ZCR;
    }
    else {
      resolved.ZCR = 0.0
    }

    if (msg.RMS !== undefined) {
      resolved.RMS = msg.RMS;
    }
    else {
      resolved.RMS = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.HNR !== undefined) {
      resolved.HNR = msg.HNR;
    }
    else {
      resolved.HNR = 0.0
    }

    if (msg.MFCC !== undefined) {
      resolved.MFCC = msg.MFCC;
    }
    else {
      resolved.MFCC = []
    }

    return resolved;
    }
};

module.exports = AudioFeatures;
