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

class IdsMatch {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id1 = null;
      this.id1_type = null;
      this.id2 = null;
      this.id2_type = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('id1')) {
        this.id1 = initObj.id1
      }
      else {
        this.id1 = '';
      }
      if (initObj.hasOwnProperty('id1_type')) {
        this.id1_type = initObj.id1_type
      }
      else {
        this.id1_type = 0;
      }
      if (initObj.hasOwnProperty('id2')) {
        this.id2 = initObj.id2
      }
      else {
        this.id2 = '';
      }
      if (initObj.hasOwnProperty('id2_type')) {
        this.id2_type = initObj.id2_type
      }
      else {
        this.id2_type = 0;
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
    // Serializes a message object of type IdsMatch
    // Serialize message field [id1]
    bufferOffset = _serializer.string(obj.id1, buffer, bufferOffset);
    // Serialize message field [id1_type]
    bufferOffset = _serializer.int8(obj.id1_type, buffer, bufferOffset);
    // Serialize message field [id2]
    bufferOffset = _serializer.string(obj.id2, buffer, bufferOffset);
    // Serialize message field [id2_type]
    bufferOffset = _serializer.int8(obj.id2_type, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IdsMatch
    let len;
    let data = new IdsMatch(null);
    // Deserialize message field [id1]
    data.id1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id1_type]
    data.id1_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [id2]
    data.id2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id2_type]
    data.id2_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id1);
    length += _getByteLength(object.id2);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hri_msgs/IdsMatch';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47ee5557c84afd004bec4ac7f5fa56f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message encodes possible matches between transient IDs (face, body,
    # voice) and permanent IDs (person), with their corresponding confidence level.
    # Such messages should be published on the /humans/candidate_matches topic.
    #
    # confidence == 0.0 has the special meaning of: those two IDs are *not* associated.
    # This can be use for instance if one of the ID (eg, a face id) is not valid anymore
    # (face not tracked anymore)
    #
    # Note that setting only one of `id1` or `id2` is invalid. Likewise, `id1` and
    # `id2` can not be equal.
    #
    # ## Examples
    #
    # For instance, a face recognition module might publish the following message
    # to indicate that face 'a3eb4' has been recognised with 63% confidence as
    # person 'b31ad':
    #
    # {id1: 'a3eb4', id1_type: FACE, id2: 'b31ad', id2_type: PERSON, confidence:
    # 0.63, }
    #
    # Another example: a module that detect both faces and skeleton might publish a
    # 100% confidence match between the two:
    #
    # {id1: 'ff424', id1_type: FACE, id2: '850d1', id2_type: BODY, confidence:
    # 1.0, }
    #
    
    int8 UNSET=0
    int8 PERSON=1
    int8 FACE=2
    int8 BODY=3
    int8 VOICE=4
    
    string id1
    int8 id1_type
    string id2
    int8 id2_type
    
    float32 confidence
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IdsMatch(null);
    if (msg.id1 !== undefined) {
      resolved.id1 = msg.id1;
    }
    else {
      resolved.id1 = ''
    }

    if (msg.id1_type !== undefined) {
      resolved.id1_type = msg.id1_type;
    }
    else {
      resolved.id1_type = 0
    }

    if (msg.id2 !== undefined) {
      resolved.id2 = msg.id2;
    }
    else {
      resolved.id2 = ''
    }

    if (msg.id2_type !== undefined) {
      resolved.id2_type = msg.id2_type;
    }
    else {
      resolved.id2_type = 0
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
IdsMatch.Constants = {
  UNSET: 0,
  PERSON: 1,
  FACE: 2,
  BODY: 3,
  VOICE: 4,
}

module.exports = IdsMatch;
