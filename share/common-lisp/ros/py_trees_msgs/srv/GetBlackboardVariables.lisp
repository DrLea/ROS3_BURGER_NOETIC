; Auto-generated. Do not edit!


(cl:in-package py_trees_msgs-srv)


;//! \htmlinclude GetBlackboardVariables-request.msg.html

(cl:defclass <GetBlackboardVariables-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetBlackboardVariables-request (<GetBlackboardVariables-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBlackboardVariables-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBlackboardVariables-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_trees_msgs-srv:<GetBlackboardVariables-request> is deprecated: use py_trees_msgs-srv:GetBlackboardVariables-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBlackboardVariables-request>) ostream)
  "Serializes a message object of type '<GetBlackboardVariables-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBlackboardVariables-request>) istream)
  "Deserializes a message object of type '<GetBlackboardVariables-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBlackboardVariables-request>)))
  "Returns string type for a service object of type '<GetBlackboardVariables-request>"
  "py_trees_msgs/GetBlackboardVariablesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBlackboardVariables-request)))
  "Returns string type for a service object of type 'GetBlackboardVariables-request"
  "py_trees_msgs/GetBlackboardVariablesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBlackboardVariables-request>)))
  "Returns md5sum for a message object of type '<GetBlackboardVariables-request>"
  "8f184382c36d538fab610317191b119e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBlackboardVariables-request)))
  "Returns md5sum for a message object of type 'GetBlackboardVariables-request"
  "8f184382c36d538fab610317191b119e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBlackboardVariables-request>)))
  "Returns full string definition for message of type '<GetBlackboardVariables-request>"
  (cl:format cl:nil "# Retrieve a list of variables currently available in the blackboard.~%# This is primarily used as a utility for the blackboard watcher (find what~%# variables are available without the entire spam of the blackboard contents~%# before proceeding to watch a subset of these.~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBlackboardVariables-request)))
  "Returns full string definition for message of type 'GetBlackboardVariables-request"
  (cl:format cl:nil "# Retrieve a list of variables currently available in the blackboard.~%# This is primarily used as a utility for the blackboard watcher (find what~%# variables are available without the entire spam of the blackboard contents~%# before proceeding to watch a subset of these.~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBlackboardVariables-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBlackboardVariables-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBlackboardVariables-request
))
;//! \htmlinclude GetBlackboardVariables-response.msg.html

(cl:defclass <GetBlackboardVariables-response> (roslisp-msg-protocol:ros-message)
  ((variables
    :reader variables
    :initarg :variables
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetBlackboardVariables-response (<GetBlackboardVariables-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBlackboardVariables-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBlackboardVariables-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_trees_msgs-srv:<GetBlackboardVariables-response> is deprecated: use py_trees_msgs-srv:GetBlackboardVariables-response instead.")))

(cl:ensure-generic-function 'variables-val :lambda-list '(m))
(cl:defmethod variables-val ((m <GetBlackboardVariables-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-srv:variables-val is deprecated.  Use py_trees_msgs-srv:variables instead.")
  (variables m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBlackboardVariables-response>) ostream)
  "Serializes a message object of type '<GetBlackboardVariables-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'variables))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'variables))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBlackboardVariables-response>) istream)
  "Deserializes a message object of type '<GetBlackboardVariables-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'variables) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'variables)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBlackboardVariables-response>)))
  "Returns string type for a service object of type '<GetBlackboardVariables-response>"
  "py_trees_msgs/GetBlackboardVariablesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBlackboardVariables-response)))
  "Returns string type for a service object of type 'GetBlackboardVariables-response"
  "py_trees_msgs/GetBlackboardVariablesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBlackboardVariables-response>)))
  "Returns md5sum for a message object of type '<GetBlackboardVariables-response>"
  "8f184382c36d538fab610317191b119e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBlackboardVariables-response)))
  "Returns md5sum for a message object of type 'GetBlackboardVariables-response"
  "8f184382c36d538fab610317191b119e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBlackboardVariables-response>)))
  "Returns full string definition for message of type '<GetBlackboardVariables-response>"
  (cl:format cl:nil "string[] variables~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBlackboardVariables-response)))
  "Returns full string definition for message of type 'GetBlackboardVariables-response"
  (cl:format cl:nil "string[] variables~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBlackboardVariables-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'variables) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBlackboardVariables-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBlackboardVariables-response
    (cl:cons ':variables (variables msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBlackboardVariables)))
  'GetBlackboardVariables-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBlackboardVariables)))
  'GetBlackboardVariables-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBlackboardVariables)))
  "Returns string type for a service object of type '<GetBlackboardVariables>"
  "py_trees_msgs/GetBlackboardVariables")