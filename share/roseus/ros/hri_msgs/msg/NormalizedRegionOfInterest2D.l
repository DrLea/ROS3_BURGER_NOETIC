;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::NormalizedRegionOfInterest2D)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'NormalizedRegionOfInterest2D (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::NORMALIZEDREGIONOFINTEREST2D")
  (make-package "HRI_MSGS::NORMALIZEDREGIONOFINTEREST2D"))

(in-package "ROS")
;;//! \htmlinclude NormalizedRegionOfInterest2D.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hri_msgs::NormalizedRegionOfInterest2D
  :super ros::object
  :slots (_header _xmin _ymin _xmax _ymax _c ))

(defmethod hri_msgs::NormalizedRegionOfInterest2D
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:xmin __xmin) 0.0)
    ((:ymin __ymin) 0.0)
    ((:xmax __xmax) 0.0)
    ((:ymax __ymax) 0.0)
    ((:c __c) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _xmin (float __xmin))
   (setq _ymin (float __ymin))
   (setq _xmax (float __xmax))
   (setq _ymax (float __ymax))
   (setq _c (float __c))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _xmin
    4
    ;; float32 _ymin
    4
    ;; float32 _xmax
    4
    ;; float32 _ymax
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
     ;; float32 _xmin
       (sys::poke _xmin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ymin
       (sys::poke _ymin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xmax
       (sys::poke _xmax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ymax
       (sys::poke _ymax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c
       (sys::poke _c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _xmin
     (setq _xmin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ymin
     (setq _ymin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xmax
     (setq _xmax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ymax
     (setq _ymax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c
     (setq _c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hri_msgs::NormalizedRegionOfInterest2D :md5sum-) "33eb96af02d4b1dd1457132b5c2149c2")
(setf (get hri_msgs::NormalizedRegionOfInterest2D :datatype-) "hri_msgs/NormalizedRegionOfInterest2D")
(setf (get hri_msgs::NormalizedRegionOfInterest2D :definition-)
      "# This contains the top-leftmost and bottom-rightmost coordinates of a region of interest (typically in an image)
# the coordinates are always normalized and must belong to [0.,1.].
# The (xmin, ymin) tuple stores the top-leftmost coordinates of the ROI, while (xmax, ymax) represents the
# bottom-rightmost coordinates.
# c is a confidence level (between 0. and 1.) associated to that ROI
Header header # Header timestamp should be acquisition time of the original image
float32 xmin
float32 ymin
float32 xmax
float32 ymax
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



(provide :hri_msgs/NormalizedRegionOfInterest2D "33eb96af02d4b1dd1457132b5c2149c2")


