;; Auto-generated. Do not edit!


(when (boundp 'rosmon_msgs::StartStop)
  (if (not (find-package "ROSMON_MSGS"))
    (make-package "ROSMON_MSGS"))
  (shadow 'StartStop (find-package "ROSMON_MSGS")))
(unless (find-package "ROSMON_MSGS::STARTSTOP")
  (make-package "ROSMON_MSGS::STARTSTOP"))
(unless (find-package "ROSMON_MSGS::STARTSTOPREQUEST")
  (make-package "ROSMON_MSGS::STARTSTOPREQUEST"))
(unless (find-package "ROSMON_MSGS::STARTSTOPRESPONSE")
  (make-package "ROSMON_MSGS::STARTSTOPRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROSMON_MSGS::STARTSTOPREQUEST"))
(shadow '*START* (find-package "ROSMON_MSGS::STARTSTOPREQUEST"))
(defconstant rosmon_msgs::StartStopRequest::*START* 1)
(intern "*STOP*" (find-package "ROSMON_MSGS::STARTSTOPREQUEST"))
(shadow '*STOP* (find-package "ROSMON_MSGS::STARTSTOPREQUEST"))
(defconstant rosmon_msgs::StartStopRequest::*STOP* 2)
(intern "*RESTART*" (find-package "ROSMON_MSGS::STARTSTOPREQUEST"))
(shadow '*RESTART* (find-package "ROSMON_MSGS::STARTSTOPREQUEST"))
(defconstant rosmon_msgs::StartStopRequest::*RESTART* 3)

(defun rosmon_msgs::StartStopRequest-to-symbol (const)
  (cond
        ((= const 1) 'rosmon_msgs::StartStopRequest::*START*)
        ((= const 2) 'rosmon_msgs::StartStopRequest::*STOP*)
        ((= const 3) 'rosmon_msgs::StartStopRequest::*RESTART*)
        (t nil)))

(defclass rosmon_msgs::StartStopRequest
  :super ros::object
  :slots (_node _ns _action ))

(defmethod rosmon_msgs::StartStopRequest
  (:init
   (&key
    ((:node __node) "")
    ((:ns __ns) "")
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _node (string __node))
   (setq _ns (string __ns))
   (setq _action (round __action))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; string _node
    4 (length _node)
    ;; string _ns
    4 (length _ns)
    ;; uint8 _action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;; string _ns
       (write-long (length _ns) s) (princ _ns s)
     ;; uint8 _action
       (write-byte _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ns
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ns (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass rosmon_msgs::StartStopResponse
  :super ros::object
  :slots ())

(defmethod rosmon_msgs::StartStopResponse
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

(defclass rosmon_msgs::StartStop
  :super ros::object
  :slots ())

(setf (get rosmon_msgs::StartStop :md5sum-) "a95e7883b3762847035c73ffc86de3ea")
(setf (get rosmon_msgs::StartStop :datatype-) "rosmon_msgs/StartStop")
(setf (get rosmon_msgs::StartStop :request) rosmon_msgs::StartStopRequest)
(setf (get rosmon_msgs::StartStop :response) rosmon_msgs::StartStopResponse)

(defmethod rosmon_msgs::StartStopRequest
  (:response () (instance rosmon_msgs::StartStopResponse :init)))

(setf (get rosmon_msgs::StartStopRequest :md5sum-) "a95e7883b3762847035c73ffc86de3ea")
(setf (get rosmon_msgs::StartStopRequest :datatype-) "rosmon_msgs/StartStopRequest")
(setf (get rosmon_msgs::StartStopRequest :definition-)
      "uint8 START = 1
uint8 STOP = 2
uint8 RESTART = 3

string node     # ROS node name
string ns       # ROS node namespace
uint8 action
---

")

(setf (get rosmon_msgs::StartStopResponse :md5sum-) "a95e7883b3762847035c73ffc86de3ea")
(setf (get rosmon_msgs::StartStopResponse :datatype-) "rosmon_msgs/StartStopResponse")
(setf (get rosmon_msgs::StartStopResponse :definition-)
      "uint8 START = 1
uint8 STOP = 2
uint8 RESTART = 3

string node     # ROS node name
string ns       # ROS node namespace
uint8 action
---

")



(provide :rosmon_msgs/StartStop "a95e7883b3762847035c73ffc86de3ea")


