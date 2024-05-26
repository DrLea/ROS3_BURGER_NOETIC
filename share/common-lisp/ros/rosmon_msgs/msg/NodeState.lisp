; Auto-generated. Do not edit!


(cl:in-package rosmon_msgs-msg)


;//! \htmlinclude NodeState.msg.html

(cl:defclass <NodeState> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (ns
    :reader ns
    :initarg :ns
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (restart_count
    :reader restart_count
    :initarg :restart_count
    :type cl:integer
    :initform 0)
   (user_load
    :reader user_load
    :initarg :user_load
    :type cl:float
    :initform 0.0)
   (system_load
    :reader system_load
    :initarg :system_load
    :type cl:float
    :initform 0.0)
   (memory
    :reader memory
    :initarg :memory
    :type cl:integer
    :initform 0))
)

(cl:defclass NodeState (<NodeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosmon_msgs-msg:<NodeState> is deprecated: use rosmon_msgs-msg:NodeState instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <NodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-msg:name-val is deprecated.  Use rosmon_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'ns-val :lambda-list '(m))
(cl:defmethod ns-val ((m <NodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-msg:ns-val is deprecated.  Use rosmon_msgs-msg:ns instead.")
  (ns m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <NodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-msg:state-val is deprecated.  Use rosmon_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'restart_count-val :lambda-list '(m))
(cl:defmethod restart_count-val ((m <NodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-msg:restart_count-val is deprecated.  Use rosmon_msgs-msg:restart_count instead.")
  (restart_count m))

(cl:ensure-generic-function 'user_load-val :lambda-list '(m))
(cl:defmethod user_load-val ((m <NodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-msg:user_load-val is deprecated.  Use rosmon_msgs-msg:user_load instead.")
  (user_load m))

(cl:ensure-generic-function 'system_load-val :lambda-list '(m))
(cl:defmethod system_load-val ((m <NodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-msg:system_load-val is deprecated.  Use rosmon_msgs-msg:system_load instead.")
  (system_load m))

(cl:ensure-generic-function 'memory-val :lambda-list '(m))
(cl:defmethod memory-val ((m <NodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-msg:memory-val is deprecated.  Use rosmon_msgs-msg:memory instead.")
  (memory m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NodeState>)))
    "Constants for message type '<NodeState>"
  '((:IDLE . 0)
    (:RUNNING . 1)
    (:CRASHED . 2)
    (:WAITING . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NodeState)))
    "Constants for message type 'NodeState"
  '((:IDLE . 0)
    (:RUNNING . 1)
    (:CRASHED . 2)
    (:WAITING . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeState>) ostream)
  "Serializes a message object of type '<NodeState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ns))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'restart_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'restart_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'restart_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'restart_count)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'user_load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'system_load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'memory)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'memory)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'memory)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'memory)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'memory)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'memory)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'memory)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'memory)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeState>) istream)
  "Deserializes a message object of type '<NodeState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ns) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ns) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'restart_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'restart_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'restart_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'restart_count)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'user_load) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'system_load) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'memory)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'memory)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'memory)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'memory)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'memory)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'memory)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'memory)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'memory)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeState>)))
  "Returns string type for a message object of type '<NodeState>"
  "rosmon_msgs/NodeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeState)))
  "Returns string type for a message object of type 'NodeState"
  "rosmon_msgs/NodeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeState>)))
  "Returns md5sum for a message object of type '<NodeState>"
  "87292cdbe5a500a95e32714adf10e6dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeState)))
  "Returns md5sum for a message object of type 'NodeState"
  "87292cdbe5a500a95e32714adf10e6dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeState>)))
  "Returns full string definition for message of type '<NodeState>"
  (cl:format cl:nil "uint8 IDLE = 0     # Node was manually stopped~%uint8 RUNNING = 1  # Node is running~%uint8 CRASHED = 2  # Node has crashed (i.e. exited with state != 0)~%uint8 WAITING = 3  # Node is waiting for automatic restart~%~%# ROS node name~%string name~%~%# ROS node namespace~%string ns~%~%# Node state (see above)~%uint8 state~%~%# How many times has this node been automatically restarted?~%uint32 restart_count~%~%# Estimate of the CPU load in userspace of this node~%# Note that this is relative to one CPU core. On an 8-core machine, this can~%# be 8.0.~%float32 user_load~%~%# Estime of the CPU load in kernelspace of this node~%float32 system_load~%~%# How much physical memory is used by the process?~%# Value is given in bytes.~%uint64 memory~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeState)))
  "Returns full string definition for message of type 'NodeState"
  (cl:format cl:nil "uint8 IDLE = 0     # Node was manually stopped~%uint8 RUNNING = 1  # Node is running~%uint8 CRASHED = 2  # Node has crashed (i.e. exited with state != 0)~%uint8 WAITING = 3  # Node is waiting for automatic restart~%~%# ROS node name~%string name~%~%# ROS node namespace~%string ns~%~%# Node state (see above)~%uint8 state~%~%# How many times has this node been automatically restarted?~%uint32 restart_count~%~%# Estimate of the CPU load in userspace of this node~%# Note that this is relative to one CPU core. On an 8-core machine, this can~%# be 8.0.~%float32 user_load~%~%# Estime of the CPU load in kernelspace of this node~%float32 system_load~%~%# How much physical memory is used by the process?~%# Value is given in bytes.~%uint64 memory~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'ns))
     1
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeState>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeState
    (cl:cons ':name (name msg))
    (cl:cons ':ns (ns msg))
    (cl:cons ':state (state msg))
    (cl:cons ':restart_count (restart_count msg))
    (cl:cons ':user_load (user_load msg))
    (cl:cons ':system_load (system_load msg))
    (cl:cons ':memory (memory msg))
))
