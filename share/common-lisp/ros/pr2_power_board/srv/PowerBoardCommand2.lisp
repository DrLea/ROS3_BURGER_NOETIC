; Auto-generated. Do not edit!


(cl:in-package pr2_power_board-srv)


;//! \htmlinclude PowerBoardCommand2-request.msg.html

(cl:defclass <PowerBoardCommand2-request> (roslisp-msg-protocol:ros-message)
  ((circuit
    :reader circuit
    :initarg :circuit
    :type cl:integer
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (reset_stats
    :reader reset_stats
    :initarg :reset_stats
    :type cl:boolean
    :initform cl:nil)
   (reset_circuits
    :reader reset_circuits
    :initarg :reset_circuits
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PowerBoardCommand2-request (<PowerBoardCommand2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerBoardCommand2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerBoardCommand2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_power_board-srv:<PowerBoardCommand2-request> is deprecated: use pr2_power_board-srv:PowerBoardCommand2-request instead.")))

(cl:ensure-generic-function 'circuit-val :lambda-list '(m))
(cl:defmethod circuit-val ((m <PowerBoardCommand2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_power_board-srv:circuit-val is deprecated.  Use pr2_power_board-srv:circuit instead.")
  (circuit m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <PowerBoardCommand2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_power_board-srv:command-val is deprecated.  Use pr2_power_board-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'reset_stats-val :lambda-list '(m))
(cl:defmethod reset_stats-val ((m <PowerBoardCommand2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_power_board-srv:reset_stats-val is deprecated.  Use pr2_power_board-srv:reset_stats instead.")
  (reset_stats m))

(cl:ensure-generic-function 'reset_circuits-val :lambda-list '(m))
(cl:defmethod reset_circuits-val ((m <PowerBoardCommand2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_power_board-srv:reset_circuits-val is deprecated.  Use pr2_power_board-srv:reset_circuits instead.")
  (reset_circuits m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PowerBoardCommand2-request>)))
    "Constants for message type '<PowerBoardCommand2-request>"
  '((:NUMBER_OF_CIRCUITS . 3)
    (:BASE . 0)
    (:RIGHT_ARM . 1)
    (:LEFT_ARM . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PowerBoardCommand2-request)))
    "Constants for message type 'PowerBoardCommand2-request"
  '((:NUMBER_OF_CIRCUITS . 3)
    (:BASE . 0)
    (:RIGHT_ARM . 1)
    (:LEFT_ARM . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerBoardCommand2-request>) ostream)
  "Serializes a message object of type '<PowerBoardCommand2-request>"
  (cl:let* ((signed (cl:slot-value msg 'circuit)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_stats) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_circuits) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerBoardCommand2-request>) istream)
  "Deserializes a message object of type '<PowerBoardCommand2-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'circuit) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'reset_stats) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_circuits) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerBoardCommand2-request>)))
  "Returns string type for a service object of type '<PowerBoardCommand2-request>"
  "pr2_power_board/PowerBoardCommand2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerBoardCommand2-request)))
  "Returns string type for a service object of type 'PowerBoardCommand2-request"
  "pr2_power_board/PowerBoardCommand2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerBoardCommand2-request>)))
  "Returns md5sum for a message object of type '<PowerBoardCommand2-request>"
  "4f143c27e05688798e6220ba69c6906a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerBoardCommand2-request)))
  "Returns md5sum for a message object of type 'PowerBoardCommand2-request"
  "4f143c27e05688798e6220ba69c6906a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerBoardCommand2-request>)))
  "Returns full string definition for message of type '<PowerBoardCommand2-request>"
  (cl:format cl:nil "int32 NUMBER_OF_CIRCUITS = 3~%#~%# Select which circuit to command~%#~%int32 circuit~%#~%# Defined circuits~%#~%int32 BASE      = 0~%int32 RIGHT_ARM = 1~%int32 LEFT_ARM  = 2~%#~%# Command to send to circuit:~%# command = start, stop, reset, disable, none~%#~%string command  ~%#~%# reset the latched voltage and current statistics~%bool reset_stats~%#~%# reset the latched stats for each circuit~%bool reset_circuits~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerBoardCommand2-request)))
  "Returns full string definition for message of type 'PowerBoardCommand2-request"
  (cl:format cl:nil "int32 NUMBER_OF_CIRCUITS = 3~%#~%# Select which circuit to command~%#~%int32 circuit~%#~%# Defined circuits~%#~%int32 BASE      = 0~%int32 RIGHT_ARM = 1~%int32 LEFT_ARM  = 2~%#~%# Command to send to circuit:~%# command = start, stop, reset, disable, none~%#~%string command  ~%#~%# reset the latched voltage and current statistics~%bool reset_stats~%#~%# reset the latched stats for each circuit~%bool reset_circuits~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerBoardCommand2-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'command))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerBoardCommand2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerBoardCommand2-request
    (cl:cons ':circuit (circuit msg))
    (cl:cons ':command (command msg))
    (cl:cons ':reset_stats (reset_stats msg))
    (cl:cons ':reset_circuits (reset_circuits msg))
))
;//! \htmlinclude PowerBoardCommand2-response.msg.html

(cl:defclass <PowerBoardCommand2-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PowerBoardCommand2-response (<PowerBoardCommand2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerBoardCommand2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerBoardCommand2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_power_board-srv:<PowerBoardCommand2-response> is deprecated: use pr2_power_board-srv:PowerBoardCommand2-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PowerBoardCommand2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_power_board-srv:success-val is deprecated.  Use pr2_power_board-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerBoardCommand2-response>) ostream)
  "Serializes a message object of type '<PowerBoardCommand2-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerBoardCommand2-response>) istream)
  "Deserializes a message object of type '<PowerBoardCommand2-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerBoardCommand2-response>)))
  "Returns string type for a service object of type '<PowerBoardCommand2-response>"
  "pr2_power_board/PowerBoardCommand2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerBoardCommand2-response)))
  "Returns string type for a service object of type 'PowerBoardCommand2-response"
  "pr2_power_board/PowerBoardCommand2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerBoardCommand2-response>)))
  "Returns md5sum for a message object of type '<PowerBoardCommand2-response>"
  "4f143c27e05688798e6220ba69c6906a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerBoardCommand2-response)))
  "Returns md5sum for a message object of type 'PowerBoardCommand2-response"
  "4f143c27e05688798e6220ba69c6906a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerBoardCommand2-response>)))
  "Returns full string definition for message of type '<PowerBoardCommand2-response>"
  (cl:format cl:nil "# return if the command was successfully sent~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerBoardCommand2-response)))
  "Returns full string definition for message of type 'PowerBoardCommand2-response"
  (cl:format cl:nil "# return if the command was successfully sent~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerBoardCommand2-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerBoardCommand2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerBoardCommand2-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PowerBoardCommand2)))
  'PowerBoardCommand2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PowerBoardCommand2)))
  'PowerBoardCommand2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerBoardCommand2)))
  "Returns string type for a service object of type '<PowerBoardCommand2>"
  "pr2_power_board/PowerBoardCommand2")