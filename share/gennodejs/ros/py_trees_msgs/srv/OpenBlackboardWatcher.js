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

class OpenBlackboardWatcherRequest {
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
    // Serializes a message object of type OpenBlackboardWatcherRequest
    // Serialize message field [variables]
    bufferOffset = _arraySerializer.string(obj.variables, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OpenBlackboardWatcherRequest
    let len;
    let data = new OpenBlackboardWatcherRequest(null);
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
    return 'py_trees_msgs/OpenBlackboardWatcherRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f184382c36d538fab610317191b119e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Specify a list of variables to watch on the blackboard. These
    # can be nested variables (e.g. get only the position in an odom
    # message). Typically this is not used directly, but by the
    # blackboard watcher utility
    
    # list of variables to watch
    string[] variables
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OpenBlackboardWatcherRequest(null);
    if (msg.variables !== undefined) {
      resolved.variables = msg.variables;
    }
    else {
      resolved.variables = []
    }

    return resolved;
    }
};

class OpenBlackboardWatcherResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic = null;
    }
    else {
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OpenBlackboardWatcherResponse
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OpenBlackboardWatcherResponse
    let len;
    let data = new OpenBlackboardWatcherResponse(null);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'py_trees_msgs/OpenBlackboardWatcherResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8f94bae31b356b24d0427f80426d0c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # topic name that is dynamically created for watching
    string topic
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OpenBlackboardWatcherResponse(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: OpenBlackboardWatcherRequest,
  Response: OpenBlackboardWatcherResponse,
  md5sum() { return '4ed40443479f1f30fe6cf433b04df9b6'; },
  datatype() { return 'py_trees_msgs/OpenBlackboardWatcher'; }
};
