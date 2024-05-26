; Auto-generated. Do not edit!


(cl:in-package rosbag_fancy_msgs-msg)


;//! \htmlinclude TopicStatus.msg.html

(cl:defclass <TopicStatus> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (publishers
    :reader publishers
    :initarg :publishers
    :type cl:integer
    :initform 0)
   (messages
    :reader messages
    :initarg :messages
    :type cl:integer
    :initform 0)
   (messages_in_current_bag
    :reader messages_in_current_bag
    :initarg :messages_in_current_bag
    :type cl:integer
    :initform 0)
   (rate
    :reader rate
    :initarg :rate
    :type cl:float
    :initform 0.0)
   (bytes
    :reader bytes
    :initarg :bytes
    :type cl:integer
    :initform 0)
   (bandwidth
    :reader bandwidth
    :initarg :bandwidth
    :type cl:float
    :initform 0.0))
)

(cl:defclass TopicStatus (<TopicStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbag_fancy_msgs-msg:<TopicStatus> is deprecated: use rosbag_fancy_msgs-msg:TopicStatus instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_fancy_msgs-msg:name-val is deprecated.  Use rosbag_fancy_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'publishers-val :lambda-list '(m))
(cl:defmethod publishers-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_fancy_msgs-msg:publishers-val is deprecated.  Use rosbag_fancy_msgs-msg:publishers instead.")
  (publishers m))

(cl:ensure-generic-function 'messages-val :lambda-list '(m))
(cl:defmethod messages-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_fancy_msgs-msg:messages-val is deprecated.  Use rosbag_fancy_msgs-msg:messages instead.")
  (messages m))

(cl:ensure-generic-function 'messages_in_current_bag-val :lambda-list '(m))
(cl:defmethod messages_in_current_bag-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_fancy_msgs-msg:messages_in_current_bag-val is deprecated.  Use rosbag_fancy_msgs-msg:messages_in_current_bag instead.")
  (messages_in_current_bag m))

(cl:ensure-generic-function 'rate-val :lambda-list '(m))
(cl:defmethod rate-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_fancy_msgs-msg:rate-val is deprecated.  Use rosbag_fancy_msgs-msg:rate instead.")
  (rate m))

(cl:ensure-generic-function 'bytes-val :lambda-list '(m))
(cl:defmethod bytes-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_fancy_msgs-msg:bytes-val is deprecated.  Use rosbag_fancy_msgs-msg:bytes instead.")
  (bytes m))

(cl:ensure-generic-function 'bandwidth-val :lambda-list '(m))
(cl:defmethod bandwidth-val ((m <TopicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbag_fancy_msgs-msg:bandwidth-val is deprecated.  Use rosbag_fancy_msgs-msg:bandwidth instead.")
  (bandwidth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicStatus>) ostream)
  "Serializes a message object of type '<TopicStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'publishers)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'publishers)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'publishers)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'publishers)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'messages)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'messages)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'messages)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'messages)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'messages)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'messages)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'messages)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'messages)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'messages_in_current_bag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'messages_in_current_bag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'messages_in_current_bag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'messages_in_current_bag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'messages_in_current_bag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'messages_in_current_bag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'messages_in_current_bag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'messages_in_current_bag)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bytes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bytes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bytes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bytes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'bytes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'bytes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'bytes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'bytes)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bandwidth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicStatus>) istream)
  "Deserializes a message object of type '<TopicStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'publishers)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'publishers)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'publishers)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'publishers)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'messages)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'messages)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'messages)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'messages)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'messages)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'messages)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'messages)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'messages)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'messages_in_current_bag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'messages_in_current_bag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'messages_in_current_bag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'messages_in_current_bag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'messages_in_current_bag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'messages_in_current_bag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'messages_in_current_bag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'messages_in_current_bag)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bytes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bytes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bytes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bytes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'bytes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'bytes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'bytes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'bytes)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bandwidth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicStatus>)))
  "Returns string type for a message object of type '<TopicStatus>"
  "rosbag_fancy_msgs/TopicStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicStatus)))
  "Returns string type for a message object of type 'TopicStatus"
  "rosbag_fancy_msgs/TopicStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicStatus>)))
  "Returns md5sum for a message object of type '<TopicStatus>"
  "ab1d1b0e9b845daddfffb9265d5bb87c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicStatus)))
  "Returns md5sum for a message object of type 'TopicStatus"
  "ab1d1b0e9b845daddfffb9265d5bb87c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicStatus>)))
  "Returns full string definition for message of type '<TopicStatus>"
  (cl:format cl:nil "~%string name~%~%uint32 publishers~%uint64 messages~%uint64 messages_in_current_bag~%float32 rate~%uint64 bytes~%float32 bandwidth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicStatus)))
  "Returns full string definition for message of type 'TopicStatus"
  (cl:format cl:nil "~%string name~%~%uint32 publishers~%uint64 messages~%uint64 messages_in_current_bag~%float32 rate~%uint64 bytes~%float32 bandwidth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     8
     8
     4
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicStatus
    (cl:cons ':name (name msg))
    (cl:cons ':publishers (publishers msg))
    (cl:cons ':messages (messages msg))
    (cl:cons ':messages_in_current_bag (messages_in_current_bag msg))
    (cl:cons ':rate (rate msg))
    (cl:cons ':bytes (bytes msg))
    (cl:cons ':bandwidth (bandwidth msg))
))
