; Auto-generated. Do not edit!


(cl:in-package py_trees_msgs-msg)


;//! \htmlinclude Behaviour.msg.html

(cl:defclass <Behaviour> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (class_name
    :reader class_name
    :initarg :class_name
    :type cl:string
    :initform "")
   (own_id
    :reader own_id
    :initarg :own_id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (parent_id
    :reader parent_id
    :initarg :parent_id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (tip_id
    :reader tip_id
    :initarg :tip_id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (child_ids
    :reader child_ids
    :initarg :child_ids
    :type (cl:vector uuid_msgs-msg:UniqueID)
   :initform (cl:make-array 0 :element-type 'uuid_msgs-msg:UniqueID :initial-element (cl:make-instance 'uuid_msgs-msg:UniqueID)))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (blackbox_level
    :reader blackbox_level
    :initarg :blackbox_level
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (is_active
    :reader is_active
    :initarg :is_active
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Behaviour (<Behaviour>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Behaviour>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Behaviour)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_trees_msgs-msg:<Behaviour> is deprecated: use py_trees_msgs-msg:Behaviour instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:name-val is deprecated.  Use py_trees_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'class_name-val :lambda-list '(m))
(cl:defmethod class_name-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:class_name-val is deprecated.  Use py_trees_msgs-msg:class_name instead.")
  (class_name m))

(cl:ensure-generic-function 'own_id-val :lambda-list '(m))
(cl:defmethod own_id-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:own_id-val is deprecated.  Use py_trees_msgs-msg:own_id instead.")
  (own_id m))

(cl:ensure-generic-function 'parent_id-val :lambda-list '(m))
(cl:defmethod parent_id-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:parent_id-val is deprecated.  Use py_trees_msgs-msg:parent_id instead.")
  (parent_id m))

(cl:ensure-generic-function 'tip_id-val :lambda-list '(m))
(cl:defmethod tip_id-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:tip_id-val is deprecated.  Use py_trees_msgs-msg:tip_id instead.")
  (tip_id m))

(cl:ensure-generic-function 'child_ids-val :lambda-list '(m))
(cl:defmethod child_ids-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:child_ids-val is deprecated.  Use py_trees_msgs-msg:child_ids instead.")
  (child_ids m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:type-val is deprecated.  Use py_trees_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'blackbox_level-val :lambda-list '(m))
(cl:defmethod blackbox_level-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:blackbox_level-val is deprecated.  Use py_trees_msgs-msg:blackbox_level instead.")
  (blackbox_level m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:status-val is deprecated.  Use py_trees_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:message-val is deprecated.  Use py_trees_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'is_active-val :lambda-list '(m))
(cl:defmethod is_active-val ((m <Behaviour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:is_active-val is deprecated.  Use py_trees_msgs-msg:is_active instead.")
  (is_active m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Behaviour>)))
    "Constants for message type '<Behaviour>"
  '((:INVALID . 1)
    (:RUNNING . 2)
    (:SUCCESS . 3)
    (:FAILURE . 4)
    (:UNKNOWN_TYPE . 0)
    (:BEHAVIOUR . 1)
    (:SEQUENCE . 2)
    (:SELECTOR . 3)
    (:PARALLEL . 4)
    (:CHOOSER . 5)
    (:DECORATOR . 6)
    (:BLACKBOX_LEVEL_DETAIL . 1)
    (:BLACKBOX_LEVEL_COMPONENT . 2)
    (:BLACKBOX_LEVEL_BIG_PICTURE . 3)
    (:BLACKBOX_LEVEL_NOT_A_BLACKBOX . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Behaviour)))
    "Constants for message type 'Behaviour"
  '((:INVALID . 1)
    (:RUNNING . 2)
    (:SUCCESS . 3)
    (:FAILURE . 4)
    (:UNKNOWN_TYPE . 0)
    (:BEHAVIOUR . 1)
    (:SEQUENCE . 2)
    (:SELECTOR . 3)
    (:PARALLEL . 4)
    (:CHOOSER . 5)
    (:DECORATOR . 6)
    (:BLACKBOX_LEVEL_DETAIL . 1)
    (:BLACKBOX_LEVEL_COMPONENT . 2)
    (:BLACKBOX_LEVEL_BIG_PICTURE . 3)
    (:BLACKBOX_LEVEL_NOT_A_BLACKBOX . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Behaviour>) ostream)
  "Serializes a message object of type '<Behaviour>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'class_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'class_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'own_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parent_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tip_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'child_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'child_ids))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blackbox_level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_active) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Behaviour>) istream)
  "Deserializes a message object of type '<Behaviour>"
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
      (cl:setf (cl:slot-value msg 'class_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'class_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'own_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parent_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tip_id) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'child_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'child_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'uuid_msgs-msg:UniqueID))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blackbox_level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_active) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Behaviour>)))
  "Returns string type for a message object of type '<Behaviour>"
  "py_trees_msgs/Behaviour")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Behaviour)))
  "Returns string type for a message object of type 'Behaviour"
  "py_trees_msgs/Behaviour")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Behaviour>)))
  "Returns md5sum for a message object of type '<Behaviour>"
  "9424ebed2de13e891d81fc5875b727fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Behaviour)))
  "Returns md5sum for a message object of type 'Behaviour"
  "9424ebed2de13e891d81fc5875b727fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Behaviour>)))
  "Returns full string definition for message of type '<Behaviour>"
  (cl:format cl:nil "# Possible behaviour states~%uint8 INVALID = 1~%uint8 RUNNING = 2~%uint8 SUCCESS = 3~%uint8 FAILURE = 4~%~%# Possible types of behaviour~%uint8 UNKNOWN_TYPE = 0~%uint8 BEHAVIOUR = 1~%uint8 SEQUENCE = 2~%uint8 SELECTOR = 3~%uint8 PARALLEL = 4~%uint8 CHOOSER = 5~%uint8 DECORATOR = 6~%~%# Blackbox Level - these must match what is in py_trees.common.BlackBoxLevel~%uint8 BLACKBOX_LEVEL_DETAIL = 1~%uint8 BLACKBOX_LEVEL_COMPONENT = 2~%uint8 BLACKBOX_LEVEL_BIG_PICTURE = 3~%uint8 BLACKBOX_LEVEL_NOT_A_BLACKBOX = 4~%~%# Name given to the behaviour on construction~%string name~%~%# Name of the class of this behaviour~%string class_name~%~%# The ID of this behaviour~%uuid_msgs/UniqueID own_id~%~%# The ID of the parent behaviour (what if it's empty?)~%uuid_msgs/UniqueID parent_id~%~%# ID of the tip of this behaviour. If the tip is the behaviour itself or None,~%# this is empty~%uuid_msgs/UniqueID tip_id~%~%# The IDs of children of this behaviour, if any~%uuid_msgs/UniqueID[] child_ids~%~%# A composite, sequence, selector, plain behaviour, etc.~%uint8 type~%~%# Blackbox level (for visualisation purposes)~%uint8 blackbox_level~%~%# The current state of execution. Can be invalid, running, success or failure~%uint8 status~%~%# The message attached to the current execution state~%string message~%~%# Whether this node was part of the last tick~%bool is_active~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Behaviour)))
  "Returns full string definition for message of type 'Behaviour"
  (cl:format cl:nil "# Possible behaviour states~%uint8 INVALID = 1~%uint8 RUNNING = 2~%uint8 SUCCESS = 3~%uint8 FAILURE = 4~%~%# Possible types of behaviour~%uint8 UNKNOWN_TYPE = 0~%uint8 BEHAVIOUR = 1~%uint8 SEQUENCE = 2~%uint8 SELECTOR = 3~%uint8 PARALLEL = 4~%uint8 CHOOSER = 5~%uint8 DECORATOR = 6~%~%# Blackbox Level - these must match what is in py_trees.common.BlackBoxLevel~%uint8 BLACKBOX_LEVEL_DETAIL = 1~%uint8 BLACKBOX_LEVEL_COMPONENT = 2~%uint8 BLACKBOX_LEVEL_BIG_PICTURE = 3~%uint8 BLACKBOX_LEVEL_NOT_A_BLACKBOX = 4~%~%# Name given to the behaviour on construction~%string name~%~%# Name of the class of this behaviour~%string class_name~%~%# The ID of this behaviour~%uuid_msgs/UniqueID own_id~%~%# The ID of the parent behaviour (what if it's empty?)~%uuid_msgs/UniqueID parent_id~%~%# ID of the tip of this behaviour. If the tip is the behaviour itself or None,~%# this is empty~%uuid_msgs/UniqueID tip_id~%~%# The IDs of children of this behaviour, if any~%uuid_msgs/UniqueID[] child_ids~%~%# A composite, sequence, selector, plain behaviour, etc.~%uint8 type~%~%# Blackbox level (for visualisation purposes)~%uint8 blackbox_level~%~%# The current state of execution. Can be invalid, running, success or failure~%uint8 status~%~%# The message attached to the current execution state~%string message~%~%# Whether this node was part of the last tick~%bool is_active~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Behaviour>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'class_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'own_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parent_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tip_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'child_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Behaviour>))
  "Converts a ROS message object to a list"
  (cl:list 'Behaviour
    (cl:cons ':name (name msg))
    (cl:cons ':class_name (class_name msg))
    (cl:cons ':own_id (own_id msg))
    (cl:cons ':parent_id (parent_id msg))
    (cl:cons ':tip_id (tip_id msg))
    (cl:cons ':child_ids (child_ids msg))
    (cl:cons ':type (type msg))
    (cl:cons ':blackbox_level (blackbox_level msg))
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
    (cl:cons ':is_active (is_active msg))
))
