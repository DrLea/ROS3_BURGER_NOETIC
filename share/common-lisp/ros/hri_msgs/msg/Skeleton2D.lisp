; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude Skeleton2D.msg.html

(cl:defclass <Skeleton2D> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (skeleton
    :reader skeleton
    :initarg :skeleton
    :type (cl:vector hri_msgs-msg:NormalizedPointOfInterest2D)
   :initform (cl:make-array 0 :element-type 'hri_msgs-msg:NormalizedPointOfInterest2D :initial-element (cl:make-instance 'hri_msgs-msg:NormalizedPointOfInterest2D))))
)

(cl:defclass Skeleton2D (<Skeleton2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Skeleton2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Skeleton2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<Skeleton2D> is deprecated: use hri_msgs-msg:Skeleton2D instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Skeleton2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:header-val is deprecated.  Use hri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'skeleton-val :lambda-list '(m))
(cl:defmethod skeleton-val ((m <Skeleton2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:skeleton-val is deprecated.  Use hri_msgs-msg:skeleton instead.")
  (skeleton m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Skeleton2D>)))
    "Constants for message type '<Skeleton2D>"
  '((:NOSE . 0)
    (:NECK . 1)
    (:RIGHT_SHOULDER . 2)
    (:RIGHT_ELBOW . 3)
    (:RIGHT_WRIST . 4)
    (:LEFT_SHOULDER . 5)
    (:LEFT_ELBOW . 6)
    (:LEFT_WRIST . 7)
    (:RIGHT_HIP . 8)
    (:RIGHT_KNEE . 9)
    (:RIGHT_ANKLE . 10)
    (:LEFT_HIP . 11)
    (:LEFT_KNEE . 12)
    (:LEFT_ANKLE . 13)
    (:LEFT_EYE . 14)
    (:RIGHT_EYE . 15)
    (:LEFT_EAR . 16)
    (:RIGHT_EAR . 17))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Skeleton2D)))
    "Constants for message type 'Skeleton2D"
  '((:NOSE . 0)
    (:NECK . 1)
    (:RIGHT_SHOULDER . 2)
    (:RIGHT_ELBOW . 3)
    (:RIGHT_WRIST . 4)
    (:LEFT_SHOULDER . 5)
    (:LEFT_ELBOW . 6)
    (:LEFT_WRIST . 7)
    (:RIGHT_HIP . 8)
    (:RIGHT_KNEE . 9)
    (:RIGHT_ANKLE . 10)
    (:LEFT_HIP . 11)
    (:LEFT_KNEE . 12)
    (:LEFT_ANKLE . 13)
    (:LEFT_EYE . 14)
    (:RIGHT_EYE . 15)
    (:LEFT_EAR . 16)
    (:RIGHT_EAR . 17))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Skeleton2D>) ostream)
  "Serializes a message object of type '<Skeleton2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'skeleton))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'skeleton))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Skeleton2D>) istream)
  "Deserializes a message object of type '<Skeleton2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'skeleton) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'skeleton)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hri_msgs-msg:NormalizedPointOfInterest2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Skeleton2D>)))
  "Returns string type for a message object of type '<Skeleton2D>"
  "hri_msgs/Skeleton2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Skeleton2D)))
  "Returns string type for a message object of type 'Skeleton2D"
  "hri_msgs/Skeleton2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Skeleton2D>)))
  "Returns md5sum for a message object of type '<Skeleton2D>"
  "efedc2dc59671380a1d9b497f0740be4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Skeleton2D)))
  "Returns md5sum for a message object of type 'Skeleton2D"
  "efedc2dc59671380a1d9b497f0740be4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Skeleton2D>)))
  "Returns full string definition for message of type '<Skeleton2D>"
  (cl:format cl:nil "# This message contains a list of skeletal keypoints ~%# (0, 0) is at top-left corner of image~%~%Header header        # Header timestamp should be acquisition time of the original image~%~%# skeletal key points codes~%# Follows OpenPose coco model convention~%# https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/doc/output.md#pose-output-format-coco~%~%uint8 NOSE = 0~%uint8 NECK = 1~%uint8 RIGHT_SHOULDER = 2~%uint8 RIGHT_ELBOW = 3~%uint8 RIGHT_WRIST = 4~%uint8 LEFT_SHOULDER = 5~%uint8 LEFT_ELBOW = 6~%uint8 LEFT_WRIST = 7~%uint8 RIGHT_HIP = 8~%uint8 RIGHT_KNEE = 9~%uint8 RIGHT_ANKLE = 10~%uint8 LEFT_HIP = 11~%uint8 LEFT_KNEE = 12~%uint8 LEFT_ANKLE = 13~%uint8 LEFT_EYE = 14~%uint8 RIGHT_EYE = 15~%uint8 LEFT_EAR = 16~%uint8 RIGHT_EAR = 17~%~%# array of 18 skeletal key points coordinates, one per skeletal key point, ordered per skeletal key points codes~%NormalizedPointOfInterest2D[] skeleton~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hri_msgs/NormalizedPointOfInterest2D~%# This contains the position of a point of interest (typically in an image)~%# the coordinates are always normalized and must belong to [0.,1.].~%# c is a confidence level (between 0. and 1.) associated to that POI~%float32 x~%float32 y~%float32 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Skeleton2D)))
  "Returns full string definition for message of type 'Skeleton2D"
  (cl:format cl:nil "# This message contains a list of skeletal keypoints ~%# (0, 0) is at top-left corner of image~%~%Header header        # Header timestamp should be acquisition time of the original image~%~%# skeletal key points codes~%# Follows OpenPose coco model convention~%# https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/doc/output.md#pose-output-format-coco~%~%uint8 NOSE = 0~%uint8 NECK = 1~%uint8 RIGHT_SHOULDER = 2~%uint8 RIGHT_ELBOW = 3~%uint8 RIGHT_WRIST = 4~%uint8 LEFT_SHOULDER = 5~%uint8 LEFT_ELBOW = 6~%uint8 LEFT_WRIST = 7~%uint8 RIGHT_HIP = 8~%uint8 RIGHT_KNEE = 9~%uint8 RIGHT_ANKLE = 10~%uint8 LEFT_HIP = 11~%uint8 LEFT_KNEE = 12~%uint8 LEFT_ANKLE = 13~%uint8 LEFT_EYE = 14~%uint8 RIGHT_EYE = 15~%uint8 LEFT_EAR = 16~%uint8 RIGHT_EAR = 17~%~%# array of 18 skeletal key points coordinates, one per skeletal key point, ordered per skeletal key points codes~%NormalizedPointOfInterest2D[] skeleton~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hri_msgs/NormalizedPointOfInterest2D~%# This contains the position of a point of interest (typically in an image)~%# the coordinates are always normalized and must belong to [0.,1.].~%# c is a confidence level (between 0. and 1.) associated to that POI~%float32 x~%float32 y~%float32 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Skeleton2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'skeleton) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Skeleton2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Skeleton2D
    (cl:cons ':header (header msg))
    (cl:cons ':skeleton (skeleton msg))
))
