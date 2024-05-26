; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude EngagementLevel.msg.html

(cl:defclass <EngagementLevel> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EngagementLevel (<EngagementLevel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EngagementLevel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EngagementLevel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<EngagementLevel> is deprecated: use hri_msgs-msg:EngagementLevel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EngagementLevel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:header-val is deprecated.  Use hri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <EngagementLevel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:level-val is deprecated.  Use hri_msgs-msg:level instead.")
  (level m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EngagementLevel>)))
    "Constants for message type '<EngagementLevel>"
  '((:UNKNOWN . 0)
    (:DISENGAGED . 1)
    (:ENGAGING . 2)
    (:ENGAGED . 3)
    (:DISENGAGING . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EngagementLevel)))
    "Constants for message type 'EngagementLevel"
  '((:UNKNOWN . 0)
    (:DISENGAGED . 1)
    (:ENGAGING . 2)
    (:ENGAGED . 3)
    (:DISENGAGING . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EngagementLevel>) ostream)
  "Serializes a message object of type '<EngagementLevel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EngagementLevel>) istream)
  "Deserializes a message object of type '<EngagementLevel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EngagementLevel>)))
  "Returns string type for a message object of type '<EngagementLevel>"
  "hri_msgs/EngagementLevel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EngagementLevel)))
  "Returns string type for a message object of type 'EngagementLevel"
  "hri_msgs/EngagementLevel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EngagementLevel>)))
  "Returns md5sum for a message object of type '<EngagementLevel>"
  "98693df082bea7da40fa598b187373d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EngagementLevel)))
  "Returns md5sum for a message object of type 'EngagementLevel"
  "98693df082bea7da40fa598b187373d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EngagementLevel>)))
  "Returns full string definition for message of type '<EngagementLevel>"
  (cl:format cl:nil "# Discrete engagement levels of a person with respect to the robot~%# It is for instance published on /humans/persons/person_id/engagement_status ~%# to access to the engagement level of a detected human. ~%# It will output one of the five following levels: unknown, disengaged, ~%# engaging, engaged and disengaging.~%Header header  ~%~%# unknown: no information is provided about the engagement level ~%uint8 UNKNOWN=0~%# disengaged: the human has not looked in the direction of the robot~%uint8 DISENGAGED=1~%# engaging: the human has started to look in the direction of the robot~%uint8 ENGAGING=2~%# engaged: the human is fully engaged with the robot~%uint8 ENGAGED=3~%# disengaging: the human has started to look away from the robot~%uint8 DISENGAGING=4~%~%uint8 level~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EngagementLevel)))
  "Returns full string definition for message of type 'EngagementLevel"
  (cl:format cl:nil "# Discrete engagement levels of a person with respect to the robot~%# It is for instance published on /humans/persons/person_id/engagement_status ~%# to access to the engagement level of a detected human. ~%# It will output one of the five following levels: unknown, disengaged, ~%# engaging, engaged and disengaging.~%Header header  ~%~%# unknown: no information is provided about the engagement level ~%uint8 UNKNOWN=0~%# disengaged: the human has not looked in the direction of the robot~%uint8 DISENGAGED=1~%# engaging: the human has started to look in the direction of the robot~%uint8 ENGAGING=2~%# engaged: the human is fully engaged with the robot~%uint8 ENGAGED=3~%# disengaging: the human has started to look away from the robot~%uint8 DISENGAGING=4~%~%uint8 level~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EngagementLevel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EngagementLevel>))
  "Converts a ROS message object to a list"
  (cl:list 'EngagementLevel
    (cl:cons ':header (header msg))
    (cl:cons ':level (level msg))
))
