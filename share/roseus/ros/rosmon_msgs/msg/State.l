;; Auto-generated. Do not edit!


(when (boundp 'rosmon_msgs::State)
  (if (not (find-package "ROSMON_MSGS"))
    (make-package "ROSMON_MSGS"))
  (shadow 'State (find-package "ROSMON_MSGS")))
(unless (find-package "ROSMON_MSGS::STATE")
  (make-package "ROSMON_MSGS::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosmon_msgs::State
  :super ros::object
  :slots (_header _nodes ))

(defmethod rosmon_msgs::State
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:nodes __nodes) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _nodes __nodes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:nodes
   (&rest __nodes)
   (if (keywordp (car __nodes))
       (send* _nodes __nodes)
     (progn
       (if __nodes (setq _nodes (car __nodes)))
       _nodes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rosmon_msgs/NodeState[] _nodes
    (apply #'+ (send-all _nodes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rosmon_msgs/NodeState[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rosmon_msgs/NodeState[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (let (r) (dotimes (i n) (push (instance rosmon_msgs::NodeState :init) r)) r))
     (dolist (elem- _nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rosmon_msgs::State :md5sum-) "93fe347b2ffed78bbacee05fd2655b2e")
(setf (get rosmon_msgs::State :datatype-) "rosmon_msgs/State")
(setf (get rosmon_msgs::State :definition-)
      "Header header
NodeState[] nodes

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
MSG: rosmon_msgs/NodeState
uint8 IDLE = 0     # Node was manually stopped
uint8 RUNNING = 1  # Node is running
uint8 CRASHED = 2  # Node has crashed (i.e. exited with state != 0)
uint8 WAITING = 3  # Node is waiting for automatic restart

# ROS node name
string name

# ROS node namespace
string ns

# Node state (see above)
uint8 state

# How many times has this node been automatically restarted?
uint32 restart_count

# Estimate of the CPU load in userspace of this node
# Note that this is relative to one CPU core. On an 8-core machine, this can
# be 8.0.
float32 user_load

# Estime of the CPU load in kernelspace of this node
float32 system_load

# How much physical memory is used by the process?
# Value is given in bytes.
uint64 memory

")



(provide :rosmon_msgs/State "93fe347b2ffed78bbacee05fd2655b2e")


