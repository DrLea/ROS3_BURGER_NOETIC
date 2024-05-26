; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude LiveSpeech.msg.html

(cl:defclass <LiveSpeech> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (incremental
    :reader incremental
    :initarg :incremental
    :type cl:string
    :initform "")
   (final
    :reader final
    :initarg :final
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (language
    :reader language
    :initarg :language
    :type cl:string
    :initform ""))
)

(cl:defclass LiveSpeech (<LiveSpeech>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LiveSpeech>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LiveSpeech)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<LiveSpeech> is deprecated: use hri_msgs-msg:LiveSpeech instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LiveSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:header-val is deprecated.  Use hri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'incremental-val :lambda-list '(m))
(cl:defmethod incremental-val ((m <LiveSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:incremental-val is deprecated.  Use hri_msgs-msg:incremental instead.")
  (incremental m))

(cl:ensure-generic-function 'final-val :lambda-list '(m))
(cl:defmethod final-val ((m <LiveSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:final-val is deprecated.  Use hri_msgs-msg:final instead.")
  (final m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <LiveSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:confidence-val is deprecated.  Use hri_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <LiveSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:language-val is deprecated.  Use hri_msgs-msg:language instead.")
  (language m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LiveSpeech>) ostream)
  "Serializes a message object of type '<LiveSpeech>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'incremental))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'incremental))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'final))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'final))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'language))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'language))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LiveSpeech>) istream)
  "Deserializes a message object of type '<LiveSpeech>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'incremental) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'incremental) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'final) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'final) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'language) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'language) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LiveSpeech>)))
  "Returns string type for a message object of type '<LiveSpeech>"
  "hri_msgs/LiveSpeech")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiveSpeech)))
  "Returns string type for a message object of type 'LiveSpeech"
  "hri_msgs/LiveSpeech")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LiveSpeech>)))
  "Returns md5sum for a message object of type '<LiveSpeech>"
  "691fad051ce92a736be494854c99c2d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LiveSpeech)))
  "Returns md5sum for a message object of type 'LiveSpeech"
  "691fad051ce92a736be494854c99c2d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LiveSpeech>)))
  "Returns full string definition for message of type '<LiveSpeech>"
  (cl:format cl:nil "# This message encodes the live result of a speech recognition process.~%# A series of incremental results might be provided, until a final recognition~%# hypothesis is returned.~%~%Header header~%~%string incremental # incremental recognition results~%string final # final recognised text~%~%float64 confidence # confidence of the final recognised speech, [0-1]~%~%string language # IETF language code, e.g. 'en-GB'~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LiveSpeech)))
  "Returns full string definition for message of type 'LiveSpeech"
  (cl:format cl:nil "# This message encodes the live result of a speech recognition process.~%# A series of incremental results might be provided, until a final recognition~%# hypothesis is returned.~%~%Header header~%~%string incremental # incremental recognition results~%string final # final recognised text~%~%float64 confidence # confidence of the final recognised speech, [0-1]~%~%string language # IETF language code, e.g. 'en-GB'~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LiveSpeech>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'incremental))
     4 (cl:length (cl:slot-value msg 'final))
     8
     4 (cl:length (cl:slot-value msg 'language))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LiveSpeech>))
  "Converts a ROS message object to a list"
  (cl:list 'LiveSpeech
    (cl:cons ':header (header msg))
    (cl:cons ':incremental (incremental msg))
    (cl:cons ':final (final msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':language (language msg))
))
