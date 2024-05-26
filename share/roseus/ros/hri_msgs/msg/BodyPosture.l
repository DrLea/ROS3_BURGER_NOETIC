;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::BodyPosture)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'BodyPosture (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::BODYPOSTURE")
  (make-package "HRI_MSGS::BODYPOSTURE"))

(in-package "ROS")
;;//! \htmlinclude BodyPosture.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STANDING*" (find-package "HRI_MSGS::BODYPOSTURE"))
(shadow '*STANDING* (find-package "HRI_MSGS::BODYPOSTURE"))
(defconstant hri_msgs::BodyPosture::*STANDING* 1)
(intern "*SITTING*" (find-package "HRI_MSGS::BODYPOSTURE"))
(shadow '*SITTING* (find-package "HRI_MSGS::BODYPOSTURE"))
(defconstant hri_msgs::BodyPosture::*SITTING* 2)
(intern "*CROUCHING*" (find-package "HRI_MSGS::BODYPOSTURE"))
(shadow '*CROUCHING* (find-package "HRI_MSGS::BODYPOSTURE"))
(defconstant hri_msgs::BodyPosture::*CROUCHING* 3)
(intern "*LAYING*" (find-package "HRI_MSGS::BODYPOSTURE"))
(shadow '*LAYING* (find-package "HRI_MSGS::BODYPOSTURE"))
(defconstant hri_msgs::BodyPosture::*LAYING* 4)
(intern "*OTHER*" (find-package "HRI_MSGS::BODYPOSTURE"))
(shadow '*OTHER* (find-package "HRI_MSGS::BODYPOSTURE"))
(defconstant hri_msgs::BodyPosture::*OTHER* 0)

(defun hri_msgs::BodyPosture-to-symbol (const)
  (cond
        ((= const 1) 'hri_msgs::BodyPosture::*STANDING*)
        ((= const 2) 'hri_msgs::BodyPosture::*SITTING*)
        ((= const 3) 'hri_msgs::BodyPosture::*CROUCHING*)
        ((= const 4) 'hri_msgs::BodyPosture::*LAYING*)
        ((= const 0) 'hri_msgs::BodyPosture::*OTHER*)
        (t nil)))

(defclass hri_msgs::BodyPosture
  :super ros::object
  :slots (_header _posture ))

(defmethod hri_msgs::BodyPosture
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:posture __posture) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _posture (round __posture))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:posture
   (&optional __posture)
   (if __posture (setq _posture __posture)) _posture)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _posture
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _posture
       (write-byte _posture s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _posture
     (setq _posture (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hri_msgs::BodyPosture :md5sum-) "52f95070a71954a985e0ab92dd4d4eb9")
(setf (get hri_msgs::BodyPosture :datatype-) "hri_msgs/BodyPosture")
(setf (get hri_msgs::BodyPosture :definition-)
      "# Describes the general body posture in a symbolic manner.
Header header

uint8 STANDING = 1
uint8 SITTING = 2
uint8 CROUCHING = 3
uint8 LAYING = 4

uint8 OTHER = 0

uint8 posture # one of the above constants

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



(provide :hri_msgs/BodyPosture "52f95070a71954a985e0ab92dd4d4eb9")


