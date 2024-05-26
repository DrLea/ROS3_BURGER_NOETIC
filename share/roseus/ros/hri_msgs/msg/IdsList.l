;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::IdsList)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'IdsList (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::IDSLIST")
  (make-package "HRI_MSGS::IDSLIST"))

(in-package "ROS")
;;//! \htmlinclude IdsList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hri_msgs::IdsList
  :super ros::object
  :slots (_header _ids ))

(defmethod hri_msgs::IdsList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ids __ids) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ids __ids)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _ids
     (write-long (length _ids) s)
     (dolist (elem _ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get hri_msgs::IdsList :md5sum-) "84a63f55b5676f78b625e8a8bb809fe5")
(setf (get hri_msgs::IdsList :datatype-) "hri_msgs/IdsList")
(setf (get hri_msgs::IdsList :definition-)
      "# This message encodes a list of ROS4HRI IDs (eg face ids, body ids, person
# ids...).
# It is for instance published on /humans/faces/tracked to access the list of
# currently detected faces.
Header header
string[] ids

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



(provide :hri_msgs/IdsList "84a63f55b5676f78b625e8a8bb809fe5")


