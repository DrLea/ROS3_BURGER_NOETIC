;; Auto-generated. Do not edit!


(when (boundp 'py_trees_msgs::CloseBlackboardWatcher)
  (if (not (find-package "PY_TREES_MSGS"))
    (make-package "PY_TREES_MSGS"))
  (shadow 'CloseBlackboardWatcher (find-package "PY_TREES_MSGS")))
(unless (find-package "PY_TREES_MSGS::CLOSEBLACKBOARDWATCHER")
  (make-package "PY_TREES_MSGS::CLOSEBLACKBOARDWATCHER"))
(unless (find-package "PY_TREES_MSGS::CLOSEBLACKBOARDWATCHERREQUEST")
  (make-package "PY_TREES_MSGS::CLOSEBLACKBOARDWATCHERREQUEST"))
(unless (find-package "PY_TREES_MSGS::CLOSEBLACKBOARDWATCHERRESPONSE")
  (make-package "PY_TREES_MSGS::CLOSEBLACKBOARDWATCHERRESPONSE"))

(in-package "ROS")





(defclass py_trees_msgs::CloseBlackboardWatcherRequest
  :super ros::object
  :slots (_topic_name ))

(defmethod py_trees_msgs::CloseBlackboardWatcherRequest
  (:init
   (&key
    ((:topic_name __topic_name) "")
    )
   (send-super :init)
   (setq _topic_name (string __topic_name))
   self)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:serialization-length
   ()
   (+
    ;; string _topic_name
    4 (length _topic_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass py_trees_msgs::CloseBlackboardWatcherResponse
  :super ros::object
  :slots (_result ))

(defmethod py_trees_msgs::CloseBlackboardWatcherResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass py_trees_msgs::CloseBlackboardWatcher
  :super ros::object
  :slots ())

(setf (get py_trees_msgs::CloseBlackboardWatcher :md5sum-) "55b7efb7a62750406d3968e9c1907525")
(setf (get py_trees_msgs::CloseBlackboardWatcher :datatype-) "py_trees_msgs/CloseBlackboardWatcher")
(setf (get py_trees_msgs::CloseBlackboardWatcher :request) py_trees_msgs::CloseBlackboardWatcherRequest)
(setf (get py_trees_msgs::CloseBlackboardWatcher :response) py_trees_msgs::CloseBlackboardWatcherResponse)

(defmethod py_trees_msgs::CloseBlackboardWatcherRequest
  (:response () (instance py_trees_msgs::CloseBlackboardWatcherResponse :init)))

(setf (get py_trees_msgs::CloseBlackboardWatcherRequest :md5sum-) "55b7efb7a62750406d3968e9c1907525")
(setf (get py_trees_msgs::CloseBlackboardWatcherRequest :datatype-) "py_trees_msgs/CloseBlackboardWatcherRequest")
(setf (get py_trees_msgs::CloseBlackboardWatcherRequest :definition-)
      "# Send the topic name of sub_blackboard to send shutdown request
# The blackboard watcher listening has the topic name it's listening to
# Result response states whether sub_blackboard has been purged successfully
# on request

# topic name that is dynamically created for watching to shutdown
string topic_name
---
# response stating successful shutdown of sub_blackboard
bool result

")

(setf (get py_trees_msgs::CloseBlackboardWatcherResponse :md5sum-) "55b7efb7a62750406d3968e9c1907525")
(setf (get py_trees_msgs::CloseBlackboardWatcherResponse :datatype-) "py_trees_msgs/CloseBlackboardWatcherResponse")
(setf (get py_trees_msgs::CloseBlackboardWatcherResponse :definition-)
      "# Send the topic name of sub_blackboard to send shutdown request
# The blackboard watcher listening has the topic name it's listening to
# Result response states whether sub_blackboard has been purged successfully
# on request

# topic name that is dynamically created for watching to shutdown
string topic_name
---
# response stating successful shutdown of sub_blackboard
bool result

")



(provide :py_trees_msgs/CloseBlackboardWatcher "55b7efb7a62750406d3968e9c1907525")


