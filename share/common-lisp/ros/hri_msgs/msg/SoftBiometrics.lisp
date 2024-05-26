; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude SoftBiometrics.msg.html

(cl:defclass <SoftBiometrics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (age_confidence
    :reader age_confidence
    :initarg :age_confidence
    :type cl:float
    :initform 0.0)
   (gender
    :reader gender
    :initarg :gender
    :type cl:fixnum
    :initform 0)
   (gender_confidence
    :reader gender_confidence
    :initarg :gender_confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass SoftBiometrics (<SoftBiometrics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoftBiometrics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoftBiometrics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<SoftBiometrics> is deprecated: use hri_msgs-msg:SoftBiometrics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SoftBiometrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:header-val is deprecated.  Use hri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <SoftBiometrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:age-val is deprecated.  Use hri_msgs-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'age_confidence-val :lambda-list '(m))
(cl:defmethod age_confidence-val ((m <SoftBiometrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:age_confidence-val is deprecated.  Use hri_msgs-msg:age_confidence instead.")
  (age_confidence m))

(cl:ensure-generic-function 'gender-val :lambda-list '(m))
(cl:defmethod gender-val ((m <SoftBiometrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:gender-val is deprecated.  Use hri_msgs-msg:gender instead.")
  (gender m))

(cl:ensure-generic-function 'gender_confidence-val :lambda-list '(m))
(cl:defmethod gender_confidence-val ((m <SoftBiometrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:gender_confidence-val is deprecated.  Use hri_msgs-msg:gender_confidence instead.")
  (gender_confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SoftBiometrics>)))
    "Constants for message type '<SoftBiometrics>"
  '((:UNDEFINED . 0)
    (:FEMALE . 1)
    (:MALE . 2)
    (:OTHER . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SoftBiometrics)))
    "Constants for message type 'SoftBiometrics"
  '((:UNDEFINED . 0)
    (:FEMALE . 1)
    (:MALE . 2)
    (:OTHER . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoftBiometrics>) ostream)
  "Serializes a message object of type '<SoftBiometrics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'age_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gender)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gender_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoftBiometrics>) istream)
  "Deserializes a message object of type '<SoftBiometrics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'age_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gender)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gender_confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoftBiometrics>)))
  "Returns string type for a message object of type '<SoftBiometrics>"
  "hri_msgs/SoftBiometrics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoftBiometrics)))
  "Returns string type for a message object of type 'SoftBiometrics"
  "hri_msgs/SoftBiometrics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoftBiometrics>)))
  "Returns md5sum for a message object of type '<SoftBiometrics>"
  "791877398420c10707c4d9a832b0e6ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoftBiometrics)))
  "Returns md5sum for a message object of type 'SoftBiometrics"
  "791877398420c10707c4d9a832b0e6ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoftBiometrics>)))
  "Returns full string definition for message of type '<SoftBiometrics>"
  (cl:format cl:nil "# This message describes soft biometrics (age and gender)~%Header header~%~%uint8 age~%float32 age_confidence~%~%uint8 UNDEFINED=0~%uint8 FEMALE=1~%uint8 MALE=2~%uint8 OTHER=3~%~%uint8 gender # one of UNDEFINED, FEMALE, MALE, OTHER~%float32 gender_confidence ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoftBiometrics)))
  "Returns full string definition for message of type 'SoftBiometrics"
  (cl:format cl:nil "# This message describes soft biometrics (age and gender)~%Header header~%~%uint8 age~%float32 age_confidence~%~%uint8 UNDEFINED=0~%uint8 FEMALE=1~%uint8 MALE=2~%uint8 OTHER=3~%~%uint8 gender # one of UNDEFINED, FEMALE, MALE, OTHER~%float32 gender_confidence ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoftBiometrics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoftBiometrics>))
  "Converts a ROS message object to a list"
  (cl:list 'SoftBiometrics
    (cl:cons ':header (header msg))
    (cl:cons ':age (age msg))
    (cl:cons ':age_confidence (age_confidence msg))
    (cl:cons ':gender (gender msg))
    (cl:cons ':gender_confidence (gender_confidence msg))
))
