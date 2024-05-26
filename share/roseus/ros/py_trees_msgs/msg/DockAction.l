;; Auto-generated. Do not edit!


(when (boundp 'py_trees_msgs::DockAction)
  (if (not (find-package "PY_TREES_MSGS"))
    (make-package "PY_TREES_MSGS"))
  (shadow 'DockAction (find-package "PY_TREES_MSGS")))
(unless (find-package "PY_TREES_MSGS::DOCKACTION")
  (make-package "PY_TREES_MSGS::DOCKACTION"))

(in-package "ROS")
;;//! \htmlinclude DockAction.msg.html


(defclass py_trees_msgs::DockAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod py_trees_msgs::DockAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance py_trees_msgs::DockActionGoal :init))
    ((:action_result __action_result) (instance py_trees_msgs::DockActionResult :init))
    ((:action_feedback __action_feedback) (instance py_trees_msgs::DockActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; py_trees_msgs/DockActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; py_trees_msgs/DockActionResult _action_result
    (send _action_result :serialization-length)
    ;; py_trees_msgs/DockActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; py_trees_msgs/DockActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; py_trees_msgs/DockActionResult _action_result
       (send _action_result :serialize s)
     ;; py_trees_msgs/DockActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; py_trees_msgs/DockActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; py_trees_msgs/DockActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; py_trees_msgs/DockActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get py_trees_msgs::DockAction :md5sum-) "1487f2ccdee1636e3fa5ee088040ee3a")
(setf (get py_trees_msgs::DockAction :datatype-) "py_trees_msgs/DockAction")
(setf (get py_trees_msgs::DockAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

DockActionGoal action_goal
DockActionResult action_result
DockActionFeedback action_feedback

================================================================================
MSG: py_trees_msgs/DockActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
DockGoal goal

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
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: py_trees_msgs/DockGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
###############################################################################
# Dicj
###############################################################################
#
# Interaface to a typical docking controller
#
###############################################################################

####################
# Goal
####################
# To dock (True) or undock (False)
bool dock


================================================================================
MSG: py_trees_msgs/DockActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
DockResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: py_trees_msgs/DockResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
####################
# Result
####################

int8 value
string message


int8 SUCCESS = 0
int8 ERROR = 1


================================================================================
MSG: py_trees_msgs/DockActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
DockFeedback feedback

================================================================================
MSG: py_trees_msgs/DockFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

####################
# Feedback
####################

float32 percentage_completed


")



(provide :py_trees_msgs/DockAction "1487f2ccdee1636e3fa5ee088040ee3a")

