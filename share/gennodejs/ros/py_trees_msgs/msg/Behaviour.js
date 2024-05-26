// Auto-generated. Do not edit!

// (in-package py_trees_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class Behaviour {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.class_name = null;
      this.own_id = null;
      this.parent_id = null;
      this.tip_id = null;
      this.child_ids = null;
      this.type = null;
      this.blackbox_level = null;
      this.status = null;
      this.message = null;
      this.is_active = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('class_name')) {
        this.class_name = initObj.class_name
      }
      else {
        this.class_name = '';
      }
      if (initObj.hasOwnProperty('own_id')) {
        this.own_id = initObj.own_id
      }
      else {
        this.own_id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('parent_id')) {
        this.parent_id = initObj.parent_id
      }
      else {
        this.parent_id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('tip_id')) {
        this.tip_id = initObj.tip_id
      }
      else {
        this.tip_id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('child_ids')) {
        this.child_ids = initObj.child_ids
      }
      else {
        this.child_ids = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('blackbox_level')) {
        this.blackbox_level = initObj.blackbox_level
      }
      else {
        this.blackbox_level = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('is_active')) {
        this.is_active = initObj.is_active
      }
      else {
        this.is_active = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Behaviour
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [class_name]
    bufferOffset = _serializer.string(obj.class_name, buffer, bufferOffset);
    // Serialize message field [own_id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.own_id, buffer, bufferOffset);
    // Serialize message field [parent_id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.parent_id, buffer, bufferOffset);
    // Serialize message field [tip_id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.tip_id, buffer, bufferOffset);
    // Serialize message field [child_ids]
    // Serialize the length for message field [child_ids]
    bufferOffset = _serializer.uint32(obj.child_ids.length, buffer, bufferOffset);
    obj.child_ids.forEach((val) => {
      bufferOffset = uuid_msgs.msg.UniqueID.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [blackbox_level]
    bufferOffset = _serializer.uint8(obj.blackbox_level, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [is_active]
    bufferOffset = _serializer.bool(obj.is_active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Behaviour
    let len;
    let data = new Behaviour(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [class_name]
    data.class_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [own_id]
    data.own_id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_id]
    data.parent_id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [tip_id]
    data.tip_id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [child_ids]
    // Deserialize array length for message field [child_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.child_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.child_ids[i] = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [blackbox_level]
    data.blackbox_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_active]
    data.is_active = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.class_name);
    length += 16 * object.child_ids.length;
    length += _getByteLength(object.message);
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'py_trees_msgs/Behaviour';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9424ebed2de13e891d81fc5875b727fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Behaviour(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.class_name !== undefined) {
      resolved.class_name = msg.class_name;
    }
    else {
      resolved.class_name = ''
    }

    if (msg.own_id !== undefined) {
      resolved.own_id = uuid_msgs.msg.UniqueID.Resolve(msg.own_id)
    }
    else {
      resolved.own_id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.parent_id !== undefined) {
      resolved.parent_id = uuid_msgs.msg.UniqueID.Resolve(msg.parent_id)
    }
    else {
      resolved.parent_id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.tip_id !== undefined) {
      resolved.tip_id = uuid_msgs.msg.UniqueID.Resolve(msg.tip_id)
    }
    else {
      resolved.tip_id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.child_ids !== undefined) {
      resolved.child_ids = new Array(msg.child_ids.length);
      for (let i = 0; i < resolved.child_ids.length; ++i) {
        resolved.child_ids[i] = uuid_msgs.msg.UniqueID.Resolve(msg.child_ids[i]);
      }
    }
    else {
      resolved.child_ids = []
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.blackbox_level !== undefined) {
      resolved.blackbox_level = msg.blackbox_level;
    }
    else {
      resolved.blackbox_level = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.is_active !== undefined) {
      resolved.is_active = msg.is_active;
    }
    else {
      resolved.is_active = false
    }

    return resolved;
    }
};

// Constants for message
Behaviour.Constants = {
  INVALID: 1,
  RUNNING: 2,
  SUCCESS: 3,
  FAILURE: 4,
  UNKNOWN_TYPE: 0,
  BEHAVIOUR: 1,
  SEQUENCE: 2,
  SELECTOR: 3,
  PARALLEL: 4,
  CHOOSER: 5,
  DECORATOR: 6,
  BLACKBOX_LEVEL_DETAIL: 1,
  BLACKBOX_LEVEL_COMPONENT: 2,
  BLACKBOX_LEVEL_BIG_PICTURE: 3,
  BLACKBOX_LEVEL_NOT_A_BLACKBOX: 4,
}

module.exports = Behaviour;
