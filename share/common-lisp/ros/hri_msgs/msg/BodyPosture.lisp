; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude BodyPosture.msg.html

(cl:defclass <BodyPosture> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (posture
    :reader posture
    :initarg :posture
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BodyPosture (<BodyPosture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyPosture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyPosture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<BodyPosture> is deprecated: use hri_msgs-msg:BodyPosture instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BodyPosture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:header-val is deprecated.  Use hri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'posture-val :lambda-list '(m))
(cl:defmethod posture-val ((m <BodyPosture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:posture-val is deprecated.  Use hri_msgs-msg:posture instead.")
  (posture m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BodyPosture>)))
    "Constants for message type '<BodyPosture>"
  '((:STANDING . 1)
    (:SITTING . 2)
    (:CROUCHING . 3)
    (:LAYING . 4)
    (:OTHER . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BodyPosture)))
    "Constants for message type 'BodyPosture"
  '((:STANDING . 1)
    (:SITTING . 2)
    (:CROUCHING . 3)
    (:LAYING . 4)
    (:OTHER . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyPosture>) ostream)
  "Serializes a message object of type '<BodyPosture>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'posture)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyPosture>) istream)
  "Deserializes a message object of type '<BodyPosture>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'posture)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyPosture>)))
  "Returns string type for a message object of type '<BodyPosture>"
  "hri_msgs/BodyPosture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyPosture)))
  "Returns string type for a message object of type 'BodyPosture"
  "hri_msgs/BodyPosture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyPosture>)))
  "Returns md5sum for a message object of type '<BodyPosture>"
  "52f95070a71954a985e0ab92dd4d4eb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyPosture)))
  "Returns md5sum for a message object of type 'BodyPosture"
  "52f95070a71954a985e0ab92dd4d4eb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyPosture>)))
  "Returns full string definition for message of type '<BodyPosture>"
  (cl:format cl:nil "# Describes the general body posture in a symbolic manner.~%Header header~%~%uint8 STANDING = 1~%uint8 SITTING = 2~%uint8 CROUCHING = 3~%uint8 LAYING = 4~%~%uint8 OTHER = 0~%~%uint8 posture # one of the above constants~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyPosture)))
  "Returns full string definition for message of type 'BodyPosture"
  (cl:format cl:nil "# Describes the general body posture in a symbolic manner.~%Header header~%~%uint8 STANDING = 1~%uint8 SITTING = 2~%uint8 CROUCHING = 3~%uint8 LAYING = 4~%~%uint8 OTHER = 0~%~%uint8 posture # one of the above constants~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyPosture>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyPosture>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyPosture
    (cl:cons ':header (header msg))
    (cl:cons ':posture (posture msg))
))
