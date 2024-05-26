; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude Expression.msg.html

(cl:defclass <Expression> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (expression
    :reader expression
    :initarg :expression
    :type cl:string
    :initform "")
   (valence
    :reader valence
    :initarg :valence
    :type cl:float
    :initform 0.0)
   (arousal
    :reader arousal
    :initarg :arousal
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass Expression (<Expression>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Expression>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Expression)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<Expression> is deprecated: use hri_msgs-msg:Expression instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:header-val is deprecated.  Use hri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'expression-val :lambda-list '(m))
(cl:defmethod expression-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:expression-val is deprecated.  Use hri_msgs-msg:expression instead.")
  (expression m))

(cl:ensure-generic-function 'valence-val :lambda-list '(m))
(cl:defmethod valence-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:valence-val is deprecated.  Use hri_msgs-msg:valence instead.")
  (valence m))

(cl:ensure-generic-function 'arousal-val :lambda-list '(m))
(cl:defmethod arousal-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:arousal-val is deprecated.  Use hri_msgs-msg:arousal instead.")
  (arousal m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:confidence-val is deprecated.  Use hri_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Expression>)))
    "Constants for message type '<Expression>"
  '((:NEUTRAL . "\"neutral\"")
    (:ANGRY . "\"angry\"")
    (:SAD . "\"sad\"")
    (:HAPPY . "\"happy\"")
    (:SURPRISED . "\"surprised\"")
    (:DISGUSTED . "\"disgusted\"")
    (:SCARED . "\"scared\"")
    (:PLEADING . "\"pleading\"")
    (:VULNERABLE . "\"vulnerable\"")
    (:DESPAIRED . "\"despaired\"")
    (:GUILTY . "\"guilty\"")
    (:DISAPPOINTED . "\"disappointed\"")
    (:EMBARRASSED . "\"embarrassed\"")
    (:HORRIFIED . "\"horrified\"")
    (:SKEPTICAL . "\"skeptical\"")
    (:ANNOYED . "\"annoyed\"")
    (:FURIOUS . "\"furious\"")
    (:SUSPICIOUS . "\"suspicious\"")
    (:REJECTED . "\"rejected\"")
    (:BORED . "\"bored\"")
    (:TIRED . "\"tired\"")
    (:ASLEEP . "\"asleep\"")
    (:CONFUSED . "\"confused\"")
    (:AMAZED . "\"amazed\"")
    (:EXCITED . "\"excited\""))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Expression)))
    "Constants for message type 'Expression"
  '((:NEUTRAL . "\"neutral\"")
    (:ANGRY . "\"angry\"")
    (:SAD . "\"sad\"")
    (:HAPPY . "\"happy\"")
    (:SURPRISED . "\"surprised\"")
    (:DISGUSTED . "\"disgusted\"")
    (:SCARED . "\"scared\"")
    (:PLEADING . "\"pleading\"")
    (:VULNERABLE . "\"vulnerable\"")
    (:DESPAIRED . "\"despaired\"")
    (:GUILTY . "\"guilty\"")
    (:DISAPPOINTED . "\"disappointed\"")
    (:EMBARRASSED . "\"embarrassed\"")
    (:HORRIFIED . "\"horrified\"")
    (:SKEPTICAL . "\"skeptical\"")
    (:ANNOYED . "\"annoyed\"")
    (:FURIOUS . "\"furious\"")
    (:SUSPICIOUS . "\"suspicious\"")
    (:REJECTED . "\"rejected\"")
    (:BORED . "\"bored\"")
    (:TIRED . "\"tired\"")
    (:ASLEEP . "\"asleep\"")
    (:CONFUSED . "\"confused\"")
    (:AMAZED . "\"amazed\"")
    (:EXCITED . "\"excited\""))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Expression>) ostream)
  "Serializes a message object of type '<Expression>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'expression))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'expression))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'valence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'arousal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Expression>) istream)
  "Deserializes a message object of type '<Expression>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'expression) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'expression) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'valence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arousal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Expression>)))
  "Returns string type for a message object of type '<Expression>"
  "hri_msgs/Expression")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Expression)))
  "Returns string type for a message object of type 'Expression"
  "hri_msgs/Expression")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Expression>)))
  "Returns md5sum for a message object of type '<Expression>"
  "c0f698742672d3238cdc31c07c7d835b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Expression)))
  "Returns md5sum for a message object of type 'Expression"
  "c0f698742672d3238cdc31c07c7d835b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Expression>)))
  "Returns full string definition for message of type '<Expression>"
  (cl:format cl:nil "# Represents a human facial expression, either in a categorical way, or~%# using the valence/arousal model of emotions~%Header header~%~%# the list of expressions is based on Chambers MSc thesis, Bristol Robotics Lab 2020, and includes the six basic emotions in Eckman's model.~%#~%# Note that a node making use of this message definition is not supposed or~%# expected to handle all listed expressions.~%#~%# This list might change based on future needs/requests.~%~%string NEUTRAL=\"neutral\"~%string ANGRY=\"angry\"~%string SAD=\"sad\"~%string HAPPY=\"happy\"~%string SURPRISED=\"surprised\"~%string DISGUSTED=\"disgusted\"~%string SCARED=\"scared\"~%string PLEADING=\"pleading\"~%string VULNERABLE=\"vulnerable\"~%string DESPAIRED=\"despaired\"~%string GUILTY=\"guilty\"~%string DISAPPOINTED=\"disappointed\"~%string EMBARRASSED=\"embarrassed\"~%string HORRIFIED=\"horrified\"~%string SKEPTICAL=\"skeptical\"~%string ANNOYED=\"annoyed\"~%string FURIOUS=\"furious\"~%string SUSPICIOUS=\"suspicious\"~%string REJECTED=\"rejected\"~%string BORED=\"bored\"~%string TIRED=\"tired\"~%string ASLEEP=\"asleep\"~%string CONFUSED=\"confused\"~%string AMAZED=\"amazed\"~%string EXCITED=\"excited\"~%~%string expression # one of the listed expressions~%~%# Valence/Arousal model of emotions~%float32 valence # from -1.0 to +1.0~%float32 arousal # from -1.0 to +1.0~%~%float32 confidence # from 0.0 to 1.0~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Expression)))
  "Returns full string definition for message of type 'Expression"
  (cl:format cl:nil "# Represents a human facial expression, either in a categorical way, or~%# using the valence/arousal model of emotions~%Header header~%~%# the list of expressions is based on Chambers MSc thesis, Bristol Robotics Lab 2020, and includes the six basic emotions in Eckman's model.~%#~%# Note that a node making use of this message definition is not supposed or~%# expected to handle all listed expressions.~%#~%# This list might change based on future needs/requests.~%~%string NEUTRAL=\"neutral\"~%string ANGRY=\"angry\"~%string SAD=\"sad\"~%string HAPPY=\"happy\"~%string SURPRISED=\"surprised\"~%string DISGUSTED=\"disgusted\"~%string SCARED=\"scared\"~%string PLEADING=\"pleading\"~%string VULNERABLE=\"vulnerable\"~%string DESPAIRED=\"despaired\"~%string GUILTY=\"guilty\"~%string DISAPPOINTED=\"disappointed\"~%string EMBARRASSED=\"embarrassed\"~%string HORRIFIED=\"horrified\"~%string SKEPTICAL=\"skeptical\"~%string ANNOYED=\"annoyed\"~%string FURIOUS=\"furious\"~%string SUSPICIOUS=\"suspicious\"~%string REJECTED=\"rejected\"~%string BORED=\"bored\"~%string TIRED=\"tired\"~%string ASLEEP=\"asleep\"~%string CONFUSED=\"confused\"~%string AMAZED=\"amazed\"~%string EXCITED=\"excited\"~%~%string expression # one of the listed expressions~%~%# Valence/Arousal model of emotions~%float32 valence # from -1.0 to +1.0~%float32 arousal # from -1.0 to +1.0~%~%float32 confidence # from 0.0 to 1.0~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Expression>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'expression))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Expression>))
  "Converts a ROS message object to a list"
  (cl:list 'Expression
    (cl:cons ':header (header msg))
    (cl:cons ':expression (expression msg))
    (cl:cons ':valence (valence msg))
    (cl:cons ':arousal (arousal msg))
    (cl:cons ':confidence (confidence msg))
))
