// Auto-generated. Do not edit!

// (in-package variant_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VariantHeader = require('./VariantHeader.js');
let VariantType = require('./VariantType.js');

//-----------------------------------------------------------

class Variant {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new VariantHeader();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new VariantType();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Variant
    // Serialize message field [header]
    bufferOffset = VariantHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = VariantType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Variant
    let len;
    let data = new Variant(null);
    // Deserialize message field [header]
    data.header = VariantHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = VariantType.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += VariantHeader.getMessageSize(object.header);
    length += VariantType.getMessageSize(object.type);
    length += object.data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'variant_msgs/Variant';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01c24cd44ef34b0c6a309bcafb6bdfab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VariantHeader header                    # Variant header
    
    VariantType type                        # Variant type information
    uint8[] data                            # Binary message data
    
    ================================================================================
    MSG: variant_msgs/VariantHeader
    string publisher              # Name of the publishing node
    string topic                  # Message publishing topic
    bool latched                  # If true, the message publication is latched
    
    ================================================================================
    MSG: variant_msgs/VariantType
    string md5_sum                # Message type md5sum
    string data_type              # Message data type
    string definition             # Message definition
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Variant(null);
    if (msg.header !== undefined) {
      resolved.header = VariantHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new VariantHeader()
    }

    if (msg.type !== undefined) {
      resolved.type = VariantType.Resolve(msg.type)
    }
    else {
      resolved.type = new VariantType()
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = Variant;
