;; Auto-generated. Do not edit!


(when (boundp 'py_trees_msgs::GetBlackboardVariables)
  (if (not (find-package "PY_TREES_MSGS"))
    (make-package "PY_TREES_MSGS"))
  (shadow 'GetBlackboardVariables (find-package "PY_TREES_MSGS")))
(unless (find-package "PY_TREES_MSGS::GETBLACKBOARDVARIABLES")
  (make-package "PY_TREES_MSGS::GETBLACKBOARDVARIABLES"))
(unless (find-package "PY_TREES_MSGS::GETBLACKBOARDVARIABLESREQUEST")
  (make-package "PY_TREES_MSGS::GETBLACKBOARDVARIABLESREQUEST"))
(unless (find-package "PY_TREES_MSGS::GETBLACKBOARDVARIABLESRESPONSE")
  (make-package "PY_TREES_MSGS::GETBLACKBOARDVARIABLESRESPONSE"))

(in-package "ROS")





(defclass py_trees_msgs::GetBlackboardVariablesRequest
  :super ros::object
  :slots ())

(defmethod py_trees_msgs::GetBlackboardVariablesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass py_trees_msgs::GetBlackboardVariablesResponse
  :super ros::object
  :slots (_variables ))

(defmethod py_trees_msgs::GetBlackboardVariablesResponse
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

(defclass py_trees_msgs::GetBlackboardVariables
  :super ros::object
  :slots ())

(setf (get py_trees_msgs::GetBlackboardVariables :md5sum-) "8f184382c36d538fab610317191b119e")
(setf (get py_trees_msgs::GetBlackboardVariables :datatype-) "py_trees_msgs/GetBlackboardVariables")
(setf (get py_trees_msgs::GetBlackboardVariables :request) py_trees_msgs::GetBlackboardVariablesRequest)
(setf (get py_trees_msgs::GetBlackboardVariables :response) py_trees_msgs::GetBlackboardVariablesResponse)

(defmethod py_trees_msgs::GetBlackboardVariablesRequest
  (:response () (instance py_trees_msgs::GetBlackboardVariablesResponse :init)))

(setf (get py_trees_msgs::GetBlackboardVariablesRequest :md5sum-) "8f184382c36d538fab610317191b119e")
(setf (get py_trees_msgs::GetBlackboardVariablesRequest :datatype-) "py_trees_msgs/GetBlackboardVariablesRequest")
(setf (get py_trees_msgs::GetBlackboardVariablesRequest :definition-)
      "# Retrieve a list of variables currently available in the blackboard.
# This is primarily used as a utility for the blackboard watcher (find what
# variables are available without the entire spam of the blackboard contents
# before proceeding to watch a subset of these.

---
string[] variables

")

(setf (get py_trees_msgs::GetBlackboardVariablesResponse :md5sum-) "8f184382c36d538fab610317191b119e")
(setf (get py_trees_msgs::GetBlackboardVariablesResponse :datatype-) "py_trees_msgs/GetBlackboardVariablesResponse")
(setf (get py_trees_msgs::GetBlackboardVariablesResponse :definition-)
      "# Retrieve a list of variables currently available in the blackboard.
# This is primarily used as a utility for the blackboard watcher (find what
# variables are available without the entire spam of the blackboard contents
# before proceeding to watch a subset of these.

---
string[] variables

")



(provide :py_trees_msgs/GetBlackboardVariables "8f184382c36d538fab610317191b119e")


