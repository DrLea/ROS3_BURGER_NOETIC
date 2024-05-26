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

class PowerBoardCommand2Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.circuit = null;
      this.command = null;
      this.reset_stats = null;
      this.reset_circuits = null;
    }
    else {
      if (initObj.hasOwnProperty('circuit')) {
        this.circuit = initObj.circuit
      }
      else {
        this.circuit = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('reset_stats')) {
        this.reset_stats = initObj.reset_stats
      }
      else {
        this.reset_stats = false;
      }
      if (initObj.hasOwnProperty('reset_circuits')) {
        this.reset_circuits = initObj.reset_circuits
      }
      else {
        this.reset_circuits = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerBoardCommand2Request
    // Serialize message field [circuit]
    bufferOffset = _serializer.int32(obj.circuit, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [reset_stats]
    bufferOffset = _serializer.bool(obj.reset_stats, buffer, bufferOffset);
    // Serialize message field [reset_circuits]
    bufferOffset = _serializer.bool(obj.reset_circuits, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerBoardCommand2Request
    let len;
    let data = new PowerBoardCommand2Request(null);
    // Deserialize message field [circuit]
    data.circuit = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [reset_stats]
    data.reset_stats = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset_circuits]
    data.reset_circuits = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.command);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pr2_power_board/PowerBoardCommand2Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a31aee1db4294698375ff2a8cf53fea5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 NUMBER_OF_CIRCUITS = 3
    #
    # Select which circuit to command
    #
    int32 circuit
    #
    # Defined circuits
    #
    int32 BASE      = 0
    int32 RIGHT_ARM = 1
    int32 LEFT_ARM  = 2
    #
    # Command to send to circuit:
    # command = start, stop, reset, disable, none
    #
    string command  
    #
    # reset the latched voltage and current statistics
    bool reset_stats
    #
    # reset the latched stats for each circuit
    bool reset_circuits
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerBoardCommand2Request(null);
    if (msg.circuit !== undefined) {
      resolved.circuit = msg.circuit;
    }
    else {
      resolved.circuit = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.reset_stats !== undefined) {
      resolved.reset_stats = msg.reset_stats;
    }
    else {
      resolved.reset_stats = false
    }

    if (msg.reset_circuits !== undefined) {
      resolved.reset_circuits = msg.reset_circuits;
    }
    else {
      resolved.reset_circuits = false
    }

    return resolved;
    }
};

// Constants for message
PowerBoardCommand2Request.Constants = {
  NUMBER_OF_CIRCUITS: 3,
  BASE: 0,
  RIGHT_ARM: 1,
  LEFT_ARM: 2,
}

class PowerBoardCommand2Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerBoardCommand2Response
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerBoardCommand2Response
    let len;
    let data = new PowerBoardCommand2Response(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pr2_power_board/PowerBoardCommand2Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # return if the command was successfully sent
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerBoardCommand2Response(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: PowerBoardCommand2Request,
  Response: PowerBoardCommand2Response,
  md5sum() { return '4f143c27e05688798e6220ba69c6906a'; },
  datatype() { return 'pr2_power_board/PowerBoardCommand2'; }
};
