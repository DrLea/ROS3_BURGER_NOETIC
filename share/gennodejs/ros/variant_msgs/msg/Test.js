// Auto-generated. Do not edit!

// (in-package variant_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Test {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.builtin_int = null;
      this.builtin_boolean = null;
      this.boolean = null;
      this.builtin_string = null;
      this.string = null;
      this.builtin_int_array = null;
      this.builtin_int_vector = null;
      this.string_array = null;
      this.string_vector = null;
      this.builtin_boolean_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('builtin_int')) {
        this.builtin_int = initObj.builtin_int
      }
      else {
        this.builtin_int = 0;
      }
      if (initObj.hasOwnProperty('builtin_boolean')) {
        this.builtin_boolean = initObj.builtin_boolean
      }
      else {
        this.builtin_boolean = false;
      }
      if (initObj.hasOwnProperty('boolean')) {
        this.boolean = initObj.boolean
      }
      else {
        this.boolean = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('builtin_string')) {
        this.builtin_string = initObj.builtin_string
      }
      else {
        this.builtin_string = '';
      }
      if (initObj.hasOwnProperty('string')) {
        this.string = initObj.string
      }
      else {
        this.string = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('builtin_int_array')) {
        this.builtin_int_array = initObj.builtin_int_array
      }
      else {
        this.builtin_int_array = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('builtin_int_vector')) {
        this.builtin_int_vector = initObj.builtin_int_vector
      }
      else {
        this.builtin_int_vector = [];
      }
      if (initObj.hasOwnProperty('string_array')) {
        this.string_array = initObj.string_array
      }
      else {
        this.string_array = new Array(3).fill(new std_msgs.msg.String());
      }
      if (initObj.hasOwnProperty('string_vector')) {
        this.string_vector = initObj.string_vector
      }
      else {
        this.string_vector = [];
      }
      if (initObj.hasOwnProperty('builtin_boolean_array')) {
        this.builtin_boolean_array = initObj.builtin_boolean_array
      }
      else {
        this.builtin_boolean_array = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Test
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [builtin_int]
    bufferOffset = _serializer.int32(obj.builtin_int, buffer, bufferOffset);
    // Serialize message field [builtin_boolean]
    bufferOffset = _serializer.bool(obj.builtin_boolean, buffer, bufferOffset);
    // Serialize message field [boolean]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.boolean, buffer, bufferOffset);
    // Serialize message field [builtin_string]
    bufferOffset = _serializer.string(obj.builtin_string, buffer, bufferOffset);
    // Serialize message field [string]
    bufferOffset = std_msgs.msg.String.serialize(obj.string, buffer, bufferOffset);
    // Check that the constant length array field [builtin_int_array] has the right length
    if (obj.builtin_int_array.length !== 3) {
      throw new Error('Unable to serialize array field builtin_int_array - length must be 3')
    }
    // Serialize message field [builtin_int_array]
    bufferOffset = _arraySerializer.int32(obj.builtin_int_array, buffer, bufferOffset, 3);
    // Serialize message field [builtin_int_vector]
    bufferOffset = _arraySerializer.int32(obj.builtin_int_vector, buffer, bufferOffset, null);
    // Check that the constant length array field [string_array] has the right length
    if (obj.string_array.length !== 3) {
      throw new Error('Unable to serialize array field string_array - length must be 3')
    }
    // Serialize message field [string_array]
    obj.string_array.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [string_vector]
    // Serialize the length for message field [string_vector]
    bufferOffset = _serializer.uint32(obj.string_vector.length, buffer, bufferOffset);
    obj.string_vector.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [builtin_boolean_array] has the right length
    if (obj.builtin_boolean_array.length !== 3) {
      throw new Error('Unable to serialize array field builtin_boolean_array - length must be 3')
    }
    // Serialize message field [builtin_boolean_array]
    bufferOffset = _arraySerializer.bool(obj.builtin_boolean_array, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Test
    let len;
    let data = new Test(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [builtin_int]
    data.builtin_int = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [builtin_boolean]
    data.builtin_boolean = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [boolean]
    data.boolean = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [builtin_string]
    data.builtin_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [string]
    data.string = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [builtin_int_array]
    data.builtin_int_array = _arrayDeserializer.int32(buffer, bufferOffset, 3)
    // Deserialize message field [builtin_int_vector]
    data.builtin_int_vector = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [string_array]
    len = 3;
    data.string_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.string_array[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [string_vector]
    // Deserialize array length for message field [string_vector]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.string_vector = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.string_vector[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [builtin_boolean_array]
    data.builtin_boolean_array = _arrayDeserializer.bool(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.builtin_string);
    length += std_msgs.msg.String.getMessageSize(object.string);
    length += 4 * object.builtin_int_vector.length;
    object.string_array.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    object.string_vector.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'variant_msgs/Test';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17d92d9cea3499753cb392766b3203a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Test message for the variant topic tools
    Header header
    uint8 byte_constant = 42
    int32 builtin_int
    bool builtin_boolean
    std_msgs/Bool boolean
    string builtin_string
    std_msgs/String string
    int32[3] builtin_int_array
    int32[] builtin_int_vector
    std_msgs/String[3] string_array
    std_msgs/String[] string_vector
    bool[3] builtin_boolean_array
    
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
    MSG: std_msgs/Bool
    bool data
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Test(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.builtin_int !== undefined) {
      resolved.builtin_int = msg.builtin_int;
    }
    else {
      resolved.builtin_int = 0
    }

    if (msg.builtin_boolean !== undefined) {
      resolved.builtin_boolean = msg.builtin_boolean;
    }
    else {
      resolved.builtin_boolean = false
    }

    if (msg.boolean !== undefined) {
      resolved.boolean = std_msgs.msg.Bool.Resolve(msg.boolean)
    }
    else {
      resolved.boolean = new std_msgs.msg.Bool()
    }

    if (msg.builtin_string !== undefined) {
      resolved.builtin_string = msg.builtin_string;
    }
    else {
      resolved.builtin_string = ''
    }

    if (msg.string !== undefined) {
      resolved.string = std_msgs.msg.String.Resolve(msg.string)
    }
    else {
      resolved.string = new std_msgs.msg.String()
    }

    if (msg.builtin_int_array !== undefined) {
      resolved.builtin_int_array = msg.builtin_int_array;
    }
    else {
      resolved.builtin_int_array = new Array(3).fill(0)
    }

    if (msg.builtin_int_vector !== undefined) {
      resolved.builtin_int_vector = msg.builtin_int_vector;
    }
    else {
      resolved.builtin_int_vector = []
    }

    if (msg.string_array !== undefined) {
      resolved.string_array = new Array(3)
      for (let i = 0; i < resolved.string_array.length; ++i) {
        if (msg.string_array.length > i) {
          resolved.string_array[i] = std_msgs.msg.String.Resolve(msg.string_array[i]);
        }
        else {
          resolved.string_array[i] = new std_msgs.msg.String();
        }
      }
    }
    else {
      resolved.string_array = new Array(3).fill(new std_msgs.msg.String())
    }

    if (msg.string_vector !== undefined) {
      resolved.string_vector = new Array(msg.string_vector.length);
      for (let i = 0; i < resolved.string_vector.length; ++i) {
        resolved.string_vector[i] = std_msgs.msg.String.Resolve(msg.string_vector[i]);
      }
    }
    else {
      resolved.string_vector = []
    }

    if (msg.builtin_boolean_array !== undefined) {
      resolved.builtin_boolean_array = msg.builtin_boolean_array;
    }
    else {
      resolved.builtin_boolean_array = new Array(3).fill(0)
    }

    return resolved;
    }
};

// Constants for message
Test.Constants = {
  BYTE_CONSTANT: 42,
}

module.exports = Test;
