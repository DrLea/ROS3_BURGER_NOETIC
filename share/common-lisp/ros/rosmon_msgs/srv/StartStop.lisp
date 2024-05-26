; Auto-generated. Do not edit!


(cl:in-package rosmon_msgs-srv)


;//! \htmlinclude StartStop-request.msg.html

(cl:defclass <StartStop-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:string
    :initform "")
   (ns
    :reader ns
    :initarg :ns
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StartStop-request (<StartStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosmon_msgs-srv:<StartStop-request> is deprecated: use rosmon_msgs-srv:StartStop-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <StartStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-srv:node-val is deprecated.  Use rosmon_msgs-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'ns-val :lambda-list '(m))
(cl:defmethod ns-val ((m <StartStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-srv:ns-val is deprecated.  Use rosmon_msgs-srv:ns instead.")
  (ns m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <StartStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosmon_msgs-srv:action-val is deprecated.  Use rosmon_msgs-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StartStop-request>)))
    "Constants for message type '<StartStop-request>"
  '((:START . 1)
    (:STOP . 2)
    (:RESTART . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StartStop-request)))
    "Constants for message type 'StartStop-request"
  '((:START . 1)
    (:STOP . 2)
    (:RESTART . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartStop-request>) ostream)
  "Serializes a message object of type '<StartStop-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ns))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartStop-request>) istream)
  "Deserializes a message object of type '<StartStop-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ns) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ns) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartStop-request>)))
  "Returns string type for a service object of type '<StartStop-request>"
  "rosmon_msgs/StartStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStop-request)))
  "Returns string type for a service object of type 'StartStop-request"
  "rosmon_msgs/StartStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartStop-request>)))
  "Returns md5sum for a message object of type '<StartStop-request>"
  "a95e7883b3762847035c73ffc86de3ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartStop-request)))
  "Returns md5sum for a message object of type 'StartStop-request"
  "a95e7883b3762847035c73ffc86de3ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartStop-request>)))
  "Returns full string definition for message of type '<StartStop-request>"
  (cl:format cl:nil "uint8 START = 1~%uint8 STOP = 2~%uint8 RESTART = 3~%~%string node     # ROS node name~%string ns       # ROS node namespace~%uint8 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartStop-request)))
  "Returns full string definition for message of type 'StartStop-request"
  (cl:format cl:nil "uint8 START = 1~%uint8 STOP = 2~%uint8 RESTART = 3~%~%string node     # ROS node name~%string ns       # ROS node namespace~%uint8 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartStop-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node))
     4 (cl:length (cl:slot-value msg 'ns))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartStop-request
    (cl:cons ':node (node msg))
    (cl:cons ':ns (ns msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude StartStop-response.msg.html

(cl:defclass <StartStop-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StartStop-response (<StartStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosmon_msgs-srv:<StartStop-response> is deprecated: use rosmon_msgs-srv:StartStop-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartStop-response>) ostream)
  "Serializes a message object of type '<StartStop-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartStop-response>) istream)
  "Deserializes a message object of type '<StartStop-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartStop-response>)))
  "Returns string type for a service object of type '<StartStop-response>"
  "rosmon_msgs/StartStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStop-response)))
  "Returns string type for a service object of type 'StartStop-response"
  "rosmon_msgs/StartStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartStop-response>)))
  "Returns md5sum for a message object of type '<StartStop-response>"
  "a95e7883b3762847035c73ffc86de3ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartStop-response)))
  "Returns md5sum for a message object of type 'StartStop-response"
  "a95e7883b3762847035c73ffc86de3ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartStop-response>)))
  "Returns full string definition for message of type '<StartStop-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartStop-response)))
  "Returns full string definition for message of type 'StartStop-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartStop-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartStop-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartStop)))
  'StartStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartStop)))
  'StartStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartStop)))
  "Returns string type for a service object of type '<StartStop>"
  "rosmon_msgs/StartStop")