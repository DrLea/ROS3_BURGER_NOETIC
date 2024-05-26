// Auto-generated. Do not edit!

// (in-package py_trees_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Behaviour = require('./Behaviour.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BehaviourTree {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.behaviours = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('behaviours')) {
        this.behaviours = initObj.behaviours
      }
      else {
        this.behaviours = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BehaviourTree
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [behaviours]
    // Serialize the length for message field [behaviours]
    bufferOffset = _serializer.uint32(obj.behaviours.length, buffer, bufferOffset);
    obj.behaviours.forEach((val) => {
      bufferOffset = Behaviour.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BehaviourTree
    let len;
    let data = new BehaviourTree(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [behaviours]
    // Deserialize array length for message field [behaviours]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.behaviours = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.behaviours[i] = Behaviour.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.behaviours.forEach((val) => {
      length += Behaviour.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'py_trees_msgs/BehaviourTree';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e45966d310b941f92c522db8baac203';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Behaviour[] behaviours
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
    MSG: py_trees_msgs/Behaviour
    # Possible behaviour states
    uint8 INVALID = 1
    uint8 RUNNING = 2
    uint8 SUCCESS = 3
    uint8 FAILURE = 4
    
    # Possible types of behaviour
    uint8 UNKNOWN_TYPE = 0
    uint8 BEHAVIOUR = 1
    uint8 SEQUENCE = 2
    uint8 SELECTOR = 3
    uint8 PARALLEL = 4
    uint8 CHOOSER = 5
    uint8 DECORATOR = 6
    
    # Blackbox Level - these must match what is in py_trees.common.BlackBoxLevel
    uint8 BLACKBOX_LEVEL_DETAIL = 1
    uint8 BLACKBOX_LEVEL_COMPONENT = 2
    uint8 BLACKBOX_LEVEL_BIG_PICTURE = 3
    uint8 BLACKBOX_LEVEL_NOT_A_BLACKBOX = 4
    
    # Name given to the behaviour on construction
    string name
    
    # Name of the class of this behaviour
    string class_name
    
    # The ID of this behaviour
    uuid_msgs/UniqueID own_id
    
    # The ID of the parent behaviour (what if it's empty?)
    uuid_msgs/UniqueID parent_id
    
    # ID of the tip of this behaviour. If the tip is the behaviour itself or None,
    # this is empty
    uuid_msgs/UniqueID tip_id
    
    # The IDs of children of this behaviour, if any
    uuid_msgs/UniqueID[] child_ids
    
    # A composite, sequence, selector, plain behaviour, etc.
    uint8 type
    
    # Blackbox level (for visualisation purposes)
    uint8 blackbox_level
    
    # The current state of execution. Can be invalid, running, success or failure
    uint8 status
    
    # The message attached to the current execution state
    string message
    
    # Whether this node was part of the last tick
    bool is_active
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BehaviourTree(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.behaviours !== undefined) {
      resolved.behaviours = new Array(msg.behaviours.length);
      for (let i = 0; i < resolved.behaviours.length; ++i) {
        resolved.behaviours[i] = Behaviour.Resolve(msg.behaviours[i]);
      }
    }
    else {
      resolved.behaviours = []
    }

    return resolved;
    }
};

module.exports = BehaviourTree;
