;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::NormalizedPointOfInterest2D)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'NormalizedPointOfInterest2D (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::NORMALIZEDPOINTOFINTEREST2D")
  (make-package "HRI_MSGS::NORMALIZEDPOINTOFINTEREST2D"))

(in-package "ROS")
;;//! \htmlinclude NormalizedPointOfInterest2D.msg.html


(defclass hri_msgs::NormalizedPointOfInterest2D
  :super ros::object
  :slots (_x _y _c ))

(defmethod hri_msgs::NormalizedPointOfInterest2D
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:c __c) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _c (float __c))
   self)
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
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c
     (setq _c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hri_msgs::NormalizedPointOfInterest2D :md5sum-) "eb224da30b2d872f41cf40e039cdb0d6")
(setf (get hri_msgs::NormalizedPointOfInterest2D :datatype-) "hri_msgs/NormalizedPointOfInterest2D")
(setf (get hri_msgs::NormalizedPointOfInterest2D :definition-)
      "# This contains the position of a point of interest (typically in an image)
# the coordinates are always normalized and must belong to [0.,1.].
# c is a confidence level (between 0. and 1.) associated to that POI
float32 x
float32 y
float32 c

")



(provide :hri_msgs/NormalizedPointOfInterest2D "eb224da30b2d872f41cf40e039cdb0d6")


