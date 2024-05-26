;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::AudioFeatures)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'AudioFeatures (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::AUDIOFEATURES")
  (make-package "HRI_MSGS::AUDIOFEATURES"))

(in-package "ROS")
;;//! \htmlinclude AudioFeatures.msg.html


(defclass hri_msgs::AudioFeatures
  :super ros::object
  :slots (_ZCR _RMS _pitch _HNR _MFCC ))

(defmethod hri_msgs::AudioFeatures
  (:init
   (&key
    ((:ZCR __ZCR) 0.0)
    ((:RMS __RMS) 0.0)
    ((:pitch __pitch) 0.0)
    ((:HNR __HNR) 0.0)
    ((:MFCC __MFCC) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _ZCR (float __ZCR))
   (setq _RMS (float __RMS))
   (setq _pitch (float __pitch))
   (setq _HNR (float __HNR))
   (setq _MFCC __MFCC)
   self)
  (:ZCR
   (&optional __ZCR)
   (if __ZCR (setq _ZCR __ZCR)) _ZCR)
  (:RMS
   (&optional __RMS)
   (if __RMS (setq _RMS __RMS)) _RMS)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:HNR
   (&optional __HNR)
   (if __HNR (setq _HNR __HNR)) _HNR)
  (:MFCC
   (&optional __MFCC)
   (if __MFCC (setq _MFCC __MFCC)) _MFCC)
  (:serialization-length
   ()
   (+
    ;; float32 _ZCR
    4
    ;; float32 _RMS
    4
    ;; float32 _pitch
    4
    ;; float32 _HNR
    4
    ;; float32[] _MFCC
    (* 4    (length _MFCC)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ZCR
       (sys::poke _ZCR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RMS
       (sys::poke _RMS (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _HNR
       (sys::poke _HNR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _MFCC
     (write-long (length _MFCC) s)
     (dotimes (i (length _MFCC))
       (sys::poke (elt _MFCC i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ZCR
     (setq _ZCR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RMS
     (setq _RMS (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _HNR
     (setq _HNR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _MFCC
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _MFCC (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _MFCC i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hri_msgs::AudioFeatures :md5sum-) "1942f4cd8b6bb147f1ccb9aded9b6535")
(setf (get hri_msgs::AudioFeatures :datatype-) "hri_msgs/AudioFeatures")
(setf (get hri_msgs::AudioFeatures :definition-)
      "# This message encodes the 16 audio features selected
# in the INTERSPEECH2009 challenge.
# 
# Reference: Schuller, Steidl, Batliner, The INTERSPEECH 2009 Emotion Challenge
# 
# They can be extract using the OpenSMILE toolkit with the present
# IS09_emotion.conf

float32 ZCR # zero-crossing rate from the time signal
float32 RMS # root mean square frame energy
float32 pitch # pitch frequency (normalised to 500 Hz)
float32 HNR # harmonics-to-noise ratio by autocorrelation function
float32[] MFCC # mel-frequency cepstral coefficients 1 to 12

")



(provide :hri_msgs/AudioFeatures "1942f4cd8b6bb147f1ccb9aded9b6535")


