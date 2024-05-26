;; Auto-generated. Do not edit!


(when (boundp 'variant_msgs::Variant)
  (if (not (find-package "VARIANT_MSGS"))
    (make-package "VARIANT_MSGS"))
  (shadow 'Variant (find-package "VARIANT_MSGS")))
(unless (find-package "VARIANT_MSGS::VARIANT")
  (make-package "VARIANT_MSGS::VARIANT"))

(in-package "ROS")
;;//! \htmlinclude Variant.msg.html


(defclass variant_msgs::Variant
  :super ros::object
  :slots (_header _type _data ))

(defmethod variant_msgs::Variant
  (:init
   (&key
    ((:header __header) (instance variant_msgs::VariantHeader :init))
    ((:type __type) (instance variant_msgs::VariantType :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type __type)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; variant_msgs/VariantHeader _header
    (send _header :serialization-length)
    ;; variant_msgs/VariantType _type
    (send _type :serialization-length)
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; variant_msgs/VariantHeader _header
       (send _header :serialize s)
     ;; variant_msgs/VariantType _type
       (send _type :serialize s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; variant_msgs/VariantHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; variant_msgs/VariantType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get variant_msgs::Variant :md5sum-) "01c24cd44ef34b0c6a309bcafb6bdfab")
(setf (get variant_msgs::Variant :datatype-) "variant_msgs/Variant")
(setf (get variant_msgs::Variant :definition-)
      "VariantHeader header                    # Variant header

VariantType type                        # Variant type information
uint8[] data                            # Binary message data

================================================================================
MSG: variant_msgs/VariantHeader
string publisher              # Name of the publishing node
string topic                  # Message publishing topic
bool latched                  # If true, the message publication is latched

================================================================================
MSG: variant_msgs/VariantType
string md5_sum                # Message type md5sum
string data_type              # Message data type
string definition             # Message definition
")



(provide :variant_msgs/Variant "01c24cd44ef34b0c6a309bcafb6bdfab")


