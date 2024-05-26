; Auto-generated. Do not edit!


(cl:in-package variant_msgs-msg)


;//! \htmlinclude VariantType.msg.html

(cl:defclass <VariantType> (roslisp-msg-protocol:ros-message)
  ((md5_sum
    :reader md5_sum
    :initarg :md5_sum
    :type cl:string
    :initform "")
   (data_type
    :reader data_type
    :initarg :data_type
    :type cl:string
    :initform "")
   (definition
    :reader definition
    :initarg :definition
    :type cl:string
    :initform ""))
)

(cl:defclass VariantType (<VariantType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VariantType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VariantType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name variant_msgs-msg:<VariantType> is deprecated: use variant_msgs-msg:VariantType instead.")))

(cl:ensure-generic-function 'md5_sum-val :lambda-list '(m))
(cl:defmethod md5_sum-val ((m <VariantType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:md5_sum-val is deprecated.  Use variant_msgs-msg:md5_sum instead.")
  (md5_sum m))

(cl:ensure-generic-function 'data_type-val :lambda-list '(m))
(cl:defmethod data_type-val ((m <VariantType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:data_type-val is deprecated.  Use variant_msgs-msg:data_type instead.")
  (data_type m))

(cl:ensure-generic-function 'definition-val :lambda-list '(m))
(cl:defmethod definition-val ((m <VariantType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:definition-val is deprecated.  Use variant_msgs-msg:definition instead.")
  (definition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VariantType>) ostream)
  "Serializes a message object of type '<VariantType>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'md5_sum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'md5_sum))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'definition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'definition))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VariantType>) istream)
  "Deserializes a message object of type '<VariantType>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'md5_sum) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'md5_sum) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'definition) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'definition) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VariantType>)))
  "Returns string type for a message object of type '<VariantType>"
  "variant_msgs/VariantType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VariantType)))
  "Returns string type for a message object of type 'VariantType"
  "variant_msgs/VariantType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VariantType>)))
  "Returns md5sum for a message object of type '<VariantType>"
  "ea49579a10d85560b62a77e2f2f84caf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VariantType)))
  "Returns md5sum for a message object of type 'VariantType"
  "ea49579a10d85560b62a77e2f2f84caf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VariantType>)))
  "Returns full string definition for message of type '<VariantType>"
  (cl:format cl:nil "string md5_sum                # Message type md5sum~%string data_type              # Message data type~%string definition             # Message definition~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VariantType)))
  "Returns full string definition for message of type 'VariantType"
  (cl:format cl:nil "string md5_sum                # Message type md5sum~%string data_type              # Message data type~%string definition             # Message definition~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VariantType>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'md5_sum))
     4 (cl:length (cl:slot-value msg 'data_type))
     4 (cl:length (cl:slot-value msg 'definition))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VariantType>))
  "Converts a ROS message object to a list"
  (cl:list 'VariantType
    (cl:cons ':md5_sum (md5_sum msg))
    (cl:cons ':data_type (data_type msg))
    (cl:cons ':definition (definition msg))
))
