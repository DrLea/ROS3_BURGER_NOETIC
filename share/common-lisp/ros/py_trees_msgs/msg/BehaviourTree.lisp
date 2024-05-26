; Auto-generated. Do not edit!


(cl:in-package py_trees_msgs-msg)


;//! \htmlinclude BehaviourTree.msg.html

(cl:defclass <BehaviourTree> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (behaviours
    :reader behaviours
    :initarg :behaviours
    :type (cl:vector py_trees_msgs-msg:Behaviour)
   :initform (cl:make-array 0 :element-type 'py_trees_msgs-msg:Behaviour :initial-element (cl:make-instance 'py_trees_msgs-msg:Behaviour))))
)

(cl:defclass BehaviourTree (<BehaviourTree>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviourTree>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviourTree)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_trees_msgs-msg:<BehaviourTree> is deprecated: use py_trees_msgs-msg:BehaviourTree instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BehaviourTree>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:header-val is deprecated.  Use py_trees_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'behaviours-val :lambda-list '(m))
(cl:defmethod behaviours-val ((m <BehaviourTree>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:behaviours-val is deprecated.  Use py_trees_msgs-msg:behaviours instead.")
  (behaviours m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviourTree>) ostream)
  "Serializes a message object of type '<BehaviourTree>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'behaviours))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'behaviours))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviourTree>) istream)
  "Deserializes a message object of type '<BehaviourTree>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'behaviours) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'behaviours)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'py_trees_msgs-msg:Behaviour))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviourTree>)))
  "Returns string type for a message object of type '<BehaviourTree>"
  "py_trees_msgs/BehaviourTree")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviourTree)))
  "Returns string type for a message object of type 'BehaviourTree"
  "py_trees_msgs/BehaviourTree")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviourTree>)))
  "Returns md5sum for a message object of type '<BehaviourTree>"
  "3e45966d310b941f92c522db8baac203")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviourTree)))
  "Returns md5sum for a message object of type 'BehaviourTree"
  "3e45966d310b941f92c522db8baac203")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviourTree>)))
  "Returns full string definition for message of type '<BehaviourTree>"
  (cl:format cl:nil "Header header~%Behaviour[] behaviours~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: py_trees_msgs/Behaviour~%# Possible behaviour states~%uint8 INVALID = 1~%uint8 RUNNING = 2~%uint8 SUCCESS = 3~%uint8 FAILURE = 4~%~%# Possible types of behaviour~%uint8 UNKNOWN_TYPE = 0~%uint8 BEHAVIOUR = 1~%uint8 SEQUENCE = 2~%uint8 SELECTOR = 3~%uint8 PARALLEL = 4~%uint8 CHOOSER = 5~%uint8 DECORATOR = 6~%~%# Blackbox Level - these must match what is in py_trees.common.BlackBoxLevel~%uint8 BLACKBOX_LEVEL_DETAIL = 1~%uint8 BLACKBOX_LEVEL_COMPONENT = 2~%uint8 BLACKBOX_LEVEL_BIG_PICTURE = 3~%uint8 BLACKBOX_LEVEL_NOT_A_BLACKBOX = 4~%~%# Name given to the behaviour on construction~%string name~%~%# Name of the class of this behaviour~%string class_name~%~%# The ID of this behaviour~%uuid_msgs/UniqueID own_id~%~%# The ID of the parent behaviour (what if it's empty?)~%uuid_msgs/UniqueID parent_id~%~%# ID of the tip of this behaviour. If the tip is the behaviour itself or None,~%# this is empty~%uuid_msgs/UniqueID tip_id~%~%# The IDs of children of this behaviour, if any~%uuid_msgs/UniqueID[] child_ids~%~%# A composite, sequence, selector, plain behaviour, etc.~%uint8 type~%~%# Blackbox level (for visualisation purposes)~%uint8 blackbox_level~%~%# The current state of execution. Can be invalid, running, success or failure~%uint8 status~%~%# The message attached to the current execution state~%string message~%~%# Whether this node was part of the last tick~%bool is_active~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviourTree)))
  "Returns full string definition for message of type 'BehaviourTree"
  (cl:format cl:nil "Header header~%Behaviour[] behaviours~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: py_trees_msgs/Behaviour~%# Possible behaviour states~%uint8 INVALID = 1~%uint8 RUNNING = 2~%uint8 SUCCESS = 3~%uint8 FAILURE = 4~%~%# Possible types of behaviour~%uint8 UNKNOWN_TYPE = 0~%uint8 BEHAVIOUR = 1~%uint8 SEQUENCE = 2~%uint8 SELECTOR = 3~%uint8 PARALLEL = 4~%uint8 CHOOSER = 5~%uint8 DECORATOR = 6~%~%# Blackbox Level - these must match what is in py_trees.common.BlackBoxLevel~%uint8 BLACKBOX_LEVEL_DETAIL = 1~%uint8 BLACKBOX_LEVEL_COMPONENT = 2~%uint8 BLACKBOX_LEVEL_BIG_PICTURE = 3~%uint8 BLACKBOX_LEVEL_NOT_A_BLACKBOX = 4~%~%# Name given to the behaviour on construction~%string name~%~%# Name of the class of this behaviour~%string class_name~%~%# The ID of this behaviour~%uuid_msgs/UniqueID own_id~%~%# The ID of the parent behaviour (what if it's empty?)~%uuid_msgs/UniqueID parent_id~%~%# ID of the tip of this behaviour. If the tip is the behaviour itself or None,~%# this is empty~%uuid_msgs/UniqueID tip_id~%~%# The IDs of children of this behaviour, if any~%uuid_msgs/UniqueID[] child_ids~%~%# A composite, sequence, selector, plain behaviour, etc.~%uint8 type~%~%# Blackbox level (for visualisation purposes)~%uint8 blackbox_level~%~%# The current state of execution. Can be invalid, running, success or failure~%uint8 status~%~%# The message attached to the current execution state~%string message~%~%# Whether this node was part of the last tick~%bool is_active~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviourTree>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'behaviours) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviourTree>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviourTree
    (cl:cons ':header (header msg))
    (cl:cons ':behaviours (behaviours msg))
))
