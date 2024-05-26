; Auto-generated. Do not edit!


(cl:in-package py_trees_msgs-srv)


;//! \htmlinclude CloseBlackboardWatcher-request.msg.html

(cl:defclass <CloseBlackboardWatcher-request> (roslisp-msg-protocol:ros-message)
  ((topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform ""))
)

(cl:defclass CloseBlackboardWatcher-request (<CloseBlackboardWatcher-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseBlackboardWatcher-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseBlackboardWatcher-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_trees_msgs-srv:<CloseBlackboardWatcher-request> is deprecated: use py_trees_msgs-srv:CloseBlackboardWatcher-request instead.")))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <CloseBlackboardWatcher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-srv:topic_name-val is deprecated.  Use py_trees_msgs-srv:topic_name instead.")
  (topic_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseBlackboardWatcher-request>) ostream)
  "Serializes a message object of type '<CloseBlackboardWatcher-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseBlackboardWatcher-request>) istream)
  "Deserializes a message object of type '<CloseBlackboardWatcher-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseBlackboardWatcher-request>)))
  "Returns string type for a service object of type '<CloseBlackboardWatcher-request>"
  "py_trees_msgs/CloseBlackboardWatcherRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseBlackboardWatcher-request)))
  "Returns string type for a service object of type 'CloseBlackboardWatcher-request"
  "py_trees_msgs/CloseBlackboardWatcherRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseBlackboardWatcher-request>)))
  "Returns md5sum for a message object of type '<CloseBlackboardWatcher-request>"
  "55b7efb7a62750406d3968e9c1907525")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseBlackboardWatcher-request)))
  "Returns md5sum for a message object of type 'CloseBlackboardWatcher-request"
  "55b7efb7a62750406d3968e9c1907525")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseBlackboardWatcher-request>)))
  "Returns full string definition for message of type '<CloseBlackboardWatcher-request>"
  (cl:format cl:nil "# Send the topic name of sub_blackboard to send shutdown request~%# The blackboard watcher listening has the topic name it's listening to~%# Result response states whether sub_blackboard has been purged successfully~%# on request~%~%# topic name that is dynamically created for watching to shutdown~%string topic_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseBlackboardWatcher-request)))
  "Returns full string definition for message of type 'CloseBlackboardWatcher-request"
  (cl:format cl:nil "# Send the topic name of sub_blackboard to send shutdown request~%# The blackboard watcher listening has the topic name it's listening to~%# Result response states whether sub_blackboard has been purged successfully~%# on request~%~%# topic name that is dynamically created for watching to shutdown~%string topic_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseBlackboardWatcher-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseBlackboardWatcher-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseBlackboardWatcher-request
    (cl:cons ':topic_name (topic_name msg))
))
;//! \htmlinclude CloseBlackboardWatcher-response.msg.html

(cl:defclass <CloseBlackboardWatcher-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CloseBlackboardWatcher-response (<CloseBlackboardWatcher-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloseBlackboardWatcher-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloseBlackboardWatcher-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_trees_msgs-srv:<CloseBlackboardWatcher-response> is deprecated: use py_trees_msgs-srv:CloseBlackboardWatcher-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CloseBlackboardWatcher-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-srv:result-val is deprecated.  Use py_trees_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloseBlackboardWatcher-response>) ostream)
  "Serializes a message object of type '<CloseBlackboardWatcher-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloseBlackboardWatcher-response>) istream)
  "Deserializes a message object of type '<CloseBlackboardWatcher-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloseBlackboardWatcher-response>)))
  "Returns string type for a service object of type '<CloseBlackboardWatcher-response>"
  "py_trees_msgs/CloseBlackboardWatcherResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseBlackboardWatcher-response)))
  "Returns string type for a service object of type 'CloseBlackboardWatcher-response"
  "py_trees_msgs/CloseBlackboardWatcherResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloseBlackboardWatcher-response>)))
  "Returns md5sum for a message object of type '<CloseBlackboardWatcher-response>"
  "55b7efb7a62750406d3968e9c1907525")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloseBlackboardWatcher-response)))
  "Returns md5sum for a message object of type 'CloseBlackboardWatcher-response"
  "55b7efb7a62750406d3968e9c1907525")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloseBlackboardWatcher-response>)))
  "Returns full string definition for message of type '<CloseBlackboardWatcher-response>"
  (cl:format cl:nil "# response stating successful shutdown of sub_blackboard~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloseBlackboardWatcher-response)))
  "Returns full string definition for message of type 'CloseBlackboardWatcher-response"
  (cl:format cl:nil "# response stating successful shutdown of sub_blackboard~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloseBlackboardWatcher-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloseBlackboardWatcher-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CloseBlackboardWatcher-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CloseBlackboardWatcher)))
  'CloseBlackboardWatcher-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CloseBlackboardWatcher)))
  'CloseBlackboardWatcher-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloseBlackboardWatcher)))
  "Returns string type for a service object of type '<CloseBlackboardWatcher>"
  "py_trees_msgs/CloseBlackboardWatcher")