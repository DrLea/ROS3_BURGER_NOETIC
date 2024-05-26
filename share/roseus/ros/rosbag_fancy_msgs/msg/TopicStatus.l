;; Auto-generated. Do not edit!


(when (boundp 'rosbag_fancy_msgs::TopicStatus)
  (if (not (find-package "ROSBAG_FANCY_MSGS"))
    (make-package "ROSBAG_FANCY_MSGS"))
  (shadow 'TopicStatus (find-package "ROSBAG_FANCY_MSGS")))
(unless (find-package "ROSBAG_FANCY_MSGS::TOPICSTATUS")
  (make-package "ROSBAG_FANCY_MSGS::TOPICSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TopicStatus.msg.html


(defclass rosbag_fancy_msgs::TopicStatus
  :super ros::object
  :slots (_name _publishers _messages _messages_in_current_bag _rate _bytes _bandwidth ))

(defmethod rosbag_fancy_msgs::TopicStatus
  (:init
   (&key
    ((:name __name) "")
    ((:publishers __publishers) 0)
    ((:messages __messages) 0)
    ((:messages_in_current_bag __messages_in_current_bag) 0)
    ((:rate __rate) 0.0)
    ((:bytes __bytes) 0)
    ((:bandwidth __bandwidth) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _publishers (round __publishers))
   (setq _messages (round __messages))
   (setq _messages_in_current_bag (round __messages_in_current_bag))
   (setq _rate (float __rate))
   (setq _bytes (round __bytes))
   (setq _bandwidth (float __bandwidth))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:publishers
   (&optional __publishers)
   (if __publishers (setq _publishers __publishers)) _publishers)
  (:messages
   (&optional __messages)
   (if __messages (setq _messages __messages)) _messages)
  (:messages_in_current_bag
   (&optional __messages_in_current_bag)
   (if __messages_in_current_bag (setq _messages_in_current_bag __messages_in_current_bag)) _messages_in_current_bag)
  (:rate
   (&optional __rate)
   (if __rate (setq _rate __rate)) _rate)
  (:bytes
   (&optional __bytes)
   (if __bytes (setq _bytes __bytes)) _bytes)
  (:bandwidth
   (&optional __bandwidth)
   (if __bandwidth (setq _bandwidth __bandwidth)) _bandwidth)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint32 _publishers
    4
    ;; uint64 _messages
    8
    ;; uint64 _messages_in_current_bag
    8
    ;; float32 _rate
    4
    ;; uint64 _bytes
    8
    ;; float32 _bandwidth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint32 _publishers
       (write-long _publishers s)
     ;; uint64 _messages
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _messages (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _messages) (= (length (_messages . bv)) 2)) ;; bignum
              (write-long (ash (elt (_messages . bv) 0) 0) s)
              (write-long (ash (elt (_messages . bv) 1) -1) s))
             ((and (class _messages) (= (length (_messages . bv)) 1)) ;; big1
              (write-long (elt (_messages . bv) 0) s)
              (write-long (if (>= _messages 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _messages s)(write-long (if (>= _messages 0) 0 #xffffffff) s)))
     ;; uint64 _messages_in_current_bag
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _messages_in_current_bag (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _messages_in_current_bag) (= (length (_messages_in_current_bag . bv)) 2)) ;; bignum
              (write-long (ash (elt (_messages_in_current_bag . bv) 0) 0) s)
              (write-long (ash (elt (_messages_in_current_bag . bv) 1) -1) s))
             ((and (class _messages_in_current_bag) (= (length (_messages_in_current_bag . bv)) 1)) ;; big1
              (write-long (elt (_messages_in_current_bag . bv) 0) s)
              (write-long (if (>= _messages_in_current_bag 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _messages_in_current_bag s)(write-long (if (>= _messages_in_current_bag 0) 0 #xffffffff) s)))
     ;; float32 _rate
       (sys::poke _rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
     ;; float32 _bandwidth
       (sys::poke _bandwidth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _publishers
     (setq _publishers (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _messages
     
#+(or :alpha :irix6 :x86_64)
      (setf _messages (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _messages (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _messages_in_current_bag
     
#+(or :alpha :irix6 :x86_64)
      (setf _messages_in_current_bag (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _messages_in_current_bag (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _rate
     (setq _rate (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;; float32 _bandwidth
     (setq _bandwidth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rosbag_fancy_msgs::TopicStatus :md5sum-) "ab1d1b0e9b845daddfffb9265d5bb87c")
(setf (get rosbag_fancy_msgs::TopicStatus :datatype-) "rosbag_fancy_msgs/TopicStatus")
(setf (get rosbag_fancy_msgs::TopicStatus :definition-)
      "
string name

uint32 publishers
uint64 messages
uint64 messages_in_current_bag
float32 rate
uint64 bytes
float32 bandwidth

")



(provide :rosbag_fancy_msgs/TopicStatus "ab1d1b0e9b845daddfffb9265d5bb87c")


