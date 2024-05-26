// Auto-generated. Do not edit!

// (in-package rosmon_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NodeState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.ns = null;
      this.state = null;
      this.restart_count = null;
      this.user_load = null;
      this.system_load = null;
      this.memory = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('ns')) {
        this.ns = initObj.ns
      }
      else {
        this.ns = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('restart_count')) {
        this.restart_count = initObj.restart_count
      }
      else {
        this.restart_count = 0;
      }
      if (initObj.hasOwnProperty('user_load')) {
        this.user_load = initObj.user_load
      }
      else {
        this.user_load = 0.0;
      }
      if (initObj.hasOwnProperty('system_load')) {
        this.system_load = initObj.system_load
      }
      else {
        this.system_load = 0.0;
      }
      if (initObj.hasOwnProperty('memory')) {
        this.memory = initObj.memory
      }
      else {
        this.memory = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeState
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [ns]
    bufferOffset = _serializer.string(obj.ns, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [restart_count]
    bufferOffset = _serializer.uint32(obj.restart_count, buffer, bufferOffset);
    // Serialize message field [user_load]
    bufferOffset = _serializer.float32(obj.user_load, buffer, bufferOffset);
    // Serialize message field [system_load]
    bufferOffset = _serializer.float32(obj.system_load, buffer, bufferOffset);
    // Serialize message field [memory]
    bufferOffset = _serializer.uint64(obj.memory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeState
    let len;
    let data = new NodeState(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ns]
    data.ns = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [restart_count]
    data.restart_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [user_load]
    data.user_load = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [system_load]
    data.system_load = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [memory]
    data.memory = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.ns);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosmon_msgs/NodeState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87292cdbe5a500a95e32714adf10e6dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 IDLE = 0     # Node was manually stopped
    uint8 RUNNING = 1  # Node is running
    uint8 CRASHED = 2  # Node has crashed (i.e. exited with state != 0)
    uint8 WAITING = 3  # Node is waiting for automatic restart
    
    # ROS node name
    string name
    
    # ROS node namespace
    string ns
    
    # Node state (see above)
    uint8 state
    
    # How many times has this node been automatically restarted?
    uint32 restart_count
    
    # Estimate of the CPU load in userspace of this node
    # Note that this is relative to one CPU core. On an 8-core machine, this can
    # be 8.0.
    float32 user_load
    
    # Estime of the CPU load in kernelspace of this node
    float32 system_load
    
    # How much physical memory is used by the process?
    # Value is given in bytes.
    uint64 memory
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.ns !== undefined) {
      resolved.ns = msg.ns;
    }
    else {
      resolved.ns = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.restart_count !== undefined) {
      resolved.restart_count = msg.restart_count;
    }
    else {
      resolved.restart_count = 0
    }

    if (msg.user_load !== undefined) {
      resolved.user_load = msg.user_load;
    }
    else {
      resolved.user_load = 0.0
    }

    if (msg.system_load !== undefined) {
      resolved.system_load = msg.system_load;
    }
    else {
      resolved.system_load = 0.0
    }

    if (msg.memory !== undefined) {
      resolved.memory = msg.memory;
    }
    else {
      resolved.memory = 0
    }

    return resolved;
    }
};

// Constants for message
NodeState.Constants = {
  IDLE: 0,
  RUNNING: 1,
  CRASHED: 2,
  WAITING: 3,
}

module.exports = NodeState;
