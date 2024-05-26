;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::LiveSpeech)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'LiveSpeech (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::LIVESPEECH")
  (make-package "HRI_MSGS::LIVESPEECH"))

(in-package "ROS")
;;//! \htmlinclude LiveSpeech.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hri_msgs::LiveSpeech
  :super ros::object
  :slots (_header _incremental _final _confidence _language ))

(defmethod hri_msgs::LiveSpeech
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:incremental __incremental) "")
    ((:final __final) "")
    ((:confidence __confidence) 0.0)
    ((:language __language) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _incremental (string __incremental))
   (setq _final (string __final))
   (setq _confidence (float __confidence))
   (setq _language (string __language))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:incremental
   (&optional __incremental)
   (if __incremental (setq _incremental __incremental)) _incremental)
  (:final
   (&optional __final)
   (if __final (setq _final __final)) _final)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:language
   (&optional __language)
   (if __language (setq _language __language)) _language)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _incremental
    4 (length _incremental)
    ;; string _final
    4 (length _final)
    ;; float64 _confidence
    8
    ;; string _language
    4 (length _language)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _incremental
       (write-long (length _incremental) s) (princ _incremental s)
     ;; string _final
       (write-long (length _final) s) (princ _final s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _language
       (write-long (length _language) s) (princ _language s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _incremental
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _incremental (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _final
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _final (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _language
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _language (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hri_msgs::LiveSpeech :md5sum-) "691fad051ce92a736be494854c99c2d5")
(setf (get hri_msgs::LiveSpeech :datatype-) "hri_msgs/LiveSpeech")
(setf (get hri_msgs::LiveSpeech :definition-)
      "# This message encodes the live result of a speech recognition process.
# A series of incremental results might be provided, until a final recognition
# hypothesis is returned.

Header header

string incremental # incremental recognition results
string final # final recognised text

float64 confidence # confidence of the final recognised speech, [0-1]

string language # IETF language code, e.g. 'en-GB'

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



(provide :hri_msgs/LiveSpeech "691fad051ce92a736be494854c99c2d5")


