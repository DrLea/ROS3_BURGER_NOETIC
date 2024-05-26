; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude Gesture.msg.html

(cl:defclass <Gesture> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gesture
    :reader gesture
    :initarg :gesture
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Gesture (<Gesture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gesture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gesture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<Gesture> is deprecated: use hri_msgs-msg:Gesture instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:header-val is deprecated.  Use hri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gesture-val :lambda-list '(m))
(cl:defmethod gesture-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:gesture-val is deprecated.  Use hri_msgs-msg:gesture instead.")
  (gesture m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Gesture>)))
    "Constants for message type '<Gesture>"
  '((:HANDS_ON_FACE . 1)
    (:ARMS_CROSSED . 2)
    (:LEFT_HAND_RAISED . 3)
    (:RIGHT_HAND_RAISED . 4)
    (:BOTH_HANDS_RAISED . 5)
    (:WAVING . 6)
    (:OTHER . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Gesture)))
    "Constants for message type 'Gesture"
  '((:HANDS_ON_FACE . 1)
    (:ARMS_CROSSED . 2)
    (:LEFT_HAND_RAISED . 3)
    (:RIGHT_HAND_RAISED . 4)
    (:BOTH_HANDS_RAISED . 5)
    (:WAVING . 6)
    (:OTHER . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gesture>) ostream)
  "Serializes a message object of type '<Gesture>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gesture)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gesture>) istream)
  "Deserializes a message object of type '<Gesture>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gesture)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gesture>)))
  "Returns string type for a message object of type '<Gesture>"
  "hri_msgs/Gesture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gesture)))
  "Returns string type for a message object of type 'Gesture"
  "hri_msgs/Gesture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gesture>)))
  "Returns md5sum for a message object of type '<Gesture>"
  "c64cc745a3c18d0a7abe6aed5be4f345")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gesture)))
  "Returns md5sum for a message object of type 'Gesture"
  "c64cc745a3c18d0a7abe6aed5be4f345")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gesture>)))
  "Returns full string definition for message of type '<Gesture>"
  (cl:format cl:nil "# Describes body language/attitude/gesture detected from a body.~%Header header~%~%# Additional gestures might be added in the future, please open~%# issues/pull requests to suggest new ones.~%~%uint8 HANDS_ON_FACE = 1~%uint8 ARMS_CROSSED = 2~%uint8 LEFT_HAND_RAISED = 3~%uint8 RIGHT_HAND_RAISED = 4~%uint8 BOTH_HANDS_RAISED = 5~%uint8 WAVING = 6 # eg, greeting someone with the hand~%~%uint8 OTHER = 0~%~%uint8 gesture # one of the above constants~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gesture)))
  "Returns full string definition for message of type 'Gesture"
  (cl:format cl:nil "# Describes body language/attitude/gesture detected from a body.~%Header header~%~%# Additional gestures might be added in the future, please open~%# issues/pull requests to suggest new ones.~%~%uint8 HANDS_ON_FACE = 1~%uint8 ARMS_CROSSED = 2~%uint8 LEFT_HAND_RAISED = 3~%uint8 RIGHT_HAND_RAISED = 4~%uint8 BOTH_HANDS_RAISED = 5~%uint8 WAVING = 6 # eg, greeting someone with the hand~%~%uint8 OTHER = 0~%~%uint8 gesture # one of the above constants~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gesture>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gesture>))
  "Converts a ROS message object to a list"
  (cl:list 'Gesture
    (cl:cons ':header (header msg))
    (cl:cons ':gesture (gesture msg))
))
