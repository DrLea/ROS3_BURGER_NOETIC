;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::Group)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'Group (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::GROUP")
  (make-package "HRI_MSGS::GROUP"))

(in-package "ROS")
;;//! \htmlinclude Group.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hri_msgs::Group
  :super ros::object
  :slots (_header _group_id _members ))

(defmethod hri_msgs::Group
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:group_id __group_id) "")
    ((:members __members) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _group_id (string __group_id))
   (setq _members __members)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:group_id
   (&optional __group_id)
   (if __group_id (setq _group_id __group_id)) _group_id)
  (:members
   (&optional __members)
   (if __members (setq _members __members)) _members)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _group_id
    4 (length _group_id)
    ;; string[] _members
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _members)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _group_id
       (write-long (length _group_id) s) (princ _group_id s)
     ;; string[] _members
     (write-long (length _members) s)
     (dolist (elem _members)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _group_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _members
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _members (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _members i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get hri_msgs::Group :md5sum-) "76be953e6ddf78f60b879c220d0a3c32")
(setf (get hri_msgs::Group :datatype-) "hri_msgs/Group")
(setf (get hri_msgs::Group :definition-)
      "Header header

string group_id

# List of person IDs of the people in this group
string[] members

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



(provide :hri_msgs/Group "76be953e6ddf78f60b879c220d0a3c32")


