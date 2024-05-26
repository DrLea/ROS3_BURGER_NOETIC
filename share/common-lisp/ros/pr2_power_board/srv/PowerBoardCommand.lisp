; Auto-generated. Do not edit!


(cl:in-package pr2_power_board-srv)


;//! \htmlinclude PowerBoardCommand-request.msg.html

(cl:defclass <PowerBoardCommand-request> (roslisp-msg-protocol:ros-message)
  ((serial_number
    :reader serial_number
    :initarg :serial_number
    :type cl:integer
    :initform 0)
   (breaker_number
    :reader breaker_number
    :initarg :breaker_number
    :type cl:integer
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (flags
    :reader flags
    :initarg :flags
    :type cl:integer
    :initform 0))
)

(cl:defclass PowerBoardCommand-request (<PowerBoardCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerBoardCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerBoardCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_power_board-srv:<PowerBoardCommand-request> is deprecated: use pr2_power_board-srv:PowerBoardCommand-request instead.")))

(cl:ensure-generic-function 'serial_number-val :lambda-list '(m))
(cl:defmethod serial_number-val ((m <PowerBoardCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_power_board-srv:serial_number-val is deprecated.  Use pr2_power_board-srv:serial_number instead.")
  (serial_number m))

(cl:ensure-generic-function 'breaker_number-val :lambda-list '(m))
(cl:defmethod breaker_number-val ((m <PowerBoardCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_power_board-srv:breaker_number-val is deprecated.  Use pr2_power_board-srv:breaker_number instead.")
  (breaker_number m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <PowerBoardCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_power_board-srv:command-val is deprecated.  Use pr2_power_board-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <PowerBoardCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_power_board-srv:flags-val is deprecated.  Use pr2_power_board-srv:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerBoardCommand-request>) ostream)
  "Serializes a message object of type '<PowerBoardCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial_number)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'breaker_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerBoardCommand-request>) istream)
  "Deserializes a message object of type '<PowerBoardCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'breaker_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerBoardCommand-request>)))
  "Returns string type for a service object of type '<PowerBoardCommand-request>"
  "pr2_power_board/PowerBoardCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerBoardCommand-request)))
  "Returns string type for a service object of type 'PowerBoardCommand-request"
  "pr2_power_board/PowerBoardCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerBoardCommand-request>)))
  "Returns md5sum for a message object of type '<PowerBoardCommand-request>"
  "d9e38de783aa7edc3146446518e85af2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerBoardCommand-request)))
  "Returns md5sum for a message object of type 'PowerBoardCommand-request"
  "d9e38de783aa7edc3146446518e85af2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerBoardCommand-request>)))
  "Returns full string definition for message of type '<PowerBoardCommand-request>"
  (cl:format cl:nil "uint32 serial_number #serial number of the board to control~%int32 breaker_number ## 0=Base, 1=RightArm 2=LeftArm~%string command  # Options start, stop, reset, disable, none~%uint32 flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerBoardCommand-request)))
  "Returns full string definition for message of type 'PowerBoardCommand-request"
  (cl:format cl:nil "uint32 serial_number #serial number of the board to control~%int32 breaker_number ## 0=Base, 1=RightArm 2=LeftArm~%string command  # Options start, stop, reset, disable, none~%uint32 flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerBoardCommand-request>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'command))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerBoardCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerBoardCommand-request
    (cl:cons ':serial_number (serial_number msg))
    (cl:cons ':breaker_number (breaker_number msg))
    (cl:cons ':command (command msg))
    (cl:cons ':flags (flags msg))
))
;//! \htmlinclude PowerBoardCommand-response.msg.html

(cl:defclass <PowerBoardCommand-response> (roslisp-msg-protocol:ros-message)
  ((retval
    :reader retval
    :initarg :retval
    :type cl:integer
    :initform 0))
)

(cl:defclass PowerBoardCommand-response (<PowerBoardCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerBoardCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerBoardCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pr2_power_board-srv:<PowerBoardCommand-response> is deprecated: use pr2_power_board-srv:PowerBoardCommand-response instead.")))

(cl:ensure-generic-function 'retval-val :lambda-list '(m))
(cl:defmethod retval-val ((m <PowerBoardCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pr2_power_board-srv:retval-val is deprecated.  Use pr2_power_board-srv:retval instead.")
  (retval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerBoardCommand-response>) ostream)
  "Serializes a message object of type '<PowerBoardCommand-response>"
  (cl:let* ((signed (cl:slot-value msg 'retval)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerBoardCommand-response>) istream)
  "Deserializes a message object of type '<PowerBoardCommand-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'retval) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerBoardCommand-response>)))
  "Returns string type for a service object of type '<PowerBoardCommand-response>"
  "pr2_power_board/PowerBoardCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerBoardCommand-response)))
  "Returns string type for a service object of type 'PowerBoardCommand-response"
  "pr2_power_board/PowerBoardCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerBoardCommand-response>)))
  "Returns md5sum for a message object of type '<PowerBoardCommand-response>"
  "d9e38de783aa7edc3146446518e85af2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerBoardCommand-response)))
  "Returns md5sum for a message object of type 'PowerBoardCommand-response"
  "d9e38de783aa7edc3146446518e85af2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerBoardCommand-response>)))
  "Returns full string definition for message of type '<PowerBoardCommand-response>"
  (cl:format cl:nil "int32 retval # 0 = false, 1=true~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerBoardCommand-response)))
  "Returns full string definition for message of type 'PowerBoardCommand-response"
  (cl:format cl:nil "int32 retval # 0 = false, 1=true~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerBoardCommand-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerBoardCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerBoardCommand-response
    (cl:cons ':retval (retval msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PowerBoardCommand)))
  'PowerBoardCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PowerBoardCommand)))
  'PowerBoardCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerBoardCommand)))
  "Returns string type for a service object of type '<PowerBoardCommand>"
  "pr2_power_board/PowerBoardCommand")