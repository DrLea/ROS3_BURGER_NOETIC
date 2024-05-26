;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::NormalizedPointOfInterest2DStamped)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'NormalizedPointOfInterest2DStamped (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::NORMALIZEDPOINTOFINTEREST2DSTAMPED")
  (make-package "HRI_MSGS::NORMALIZEDPOINTOFINTEREST2DSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude NormalizedPointOfInterest2DStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hri_msgs::NormalizedPointOfInterest2DStamped
  :super ros::object
  :slots (_header _x _y _c ))

(defmethod hri_msgs::NormalizedPointOfInterest2DStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:c __c) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _c (float __c))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _c
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c
       (sys::poke _c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c
     (setq _c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hri_msgs::NormalizedPointOfInterest2DStamped :md5sum-) "f00d620d5791659f1cba63fdcb50f444")
(setf (get hri_msgs::NormalizedPointOfInterest2DStamped :datatype-) "hri_msgs/NormalizedPointOfInterest2DStamped")
(setf (get hri_msgs::NormalizedPointOfInterest2DStamped :definition-)
      "# This contains the position of a point of interest (typically in an image)
# the coordinates are always normalized and must belong to [0.,1.].
# c is a confidence level (between 0. and 1.) associated to that POI
Header header # Header timestamp should be acquisition time of the original image
float32 x
float32 y
float32 c

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



(provide :hri_msgs/NormalizedPointOfInterest2DStamped "f00d620d5791659f1cba63fdcb50f444")


