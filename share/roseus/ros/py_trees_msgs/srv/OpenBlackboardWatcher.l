;; Auto-generated. Do not edit!


(when (boundp 'py_trees_msgs::OpenBlackboardWatcher)
  (if (not (find-package "PY_TREES_MSGS"))
    (make-package "PY_TREES_MSGS"))
  (shadow 'OpenBlackboardWatcher (find-package "PY_TREES_MSGS")))
(unless (find-package "PY_TREES_MSGS::OPENBLACKBOARDWATCHER")
  (make-package "PY_TREES_MSGS::OPENBLACKBOARDWATCHER"))
(unless (find-package "PY_TREES_MSGS::OPENBLACKBOARDWATCHERREQUEST")
  (make-package "PY_TREES_MSGS::OPENBLACKBOARDWATCHERREQUEST"))
(unless (find-package "PY_TREES_MSGS::OPENBLACKBOARDWATCHERRESPONSE")
  (make-package "PY_TREES_MSGS::OPENBLACKBOARDWATCHERRESPONSE"))

(in-package "ROS")





(defclass py_trees_msgs::OpenBlackboardWatcherRequest
  :super ros::object
  :slots (_variables ))

(defmethod py_trees_msgs::OpenBlackboardWatcherRequest
  (:init
   (&key
    ((:variables __variables) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _variables __variables)
   self)
  (:variables
   (&optional __variables)
   (if __variables (setq _variables __variables)) _variables)
  (:serialization-length
   ()
   (+
    ;; string[] _variables
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _variables)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _variables
     (write-long (length _variables) s)
     (dolist (elem _variables)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _variables
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _variables (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _variables i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass py_trees_msgs::OpenBlackboardWatcherResponse
  :super ros::object
  :slots (_topic ))

(defmethod py_trees_msgs::OpenBlackboardWatcherResponse
  (:init
   (&key
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _topic (string __topic))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass py_trees_msgs::OpenBlackboardWatcher
  :super ros::object
  :slots ())

(setf (get py_trees_msgs::OpenBlackboardWatcher :md5sum-) "4ed40443479f1f30fe6cf433b04df9b6")
(setf (get py_trees_msgs::OpenBlackboardWatcher :datatype-) "py_trees_msgs/OpenBlackboardWatcher")
(setf (get py_trees_msgs::OpenBlackboardWatcher :request) py_trees_msgs::OpenBlackboardWatcherRequest)
(setf (get py_trees_msgs::OpenBlackboardWatcher :response) py_trees_msgs::OpenBlackboardWatcherResponse)

(defmethod py_trees_msgs::OpenBlackboardWatcherRequest
  (:response () (instance py_trees_msgs::OpenBlackboardWatcherResponse :init)))

(setf (get py_trees_msgs::OpenBlackboardWatcherRequest :md5sum-) "4ed40443479f1f30fe6cf433b04df9b6")
(setf (get py_trees_msgs::OpenBlackboardWatcherRequest :datatype-) "py_trees_msgs/OpenBlackboardWatcherRequest")
(setf (get py_trees_msgs::OpenBlackboardWatcherRequest :definition-)
      "# Specify a list of variables to watch on the blackboard. These
# can be nested variables (e.g. get only the position in an odom
# message). Typically this is not used directly, but by the
# blackboard watcher utility

# list of variables to watch
string[] variables
---
# topic name that is dynamically created for watching
string topic

")

(setf (get py_trees_msgs::OpenBlackboardWatcherResponse :md5sum-) "4ed40443479f1f30fe6cf433b04df9b6")
(setf (get py_trees_msgs::OpenBlackboardWatcherResponse :datatype-) "py_trees_msgs/OpenBlackboardWatcherResponse")
(setf (get py_trees_msgs::OpenBlackboardWatcherResponse :definition-)
      "# Specify a list of variables to watch on the blackboard. These
# can be nested variables (e.g. get only the position in an odom
# message). Typically this is not used directly, but by the
# blackboard watcher utility

# list of variables to watch
string[] variables
---
# topic name that is dynamically created for watching
string topic

")



(provide :py_trees_msgs/OpenBlackboardWatcher "4ed40443479f1f30fe6cf433b04df9b6")


