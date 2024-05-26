; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude Gaze.msg.html

(cl:defclass <Gaze> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sender
    :reader sender
    :initarg :sender
    :type cl:string
    :initform "")
   (receiver
    :reader receiver
    :initarg :receiver
    :type cl:string
    :initform ""))
)

(cl:defclass Gaze (<Gaze>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gaze>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gaze)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<Gaze> is deprecated: use hri_msgs-msg:Gaze instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Gaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:header-val is deprecated.  Use hri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sender-val :lambda-list '(m))
(cl:defmethod sender-val ((m <Gaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:sender-val is deprecated.  Use hri_msgs-msg:sender instead.")
  (sender m))

(cl:ensure-generic-function 'receiver-val :lambda-list '(m))
(cl:defmethod receiver-val ((m <Gaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:receiver-val is deprecated.  Use hri_msgs-msg:receiver instead.")
  (receiver m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gaze>) ostream)
  "Serializes a message object of type '<Gaze>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sender))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sender))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'receiver))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'receiver))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gaze>) istream)
  "Deserializes a message object of type '<Gaze>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sender) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sender) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'receiver) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'receiver) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gaze>)))
  "Returns string type for a message object of type '<Gaze>"
  "hri_msgs/Gaze")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gaze)))
  "Returns string type for a message object of type 'Gaze"
  "hri_msgs/Gaze")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gaze>)))
  "Returns md5sum for a message object of type '<Gaze>"
  "1408dc110169ebd2a0cd704f3af52beb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gaze)))
  "Returns md5sum for a message object of type 'Gaze"
  "1408dc110169ebd2a0cd704f3af52beb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gaze>)))
  "Returns full string definition for message of type '<Gaze>"
  (cl:format cl:nil "# Represents the gaze direction from a particular person (sender ID) to the~%# person that is being gazed to (receiver ID).~%#~%# If the sender or receiver IDs are empty, it means that the gaze respectively~%# originates or is targeted to the robot itself.~%Header header~%~%string sender~%string receiver~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gaze)))
  "Returns full string definition for message of type 'Gaze"
  (cl:format cl:nil "# Represents the gaze direction from a particular person (sender ID) to the~%# person that is being gazed to (receiver ID).~%#~%# If the sender or receiver IDs are empty, it means that the gaze respectively~%# originates or is targeted to the robot itself.~%Header header~%~%string sender~%string receiver~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gaze>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'sender))
     4 (cl:length (cl:slot-value msg 'receiver))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gaze>))
  "Converts a ROS message object to a list"
  (cl:list 'Gaze
    (cl:cons ':header (header msg))
    (cl:cons ':sender (sender msg))
    (cl:cons ':receiver (receiver msg))
))
