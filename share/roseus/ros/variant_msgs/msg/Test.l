;; Auto-generated. Do not edit!


(when (boundp 'variant_msgs::Test)
  (if (not (find-package "VARIANT_MSGS"))
    (make-package "VARIANT_MSGS"))
  (shadow 'Test (find-package "VARIANT_MSGS")))
(unless (find-package "VARIANT_MSGS::TEST")
  (make-package "VARIANT_MSGS::TEST"))

(in-package "ROS")
;;//! \htmlinclude Test.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*BYTE_CONSTANT*" (find-package "VARIANT_MSGS::TEST"))
(shadow '*BYTE_CONSTANT* (find-package "VARIANT_MSGS::TEST"))
(defconstant variant_msgs::Test::*BYTE_CONSTANT* 42)

(defun variant_msgs::Test-to-symbol (const)
  (cond
        ((= const 42) 'variant_msgs::Test::*byte_constant*)
        (t nil)))

(defclass variant_msgs::Test
  :super ros::object
  :slots (_header _builtin_int _builtin_boolean _boolean _builtin_string _string _builtin_int_array _builtin_int_vector _string_array _string_vector _builtin_boolean_array ))

(defmethod variant_msgs::Test
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:builtin_int __builtin_int) 0)
    ((:builtin_boolean __builtin_boolean) nil)
    ((:boolean __boolean) (instance std_msgs::Bool :init))
    ((:builtin_string __builtin_string) "")
    ((:string __string) (instance std_msgs::String :init))
    ((:builtin_int_array __builtin_int_array) (make-array 3 :initial-element 0 :element-type :integer))
    ((:builtin_int_vector __builtin_int_vector) (make-array 0 :initial-element 0 :element-type :integer))
    ((:string_array __string_array) (let (r) (dotimes (i 3) (push (instance std_msgs::String :init) r)) r))
    ((:string_vector __string_vector) ())
    ((:builtin_boolean_array __builtin_boolean_array) (let (r) (dotimes (i 3) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _builtin_int (round __builtin_int))
   (setq _builtin_boolean __builtin_boolean)
   (setq _boolean __boolean)
   (setq _builtin_string (string __builtin_string))
   (setq _string __string)
   (setq _builtin_int_array __builtin_int_array)
   (setq _builtin_int_vector __builtin_int_vector)
   (setq _string_array __string_array)
   (setq _string_vector __string_vector)
   (setq _builtin_boolean_array __builtin_boolean_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:builtin_int
   (&optional __builtin_int)
   (if __builtin_int (setq _builtin_int __builtin_int)) _builtin_int)
  (:builtin_boolean
   (&optional (__builtin_boolean :null))
   (if (not (eq __builtin_boolean :null)) (setq _builtin_boolean __builtin_boolean)) _builtin_boolean)
  (:boolean
   (&rest __boolean)
   (if (keywordp (car __boolean))
       (send* _boolean __boolean)
     (progn
       (if __boolean (setq _boolean (car __boolean)))
       _boolean)))
  (:builtin_string
   (&optional __builtin_string)
   (if __builtin_string (setq _builtin_string __builtin_string)) _builtin_string)
  (:string
   (&rest __string)
   (if (keywordp (car __string))
       (send* _string __string)
     (progn
       (if __string (setq _string (car __string)))
       _string)))
  (:builtin_int_array
   (&optional __builtin_int_array)
   (if __builtin_int_array (setq _builtin_int_array __builtin_int_array)) _builtin_int_array)
  (:builtin_int_vector
   (&optional __builtin_int_vector)
   (if __builtin_int_vector (setq _builtin_int_vector __builtin_int_vector)) _builtin_int_vector)
  (:string_array
   (&rest __string_array)
   (if (keywordp (car __string_array))
       (send* _string_array __string_array)
     (progn
       (if __string_array (setq _string_array (car __string_array)))
       _string_array)))
  (:string_vector
   (&rest __string_vector)
   (if (keywordp (car __string_vector))
       (send* _string_vector __string_vector)
     (progn
       (if __string_vector (setq _string_vector (car __string_vector)))
       _string_vector)))
  (:builtin_boolean_array
   (&optional __builtin_boolean_array)
   (if __builtin_boolean_array (setq _builtin_boolean_array __builtin_boolean_array)) _builtin_boolean_array)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _builtin_int
    4
    ;; bool _builtin_boolean
    1
    ;; std_msgs/Bool _boolean
    (send _boolean :serialization-length)
    ;; string _builtin_string
    4 (length _builtin_string)
    ;; std_msgs/String _string
    (send _string :serialization-length)
    ;; int32[3] _builtin_int_array
    (* 4    3)
    ;; int32[] _builtin_int_vector
    (* 4    (length _builtin_int_vector)) 4
    ;; std_msgs/String[3] _string_array
    (apply #'+ (send-all _string_array :serialization-length))
    ;; std_msgs/String[] _string_vector
    (apply #'+ (send-all _string_vector :serialization-length)) 4
    ;; bool[3] _builtin_boolean_array
    (* 1    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _builtin_int
       (write-long _builtin_int s)
     ;; bool _builtin_boolean
       (if _builtin_boolean (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/Bool _boolean
       (send _boolean :serialize s)
     ;; string _builtin_string
       (write-long (length _builtin_string) s) (princ _builtin_string s)
     ;; std_msgs/String _string
       (send _string :serialize s)
     ;; int32[3] _builtin_int_array
     (dotimes (i 3)
       (write-long (elt _builtin_int_array i) s)
       )
     ;; int32[] _builtin_int_vector
     (write-long (length _builtin_int_vector) s)
     (dotimes (i (length _builtin_int_vector))
       (write-long (elt _builtin_int_vector i) s)
       )
     ;; std_msgs/String[3] _string_array
     (dolist (elem _string_array)
       (send elem :serialize s)
       )
     ;; std_msgs/String[] _string_vector
     (write-long (length _string_vector) s)
     (dolist (elem _string_vector)
       (send elem :serialize s)
       )
     ;; bool[3] _builtin_boolean_array
     (dotimes (i 3)
       (if (elt _builtin_boolean_array i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _builtin_int
     (setq _builtin_int (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _builtin_boolean
     (setq _builtin_boolean (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/Bool _boolean
     (send _boolean :deserialize buf ptr-) (incf ptr- (send _boolean :serialization-length))
   ;; string _builtin_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _builtin_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; std_msgs/String _string
     (send _string :deserialize buf ptr-) (incf ptr- (send _string :serialization-length))
   ;; int32[3] _builtin_int_array
   (dotimes (i (length _builtin_int_array))
     (setf (elt _builtin_int_array i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; int32[] _builtin_int_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _builtin_int_vector (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _builtin_int_vector i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; std_msgs/String[3] _string_array
   (dotimes (i 3)
     (send (elt _string_array i) :deserialize buf ptr-) (incf ptr- (send (elt _string_array i) :serialization-length))
     )
   ;; std_msgs/String[] _string_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _string_vector (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _string_vector)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool[3] _builtin_boolean_array
   (dotimes (i (length _builtin_boolean_array))
     (setf (elt _builtin_boolean_array i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get variant_msgs::Test :md5sum-) "17d92d9cea3499753cb392766b3203a1")
(setf (get variant_msgs::Test :datatype-) "variant_msgs/Test")
(setf (get variant_msgs::Test :definition-)
      "# Test message for the variant topic tools
Header header
uint8 byte_constant = 42
int32 builtin_int
bool builtin_boolean
std_msgs/Bool boolean
string builtin_string
std_msgs/String string
int32[3] builtin_int_array
int32[] builtin_int_vector
std_msgs/String[3] string_array
std_msgs/String[] string_vector
bool[3] builtin_boolean_array

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: std_msgs/String
string data

")



(provide :variant_msgs/Test "17d92d9cea3499753cb392766b3203a1")


