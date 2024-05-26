;; Auto-generated. Do not edit!


(when (boundp 'variant_msgs::VariantHeader)
  (if (not (find-package "VARIANT_MSGS"))
    (make-package "VARIANT_MSGS"))
  (shadow 'VariantHeader (find-package "VARIANT_MSGS")))
(unless (find-package "VARIANT_MSGS::VARIANTHEADER")
  (make-package "VARIANT_MSGS::VARIANTHEADER"))

(in-package "ROS")
;;//! \htmlinclude VariantHeader.msg.html


(defclass variant_msgs::VariantHeader
  :super ros::object
  :slots (_publisher _topic _latched ))

(defmethod variant_msgs::VariantHeader
  (:init
   (&key
    ((:publisher __publisher) "")
    ((:topic __topic) "")
    ((:latched __latched) nil)
    )
   (send-super :init)
   (setq _publisher (string __publisher))
   (setq _topic (string __topic))
   (setq _latched __latched)
   self)
  (:publisher
   (&optional __publisher)
   (if __publisher (setq _publisher __publisher)) _publisher)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:latched
   (&optional (__latched :null))
   (if (not (eq __latched :null)) (setq _latched __latched)) _latched)
  (:serialization-length
   ()
   (+
    ;; string _publisher
    4 (length _publisher)
    ;; string _topic
    4 (length _topic)
    ;; bool _latched
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _publisher
       (write-long (length _publisher) s) (princ _publisher s)
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; bool _latched
       (if _latched (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _publisher
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _publisher (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _latched
     (setq _latched (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get variant_msgs::VariantHeader :md5sum-) "e4adbe277ed51d50644d64067b86c73d")
(setf (get variant_msgs::VariantHeader :datatype-) "variant_msgs/VariantHeader")
(setf (get variant_msgs::VariantHeader :definition-)
      "string publisher              # Name of the publishing node
string topic                  # Message publishing topic
bool latched                  # If true, the message publication is latched

")



(provide :variant_msgs/VariantHeader "e4adbe277ed51d50644d64067b86c73d")


