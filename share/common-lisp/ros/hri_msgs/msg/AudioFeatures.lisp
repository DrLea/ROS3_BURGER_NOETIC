; Auto-generated. Do not edit!


(cl:in-package hri_msgs-msg)


;//! \htmlinclude AudioFeatures.msg.html

(cl:defclass <AudioFeatures> (roslisp-msg-protocol:ros-message)
  ((ZCR
    :reader ZCR
    :initarg :ZCR
    :type cl:float
    :initform 0.0)
   (RMS
    :reader RMS
    :initarg :RMS
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (HNR
    :reader HNR
    :initarg :HNR
    :type cl:float
    :initform 0.0)
   (MFCC
    :reader MFCC
    :initarg :MFCC
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AudioFeatures (<AudioFeatures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioFeatures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioFeatures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hri_msgs-msg:<AudioFeatures> is deprecated: use hri_msgs-msg:AudioFeatures instead.")))

(cl:ensure-generic-function 'ZCR-val :lambda-list '(m))
(cl:defmethod ZCR-val ((m <AudioFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:ZCR-val is deprecated.  Use hri_msgs-msg:ZCR instead.")
  (ZCR m))

(cl:ensure-generic-function 'RMS-val :lambda-list '(m))
(cl:defmethod RMS-val ((m <AudioFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:RMS-val is deprecated.  Use hri_msgs-msg:RMS instead.")
  (RMS m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <AudioFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:pitch-val is deprecated.  Use hri_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'HNR-val :lambda-list '(m))
(cl:defmethod HNR-val ((m <AudioFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:HNR-val is deprecated.  Use hri_msgs-msg:HNR instead.")
  (HNR m))

(cl:ensure-generic-function 'MFCC-val :lambda-list '(m))
(cl:defmethod MFCC-val ((m <AudioFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hri_msgs-msg:MFCC-val is deprecated.  Use hri_msgs-msg:MFCC instead.")
  (MFCC m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioFeatures>) ostream)
  "Serializes a message object of type '<AudioFeatures>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ZCR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RMS))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'HNR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'MFCC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'MFCC))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioFeatures>) istream)
  "Deserializes a message object of type '<AudioFeatures>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ZCR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RMS) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'HNR) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'MFCC) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'MFCC)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioFeatures>)))
  "Returns string type for a message object of type '<AudioFeatures>"
  "hri_msgs/AudioFeatures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioFeatures)))
  "Returns string type for a message object of type 'AudioFeatures"
  "hri_msgs/AudioFeatures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioFeatures>)))
  "Returns md5sum for a message object of type '<AudioFeatures>"
  "1942f4cd8b6bb147f1ccb9aded9b6535")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioFeatures)))
  "Returns md5sum for a message object of type 'AudioFeatures"
  "1942f4cd8b6bb147f1ccb9aded9b6535")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioFeatures>)))
  "Returns full string definition for message of type '<AudioFeatures>"
  (cl:format cl:nil "# This message encodes the 16 audio features selected~%# in the INTERSPEECH2009 challenge.~%# ~%# Reference: Schuller, Steidl, Batliner, The INTERSPEECH 2009 Emotion Challenge~%# ~%# They can be extract using the OpenSMILE toolkit with the present~%# IS09_emotion.conf~%~%float32 ZCR # zero-crossing rate from the time signal~%float32 RMS # root mean square frame energy~%float32 pitch # pitch frequency (normalised to 500 Hz)~%float32 HNR # harmonics-to-noise ratio by autocorrelation function~%float32[] MFCC # mel-frequency cepstral coefficients 1 to 12~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioFeatures)))
  "Returns full string definition for message of type 'AudioFeatures"
  (cl:format cl:nil "# This message encodes the 16 audio features selected~%# in the INTERSPEECH2009 challenge.~%# ~%# Reference: Schuller, Steidl, Batliner, The INTERSPEECH 2009 Emotion Challenge~%# ~%# They can be extract using the OpenSMILE toolkit with the present~%# IS09_emotion.conf~%~%float32 ZCR # zero-crossing rate from the time signal~%float32 RMS # root mean square frame energy~%float32 pitch # pitch frequency (normalised to 500 Hz)~%float32 HNR # harmonics-to-noise ratio by autocorrelation function~%float32[] MFCC # mel-frequency cepstral coefficients 1 to 12~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioFeatures>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'MFCC) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioFeatures>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioFeatures
    (cl:cons ':ZCR (ZCR msg))
    (cl:cons ':RMS (RMS msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':HNR (HNR msg))
    (cl:cons ':MFCC (MFCC msg))
))
