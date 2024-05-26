;; Auto-generated. Do not edit!


(when (boundp 'pr2_power_board::PowerBoardCommand2)
  (if (not (find-package "PR2_POWER_BOARD"))
    (make-package "PR2_POWER_BOARD"))
  (shadow 'PowerBoardCommand2 (find-package "PR2_POWER_BOARD")))
(unless (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2")
  (make-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2"))
(unless (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2REQUEST")
  (make-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2REQUEST"))
(unless (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2RESPONSE")
  (make-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2RESPONSE"))

(in-package "ROS")





(intern "*NUMBER_OF_CIRCUITS*" (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2REQUEST"))
(shadow '*NUMBER_OF_CIRCUITS* (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2REQUEST"))
(defconstant pr2_power_board::PowerBoardCommand2Request::*NUMBER_OF_CIRCUITS* 3)
(intern "*BASE*" (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2REQUEST"))
(shadow '*BASE* (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2REQUEST"))
(defconstant pr2_power_board::PowerBoardCommand2Request::*BASE* 0)
(intern "*RIGHT_ARM*" (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2REQUEST"))
(shadow '*RIGHT_ARM* (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2REQUEST"))
(defconstant pr2_power_board::PowerBoardCommand2Request::*RIGHT_ARM* 1)
(intern "*LEFT_ARM*" (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2REQUEST"))
(shadow '*LEFT_ARM* (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND2REQUEST"))
(defconstant pr2_power_board::PowerBoardCommand2Request::*LEFT_ARM* 2)

(defun pr2_power_board::PowerBoardCommand2Request-to-symbol (const)
  (cond
        ((= const 3) 'pr2_power_board::PowerBoardCommand2Request::*NUMBER_OF_CIRCUITS*)
        ((= const 0) 'pr2_power_board::PowerBoardCommand2Request::*BASE*)
        ((= const 1) 'pr2_power_board::PowerBoardCommand2Request::*RIGHT_ARM*)
        ((= const 2) 'pr2_power_board::PowerBoardCommand2Request::*LEFT_ARM*)
        (t nil)))

(defclass pr2_power_board::PowerBoardCommand2Request
  :super ros::object
  :slots (_circuit _command _reset_stats _reset_circuits ))

(defmethod pr2_power_board::PowerBoardCommand2Request
  (:init
   (&key
    ((:circuit __circuit) 0)
    ((:command __command) "")
    ((:reset_stats __reset_stats) nil)
    ((:reset_circuits __reset_circuits) nil)
    )
   (send-super :init)
   (setq _circuit (round __circuit))
   (setq _command (string __command))
   (setq _reset_stats __reset_stats)
   (setq _reset_circuits __reset_circuits)
   self)
  (:circuit
   (&optional __circuit)
   (if __circuit (setq _circuit __circuit)) _circuit)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:reset_stats
   (&optional (__reset_stats :null))
   (if (not (eq __reset_stats :null)) (setq _reset_stats __reset_stats)) _reset_stats)
  (:reset_circuits
   (&optional (__reset_circuits :null))
   (if (not (eq __reset_circuits :null)) (setq _reset_circuits __reset_circuits)) _reset_circuits)
  (:serialization-length
   ()
   (+
    ;; int32 _circuit
    4
    ;; string _command
    4 (length _command)
    ;; bool _reset_stats
    1
    ;; bool _reset_circuits
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _circuit
       (write-long _circuit s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; bool _reset_stats
       (if _reset_stats (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset_circuits
       (if _reset_circuits (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _circuit
     (setq _circuit (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _reset_stats
     (setq _reset_stats (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset_circuits
     (setq _reset_circuits (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pr2_power_board::PowerBoardCommand2Response
  :super ros::object
  :slots (_success ))

(defmethod pr2_power_board::PowerBoardCommand2Response
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pr2_power_board::PowerBoardCommand2
  :super ros::object
  :slots ())

(setf (get pr2_power_board::PowerBoardCommand2 :md5sum-) "4f143c27e05688798e6220ba69c6906a")
(setf (get pr2_power_board::PowerBoardCommand2 :datatype-) "pr2_power_board/PowerBoardCommand2")
(setf (get pr2_power_board::PowerBoardCommand2 :request) pr2_power_board::PowerBoardCommand2Request)
(setf (get pr2_power_board::PowerBoardCommand2 :response) pr2_power_board::PowerBoardCommand2Response)

(defmethod pr2_power_board::PowerBoardCommand2Request
  (:response () (instance pr2_power_board::PowerBoardCommand2Response :init)))

(setf (get pr2_power_board::PowerBoardCommand2Request :md5sum-) "4f143c27e05688798e6220ba69c6906a")
(setf (get pr2_power_board::PowerBoardCommand2Request :datatype-) "pr2_power_board/PowerBoardCommand2Request")
(setf (get pr2_power_board::PowerBoardCommand2Request :definition-)
      "int32 NUMBER_OF_CIRCUITS = 3
#
# Select which circuit to command
#
int32 circuit
#
# Defined circuits
#
int32 BASE      = 0
int32 RIGHT_ARM = 1
int32 LEFT_ARM  = 2
#
# Command to send to circuit:
# command = start, stop, reset, disable, none
#
string command  
#
# reset the latched voltage and current statistics
bool reset_stats
#
# reset the latched stats for each circuit
bool reset_circuits
---
# return if the command was successfully sent
bool success

")

(setf (get pr2_power_board::PowerBoardCommand2Response :md5sum-) "4f143c27e05688798e6220ba69c6906a")
(setf (get pr2_power_board::PowerBoardCommand2Response :datatype-) "pr2_power_board/PowerBoardCommand2Response")
(setf (get pr2_power_board::PowerBoardCommand2Response :definition-)
      "int32 NUMBER_OF_CIRCUITS = 3
#
# Select which circuit to command
#
int32 circuit
#
# Defined circuits
#
int32 BASE      = 0
int32 RIGHT_ARM = 1
int32 LEFT_ARM  = 2
#
# Command to send to circuit:
# command = start, stop, reset, disable, none
#
string command  
#
# reset the latched voltage and current statistics
bool reset_stats
#
# reset the latched stats for each circuit
bool reset_circuits
---
# return if the command was successfully sent
bool success

")



(provide :pr2_power_board/PowerBoardCommand2 "4f143c27e05688798e6220ba69c6906a")


