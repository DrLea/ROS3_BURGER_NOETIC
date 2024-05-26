;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::IdsMatch)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'IdsMatch (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::IDSMATCH")
  (make-package "HRI_MSGS::IDSMATCH"))

(in-package "ROS")
;;//! \htmlinclude IdsMatch.msg.html


(intern "*UNSET*" (find-package "HRI_MSGS::IDSMATCH"))
(shadow '*UNSET* (find-package "HRI_MSGS::IDSMATCH"))
(defconstant hri_msgs::IdsMatch::*UNSET* 0)
(intern "*PERSON*" (find-package "HRI_MSGS::IDSMATCH"))
(shadow '*PERSON* (find-package "HRI_MSGS::IDSMATCH"))
(defconstant hri_msgs::IdsMatch::*PERSON* 1)
(intern "*FACE*" (find-package "HRI_MSGS::IDSMATCH"))
(shadow '*FACE* (find-package "HRI_MSGS::IDSMATCH"))
(defconstant hri_msgs::IdsMatch::*FACE* 2)
(intern "*BODY*" (find-package "HRI_MSGS::IDSMATCH"))
(shadow '*BODY* (find-package "HRI_MSGS::IDSMATCH"))
(defconstant hri_msgs::IdsMatch::*BODY* 3)
(intern "*VOICE*" (find-package "HRI_MSGS::IDSMATCH"))
(shadow '*VOICE* (find-package "HRI_MSGS::IDSMATCH"))
(defconstant hri_msgs::IdsMatch::*VOICE* 4)

(defun hri_msgs::IdsMatch-to-symbol (const)
  (cond
        ((= const 0) 'hri_msgs::IdsMatch::*UNSET*)
        ((= const 1) 'hri_msgs::IdsMatch::*PERSON*)
        ((= const 2) 'hri_msgs::IdsMatch::*FACE*)
        ((= const 3) 'hri_msgs::IdsMatch::*BODY*)
        ((= const 4) 'hri_msgs::IdsMatch::*VOICE*)
        (t nil)))

(defclass hri_msgs::IdsMatch
  :super ros::object
  :slots (_id1 _id1_type _id2 _id2_type _confidence ))

(defmethod hri_msgs::IdsMatch
  (:init
   (&key
    ((:id1 __id1) "")
    ((:id1_type __id1_type) 0)
    ((:id2 __id2) "")
    ((:id2_type __id2_type) 0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _id1 (string __id1))
   (setq _id1_type (round __id1_type))
   (setq _id2 (string __id2))
   (setq _id2_type (round __id2_type))
   (setq _confidence (float __confidence))
   self)
  (:id1
   (&optional __id1)
   (if __id1 (setq _id1 __id1)) _id1)
  (:id1_type
   (&optional __id1_type)
   (if __id1_type (setq _id1_type __id1_type)) _id1_type)
  (:id2
   (&optional __id2)
   (if __id2 (setq _id2 __id2)) _id2)
  (:id2_type
   (&optional __id2_type)
   (if __id2_type (setq _id2_type __id2_type)) _id2_type)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; string _id1
    4 (length _id1)
    ;; int8 _id1_type
    1
    ;; string _id2
    4 (length _id2)
    ;; int8 _id2_type
    1
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id1
       (write-long (length _id1) s) (princ _id1 s)
     ;; int8 _id1_type
       (write-byte _id1_type s)
     ;; string _id2
       (write-long (length _id2) s) (princ _id2 s)
     ;; int8 _id2_type
       (write-byte _id2_type s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _id1_type
     (setq _id1_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id1_type 127) (setq _id1_type (- _id1_type 256)))
   ;; string _id2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _id2_type
     (setq _id2_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id2_type 127) (setq _id2_type (- _id2_type 256)))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hri_msgs::IdsMatch :md5sum-) "47ee5557c84afd004bec4ac7f5fa56f7")
(setf (get hri_msgs::IdsMatch :datatype-) "hri_msgs/IdsMatch")
(setf (get hri_msgs::IdsMatch :definition-)
      "# This message encodes possible matches between transient IDs (face, body,
# voice) and permanent IDs (person), with their corresponding confidence level.
# Such messages should be published on the /humans/candidate_matches topic.
#
# confidence == 0.0 has the special meaning of: those two IDs are *not* associated.
# This can be use for instance if one of the ID (eg, a face id) is not valid anymore
# (face not tracked anymore)
#
# Note that setting only one of `id1` or `id2` is invalid. Likewise, `id1` and
# `id2` can not be equal.
#
# ## Examples
#
# For instance, a face recognition module might publish the following message
# to indicate that face 'a3eb4' has been recognised with 63% confidence as
# person 'b31ad':
#
# {id1: 'a3eb4', id1_type: FACE, id2: 'b31ad', id2_type: PERSON, confidence:
# 0.63, }
#
# Another example: a module that detect both faces and skeleton might publish a
# 100% confidence match between the two:
#
# {id1: 'ff424', id1_type: FACE, id2: '850d1', id2_type: BODY, confidence:
# 1.0, }
#

int8 UNSET=0
int8 PERSON=1
int8 FACE=2
int8 BODY=3
int8 VOICE=4

string id1
int8 id1_type
string id2
int8 id2_type

float32 confidence

")



(provide :hri_msgs/IdsMatch "47ee5557c84afd004bec4ac7f5fa56f7")


