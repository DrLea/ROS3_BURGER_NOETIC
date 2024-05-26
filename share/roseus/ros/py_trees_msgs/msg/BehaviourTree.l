;; Auto-generated. Do not edit!


(when (boundp 'py_trees_msgs::BehaviourTree)
  (if (not (find-package "PY_TREES_MSGS"))
    (make-package "PY_TREES_MSGS"))
  (shadow 'BehaviourTree (find-package "PY_TREES_MSGS")))
(unless (find-package "PY_TREES_MSGS::BEHAVIOURTREE")
  (make-package "PY_TREES_MSGS::BEHAVIOURTREE"))

(in-package "ROS")
;;//! \htmlinclude BehaviourTree.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass py_trees_msgs::BehaviourTree
  :super ros::object
  :slots (_header _behaviours ))

(defmethod py_trees_msgs::BehaviourTree
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:behaviours __behaviours) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _behaviours __behaviours)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:behaviours
   (&rest __behaviours)
   (if (keywordp (car __behaviours))
       (send* _behaviours __behaviours)
     (progn
       (if __behaviours (setq _behaviours (car __behaviours)))
       _behaviours)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; py_trees_msgs/Behaviour[] _behaviours
    (apply #'+ (send-all _behaviours :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; py_trees_msgs/Behaviour[] _behaviours
     (write-long (length _behaviours) s)
     (dolist (elem _behaviours)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; py_trees_msgs/Behaviour[] _behaviours
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _behaviours (let (r) (dotimes (i n) (push (instance py_trees_msgs::Behaviour :init) r)) r))
     (dolist (elem- _behaviours)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get py_trees_msgs::BehaviourTree :md5sum-) "3e45966d310b941f92c522db8baac203")
(setf (get py_trees_msgs::BehaviourTree :datatype-) "py_trees_msgs/BehaviourTree")
(setf (get py_trees_msgs::BehaviourTree :definition-)
      "Header header
Behaviour[] behaviours
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
MSG: py_trees_msgs/Behaviour
# Possible behaviour states
uint8 INVALID = 1
uint8 RUNNING = 2
uint8 SUCCESS = 3
uint8 FAILURE = 4

# Possible types of behaviour
uint8 UNKNOWN_TYPE = 0
uint8 BEHAVIOUR = 1
uint8 SEQUENCE = 2
uint8 SELECTOR = 3
uint8 PARALLEL = 4
uint8 CHOOSER = 5
uint8 DECORATOR = 6

# Blackbox Level - these must match what is in py_trees.common.BlackBoxLevel
uint8 BLACKBOX_LEVEL_DETAIL = 1
uint8 BLACKBOX_LEVEL_COMPONENT = 2
uint8 BLACKBOX_LEVEL_BIG_PICTURE = 3
uint8 BLACKBOX_LEVEL_NOT_A_BLACKBOX = 4

# Name given to the behaviour on construction
string name

# Name of the class of this behaviour
string class_name

# The ID of this behaviour
uuid_msgs/UniqueID own_id

# The ID of the parent behaviour (what if it's empty?)
uuid_msgs/UniqueID parent_id

# ID of the tip of this behaviour. If the tip is the behaviour itself or None,
# this is empty
uuid_msgs/UniqueID tip_id

# The IDs of children of this behaviour, if any
uuid_msgs/UniqueID[] child_ids

# A composite, sequence, selector, plain behaviour, etc.
uint8 type

# Blackbox level (for visualisation purposes)
uint8 blackbox_level

# The current state of execution. Can be invalid, running, success or failure
uint8 status

# The message attached to the current execution state
string message

# Whether this node was part of the last tick
bool is_active

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

")



(provide :py_trees_msgs/BehaviourTree "3e45966d310b941f92c522db8baac203")


