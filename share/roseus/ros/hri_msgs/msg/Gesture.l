;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::Gesture)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'Gesture (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::GESTURE")
  (make-package "HRI_MSGS::GESTURE"))

(in-package "ROS")
;;//! \htmlinclude Gesture.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*HANDS_ON_FACE*" (find-package "HRI_MSGS::GESTURE"))
(shadow '*HANDS_ON_FACE* (find-package "HRI_MSGS::GESTURE"))
(defconstant hri_msgs::Gesture::*HANDS_ON_FACE* 1)
(intern "*ARMS_CROSSED*" (find-package "HRI_MSGS::GESTURE"))
(shadow '*ARMS_CROSSED* (find-package "HRI_MSGS::GESTURE"))
(defconstant hri_msgs::Gesture::*ARMS_CROSSED* 2)
(intern "*LEFT_HAND_RAISED*" (find-package "HRI_MSGS::GESTURE"))
(shadow '*LEFT_HAND_RAISED* (find-package "HRI_MSGS::GESTURE"))
(defconstant hri_msgs::Gesture::*LEFT_HAND_RAISED* 3)
(intern "*RIGHT_HAND_RAISED*" (find-package "HRI_MSGS::GESTURE"))
(shadow '*RIGHT_HAND_RAISED* (find-package "HRI_MSGS::GESTURE"))
(defconstant hri_msgs::Gesture::*RIGHT_HAND_RAISED* 4)
(intern "*BOTH_HANDS_RAISED*" (find-package "HRI_MSGS::GESTURE"))
(shadow '*BOTH_HANDS_RAISED* (find-package "HRI_MSGS::GESTURE"))
(defconstant hri_msgs::Gesture::*BOTH_HANDS_RAISED* 5)
(intern "*WAVING*" (find-package "HRI_MSGS::GESTURE"))
(shadow '*WAVING* (find-package "HRI_MSGS::GESTURE"))
(defconstant hri_msgs::Gesture::*WAVING* 6)
(intern "*OTHER*" (find-package "HRI_MSGS::GESTURE"))
(shadow '*OTHER* (find-package "HRI_MSGS::GESTURE"))
(defconstant hri_msgs::Gesture::*OTHER* 0)

(defun hri_msgs::Gesture-to-symbol (const)
  (cond
        ((= const 1) 'hri_msgs::Gesture::*HANDS_ON_FACE*)
        ((= const 2) 'hri_msgs::Gesture::*ARMS_CROSSED*)
        ((= const 3) 'hri_msgs::Gesture::*LEFT_HAND_RAISED*)
        ((= const 4) 'hri_msgs::Gesture::*RIGHT_HAND_RAISED*)
        ((= const 5) 'hri_msgs::Gesture::*BOTH_HANDS_RAISED*)
        ((= const 6) 'hri_msgs::Gesture::*WAVING*)
        ((= const 0) 'hri_msgs::Gesture::*OTHER*)
        (t nil)))

(defclass hri_msgs::Gesture
  :super ros::object
  :slots (_header _gesture ))

(defmethod hri_msgs::Gesture
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gesture __gesture) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gesture (round __gesture))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gesture
   (&optional __gesture)
   (if __gesture (setq _gesture __gesture)) _gesture)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _gesture
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _gesture
       (write-byte _gesture s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _gesture
     (setq _gesture (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hri_msgs::Gesture :md5sum-) "c64cc745a3c18d0a7abe6aed5be4f345")
(setf (get hri_msgs::Gesture :datatype-) "hri_msgs/Gesture")
(setf (get hri_msgs::Gesture :definition-)
      "# Describes body language/attitude/gesture detected from a body.
Header header

# Additional gestures might be added in the future, please open
# issues/pull requests to suggest new ones.

uint8 HANDS_ON_FACE = 1
uint8 ARMS_CROSSED = 2
uint8 LEFT_HAND_RAISED = 3
uint8 RIGHT_HAND_RAISED = 4
uint8 BOTH_HANDS_RAISED = 5
uint8 WAVING = 6 # eg, greeting someone with the hand

uint8 OTHER = 0

uint8 gesture # one of the above constants

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



(provide :hri_msgs/Gesture "c64cc745a3c18d0a7abe6aed5be4f345")


