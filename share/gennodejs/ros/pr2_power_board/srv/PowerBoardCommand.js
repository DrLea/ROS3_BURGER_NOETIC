// Auto-generated. Do not edit!

// (in-package pr2_power_board.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PowerBoardCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.serial_number = null;
      this.breaker_number = null;
      this.command = null;
      this.flags = null;
    }
    else {
      if (initObj.hasOwnProperty('serial_number')) {
        this.serial_number = initObj.serial_number
      }
      else {
        this.serial_number = 0;
      }
      if (initObj.hasOwnProperty('breaker_number')) {
        this.breaker_number = initObj.breaker_number
      }
      else {
        this.breaker_number = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerBoardCommandRequest
    // Serialize message field [serial_number]
    bufferOffset = _serializer.uint32(obj.serial_number, buffer, bufferOffset);
    // Serialize message field [breaker_number]
    bufferOffset = _serializer.int32(obj.breaker_number, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint32(obj.flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerBoardCommandRequest
    let len;
    let data = new PowerBoardCommandRequest(null);
    // Deserialize message field [serial_number]
    data.serial_number = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [breaker_number]
    data.breaker_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.command);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pr2_power_board/PowerBoardCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c621f5309bca0033e8eaef81c31500a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 serial_number #serial number of the board to control
    int32 breaker_number ## 0=Base, 1=RightArm 2=LeftArm
    string command  # Options start, stop, reset, disable, none
    uint32 flags
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerBoardCommandRequest(null);
    if (msg.serial_number !== undefined) {
      resolved.serial_number = msg.serial_number;
    }
    else {
      resolved.serial_number = 0
    }

    if (msg.breaker_number !== undefined) {
      resolved.breaker_number = msg.breaker_number;
    }
    else {
      resolved.breaker_number = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    return resolved;
    }
};

class PowerBoardCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.retval = null;
    }
    else {
      if (initObj.hasOwnProperty('retval')) {
        this.retval = initObj.retval
      }
      else {
        this.retval = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerBoardCommandResponse
    // Serialize message field [retval]
    bufferOffset = _serializer.int32(obj.retval, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerBoardCommandResponse
    let len;
    let data = new PowerBoardCommandResponse(null);
    // Deserialize message field [retval]
    data.retval = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pr2_power_board/PowerBoardCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5697a1e05c2a3e1c23cab49a31319ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 retval # 0 = false, 1=true
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerBoardCommandResponse(null);
    if (msg.retval !== undefined) {
      resolved.retval = msg.retval;
    }
    else {
      resolved.retval = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: PowerBoardCommandRequest,
  Response: PowerBoardCommandResponse,
  md5sum() { return 'd9e38de783aa7edc3146446518e85af2'; },
  datatype() { return 'pr2_power_board/PowerBoardCommand'; }
};
