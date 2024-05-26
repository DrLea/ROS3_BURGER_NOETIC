; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude IdsMatch.msg.html

(cl:defclass <IdsMatch> (roslisp-msg-protocol:ros-message)
  ((id1
    :reader id1
    :initarg :id1
    :type cl:string
    :initform "")
   (id1_type
    :reader id1_type
    :initarg :id1_type
    :type cl:fixnum
    :initform 0)
   (id2
    :reader id2
    :initarg :id2
    :type cl:string
    :initform "")
   (id2_type
    :reader id2_type
    :initarg :id2_type
    :type cl:fixnum
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass IdsMatch (<IdsMatch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IdsMatch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IdsMatch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<IdsMatch> is deprecated: use hri_msgs-msg:IdsMatch instead.")))

(cl:ensure-generic-function 'id1-val :lambda-list '(m))
(cl:defmethod id1-val ((m <IdsMatch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:id1-val is deprecated.  Use hri_msgs-msg:id1 instead.")
  (id1 m))

(cl:ensure-generic-function 'id1_type-val :lambda-list '(m))
(cl:defmethod id1_type-val ((m <IdsMatch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:id1_type-val is deprecated.  Use hri_msgs-msg:id1_type instead.")
  (id1_type m))

(cl:ensure-generic-function 'id2-val :lambda-list '(m))
(cl:defmethod id2-val ((m <IdsMatch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:id2-val is deprecated.  Use hri_msgs-msg:id2 instead.")
  (id2 m))

(cl:ensure-generic-function 'id2_type-val :lambda-list '(m))
(cl:defmethod id2_type-val ((m <IdsMatch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:id2_type-val is deprecated.  Use hri_msgs-msg:id2_type instead.")
  (id2_type m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <IdsMatch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:confidence-val is deprecated.  Use hri_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IdsMatch>)))
    "Constants for message type '<IdsMatch>"
  '((:UNSET . 0)
    (:PERSON . 1)
    (:FACE . 2)
    (:BODY . 3)
    (:VOICE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IdsMatch)))
    "Constants for message type 'IdsMatch"
  '((:UNSET . 0)
    (:PERSON . 1)
    (:FACE . 2)
    (:BODY . 3)
    (:VOICE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IdsMatch>) ostream)
  "Serializes a message object of type '<IdsMatch>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id1))
  (cl:let* ((signed (cl:slot-value msg 'id1_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id2))
  (cl:let* ((signed (cl:slot-value msg 'id2_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IdsMatch>) istream)
  "Deserializes a message object of type '<IdsMatch>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id1_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id2_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IdsMatch>)))
  "Returns string type for a message object of type '<IdsMatch>"
  "hri_msgs/IdsMatch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IdsMatch)))
  "Returns string type for a message object of type 'IdsMatch"
  "hri_msgs/IdsMatch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IdsMatch>)))
  "Returns md5sum for a message object of type '<IdsMatch>"
  "47ee5557c84afd004bec4ac7f5fa56f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IdsMatch)))
  "Returns md5sum for a message object of type 'IdsMatch"
  "47ee5557c84afd004bec4ac7f5fa56f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IdsMatch>)))
  "Returns full string definition for message of type '<IdsMatch>"
  (cl:format cl:nil "# This message encodes possible matches between transient IDs (face, body,~%# voice) and permanent IDs (person), with their corresponding confidence level.~%# Such messages should be published on the /humans/candidate_matches topic.~%#~%# confidence == 0.0 has the special meaning of: those two IDs are *not* associated.~%# This can be use for instance if one of the ID (eg, a face id) is not valid anymore~%# (face not tracked anymore)~%#~%# Note that setting only one of `id1` or `id2` is invalid. Likewise, `id1` and~%# `id2` can not be equal.~%#~%# ## Examples~%#~%# For instance, a face recognition module might publish the following message~%# to indicate that face 'a3eb4' has been recognised with 63% confidence as~%# person 'b31ad':~%#~%# {id1: 'a3eb4', id1_type: FACE, id2: 'b31ad', id2_type: PERSON, confidence:~%# 0.63, }~%#~%# Another example: a module that detect both faces and skeleton might publish a~%# 100% confidence match between the two:~%#~%# {id1: 'ff424', id1_type: FACE, id2: '850d1', id2_type: BODY, confidence:~%# 1.0, }~%#~%~%int8 UNSET=0~%int8 PERSON=1~%int8 FACE=2~%int8 BODY=3~%int8 VOICE=4~%~%string id1~%int8 id1_type~%string id2~%int8 id2_type~%~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IdsMatch)))
  "Returns full string definition for message of type 'IdsMatch"
  (cl:format cl:nil "# This message encodes possible matches between transient IDs (face, body,~%# voice) and permanent IDs (person), with their corresponding confidence level.~%# Such messages should be published on the /humans/candidate_matches topic.~%#~%# confidence == 0.0 has the special meaning of: those two IDs are *not* associated.~%# This can be use for instance if one of the ID (eg, a face id) is not valid anymore~%# (face not tracked anymore)~%#~%# Note that setting only one of `id1` or `id2` is invalid. Likewise, `id1` and~%# `id2` can not be equal.~%#~%# ## Examples~%#~%# For instance, a face recognition module might publish the following message~%# to indicate that face 'a3eb4' has been recognised with 63% confidence as~%# person 'b31ad':~%#~%# {id1: 'a3eb4', id1_type: FACE, id2: 'b31ad', id2_type: PERSON, confidence:~%# 0.63, }~%#~%# Another example: a module that detect both faces and skeleton might publish a~%# 100% confidence match between the two:~%#~%# {id1: 'ff424', id1_type: FACE, id2: '850d1', id2_type: BODY, confidence:~%# 1.0, }~%#~%~%int8 UNSET=0~%int8 PERSON=1~%int8 FACE=2~%int8 BODY=3~%int8 VOICE=4~%~%string id1~%int8 id1_type~%string id2~%int8 id2_type~%~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IdsMatch>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id1))
     1
     4 (cl:length (cl:slot-value msg 'id2))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IdsMatch>))
  "Converts a ROS message object to a list"
  (cl:list 'IdsMatch
    (cl:cons ':id1 (id1 msg))
    (cl:cons ':id1_type (id1_type msg))
    (cl:cons ':id2 (id2 msg))
    (cl:cons ':id2_type (id2_type msg))
    (cl:cons ':confidence (confidence msg))
))
