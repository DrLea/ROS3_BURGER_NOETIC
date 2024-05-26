; Auto-generated. Do not edit!


(cl:in-package variant_msgs-msg)


;//! \htmlinclude Test.msg.html

(cl:defclass <Test> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (builtin_int
    :reader builtin_int
    :initarg :builtin_int
    :type cl:integer
    :initform 0)
   (builtin_boolean
    :reader builtin_boolean
    :initarg :builtin_boolean
    :type cl:boolean
    :initform cl:nil)
   (boolean
    :reader boolean
    :initarg :boolean
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (builtin_string
    :reader builtin_string
    :initarg :builtin_string
    :type cl:string
    :initform "")
   (string
    :reader string
    :initarg :string
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (builtin_int_array
    :reader builtin_int_array
    :initarg :builtin_int_array
    :type (cl:vector cl:integer)
   :initform (cl:make-array 3 :element-type 'cl:integer :initial-element 0))
   (builtin_int_vector
    :reader builtin_int_vector
    :initarg :builtin_int_vector
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (string_array
    :reader string_array
    :initarg :string_array
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 3 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (string_vector
    :reader string_vector
    :initarg :string_vector
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (builtin_boolean_array
    :reader builtin_boolean_array
    :initarg :builtin_boolean_array
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 3 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass Test (<Test>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Test>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Test)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name variant_msgs-msg:<Test> is deprecated: use variant_msgs-msg:Test instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:header-val is deprecated.  Use variant_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'builtin_int-val :lambda-list '(m))
(cl:defmethod builtin_int-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:builtin_int-val is deprecated.  Use variant_msgs-msg:builtin_int instead.")
  (builtin_int m))

(cl:ensure-generic-function 'builtin_boolean-val :lambda-list '(m))
(cl:defmethod builtin_boolean-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:builtin_boolean-val is deprecated.  Use variant_msgs-msg:builtin_boolean instead.")
  (builtin_boolean m))

(cl:ensure-generic-function 'boolean-val :lambda-list '(m))
(cl:defmethod boolean-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:boolean-val is deprecated.  Use variant_msgs-msg:boolean instead.")
  (boolean m))

(cl:ensure-generic-function 'builtin_string-val :lambda-list '(m))
(cl:defmethod builtin_string-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:builtin_string-val is deprecated.  Use variant_msgs-msg:builtin_string instead.")
  (builtin_string m))

(cl:ensure-generic-function 'string-val :lambda-list '(m))
(cl:defmethod string-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:string-val is deprecated.  Use variant_msgs-msg:string instead.")
  (string m))

(cl:ensure-generic-function 'builtin_int_array-val :lambda-list '(m))
(cl:defmethod builtin_int_array-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:builtin_int_array-val is deprecated.  Use variant_msgs-msg:builtin_int_array instead.")
  (builtin_int_array m))

(cl:ensure-generic-function 'builtin_int_vector-val :lambda-list '(m))
(cl:defmethod builtin_int_vector-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:builtin_int_vector-val is deprecated.  Use variant_msgs-msg:builtin_int_vector instead.")
  (builtin_int_vector m))

(cl:ensure-generic-function 'string_array-val :lambda-list '(m))
(cl:defmethod string_array-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:string_array-val is deprecated.  Use variant_msgs-msg:string_array instead.")
  (string_array m))

(cl:ensure-generic-function 'string_vector-val :lambda-list '(m))
(cl:defmethod string_vector-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:string_vector-val is deprecated.  Use variant_msgs-msg:string_vector instead.")
  (string_vector m))

(cl:ensure-generic-function 'builtin_boolean_array-val :lambda-list '(m))
(cl:defmethod builtin_boolean_array-val ((m <Test>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader variant_msgs-msg:builtin_boolean_array-val is deprecated.  Use variant_msgs-msg:builtin_boolean_array instead.")
  (builtin_boolean_array m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Test>)))
    "Constants for message type '<Test>"
  '((:BYTE_CONSTANT . 42))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Test)))
    "Constants for message type 'Test"
  '((:BYTE_CONSTANT . 42))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Test>) ostream)
  "Serializes a message object of type '<Test>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'builtin_int)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'builtin_boolean) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'boolean) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'builtin_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'builtin_string))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'string) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'builtin_int_array))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'builtin_int_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'builtin_int_vector))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'string_array))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'string_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'string_vector))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'builtin_boolean_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Test>) istream)
  "Deserializes a message object of type '<Test>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'builtin_int) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'builtin_boolean) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'boolean) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'builtin_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'builtin_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'string) istream)
  (cl:setf (cl:slot-value msg 'builtin_int_array) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'builtin_int_array)))
    (cl:dotimes (i 3)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'builtin_int_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'builtin_int_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:setf (cl:slot-value msg 'string_array) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'string_array)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'string_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'string_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:setf (cl:slot-value msg 'builtin_boolean_array) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'builtin_boolean_array)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Test>)))
  "Returns string type for a message object of type '<Test>"
  "variant_msgs/Test")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Test)))
  "Returns string type for a message object of type 'Test"
  "variant_msgs/Test")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Test>)))
  "Returns md5sum for a message object of type '<Test>"
  "17d92d9cea3499753cb392766b3203a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Test)))
  "Returns md5sum for a message object of type 'Test"
  "17d92d9cea3499753cb392766b3203a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Test>)))
  "Returns full string definition for message of type '<Test>"
  (cl:format cl:nil "# Test message for the variant topic tools~%Header header~%uint8 byte_constant = 42~%int32 builtin_int~%bool builtin_boolean~%std_msgs/Bool boolean~%string builtin_string~%std_msgs/String string~%int32[3] builtin_int_array~%int32[] builtin_int_vector~%std_msgs/String[3] string_array~%std_msgs/String[] string_vector~%bool[3] builtin_boolean_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Test)))
  "Returns full string definition for message of type 'Test"
  (cl:format cl:nil "# Test message for the variant topic tools~%Header header~%uint8 byte_constant = 42~%int32 builtin_int~%bool builtin_boolean~%std_msgs/Bool boolean~%string builtin_string~%std_msgs/String string~%int32[3] builtin_int_array~%int32[] builtin_int_vector~%std_msgs/String[3] string_array~%std_msgs/String[] string_vector~%bool[3] builtin_boolean_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Test>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'boolean))
     4 (cl:length (cl:slot-value msg 'builtin_string))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'string))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'builtin_int_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'builtin_int_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'string_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'string_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'builtin_boolean_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Test>))
  "Converts a ROS message object to a list"
  (cl:list 'Test
    (cl:cons ':header (header msg))
    (cl:cons ':builtin_int (builtin_int msg))
    (cl:cons ':builtin_boolean (builtin_boolean msg))
    (cl:cons ':boolean (boolean msg))
    (cl:cons ':builtin_string (builtin_string msg))
    (cl:cons ':string (string msg))
    (cl:cons ':builtin_int_array (builtin_int_array msg))
    (cl:cons ':builtin_int_vector (builtin_int_vector msg))
    (cl:cons ':string_array (string_array msg))
    (cl:cons ':string_vector (string_vector msg))
    (cl:cons ':builtin_boolean_array (builtin_boolean_array msg))
))
