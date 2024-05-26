;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::Expression)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'Expression (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::EXPRESSION")
  (make-package "HRI_MSGS::EXPRESSION"))

(in-package "ROS")
;;//! \htmlinclude Expression.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NEUTRAL*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*NEUTRAL* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*NEUTRAL* "\"neutral\"")
(intern "*ANGRY*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*ANGRY* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*ANGRY* "\"angry\"")
(intern "*SAD*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*SAD* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*SAD* "\"sad\"")
(intern "*HAPPY*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*HAPPY* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*HAPPY* "\"happy\"")
(intern "*SURPRISED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*SURPRISED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*SURPRISED* "\"surprised\"")
(intern "*DISGUSTED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*DISGUSTED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*DISGUSTED* "\"disgusted\"")
(intern "*SCARED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*SCARED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*SCARED* "\"scared\"")
(intern "*PLEADING*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*PLEADING* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*PLEADING* "\"pleading\"")
(intern "*VULNERABLE*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*VULNERABLE* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*VULNERABLE* "\"vulnerable\"")
(intern "*DESPAIRED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*DESPAIRED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*DESPAIRED* "\"despaired\"")
(intern "*GUILTY*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*GUILTY* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*GUILTY* "\"guilty\"")
(intern "*DISAPPOINTED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*DISAPPOINTED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*DISAPPOINTED* "\"disappointed\"")
(intern "*EMBARRASSED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*EMBARRASSED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*EMBARRASSED* "\"embarrassed\"")
(intern "*HORRIFIED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*HORRIFIED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*HORRIFIED* "\"horrified\"")
(intern "*SKEPTICAL*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*SKEPTICAL* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*SKEPTICAL* "\"skeptical\"")
(intern "*ANNOYED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*ANNOYED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*ANNOYED* "\"annoyed\"")
(intern "*FURIOUS*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*FURIOUS* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*FURIOUS* "\"furious\"")
(intern "*SUSPICIOUS*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*SUSPICIOUS* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*SUSPICIOUS* "\"suspicious\"")
(intern "*REJECTED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*REJECTED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*REJECTED* "\"rejected\"")
(intern "*BORED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*BORED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*BORED* "\"bored\"")
(intern "*TIRED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*TIRED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*TIRED* "\"tired\"")
(intern "*ASLEEP*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*ASLEEP* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*ASLEEP* "\"asleep\"")
(intern "*CONFUSED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*CONFUSED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*CONFUSED* "\"confused\"")
(intern "*AMAZED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*AMAZED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*AMAZED* "\"amazed\"")
(intern "*EXCITED*" (find-package "HRI_MSGS::EXPRESSION"))
(shadow '*EXCITED* (find-package "HRI_MSGS::EXPRESSION"))
(defconstant hri_msgs::Expression::*EXCITED* "\"excited\"")

(defun hri_msgs::Expression-to-symbol (const)
  (cond
        (t nil)))

(defclass hri_msgs::Expression
  :super ros::object
  :slots (_header _expression _valence _arousal _confidence ))

(defmethod hri_msgs::Expression
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:expression __expression) "")
    ((:valence __valence) 0.0)
    ((:arousal __arousal) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _expression (string __expression))
   (setq _valence (float __valence))
   (setq _arousal (float __arousal))
   (setq _confidence (float __confidence))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:expression
   (&optional __expression)
   (if __expression (setq _expression __expression)) _expression)
  (:valence
   (&optional __valence)
   (if __valence (setq _valence __valence)) _valence)
  (:arousal
   (&optional __arousal)
   (if __arousal (setq _arousal __arousal)) _arousal)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _expression
    4 (length _expression)
    ;; float32 _valence
    4
    ;; float32 _arousal
    4
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _expression
       (write-long (length _expression) s) (princ _expression s)
     ;; float32 _valence
       (sys::poke _valence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _arousal
       (sys::poke _arousal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _expression
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _expression (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _valence
     (setq _valence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _arousal
     (setq _arousal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hri_msgs::Expression :md5sum-) "c0f698742672d3238cdc31c07c7d835b")
(setf (get hri_msgs::Expression :datatype-) "hri_msgs/Expression")
(setf (get hri_msgs::Expression :definition-)
      "# Represents a human facial expression, either in a categorical way, or
# using the valence/arousal model of emotions
Header header

# the list of expressions is based on Chambers MSc thesis, Bristol Robotics Lab 2020, and includes the six basic emotions in Eckman's model.
#
# Note that a node making use of this message definition is not supposed or
# expected to handle all listed expressions.
#
# This list might change based on future needs/requests.

string NEUTRAL=\"neutral\"
string ANGRY=\"angry\"
string SAD=\"sad\"
string HAPPY=\"happy\"
string SURPRISED=\"surprised\"
string DISGUSTED=\"disgusted\"
string SCARED=\"scared\"
string PLEADING=\"pleading\"
string VULNERABLE=\"vulnerable\"
string DESPAIRED=\"despaired\"
string GUILTY=\"guilty\"
string DISAPPOINTED=\"disappointed\"
string EMBARRASSED=\"embarrassed\"
string HORRIFIED=\"horrified\"
string SKEPTICAL=\"skeptical\"
string ANNOYED=\"annoyed\"
string FURIOUS=\"furious\"
string SUSPICIOUS=\"suspicious\"
string REJECTED=\"rejected\"
string BORED=\"bored\"
string TIRED=\"tired\"
string ASLEEP=\"asleep\"
string CONFUSED=\"confused\"
string AMAZED=\"amazed\"
string EXCITED=\"excited\"

string expression # one of the listed expressions

# Valence/Arousal model of emotions
float32 valence # from -1.0 to +1.0
float32 arousal # from -1.0 to +1.0

float32 confidence # from 0.0 to 1.0

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



(provide :hri_msgs/Expression "c0f698742672d3238cdc31c07c7d835b")


