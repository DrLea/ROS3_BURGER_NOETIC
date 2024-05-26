;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::SoftBiometrics)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'SoftBiometrics (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::SOFTBIOMETRICS")
  (make-package "HRI_MSGS::SOFTBIOMETRICS"))

(in-package "ROS")
;;//! \htmlinclude SoftBiometrics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*UNDEFINED*" (find-package "HRI_MSGS::SOFTBIOMETRICS"))
(shadow '*UNDEFINED* (find-package "HRI_MSGS::SOFTBIOMETRICS"))
(defconstant hri_msgs::SoftBiometrics::*UNDEFINED* 0)
(intern "*FEMALE*" (find-package "HRI_MSGS::SOFTBIOMETRICS"))
(shadow '*FEMALE* (find-package "HRI_MSGS::SOFTBIOMETRICS"))
(defconstant hri_msgs::SoftBiometrics::*FEMALE* 1)
(intern "*MALE*" (find-package "HRI_MSGS::SOFTBIOMETRICS"))
(shadow '*MALE* (find-package "HRI_MSGS::SOFTBIOMETRICS"))
(defconstant hri_msgs::SoftBiometrics::*MALE* 2)
(intern "*OTHER*" (find-package "HRI_MSGS::SOFTBIOMETRICS"))
(shadow '*OTHER* (find-package "HRI_MSGS::SOFTBIOMETRICS"))
(defconstant hri_msgs::SoftBiometrics::*OTHER* 3)

(defun hri_msgs::SoftBiometrics-to-symbol (const)
  (cond
        ((= const 0) 'hri_msgs::SoftBiometrics::*UNDEFINED*)
        ((= const 1) 'hri_msgs::SoftBiometrics::*FEMALE*)
        ((= const 2) 'hri_msgs::SoftBiometrics::*MALE*)
        ((= const 3) 'hri_msgs::SoftBiometrics::*OTHER*)
        (t nil)))

(defclass hri_msgs::SoftBiometrics
  :super ros::object
  :slots (_header _age _age_confidence _gender _gender_confidence ))

(defmethod hri_msgs::SoftBiometrics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:age __age) 0)
    ((:age_confidence __age_confidence) 0.0)
    ((:gender __gender) 0)
    ((:gender_confidence __gender_confidence) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _age (round __age))
   (setq _age_confidence (float __age_confidence))
   (setq _gender (round __gender))
   (setq _gender_confidence (float __gender_confidence))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:age_confidence
   (&optional __age_confidence)
   (if __age_confidence (setq _age_confidence __age_confidence)) _age_confidence)
  (:gender
   (&optional __gender)
   (if __gender (setq _gender __gender)) _gender)
  (:gender_confidence
   (&optional __gender_confidence)
   (if __gender_confidence (setq _gender_confidence __gender_confidence)) _gender_confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _age
    1
    ;; float32 _age_confidence
    4
    ;; uint8 _gender
    1
    ;; float32 _gender_confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _age
       (write-byte _age s)
     ;; float32 _age_confidence
       (sys::poke _age_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _gender
       (write-byte _gender s)
     ;; float32 _gender_confidence
       (sys::poke _gender_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _age_confidence
     (setq _age_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _gender
     (setq _gender (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _gender_confidence
     (setq _gender_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hri_msgs::SoftBiometrics :md5sum-) "791877398420c10707c4d9a832b0e6ad")
(setf (get hri_msgs::SoftBiometrics :datatype-) "hri_msgs/SoftBiometrics")
(setf (get hri_msgs::SoftBiometrics :definition-)
      "# This message describes soft biometrics (age and gender)
Header header

uint8 age
float32 age_confidence

uint8 UNDEFINED=0
uint8 FEMALE=1
uint8 MALE=2
uint8 OTHER=3

uint8 gender # one of UNDEFINED, FEMALE, MALE, OTHER
float32 gender_confidence 


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

")



(provide :hri_msgs/SoftBiometrics "791877398420c10707c4d9a832b0e6ad")


