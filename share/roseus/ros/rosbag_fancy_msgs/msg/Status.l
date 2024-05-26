;; Auto-generated. Do not edit!


(when (boundp 'rosbag_fancy_msgs::Status)
  (if (not (find-package "ROSBAG_FANCY_MSGS"))
    (make-package "ROSBAG_FANCY_MSGS"))
  (shadow 'Status (find-package "ROSBAG_FANCY_MSGS")))
(unless (find-package "ROSBAG_FANCY_MSGS::STATUS")
  (make-package "ROSBAG_FANCY_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATUS_PAUSED*" (find-package "ROSBAG_FANCY_MSGS::STATUS"))
(shadow '*STATUS_PAUSED* (find-package "ROSBAG_FANCY_MSGS::STATUS"))
(defconstant rosbag_fancy_msgs::Status::*STATUS_PAUSED* 0)
(intern "*STATUS_RUNNING*" (find-package "ROSBAG_FANCY_MSGS::STATUS"))
(shadow '*STATUS_RUNNING* (find-package "ROSBAG_FANCY_MSGS::STATUS"))
(defconstant rosbag_fancy_msgs::Status::*STATUS_RUNNING* 1)

(defun rosbag_fancy_msgs::Status-to-symbol (const)
  (cond
        ((= const 0) 'rosbag_fancy_msgs::Status::*STATUS_PAUSED*)
        ((= const 1) 'rosbag_fancy_msgs::Status::*STATUS_RUNNING*)
        (t nil)))

(defclass rosbag_fancy_msgs::Status
  :super ros::object
  :slots (_header _status _bagfile _bytes _free_bytes _bandwidth _topics ))

(defmethod rosbag_fancy_msgs::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:bagfile __bagfile) "")
    ((:bytes __bytes) 0)
    ((:free_bytes __free_bytes) 0)
    ((:bandwidth __bandwidth) 0.0)
    ((:topics __topics) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (round __status))
   (setq _bagfile (string __bagfile))
   (setq _bytes (round __bytes))
   (setq _free_bytes (round __free_bytes))
   (setq _bandwidth (float __bandwidth))
   (setq _topics __topics)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:bagfile
   (&optional __bagfile)
   (if __bagfile (setq _bagfile __bagfile)) _bagfile)
  (:bytes
   (&optional __bytes)
   (if __bytes (setq _bytes __bytes)) _bytes)
  (:free_bytes
   (&optional __free_bytes)
   (if __free_bytes (setq _free_bytes __free_bytes)) _free_bytes)
  (:bandwidth
   (&optional __bandwidth)
   (if __bandwidth (setq _bandwidth __bandwidth)) _bandwidth)
  (:topics
   (&rest __topics)
   (if (keywordp (car __topics))
       (send* _topics __topics)
     (progn
       (if __topics (setq _topics (car __topics)))
       _topics)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _status
    1
    ;; string _bagfile
    4 (length _bagfile)
    ;; uint64 _bytes
    8
    ;; uint64 _free_bytes
    8
    ;; float32 _bandwidth
    4
    ;; rosbag_fancy_msgs/TopicStatus[] _topics
    (apply #'+ (send-all _topics :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _status
       (write-byte _status s)
     ;; string _bagfile
       (write-long (length _bagfile) s) (princ _bagfile s)
     ;; uint64 _bytes
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _bytes (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _bytes) (= (length (_bytes . bv)) 2)) ;; bignum
              (write-long (ash (elt (_bytes . bv) 0) 0) s)
              (write-long (ash (elt (_bytes . bv) 1) -1) s))
             ((and (class _bytes) (= (length (_bytes . bv)) 1)) ;; big1
              (write-long (elt (_bytes . bv) 0) s)
              (write-long (if (>= _bytes 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _bytes s)(write-long (if (>= _bytes 0) 0 #xffffffff) s)))
     ;; uint64 _free_bytes
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _free_bytes (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _free_bytes) (= (length (_free_bytes . bv)) 2)) ;; bignum
              (write-long (ash (elt (_free_bytes . bv) 0) 0) s)
              (write-long (ash (elt (_free_bytes . bv) 1) -1) s))
             ((and (class _free_bytes) (= (length (_free_bytes . bv)) 1)) ;; big1
              (write-long (elt (_free_bytes . bv) 0) s)
              (write-long (if (>= _free_bytes 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _free_bytes s)(write-long (if (>= _free_bytes 0) 0 #xffffffff) s)))
     ;; float32 _bandwidth
       (sys::poke _bandwidth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; rosbag_fancy_msgs/TopicStatus[] _topics
     (write-long (length _topics) s)
     (dolist (elem _topics)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _bagfile
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bagfile (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _bytes
     
#+(or :alpha :irix6 :x86_64)
      (setf _bytes (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _bytes (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _free_bytes
     
#+(or :alpha :irix6 :x86_64)
      (setf _free_bytes (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _free_bytes (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _bandwidth
     (setq _bandwidth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; rosbag_fancy_msgs/TopicStatus[] _topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics (let (r) (dotimes (i n) (push (instance rosbag_fancy_msgs::TopicStatus :init) r)) r))
     (dolist (elem- _topics)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rosbag_fancy_msgs::Status :md5sum-) "947e6f4818d85a50b2f28a48a2711b80")
(setf (get rosbag_fancy_msgs::Status :datatype-) "rosbag_fancy_msgs/Status")
(setf (get rosbag_fancy_msgs::Status :definition-)
      "
uint8 STATUS_PAUSED = 0
uint8 STATUS_RUNNING = 1


Header header

uint8 status
string bagfile

uint64 bytes
uint64 free_bytes
float32 bandwidth

TopicStatus[] topics

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
MSG: rosbag_fancy_msgs/TopicStatus

string name

uint32 publishers
uint64 messages
uint64 messages_in_current_bag
float32 rate
uint64 bytes
float32 bandwidth

")



(provide :rosbag_fancy_msgs/Status "947e6f4818d85a50b2f28a48a2711b80")


