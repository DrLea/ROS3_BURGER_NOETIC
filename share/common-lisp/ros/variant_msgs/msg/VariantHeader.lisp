; Auto-generated. Do not edit!


(cl:in-package variant_msgs-msg)


;//! \htmlinclude VariantHeader.msg.html

(cl:defclass <VariantHeader> (roslisp-msg-protocol:ros-message)
  ((publisher
    :reader publisher
    :initarg :publisher
    :type cl:string
    :initform "")
   (topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform "")
   (latched
    :reader latched
    :initarg :latched
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VariantHeader (<VariantHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VariantHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VariantHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name variant_msgs-msg:<VariantHeader> is deprecated: use variant_msgs-msg:VariantHeader instead.")))

(cl:ensure-generic-function 'publisher-val :lambda-list '(m))
(cl:defmethod publisher-val ((m <VariantHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:publisher-val is deprecated.  Use variant_msgs-msg:publisher instead.")
  (publisher m))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <VariantHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:topic-val is deprecated.  Use variant_msgs-msg:topic instead.")
  (topic m))

(cl:ensure-generic-function 'latched-val :lambda-list '(m))
(cl:defmethod latched-val ((m <VariantHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:latched-val is deprecated.  Use variant_msgs-msg:latched instead.")
  (latched m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VariantHeader>) ostream)
  "Serializes a message object of type '<VariantHeader>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'publisher))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'publisher))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'latched) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VariantHeader>) istream)
  "Deserializes a message object of type '<VariantHeader>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'publisher) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'publisher) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'latched) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VariantHeader>)))
  "Returns string type for a message object of type '<VariantHeader>"
  "variant_msgs/VariantHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VariantHeader)))
  "Returns string type for a message object of type 'VariantHeader"
  "variant_msgs/VariantHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VariantHeader>)))
  "Returns md5sum for a message object of type '<VariantHeader>"
  "e4adbe277ed51d50644d64067b86c73d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VariantHeader)))
  "Returns md5sum for a message object of type 'VariantHeader"
  "e4adbe277ed51d50644d64067b86c73d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VariantHeader>)))
  "Returns full string definition for message of type '<VariantHeader>"
  (cl:format cl:nil "string publisher              # Name of the publishing node~%string topic                  # Message publishing topic~%bool latched                  # If true, the message publication is latched~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VariantHeader)))
  "Returns full string definition for message of type 'VariantHeader"
  (cl:format cl:nil "string publisher              # Name of the publishing node~%string topic                  # Message publishing topic~%bool latched                  # If true, the message publication is latched~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VariantHeader>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'publisher))
     4 (cl:length (cl:slot-value msg 'topic))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VariantHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'VariantHeader
    (cl:cons ':publisher (publisher msg))
    (cl:cons ':topic (topic msg))
    (cl:cons ':latched (latched msg))
))
