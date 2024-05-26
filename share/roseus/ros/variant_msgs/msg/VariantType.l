;; Auto-generated. Do not edit!


(when (boundp 'variant_msgs::VariantType)
  (if (not (find-package "VARIANT_MSGS"))
    (make-package "VARIANT_MSGS"))
  (shadow 'VariantType (find-package "VARIANT_MSGS")))
(unless (find-package "VARIANT_MSGS::VARIANTTYPE")
  (make-package "VARIANT_MSGS::VARIANTTYPE"))

(in-package "ROS")
;;//! \htmlinclude VariantType.msg.html


(defclass variant_msgs::VariantType
  :super ros::object
  :slots (_md5_sum _data_type _definition ))

(defmethod variant_msgs::VariantType
  (:init
   (&key
    ((:md5_sum __md5_sum) "")
    ((:data_type __data_type) "")
    ((:definition __definition) "")
    )
   (send-super :init)
   (setq _md5_sum (string __md5_sum))
   (setq _data_type (string __data_type))
   (setq _definition (string __definition))
   self)
  (:md5_sum
   (&optional __md5_sum)
   (if __md5_sum (setq _md5_sum __md5_sum)) _md5_sum)
  (:data_type
   (&optional __data_type)
   (if __data_type (setq _data_type __data_type)) _data_type)
  (:definition
   (&optional __definition)
   (if __definition (setq _definition __definition)) _definition)
  (:serialization-length
   ()
   (+
    ;; string _md5_sum
    4 (length _md5_sum)
    ;; string _data_type
    4 (length _data_type)
    ;; string _definition
    4 (length _definition)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _md5_sum
       (write-long (length _md5_sum) s) (princ _md5_sum s)
     ;; string _data_type
       (write-long (length _data_type) s) (princ _data_type s)
     ;; string _definition
       (write-long (length _definition) s) (princ _definition s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _md5_sum
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _md5_sum (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _definition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _definition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get variant_msgs::VariantType :md5sum-) "ea49579a10d85560b62a77e2f2f84caf")
(setf (get variant_msgs::VariantType :datatype-) "variant_msgs/VariantType")
(setf (get variant_msgs::VariantType :definition-)
      "string md5_sum                # Message type md5sum
string data_type              # Message data type
string definition             # Message definition
")



(provide :variant_msgs/VariantType "ea49579a10d85560b62a77e2f2f84caf")


