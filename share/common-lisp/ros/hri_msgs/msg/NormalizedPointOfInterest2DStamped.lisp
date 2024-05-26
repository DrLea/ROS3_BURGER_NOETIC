; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude NormalizedPointOfInterest2DStamped.msg.html

(cl:defclass <NormalizedPointOfInterest2DStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x
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

(cl:defclass NormalizedPointOfInterest2DStamped (<NormalizedPointOfInterest2DStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NormalizedPointOfInterest2DStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NormalizedPointOfInterest2DStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<NormalizedPointOfInterest2DStamped> is deprecated: use hri_msgs-msg:NormalizedPointOfInterest2DStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NormalizedPointOfInterest2DStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:header-val is deprecated.  Use hri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <NormalizedPointOfInterest2DStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:x-val is deprecated.  Use hri_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <NormalizedPointOfInterest2DStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:y-val is deprecated.  Use hri_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <NormalizedPointOfInterest2DStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:c-val is deprecated.  Use hri_msgs-msg:c instead.")
  (c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NormalizedPointOfInterest2DStamped>) ostream)
  "Serializes a message object of type '<NormalizedPointOfInterest2DStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NormalizedPointOfInterest2DStamped>) istream)
  "Deserializes a message object of type '<NormalizedPointOfInterest2DStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NormalizedPointOfInterest2DStamped>)))
  "Returns string type for a message object of type '<NormalizedPointOfInterest2DStamped>"
  "hri_msgs/NormalizedPointOfInterest2DStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NormalizedPointOfInterest2DStamped)))
  "Returns string type for a message object of type 'NormalizedPointOfInterest2DStamped"
  "hri_msgs/NormalizedPointOfInterest2DStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NormalizedPointOfInterest2DStamped>)))
  "Returns md5sum for a message object of type '<NormalizedPointOfInterest2DStamped>"
  "f00d620d5791659f1cba63fdcb50f444")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NormalizedPointOfInterest2DStamped)))
  "Returns md5sum for a message object of type 'NormalizedPointOfInterest2DStamped"
  "f00d620d5791659f1cba63fdcb50f444")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NormalizedPointOfInterest2DStamped>)))
  "Returns full string definition for message of type '<NormalizedPointOfInterest2DStamped>"
  (cl:format cl:nil "# This contains the position of a point of interest (typically in an image)~%# the coordinates are always normalized and must belong to [0.,1.].~%# c is a confidence level (between 0. and 1.) associated to that POI~%Header header # Header timestamp should be acquisition time of the original image~%float32 x~%float32 y~%float32 c~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NormalizedPointOfInterest2DStamped)))
  "Returns full string definition for message of type 'NormalizedPointOfInterest2DStamped"
  (cl:format cl:nil "# This contains the position of a point of interest (typically in an image)~%# the coordinates are always normalized and must belong to [0.,1.].~%# c is a confidence level (between 0. and 1.) associated to that POI~%Header header # Header timestamp should be acquisition time of the original image~%float32 x~%float32 y~%float32 c~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NormalizedPointOfInterest2DStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NormalizedPointOfInterest2DStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'NormalizedPointOfInterest2DStamped
    (cl:cons ':header (header msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':c (c msg))
))
