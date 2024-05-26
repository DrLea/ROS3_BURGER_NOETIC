;; Auto-generated. Do not edit!


(when (boundp 'pr2_power_board::PowerBoardCommand)
  (if (not (find-package "PR2_POWER_BOARD"))
    (make-package "PR2_POWER_BOARD"))
  (shadow 'PowerBoardCommand (find-package "PR2_POWER_BOARD")))
(unless (find-package "PR2_POWER_BOARD::POWERBOARDCOMMAND")
  (make-package "PR2_POWER_BOARD::POWERBOARDCOMMAND"))
(unless (find-package "PR2_POWER_BOARD::POWERBOARDCOMMANDREQUEST")
  (make-package "PR2_POWER_BOARD::POWERBOARDCOMMANDREQUEST"))
(unless (find-package "PR2_POWER_BOARD::POWERBOARDCOMMANDRESPONSE")
  (make-package "PR2_POWER_BOARD::POWERBOARDCOMMANDRESPONSE"))

(in-package "ROS")





(defclass pr2_power_board::PowerBoardCommandRequest
  :super ros::object
  :slots (_serial_number _breaker_number _command _flags ))

(defmethod pr2_power_board::PowerBoardCommandRequest
  (:init
   (&key
    ((:serial_number __serial_number) 0)
    ((:breaker_number __breaker_number) 0)
    ((:command __command) "")
    ((:flags __flags) 0)
    )
   (send-super :init)
   (setq _serial_number (round __serial_number))
   (setq _breaker_number (round __breaker_number))
   (setq _command (string __command))
   (setq _flags (round __flags))
   self)
  (:serial_number
   (&optional __serial_number)
   (if __serial_number (setq _serial_number __serial_number)) _serial_number)
  (:breaker_number
   (&optional __breaker_number)
   (if __breaker_number (setq _breaker_number __breaker_number)) _breaker_number)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:serialization-length
   ()
   (+
    ;; uint32 _serial_number
    4
    ;; int32 _breaker_number
    4
    ;; string _command
    4 (length _command)
    ;; uint32 _flags
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _serial_number
       (write-long _serial_number s)
     ;; int32 _breaker_number
       (write-long _breaker_number s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; uint32 _flags
       (write-long _flags s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _serial_number
     (setq _serial_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _breaker_number
     (setq _breaker_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _flags
     (setq _flags (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pr2_power_board::PowerBoardCommandResponse
  :super ros::object
  :slots (_retval ))

(defmethod pr2_power_board::PowerBoardCommandResponse
  (:init
   (&key
    ((:retval __retval) 0)
    )
   (send-super :init)
   (setq _retval (round __retval))
   self)
  (:retval
   (&optional __retval)
   (if __retval (setq _retval __retval)) _retval)
  (:serialization-length
   ()
   (+
    ;; int32 _retval
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _retval
       (write-long _retval s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _retval
     (setq _retval (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pr2_power_board::PowerBoardCommand
  :super ros::object
  :slots ())

(setf (get pr2_power_board::PowerBoardCommand :md5sum-) "d9e38de783aa7edc3146446518e85af2")
(setf (get pr2_power_board::PowerBoardCommand :datatype-) "pr2_power_board/PowerBoardCommand")
(setf (get pr2_power_board::PowerBoardCommand :request) pr2_power_board::PowerBoardCommandRequest)
(setf (get pr2_power_board::PowerBoardCommand :response) pr2_power_board::PowerBoardCommandResponse)

(defmethod pr2_power_board::PowerBoardCommandRequest
  (:response () (instance pr2_power_board::PowerBoardCommandResponse :init)))

(setf (get pr2_power_board::PowerBoardCommandRequest :md5sum-) "d9e38de783aa7edc3146446518e85af2")
(setf (get pr2_power_board::PowerBoardCommandRequest :datatype-) "pr2_power_board/PowerBoardCommandRequest")
(setf (get pr2_power_board::PowerBoardCommandRequest :definition-)
      "uint32 serial_number #serial number of the board to control
int32 breaker_number ## 0=Base, 1=RightArm 2=LeftArm
string command  # Options start, stop, reset, disable, none
uint32 flags
---
int32 retval # 0 = false, 1=true

")

(setf (get pr2_power_board::PowerBoardCommandResponse :md5sum-) "d9e38de783aa7edc3146446518e85af2")
(setf (get pr2_power_board::PowerBoardCommandResponse :datatype-) "pr2_power_board/PowerBoardCommandResponse")
(setf (get pr2_power_board::PowerBoardCommandResponse :definition-)
      "uint32 serial_number #serial number of the board to control
int32 breaker_number ## 0=Base, 1=RightArm 2=LeftArm
string command  # Options start, stop, reset, disable, none
uint32 flags
---
int32 retval # 0 = false, 1=true

")



(provide :pr2_power_board/PowerBoardCommand "d9e38de783aa7edc3146446518e85af2")


