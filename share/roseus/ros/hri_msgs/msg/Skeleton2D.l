;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::Skeleton2D)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'Skeleton2D (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::SKELETON2D")
  (make-package "HRI_MSGS::SKELETON2D"))

(in-package "ROS")
;;//! \htmlinclude Skeleton2D.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NOSE*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*NOSE* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*NOSE* 0)
(intern "*NECK*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*NECK* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*NECK* 1)
(intern "*RIGHT_SHOULDER*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*RIGHT_SHOULDER* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*RIGHT_SHOULDER* 2)
(intern "*RIGHT_ELBOW*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*RIGHT_ELBOW* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*RIGHT_ELBOW* 3)
(intern "*RIGHT_WRIST*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*RIGHT_WRIST* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*RIGHT_WRIST* 4)
(intern "*LEFT_SHOULDER*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*LEFT_SHOULDER* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*LEFT_SHOULDER* 5)
(intern "*LEFT_ELBOW*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*LEFT_ELBOW* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*LEFT_ELBOW* 6)
(intern "*LEFT_WRIST*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*LEFT_WRIST* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*LEFT_WRIST* 7)
(intern "*RIGHT_HIP*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*RIGHT_HIP* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*RIGHT_HIP* 8)
(intern "*RIGHT_KNEE*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*RIGHT_KNEE* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*RIGHT_KNEE* 9)
(intern "*RIGHT_ANKLE*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*RIGHT_ANKLE* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*RIGHT_ANKLE* 10)
(intern "*LEFT_HIP*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*LEFT_HIP* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*LEFT_HIP* 11)
(intern "*LEFT_KNEE*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*LEFT_KNEE* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*LEFT_KNEE* 12)
(intern "*LEFT_ANKLE*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*LEFT_ANKLE* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*LEFT_ANKLE* 13)
(intern "*LEFT_EYE*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*LEFT_EYE* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*LEFT_EYE* 14)
(intern "*RIGHT_EYE*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*RIGHT_EYE* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*RIGHT_EYE* 15)
(intern "*LEFT_EAR*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*LEFT_EAR* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*LEFT_EAR* 16)
(intern "*RIGHT_EAR*" (find-package "HRI_MSGS::SKELETON2D"))
(shadow '*RIGHT_EAR* (find-package "HRI_MSGS::SKELETON2D"))
(defconstant hri_msgs::Skeleton2D::*RIGHT_EAR* 17)

(defun hri_msgs::Skeleton2D-to-symbol (const)
  (cond
        ((= const 0) 'hri_msgs::Skeleton2D::*NOSE*)
        ((= const 1) 'hri_msgs::Skeleton2D::*NECK*)
        ((= const 2) 'hri_msgs::Skeleton2D::*RIGHT_SHOULDER*)
        ((= const 3) 'hri_msgs::Skeleton2D::*RIGHT_ELBOW*)
        ((= const 4) 'hri_msgs::Skeleton2D::*RIGHT_WRIST*)
        ((= const 5) 'hri_msgs::Skeleton2D::*LEFT_SHOULDER*)
        ((= const 6) 'hri_msgs::Skeleton2D::*LEFT_ELBOW*)
        ((= const 7) 'hri_msgs::Skeleton2D::*LEFT_WRIST*)
        ((= const 8) 'hri_msgs::Skeleton2D::*RIGHT_HIP*)
        ((= const 9) 'hri_msgs::Skeleton2D::*RIGHT_KNEE*)
        ((= const 10) 'hri_msgs::Skeleton2D::*RIGHT_ANKLE*)
        ((= const 11) 'hri_msgs::Skeleton2D::*LEFT_HIP*)
        ((= const 12) 'hri_msgs::Skeleton2D::*LEFT_KNEE*)
        ((= const 13) 'hri_msgs::Skeleton2D::*LEFT_ANKLE*)
        ((= const 14) 'hri_msgs::Skeleton2D::*LEFT_EYE*)
        ((= const 15) 'hri_msgs::Skeleton2D::*RIGHT_EYE*)
        ((= const 16) 'hri_msgs::Skeleton2D::*LEFT_EAR*)
        ((= const 17) 'hri_msgs::Skeleton2D::*RIGHT_EAR*)
        (t nil)))

(defclass hri_msgs::Skeleton2D
  :super ros::object
  :slots (_header _skeleton ))

(defmethod hri_msgs::Skeleton2D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:skeleton __skeleton) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _skeleton __skeleton)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:skeleton
   (&rest __skeleton)
   (if (keywordp (car __skeleton))
       (send* _skeleton __skeleton)
     (progn
       (if __skeleton (setq _skeleton (car __skeleton)))
       _skeleton)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hri_msgs/NormalizedPointOfInterest2D[] _skeleton
    (apply #'+ (send-all _skeleton :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hri_msgs/NormalizedPointOfInterest2D[] _skeleton
     (write-long (length _skeleton) s)
     (dolist (elem _skeleton)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hri_msgs/NormalizedPointOfInterest2D[] _skeleton
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _skeleton (let (r) (dotimes (i n) (push (instance hri_msgs::NormalizedPointOfInterest2D :init) r)) r))
     (dolist (elem- _skeleton)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hri_msgs::Skeleton2D :md5sum-) "efedc2dc59671380a1d9b497f0740be4")
(setf (get hri_msgs::Skeleton2D :datatype-) "hri_msgs/Skeleton2D")
(setf (get hri_msgs::Skeleton2D :definition-)
      "# This message contains a list of skeletal keypoints 
# (0, 0) is at top-left corner of image

Header header        # Header timestamp should be acquisition time of the original image

# skeletal key points codes
# Follows OpenPose coco model convention
# https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/doc/output.md#pose-output-format-coco

uint8 NOSE = 0
uint8 NECK = 1
uint8 RIGHT_SHOULDER = 2
uint8 RIGHT_ELBOW = 3
uint8 RIGHT_WRIST = 4
uint8 LEFT_SHOULDER = 5
uint8 LEFT_ELBOW = 6
uint8 LEFT_WRIST = 7
uint8 RIGHT_HIP = 8
uint8 RIGHT_KNEE = 9
uint8 RIGHT_ANKLE = 10
uint8 LEFT_HIP = 11
uint8 LEFT_KNEE = 12
uint8 LEFT_ANKLE = 13
uint8 LEFT_EYE = 14
uint8 RIGHT_EYE = 15
uint8 LEFT_EAR = 16
uint8 RIGHT_EAR = 17

# array of 18 skeletal key points coordinates, one per skeletal key point, ordered per skeletal key points codes
NormalizedPointOfInterest2D[] skeleton



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
MSG: hri_msgs/NormalizedPointOfInterest2D
# This contains the position of a point of interest (typically in an image)
# the coordinates are always normalized and must belong to [0.,1.].
# c is a confidence level (between 0. and 1.) associated to that POI
float32 x
float32 y
float32 c

")



(provide :hri_msgs/Skeleton2D "efedc2dc59671380a1d9b497f0740be4")


