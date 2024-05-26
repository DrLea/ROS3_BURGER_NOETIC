;; Auto-generated. Do not edit!


(when (boundp 'rosmon_msgs::NodeState)
  (if (not (find-package "ROSMON_MSGS"))
    (make-package "ROSMON_MSGS"))
  (shadow 'NodeState (find-package "ROSMON_MSGS")))
(unless (find-package "ROSMON_MSGS::NODESTATE")
  (make-package "ROSMON_MSGS::NODESTATE"))

(in-package "ROS")
;;//! \htmlinclude NodeState.msg.html


(intern "*IDLE*" (find-package "ROSMON_MSGS::NODESTATE"))
(shadow '*IDLE* (find-package "ROSMON_MSGS::NODESTATE"))
(defconstant rosmon_msgs::NodeState::*IDLE* 0)
(intern "*RUNNING*" (find-package "ROSMON_MSGS::NODESTATE"))
(shadow '*RUNNING* (find-package "ROSMON_MSGS::NODESTATE"))
(defconstant rosmon_msgs::NodeState::*RUNNING* 1)
(intern "*CRASHED*" (find-package "ROSMON_MSGS::NODESTATE"))
(shadow '*CRASHED* (find-package "ROSMON_MSGS::NODESTATE"))
(defconstant rosmon_msgs::NodeState::*CRASHED* 2)
(intern "*WAITING*" (find-package "ROSMON_MSGS::NODESTATE"))
(shadow '*WAITING* (find-package "ROSMON_MSGS::NODESTATE"))
(defconstant rosmon_msgs::NodeState::*WAITING* 3)

(defun rosmon_msgs::NodeState-to-symbol (const)
  (cond
        ((= const 0) 'rosmon_msgs::NodeState::*IDLE*)
        ((= const 1) 'rosmon_msgs::NodeState::*RUNNING*)
        ((= const 2) 'rosmon_msgs::NodeState::*CRASHED*)
        ((= const 3) 'rosmon_msgs::NodeState::*WAITING*)
        (t nil)))

(defclass rosmon_msgs::NodeState
  :super ros::object
  :slots (_name _ns _state _restart_count _user_load _system_load _memory ))

(defmethod rosmon_msgs::NodeState
  (:init
   (&key
    ((:name __name) "")
    ((:ns __ns) "")
    ((:state __state) 0)
    ((:restart_count __restart_count) 0)
    ((:user_load __user_load) 0.0)
    ((:system_load __system_load) 0.0)
    ((:memory __memory) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _ns (string __ns))
   (setq _state (round __state))
   (setq _restart_count (round __restart_count))
   (setq _user_load (float __user_load))
   (setq _system_load (float __system_load))
   (setq _memory (round __memory))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:restart_count
   (&optional __restart_count)
   (if __restart_count (setq _restart_count __restart_count)) _restart_count)
  (:user_load
   (&optional __user_load)
   (if __user_load (setq _user_load __user_load)) _user_load)
  (:system_load
   (&optional __system_load)
   (if __system_load (setq _system_load __system_load)) _system_load)
  (:memory
   (&optional __memory)
   (if __memory (setq _memory __memory)) _memory)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _ns
    4 (length _ns)
    ;; uint8 _state
    1
    ;; uint32 _restart_count
    4
    ;; float32 _user_load
    4
    ;; float32 _system_load
    4
    ;; uint64 _memory
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _ns
       (write-long (length _ns) s) (princ _ns s)
     ;; uint8 _state
       (write-byte _state s)
     ;; uint32 _restart_count
       (write-long _restart_count s)
     ;; float32 _user_load
       (sys::poke _user_load (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _system_load
       (sys::poke _system_load (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint64 _memory
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _memory (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _memory) (= (length (_memory . bv)) 2)) ;; bignum
              (write-long (ash (elt (_memory . bv) 0) 0) s)
              (write-long (ash (elt (_memory . bv) 1) -1) s))
             ((and (class _memory) (= (length (_memory . bv)) 1)) ;; big1
              (write-long (elt (_memory . bv) 0) s)
              (write-long (if (>= _memory 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _memory s)(write-long (if (>= _memory 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ns
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ns (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _restart_count
     (setq _restart_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _user_load
     (setq _user_load (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _system_load
     (setq _system_load (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint64 _memory
     
#+(or :alpha :irix6 :x86_64)
      (setf _memory (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _memory (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get rosmon_msgs::NodeState :md5sum-) "87292cdbe5a500a95e32714adf10e6dd")
(setf (get rosmon_msgs::NodeState :datatype-) "rosmon_msgs/NodeState")
(setf (get rosmon_msgs::NodeState :definition-)
      "uint8 IDLE = 0     # Node was manually stopped
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



(provide :rosmon_msgs/NodeState "87292cdbe5a500a95e32714adf10e6dd")


