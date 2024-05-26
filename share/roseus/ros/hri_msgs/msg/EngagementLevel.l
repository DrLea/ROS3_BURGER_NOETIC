;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::EngagementLevel)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'EngagementLevel (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::ENGAGEMENTLEVEL")
  (make-package "HRI_MSGS::ENGAGEMENTLEVEL"))

(in-package "ROS")
;;//! \htmlinclude EngagementLevel.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*UNKNOWN*" (find-package "HRI_MSGS::ENGAGEMENTLEVEL"))
(shadow '*UNKNOWN* (find-package "HRI_MSGS::ENGAGEMENTLEVEL"))
(defconstant hri_msgs::EngagementLevel::*UNKNOWN* 0)
(intern "*DISENGAGED*" (find-package "HRI_MSGS::ENGAGEMENTLEVEL"))
(shadow '*DISENGAGED* (find-package "HRI_MSGS::ENGAGEMENTLEVEL"))
(defconstant hri_msgs::EngagementLevel::*DISENGAGED* 1)
(intern "*ENGAGING*" (find-package "HRI_MSGS::ENGAGEMENTLEVEL"))
(shadow '*ENGAGING* (find-package "HRI_MSGS::ENGAGEMENTLEVEL"))
(defconstant hri_msgs::EngagementLevel::*ENGAGING* 2)
(intern "*ENGAGED*" (find-package "HRI_MSGS::ENGAGEMENTLEVEL"))
(shadow '*ENGAGED* (find-package "HRI_MSGS::ENGAGEMENTLEVEL"))
(defconstant hri_msgs::EngagementLevel::*ENGAGED* 3)
(intern "*DISENGAGING*" (find-package "HRI_MSGS::ENGAGEMENTLEVEL"))
(shadow '*DISENGAGING* (find-package "HRI_MSGS::ENGAGEMENTLEVEL"))
(defconstant hri_msgs::EngagementLevel::*DISENGAGING* 4)

(defun hri_msgs::EngagementLevel-to-symbol (const)
  (cond
        ((= const 0) 'hri_msgs::EngagementLevel::*UNKNOWN*)
        ((= const 1) 'hri_msgs::EngagementLevel::*DISENGAGED*)
        ((= const 2) 'hri_msgs::EngagementLevel::*ENGAGING*)
        ((= const 3) 'hri_msgs::EngagementLevel::*ENGAGED*)
        ((= const 4) 'hri_msgs::EngagementLevel::*DISENGAGING*)
        (t nil)))

(defclass hri_msgs::EngagementLevel
  :super ros::object
  :slots (_header _level ))

(defmethod hri_msgs::EngagementLevel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:level __level) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _level (round __level))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _level
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _level
       (write-byte _level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hri_msgs::EngagementLevel :md5sum-) "98693df082bea7da40fa598b187373d9")
(setf (get hri_msgs::EngagementLevel :datatype-) "hri_msgs/EngagementLevel")
(setf (get hri_msgs::EngagementLevel :definition-)
      "# Discrete engagement levels of a person with respect to the robot
# It is for instance published on /humans/persons/person_id/engagement_status 
# to access to the engagement level of a detected human. 
# It will output one of the five following levels: unknown, disengaged, 
# engaging, engaged and disengaging.
Header header  

# unknown: no information is provided about the engagement level 
uint8 UNKNOWN=0
# disengaged: the human has not looked in the direction of the robot
uint8 DISENGAGED=1
# engaging: the human has started to look in the direction of the robot
uint8 ENGAGING=2
# engaged: the human is fully engaged with the robot
uint8 ENGAGED=3
# disengaging: the human has started to look away from the robot
uint8 DISENGAGING=4

uint8 level


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



(provide :hri_msgs/EngagementLevel "98693df082bea7da40fa598b187373d9")


