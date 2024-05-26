; Auto-generated. Do not edit!


(cl:in-package py_trees_msgs-srv)


;//! \htmlinclude OpenBlackboardWatcher-request.msg.html

(cl:defclass <OpenBlackboardWatcher-request> (roslisp-msg-protocol:ros-message)
  ((variables
    :reader variables
    :initarg :variables
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass OpenBlackboardWatcher-request (<OpenBlackboardWatcher-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenBlackboardWatcher-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenBlackboardWatcher-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_trees_msgs-srv:<OpenBlackboardWatcher-request> is deprecated: use py_trees_msgs-srv:OpenBlackboardWatcher-request instead.")))

(cl:ensure-generic-function 'variables-val :lambda-list '(m))
(cl:defmethod variables-val ((m <OpenBlackboardWatcher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-srv:variables-val is deprecated.  Use py_trees_msgs-srv:variables instead.")
  (variables m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenBlackboardWatcher-request>) ostream)
  "Serializes a message object of type '<OpenBlackboardWatcher-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenBlackboardWatcher-request>) istream)
  "Deserializes a message object of type '<OpenBlackboardWatcher-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenBlackboardWatcher-request>)))
  "Returns string type for a service object of type '<OpenBlackboardWatcher-request>"
  "py_trees_msgs/OpenBlackboardWatcherRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenBlackboardWatcher-request)))
  "Returns string type for a service object of type 'OpenBlackboardWatcher-request"
  "py_trees_msgs/OpenBlackboardWatcherRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenBlackboardWatcher-request>)))
  "Returns md5sum for a message object of type '<OpenBlackboardWatcher-request>"
  "4ed40443479f1f30fe6cf433b04df9b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenBlackboardWatcher-request)))
  "Returns md5sum for a message object of type 'OpenBlackboardWatcher-request"
  "4ed40443479f1f30fe6cf433b04df9b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenBlackboardWatcher-request>)))
  "Returns full string definition for message of type '<OpenBlackboardWatcher-request>"
  (cl:format cl:nil "# Specify a list of variables to watch on the blackboard. These~%# can be nested variables (e.g. get only the position in an odom~%# message). Typically this is not used directly, but by the~%# blackboard watcher utility~%~%# list of variables to watch~%string[] variables~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenBlackboardWatcher-request)))
  "Returns full string definition for message of type 'OpenBlackboardWatcher-request"
  (cl:format cl:nil "# Specify a list of variables to watch on the blackboard. These~%# can be nested variables (e.g. get only the position in an odom~%# message). Typically this is not used directly, but by the~%# blackboard watcher utility~%~%# list of variables to watch~%string[] variables~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenBlackboardWatcher-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'variables) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenBlackboardWatcher-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenBlackboardWatcher-request
    (cl:cons ':variables (variables msg))
))
;//! \htmlinclude OpenBlackboardWatcher-response.msg.html

(cl:defclass <OpenBlackboardWatcher-response> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass OpenBlackboardWatcher-response (<OpenBlackboardWatcher-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenBlackboardWatcher-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenBlackboardWatcher-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_trees_msgs-srv:<OpenBlackboardWatcher-response> is deprecated: use py_trees_msgs-srv:OpenBlackboardWatcher-response instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <OpenBlackboardWatcher-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-srv:topic-val is deprecated.  Use py_trees_msgs-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenBlackboardWatcher-response>) ostream)
  "Serializes a message object of type '<OpenBlackboardWatcher-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenBlackboardWatcher-response>) istream)
  "Deserializes a message object of type '<OpenBlackboardWatcher-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenBlackboardWatcher-response>)))
  "Returns string type for a service object of type '<OpenBlackboardWatcher-response>"
  "py_trees_msgs/OpenBlackboardWatcherResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenBlackboardWatcher-response)))
  "Returns string type for a service object of type 'OpenBlackboardWatcher-response"
  "py_trees_msgs/OpenBlackboardWatcherResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenBlackboardWatcher-response>)))
  "Returns md5sum for a message object of type '<OpenBlackboardWatcher-response>"
  "4ed40443479f1f30fe6cf433b04df9b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenBlackboardWatcher-response)))
  "Returns md5sum for a message object of type 'OpenBlackboardWatcher-response"
  "4ed40443479f1f30fe6cf433b04df9b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenBlackboardWatcher-response>)))
  "Returns full string definition for message of type '<OpenBlackboardWatcher-response>"
  (cl:format cl:nil "# topic name that is dynamically created for watching~%string topic~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenBlackboardWatcher-response)))
  "Returns full string definition for message of type 'OpenBlackboardWatcher-response"
  (cl:format cl:nil "# topic name that is dynamically created for watching~%string topic~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenBlackboardWatcher-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenBlackboardWatcher-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenBlackboardWatcher-response
    (cl:cons ':topic (topic msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OpenBlackboardWatcher)))
  'OpenBlackboardWatcher-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OpenBlackboardWatcher)))
  'OpenBlackboardWatcher-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenBlackboardWatcher)))
  "Returns string type for a service object of type '<OpenBlackboardWatcher>"
  "py_trees_msgs/OpenBlackboardWatcher")