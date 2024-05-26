// Auto-generated. Do not edit!

// (in-package py_trees_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetBlackboardVariablesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBlackboardVariablesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBlackboardVariablesRequest
    let len;
    let data = new GetBlackboardVariablesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'py_trees_msgs/GetBlackboardVariablesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Retrieve a list of variables currently available in the blackboard.
    # This is primarily used as a utility for the blackboard watcher (find what
    # variables are available without the entire spam of the blackboard contents
    # before proceeding to watch a subset of these.
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBlackboardVariablesRequest(null);
    return resolved;
    }
};

class GetBlackboardVariablesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.variables = null;
    }
    else {
      if (initObj.hasOwnProperty('variables')) {
        this.variables = initObj.variables
      }
      else {
        this.variables = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBlackboardVariablesResponse
    // Serialize message field [variables]
    bufferOffset = _arraySerializer.string(obj.variables, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBlackboardVariablesResponse
    let len;
    let data = new GetBlackboardVariablesResponse(null);
    // Deserialize message field [variables]
    data.variables = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.variables.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'py_trees_msgs/GetBlackboardVariablesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f184382c36d538fab610317191b119e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] variables
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBlackboardVariablesResponse(null);
    if (msg.variables !== undefined) {
      resolved.variables = msg.variables;
    }
    else {
      resolved.variables = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetBlackboardVariablesRequest,
  Response: GetBlackboardVariablesResponse,
  md5sum() { return '8f184382c36d538fab610317191b119e'; },
  datatype() { return 'py_trees_msgs/GetBlackboardVariables'; }
};
