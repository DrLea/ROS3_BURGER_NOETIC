;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::Gaze)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'Gaze (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::GAZE")
  (make-package "HRI_MSGS::GAZE"))

(in-package "ROS")
;;//! \htmlinclude Gaze.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hri_msgs::Gaze
  :super ros::object
  :slots (_header _sender _receiver ))

(defmethod hri_msgs::Gaze
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sender __sender) "")
    ((:receiver __receiver) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _sender (string __sender))
   (setq _receiver (string __receiver))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:receiver
   (&optional __receiver)
   (if __receiver (setq _receiver __receiver)) _receiver)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _sender
    4 (length _sender)
    ;; string _receiver
    4 (length _receiver)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; string _receiver
       (write-long (length _receiver) s) (princ _receiver s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _receiver
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _receiver (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hri_msgs::Gaze :md5sum-) "1408dc110169ebd2a0cd704f3af52beb")
(setf (get hri_msgs::Gaze :datatype-) "hri_msgs/Gaze")
(setf (get hri_msgs::Gaze :definition-)
      "# Represents the gaze direction from a particular person (sender ID) to the
# person that is being gazed to (receiver ID).
#
# If the sender or receiver IDs are empty, it means that the gaze respectively
# originates or is targeted to the robot itself.
Header header

string sender
string receiver

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

")



(provide :hri_msgs/Gaze "1408dc110169ebd2a0cd704f3af52beb")


