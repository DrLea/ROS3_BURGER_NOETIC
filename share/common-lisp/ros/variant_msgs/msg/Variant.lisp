; Auto-generated. Do not edit!


(cl:in-package variant_msgs-msg)


;//! \htmlinclude Variant.msg.html

(cl:defclass <Variant> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type variant_msgs-msg:VariantHeader
    :initform (cl:make-instance 'variant_msgs-msg:VariantHeader))
   (type
    :reader type
    :initarg :type
    :type variant_msgs-msg:VariantType
    :initform (cl:make-instance 'variant_msgs-msg:VariantType))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Variant (<Variant>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Variant>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Variant)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name variant_msgs-msg:<Variant> is deprecated: use variant_msgs-msg:Variant instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Variant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:header-val is deprecated.  Use variant_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Variant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:type-val is deprecated.  Use variant_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Variant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:data-val is deprecated.  Use variant_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Variant>) ostream)
  "Serializes a message object of type '<Variant>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Variant>) istream)
  "Deserializes a message object of type '<Variant>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Variant>)))
  "Returns string type for a message object of type '<Variant>"
  "variant_msgs/Variant")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Variant)))
  "Returns string type for a message object of type 'Variant"
  "variant_msgs/Variant")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Variant>)))
  "Returns md5sum for a message object of type '<Variant>"
  "01c24cd44ef34b0c6a309bcafb6bdfab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Variant)))
  "Returns md5sum for a message object of type 'Variant"
  "01c24cd44ef34b0c6a309bcafb6bdfab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Variant>)))
  "Returns full string definition for message of type '<Variant>"
  (cl:format cl:nil "VariantHeader header                    # Variant header~%~%VariantType type                        # Variant type information~%uint8[] data                            # Binary message data~%~%================================================================================~%MSG: variant_msgs/VariantHeader~%string publisher              # Name of the publishing node~%string topic                  # Message publishing topic~%bool latched                  # If true, the message publication is latched~%~%================================================================================~%MSG: variant_msgs/VariantType~%string md5_sum                # Message type md5sum~%string data_type              # Message data type~%string definition             # Message definition~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Variant)))
  "Returns full string definition for message of type 'Variant"
  (cl:format cl:nil "VariantHeader header                    # Variant header~%~%VariantType type                        # Variant type information~%uint8[] data                            # Binary message data~%~%================================================================================~%MSG: variant_msgs/VariantHeader~%string publisher              # Name of the publishing node~%string topic                  # Message publishing topic~%bool latched                  # If true, the message publication is latched~%~%================================================================================~%MSG: variant_msgs/VariantType~%string md5_sum                # Message type md5sum~%string data_type              # Message data type~%string definition             # Message definition~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Variant>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Variant>))
  "Converts a ROS message object to a list"
  (cl:list 'Variant
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':data (data msg))
))
