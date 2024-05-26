; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude NormalizedPointOfInterest2D.msg.html

(cl:defclass <NormalizedPointOfInterest2D> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (c
    :reader c
    :initarg :c
    :type cl:float
    :initform 0.0))
)

(cl:defclass NormalizedPointOfInterest2D (<NormalizedPointOfInterest2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NormalizedPointOfInterest2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NormalizedPointOfInterest2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<NormalizedPointOfInterest2D> is deprecated: use hri_msgs-msg:NormalizedPointOfInterest2D instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <NormalizedPointOfInterest2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:x-val is deprecated.  Use hri_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <NormalizedPointOfInterest2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:y-val is deprecated.  Use hri_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <NormalizedPointOfInterest2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:c-val is deprecated.  Use hri_msgs-msg:c instead.")
  (c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NormalizedPointOfInterest2D>) ostream)
  "Serializes a message object of type '<NormalizedPointOfInterest2D>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NormalizedPointOfInterest2D>) istream)
  "Deserializes a message object of type '<NormalizedPointOfInterest2D>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NormalizedPointOfInterest2D>)))
  "Returns string type for a message object of type '<NormalizedPointOfInterest2D>"
  "hri_msgs/NormalizedPointOfInterest2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NormalizedPointOfInterest2D)))
  "Returns string type for a message object of type 'NormalizedPointOfInterest2D"
  "hri_msgs/NormalizedPointOfInterest2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NormalizedPointOfInterest2D>)))
  "Returns md5sum for a message object of type '<NormalizedPointOfInterest2D>"
  "eb224da30b2d872f41cf40e039cdb0d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NormalizedPointOfInterest2D)))
  "Returns md5sum for a message object of type 'NormalizedPointOfInterest2D"
  "eb224da30b2d872f41cf40e039cdb0d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NormalizedPointOfInterest2D>)))
  "Returns full string definition for message of type '<NormalizedPointOfInterest2D>"
  (cl:format cl:nil "# This contains the position of a point of interest (typically in an image)~%# the coordinates are always normalized and must belong to [0.,1.].~%# c is a confidence level (between 0. and 1.) associated to that POI~%float32 x~%float32 y~%float32 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NormalizedPointOfInterest2D)))
  "Returns full string definition for message of type 'NormalizedPointOfInterest2D"
  (cl:format cl:nil "# This contains the position of a point of interest (typically in an image)~%# the coordinates are always normalized and must belong to [0.,1.].~%# c is a confidence level (between 0. and 1.) associated to that POI~%float32 x~%float32 y~%float32 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NormalizedPointOfInterest2D>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NormalizedPointOfInterest2D>))
  "Converts a ROS message object to a list"
  (cl:list 'NormalizedPointOfInterest2D
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':c (c msg))
))
