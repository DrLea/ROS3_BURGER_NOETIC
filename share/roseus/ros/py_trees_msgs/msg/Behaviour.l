;; Auto-generated. Do not edit!


(when (boundp 'py_trees_msgs::Behaviour)
  (if (not (find-package "PY_TREES_MSGS"))
    (make-package "PY_TREES_MSGS"))
  (shadow 'Behaviour (find-package "PY_TREES_MSGS")))
(unless (find-package "PY_TREES_MSGS::BEHAVIOUR")
  (make-package "PY_TREES_MSGS::BEHAVIOUR"))

(in-package "ROS")
;;//! \htmlinclude Behaviour.msg.html
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(intern "*INVALID*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*INVALID* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*INVALID* 1)
(intern "*RUNNING*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*RUNNING* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*RUNNING* 2)
(intern "*SUCCESS*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*SUCCESS* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*SUCCESS* 3)
(intern "*FAILURE*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*FAILURE* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*FAILURE* 4)
(intern "*UNKNOWN_TYPE*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*UNKNOWN_TYPE* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*UNKNOWN_TYPE* 0)
(intern "*BEHAVIOUR*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*BEHAVIOUR* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*BEHAVIOUR* 1)
(intern "*SEQUENCE*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*SEQUENCE* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*SEQUENCE* 2)
(intern "*SELECTOR*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*SELECTOR* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*SELECTOR* 3)
(intern "*PARALLEL*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*PARALLEL* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*PARALLEL* 4)
(intern "*CHOOSER*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*CHOOSER* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*CHOOSER* 5)
(intern "*DECORATOR*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*DECORATOR* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*DECORATOR* 6)
(intern "*BLACKBOX_LEVEL_DETAIL*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*BLACKBOX_LEVEL_DETAIL* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*BLACKBOX_LEVEL_DETAIL* 1)
(intern "*BLACKBOX_LEVEL_COMPONENT*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*BLACKBOX_LEVEL_COMPONENT* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*BLACKBOX_LEVEL_COMPONENT* 2)
(intern "*BLACKBOX_LEVEL_BIG_PICTURE*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*BLACKBOX_LEVEL_BIG_PICTURE* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*BLACKBOX_LEVEL_BIG_PICTURE* 3)
(intern "*BLACKBOX_LEVEL_NOT_A_BLACKBOX*" (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(shadow '*BLACKBOX_LEVEL_NOT_A_BLACKBOX* (find-package "PY_TREES_MSGS::BEHAVIOUR"))
(defconstant py_trees_msgs::Behaviour::*BLACKBOX_LEVEL_NOT_A_BLACKBOX* 4)

(defun py_trees_msgs::Behaviour-to-symbol (const)
  (cond
        ((= const 1) 'py_trees_msgs::Behaviour::*INVALID*)
        ((= const 2) 'py_trees_msgs::Behaviour::*RUNNING*)
        ((= const 3) 'py_trees_msgs::Behaviour::*SUCCESS*)
        ((= const 4) 'py_trees_msgs::Behaviour::*FAILURE*)
        ((= const 0) 'py_trees_msgs::Behaviour::*UNKNOWN_TYPE*)
        ((= const 1) 'py_trees_msgs::Behaviour::*BEHAVIOUR*)
        ((= const 2) 'py_trees_msgs::Behaviour::*SEQUENCE*)
        ((= const 3) 'py_trees_msgs::Behaviour::*SELECTOR*)
        ((= const 4) 'py_trees_msgs::Behaviour::*PARALLEL*)
        ((= const 5) 'py_trees_msgs::Behaviour::*CHOOSER*)
        ((= const 6) 'py_trees_msgs::Behaviour::*DECORATOR*)
        ((= const 1) 'py_trees_msgs::Behaviour::*BLACKBOX_LEVEL_DETAIL*)
        ((= const 2) 'py_trees_msgs::Behaviour::*BLACKBOX_LEVEL_COMPONENT*)
        ((= const 3) 'py_trees_msgs::Behaviour::*BLACKBOX_LEVEL_BIG_PICTURE*)
        ((= const 4) 'py_trees_msgs::Behaviour::*BLACKBOX_LEVEL_NOT_A_BLACKBOX*)
        (t nil)))

(defclass py_trees_msgs::Behaviour
  :super ros::object
  :slots (_name _class_name _own_id _parent_id _tip_id _child_ids _type _blackbox_level _status _message _is_active ))

(defmethod py_trees_msgs::Behaviour
  (:init
   (&key
    ((:name __name) "")
    ((:class_name __class_name) "")
    ((:own_id __own_id) (instance uuid_msgs::UniqueID :init))
    ((:parent_id __parent_id) (instance uuid_msgs::UniqueID :init))
    ((:tip_id __tip_id) (instance uuid_msgs::UniqueID :init))
    ((:child_ids __child_ids) ())
    ((:type __type) 0)
    ((:blackbox_level __blackbox_level) 0)
    ((:status __status) 0)
    ((:message __message) "")
    ((:is_active __is_active) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _class_name (string __class_name))
   (setq _own_id __own_id)
   (setq _parent_id __parent_id)
   (setq _tip_id __tip_id)
   (setq _child_ids __child_ids)
   (setq _type (round __type))
   (setq _blackbox_level (round __blackbox_level))
   (setq _status (round __status))
   (setq _message (string __message))
   (setq _is_active __is_active)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:class_name
   (&optional __class_name)
   (if __class_name (setq _class_name __class_name)) _class_name)
  (:own_id
   (&rest __own_id)
   (if (keywordp (car __own_id))
       (send* _own_id __own_id)
     (progn
       (if __own_id (setq _own_id (car __own_id)))
       _own_id)))
  (:parent_id
   (&rest __parent_id)
   (if (keywordp (car __parent_id))
       (send* _parent_id __parent_id)
     (progn
       (if __parent_id (setq _parent_id (car __parent_id)))
       _parent_id)))
  (:tip_id
   (&rest __tip_id)
   (if (keywordp (car __tip_id))
       (send* _tip_id __tip_id)
     (progn
       (if __tip_id (setq _tip_id (car __tip_id)))
       _tip_id)))
  (:child_ids
   (&rest __child_ids)
   (if (keywordp (car __child_ids))
       (send* _child_ids __child_ids)
     (progn
       (if __child_ids (setq _child_ids (car __child_ids)))
       _child_ids)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:blackbox_level
   (&optional __blackbox_level)
   (if __blackbox_level (setq _blackbox_level __blackbox_level)) _blackbox_level)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:is_active
   (&optional (__is_active :null))
   (if (not (eq __is_active :null)) (setq _is_active __is_active)) _is_active)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _class_name
    4 (length _class_name)
    ;; uuid_msgs/UniqueID _own_id
    (send _own_id :serialization-length)
    ;; uuid_msgs/UniqueID _parent_id
    (send _parent_id :serialization-length)
    ;; uuid_msgs/UniqueID _tip_id
    (send _tip_id :serialization-length)
    ;; uuid_msgs/UniqueID[] _child_ids
    (apply #'+ (send-all _child_ids :serialization-length)) 4
    ;; uint8 _type
    1
    ;; uint8 _blackbox_level
    1
    ;; uint8 _status
    1
    ;; string _message
    4 (length _message)
    ;; bool _is_active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _class_name
       (write-long (length _class_name) s) (princ _class_name s)
     ;; uuid_msgs/UniqueID _own_id
       (send _own_id :serialize s)
     ;; uuid_msgs/UniqueID _parent_id
       (send _parent_id :serialize s)
     ;; uuid_msgs/UniqueID _tip_id
       (send _tip_id :serialize s)
     ;; uuid_msgs/UniqueID[] _child_ids
     (write-long (length _child_ids) s)
     (dolist (elem _child_ids)
       (send elem :serialize s)
       )
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _blackbox_level
       (write-byte _blackbox_level s)
     ;; uint8 _status
       (write-byte _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _is_active
       (if _is_active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _class_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _class_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uuid_msgs/UniqueID _own_id
     (send _own_id :deserialize buf ptr-) (incf ptr- (send _own_id :serialization-length))
   ;; uuid_msgs/UniqueID _parent_id
     (send _parent_id :deserialize buf ptr-) (incf ptr- (send _parent_id :serialization-length))
   ;; uuid_msgs/UniqueID _tip_id
     (send _tip_id :deserialize buf ptr-) (incf ptr- (send _tip_id :serialization-length))
   ;; uuid_msgs/UniqueID[] _child_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _child_ids (let (r) (dotimes (i n) (push (instance uuid_msgs::UniqueID :init) r)) r))
     (dolist (elem- _child_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _blackbox_level
     (setq _blackbox_level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_active
     (setq _is_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get py_trees_msgs::Behaviour :md5sum-) "9424ebed2de13e891d81fc5875b727fc")
(setf (get py_trees_msgs::Behaviour :datatype-) "py_trees_msgs/Behaviour")
(setf (get py_trees_msgs::Behaviour :definition-)
      "# Possible behaviour states
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



(provide :py_trees_msgs/Behaviour "9424ebed2de13e891d81fc5875b727fc")


