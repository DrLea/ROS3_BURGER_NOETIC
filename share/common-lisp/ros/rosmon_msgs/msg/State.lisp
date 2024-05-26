; Auto-generated. Do not edit!


(cl:in-package rosmon_msgs-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector rosmon_msgs-msg:NodeState)
   :initform (cl:make-array 0 :element-type 'rosmon_msgs-msg:NodeState :initial-element (cl:make-instance 'rosmon_msgs-msg:NodeState))))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosmon_msgs-msg:<State> is deprecated: use rosmon_msgs-msg:State instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-msg:header-val is deprecated.  Use rosmon_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-msg:nodes-val is deprecated.  Use rosmon_msgs-msg:nodes instead.")
  (nodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'nodes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rosmon_msgs-msg:NodeState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "rosmon_msgs/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "rosmon_msgs/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "93fe347b2ffed78bbacee05fd2655b2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "93fe347b2ffed78bbacee05fd2655b2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "Header header~%NodeState[] nodes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rosmon_msgs/NodeState~%uint8 IDLE = 0     # Node was manually stopped~%uint8 RUNNING = 1  # Node is running~%uint8 CRASHED = 2  # Node has crashed (i.e. exited with state != 0)~%uint8 WAITING = 3  # Node is waiting for automatic restart~%~%# ROS node name~%string name~%~%# ROS node namespace~%string ns~%~%# Node state (see above)~%uint8 state~%~%# How many times has this node been automatically restarted?~%uint32 restart_count~%~%# Estimate of the CPU load in userspace of this node~%# Note that this is relative to one CPU core. On an 8-core machine, this can~%# be 8.0.~%float32 user_load~%~%# Estime of the CPU load in kernelspace of this node~%float32 system_load~%~%# How much physical memory is used by the process?~%# Value is given in bytes.~%uint64 memory~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "Header header~%NodeState[] nodes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rosmon_msgs/NodeState~%uint8 IDLE = 0     # Node was manually stopped~%uint8 RUNNING = 1  # Node is running~%uint8 CRASHED = 2  # Node has crashed (i.e. exited with state != 0)~%uint8 WAITING = 3  # Node is waiting for automatic restart~%~%# ROS node name~%string name~%~%# ROS node namespace~%string ns~%~%# Node state (see above)~%uint8 state~%~%# How many times has this node been automatically restarted?~%uint32 restart_count~%~%# Estimate of the CPU load in userspace of this node~%# Note that this is relative to one CPU core. On an 8-core machine, this can~%# be 8.0.~%float32 user_load~%~%# Estime of the CPU load in kernelspace of this node~%float32 system_load~%~%# How much physical memory is used by the process?~%# Value is given in bytes.~%uint64 memory~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':header (header msg))
    (cl:cons ':nodes (nodes msg))
))
