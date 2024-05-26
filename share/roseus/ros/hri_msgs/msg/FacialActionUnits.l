;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::FacialActionUnits)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'FacialActionUnits (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::FACIALACTIONUNITS")
  (make-package "HRI_MSGS::FACIALACTIONUNITS"))

(in-package "ROS")
;;//! \htmlinclude FacialActionUnits.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NEUTRAL_FACE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*NEUTRAL_FACE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*NEUTRAL_FACE* 0)
(intern "*INNER_BROW_RAISER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*INNER_BROW_RAISER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*INNER_BROW_RAISER* 1)
(intern "*OUTER_BROW_RAISER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*OUTER_BROW_RAISER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*OUTER_BROW_RAISER* 2)
(intern "*BROW_LOWERER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*BROW_LOWERER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*BROW_LOWERER* 4)
(intern "*UPPER_LID_RAISER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*UPPER_LID_RAISER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*UPPER_LID_RAISER* 5)
(intern "*CHEEK_RAISER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*CHEEK_RAISER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*CHEEK_RAISER* 6)
(intern "*LID_TIGHTENER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LID_TIGHTENER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LID_TIGHTENER* 7)
(intern "*LIPS_TOWARD_EACH_OTHER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIPS_TOWARD_EACH_OTHER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIPS_TOWARD_EACH_OTHER* 8)
(intern "*NOSE_WRINKLER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*NOSE_WRINKLER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*NOSE_WRINKLER* 9)
(intern "*UPPER_LIP_RAISER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*UPPER_LIP_RAISER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*UPPER_LIP_RAISER* 10)
(intern "*NASOLABIAL_DEEPENER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*NASOLABIAL_DEEPENER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*NASOLABIAL_DEEPENER* 11)
(intern "*LIP_CORNER_PULLER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIP_CORNER_PULLER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIP_CORNER_PULLER* 12)
(intern "*SHARP_LIP_PULLER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*SHARP_LIP_PULLER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*SHARP_LIP_PULLER* 13)
(intern "*DIMPLER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*DIMPLER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*DIMPLER* 14)
(intern "*LIP_CORNER_DEPRESSOR*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIP_CORNER_DEPRESSOR* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIP_CORNER_DEPRESSOR* 15)
(intern "*LOWER_LIP_DEPRESSOR*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LOWER_LIP_DEPRESSOR* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LOWER_LIP_DEPRESSOR* 16)
(intern "*CHIN_RAISER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*CHIN_RAISER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*CHIN_RAISER* 17)
(intern "*LIP_PUCKER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIP_PUCKER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIP_PUCKER* 18)
(intern "*TONGUE_SHOW*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*TONGUE_SHOW* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*TONGUE_SHOW* 19)
(intern "*LIP_STRETCHER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIP_STRETCHER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIP_STRETCHER* 20)
(intern "*NECK_TIGHTENER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*NECK_TIGHTENER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*NECK_TIGHTENER* 21)
(intern "*LIP_FUNNELER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIP_FUNNELER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIP_FUNNELER* 22)
(intern "*LIP_TIGHTENER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIP_TIGHTENER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIP_TIGHTENER* 23)
(intern "*LIP_PRESSOR*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIP_PRESSOR* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIP_PRESSOR* 24)
(intern "*LIPS_PART*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIPS_PART* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIPS_PART* 25)
(intern "*JAW_DROP*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*JAW_DROP* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*JAW_DROP* 26)
(intern "*MOUTH_STRETCH*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*MOUTH_STRETCH* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*MOUTH_STRETCH* 27)
(intern "*LIP_SUCK*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIP_SUCK* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIP_SUCK* 28)
(intern "*HEAD_TURN_LEFT*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*HEAD_TURN_LEFT* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*HEAD_TURN_LEFT* 51)
(intern "*HEAD_TURN_RIGHT*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*HEAD_TURN_RIGHT* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*HEAD_TURN_RIGHT* 52)
(intern "*HEAD_UP*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*HEAD_UP* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*HEAD_UP* 53)
(intern "*HEAD_DOWN*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*HEAD_DOWN* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*HEAD_DOWN* 54)
(intern "*HEAD_TILT_LEFT*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*HEAD_TILT_LEFT* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*HEAD_TILT_LEFT* 55)
(intern "*HEAD_TILT_RIGHT*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*HEAD_TILT_RIGHT* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*HEAD_TILT_RIGHT* 56)
(intern "*HEAD_FORWARD*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*HEAD_FORWARD* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*HEAD_FORWARD* 57)
(intern "*HEAD_BACK*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*HEAD_BACK* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*HEAD_BACK* 58)
(intern "*EYES_TURN_LEFT*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*EYES_TURN_LEFT* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*EYES_TURN_LEFT* 61)
(intern "*EYES_TURN_RIGHT*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*EYES_TURN_RIGHT* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*EYES_TURN_RIGHT* 62)
(intern "*EYES_UP*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*EYES_UP* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*EYES_UP* 63)
(intern "*EYES_DOWN*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*EYES_DOWN* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*EYES_DOWN* 64)
(intern "*WALLEYE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*WALLEYE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*WALLEYE* 65)
(intern "*CROSS_EYE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*CROSS_EYE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*CROSS_EYE* 66)
(intern "*EYES_POSITIONED_TO_LOOK_AT_OTHER_PERSON*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*EYES_POSITIONED_TO_LOOK_AT_OTHER_PERSON* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*EYES_POSITIONED_TO_LOOK_AT_OTHER_PERSON* 69)
(intern "*BROWS_AND_FOREHEAD_NOT_VISIBLE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*BROWS_AND_FOREHEAD_NOT_VISIBLE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*BROWS_AND_FOREHEAD_NOT_VISIBLE* 70)
(intern "*EYES_NOT_VISIBLE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*EYES_NOT_VISIBLE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*EYES_NOT_VISIBLE* 71)
(intern "*LOWER_FACE_NOT_VISIBLE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LOWER_FACE_NOT_VISIBLE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LOWER_FACE_NOT_VISIBLE* 72)
(intern "*ENTIRE_FACE_NOT_VISIBLE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*ENTIRE_FACE_NOT_VISIBLE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*ENTIRE_FACE_NOT_VISIBLE* 73)
(intern "*UNSOCIABLE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*UNSOCIABLE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*UNSOCIABLE* 74)
(intern "*JAW_THRUST*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*JAW_THRUST* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*JAW_THRUST* 29)
(intern "*JAW_SIDEWAYS*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*JAW_SIDEWAYS* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*JAW_SIDEWAYS* 30)
(intern "*JAW_CLENCHER*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*JAW_CLENCHER* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*JAW_CLENCHER* 31)
(intern "*LIP_BITE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIP_BITE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIP_BITE* 32)
(intern "*CHEEK_BLOW*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*CHEEK_BLOW* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*CHEEK_BLOW* 33)
(intern "*CHEEK_PUFF*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*CHEEK_PUFF* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*CHEEK_PUFF* 34)
(intern "*CHEEK_SUCK*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*CHEEK_SUCK* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*CHEEK_SUCK* 35)
(intern "*TONGUE_BULGE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*TONGUE_BULGE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*TONGUE_BULGE* 36)
(intern "*LIP_WIPE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LIP_WIPE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LIP_WIPE* 37)
(intern "*NOSTRIL_DILATOR*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*NOSTRIL_DILATOR* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*NOSTRIL_DILATOR* 38)
(intern "*NOSTRIL_COMPRESSOR*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*NOSTRIL_COMPRESSOR* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*NOSTRIL_COMPRESSOR* 39)
(intern "*SNIFF*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*SNIFF* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*SNIFF* 40)
(intern "*LID_DROOP*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*LID_DROOP* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*LID_DROOP* 41)
(intern "*SLIT*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*SLIT* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*SLIT* 42)
(intern "*EYES_CLOSED*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*EYES_CLOSED* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*EYES_CLOSED* 43)
(intern "*SQUINT*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*SQUINT* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*SQUINT* 44)
(intern "*BLINK*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*BLINK* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*BLINK* 45)
(intern "*WINK*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*WINK* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*WINK* 46)
(intern "*SPEECH*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*SPEECH* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*SPEECH* 50)
(intern "*SWALLOW*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*SWALLOW* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*SWALLOW* 80)
(intern "*CHEWING*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*CHEWING* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*CHEWING* 81)
(intern "*SHOULDER_SHRUG*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*SHOULDER_SHRUG* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*SHOULDER_SHRUG* 82)
(intern "*HEAD_SHAKE_BACK_AND_FORTH*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*HEAD_SHAKE_BACK_AND_FORTH* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*HEAD_SHAKE_BACK_AND_FORTH* 84)
(intern "*HEAD_NOD_UP_AND_DOWN*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*HEAD_NOD_UP_AND_DOWN* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*HEAD_NOD_UP_AND_DOWN* 85)
(intern "*FLASH*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*FLASH* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*FLASH* 91)
(intern "*PARTIAL_FLASH*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*PARTIAL_FLASH* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*PARTIAL_FLASH* 92)
(intern "*SHIVER_TREMBLE*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*SHIVER_TREMBLE* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*SHIVER_TREMBLE* 97)
(intern "*FAST_UP_DOWN_LOOK*" (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(shadow '*FAST_UP_DOWN_LOOK* (find-package "HRI_MSGS::FACIALACTIONUNITS"))
(defconstant hri_msgs::FacialActionUnits::*FAST_UP_DOWN_LOOK* 98)

(defun hri_msgs::FacialActionUnits-to-symbol (const)
  (cond
        ((= const 0) 'hri_msgs::FacialActionUnits::*NEUTRAL_FACE*)
        ((= const 1) 'hri_msgs::FacialActionUnits::*INNER_BROW_RAISER*)
        ((= const 2) 'hri_msgs::FacialActionUnits::*OUTER_BROW_RAISER*)
        ((= const 4) 'hri_msgs::FacialActionUnits::*BROW_LOWERER*)
        ((= const 5) 'hri_msgs::FacialActionUnits::*UPPER_LID_RAISER*)
        ((= const 6) 'hri_msgs::FacialActionUnits::*CHEEK_RAISER*)
        ((= const 7) 'hri_msgs::FacialActionUnits::*LID_TIGHTENER*)
        ((= const 8) 'hri_msgs::FacialActionUnits::*LIPS_TOWARD_EACH_OTHER*)
        ((= const 9) 'hri_msgs::FacialActionUnits::*NOSE_WRINKLER*)
        ((= const 10) 'hri_msgs::FacialActionUnits::*UPPER_LIP_RAISER*)
        ((= const 11) 'hri_msgs::FacialActionUnits::*NASOLABIAL_DEEPENER*)
        ((= const 12) 'hri_msgs::FacialActionUnits::*LIP_CORNER_PULLER*)
        ((= const 13) 'hri_msgs::FacialActionUnits::*SHARP_LIP_PULLER*)
        ((= const 14) 'hri_msgs::FacialActionUnits::*DIMPLER*)
        ((= const 15) 'hri_msgs::FacialActionUnits::*LIP_CORNER_DEPRESSOR*)
        ((= const 16) 'hri_msgs::FacialActionUnits::*LOWER_LIP_DEPRESSOR*)
        ((= const 17) 'hri_msgs::FacialActionUnits::*CHIN_RAISER*)
        ((= const 18) 'hri_msgs::FacialActionUnits::*LIP_PUCKER*)
        ((= const 19) 'hri_msgs::FacialActionUnits::*TONGUE_SHOW*)
        ((= const 20) 'hri_msgs::FacialActionUnits::*LIP_STRETCHER*)
        ((= const 21) 'hri_msgs::FacialActionUnits::*NECK_TIGHTENER*)
        ((= const 22) 'hri_msgs::FacialActionUnits::*LIP_FUNNELER*)
        ((= const 23) 'hri_msgs::FacialActionUnits::*LIP_TIGHTENER*)
        ((= const 24) 'hri_msgs::FacialActionUnits::*LIP_PRESSOR*)
        ((= const 25) 'hri_msgs::FacialActionUnits::*LIPS_PART*)
        ((= const 26) 'hri_msgs::FacialActionUnits::*JAW_DROP*)
        ((= const 27) 'hri_msgs::FacialActionUnits::*MOUTH_STRETCH*)
        ((= const 28) 'hri_msgs::FacialActionUnits::*LIP_SUCK*)
        ((= const 51) 'hri_msgs::FacialActionUnits::*HEAD_TURN_LEFT*)
        ((= const 52) 'hri_msgs::FacialActionUnits::*HEAD_TURN_RIGHT*)
        ((= const 53) 'hri_msgs::FacialActionUnits::*HEAD_UP*)
        ((= const 54) 'hri_msgs::FacialActionUnits::*HEAD_DOWN*)
        ((= const 55) 'hri_msgs::FacialActionUnits::*HEAD_TILT_LEFT*)
        ((= const 56) 'hri_msgs::FacialActionUnits::*HEAD_TILT_RIGHT*)
        ((= const 57) 'hri_msgs::FacialActionUnits::*HEAD_FORWARD*)
        ((= const 58) 'hri_msgs::FacialActionUnits::*HEAD_BACK*)
        ((= const 61) 'hri_msgs::FacialActionUnits::*EYES_TURN_LEFT*)
        ((= const 62) 'hri_msgs::FacialActionUnits::*EYES_TURN_RIGHT*)
        ((= const 63) 'hri_msgs::FacialActionUnits::*EYES_UP*)
        ((= const 64) 'hri_msgs::FacialActionUnits::*EYES_DOWN*)
        ((= const 65) 'hri_msgs::FacialActionUnits::*WALLEYE*)
        ((= const 66) 'hri_msgs::FacialActionUnits::*CROSS_EYE*)
        ((= const 69) 'hri_msgs::FacialActionUnits::*EYES_POSITIONED_TO_LOOK_AT_OTHER_PERSON*)
        ((= const 70) 'hri_msgs::FacialActionUnits::*BROWS_AND_FOREHEAD_NOT_VISIBLE*)
        ((= const 71) 'hri_msgs::FacialActionUnits::*EYES_NOT_VISIBLE*)
        ((= const 72) 'hri_msgs::FacialActionUnits::*LOWER_FACE_NOT_VISIBLE*)
        ((= const 73) 'hri_msgs::FacialActionUnits::*ENTIRE_FACE_NOT_VISIBLE*)
        ((= const 74) 'hri_msgs::FacialActionUnits::*UNSOCIABLE*)
        ((= const 29) 'hri_msgs::FacialActionUnits::*JAW_THRUST*)
        ((= const 30) 'hri_msgs::FacialActionUnits::*JAW_SIDEWAYS*)
        ((= const 31) 'hri_msgs::FacialActionUnits::*JAW_CLENCHER*)
        ((= const 32) 'hri_msgs::FacialActionUnits::*LIP_BITE*)
        ((= const 33) 'hri_msgs::FacialActionUnits::*CHEEK_BLOW*)
        ((= const 34) 'hri_msgs::FacialActionUnits::*CHEEK_PUFF*)
        ((= const 35) 'hri_msgs::FacialActionUnits::*CHEEK_SUCK*)
        ((= const 36) 'hri_msgs::FacialActionUnits::*TONGUE_BULGE*)
        ((= const 37) 'hri_msgs::FacialActionUnits::*LIP_WIPE*)
        ((= const 38) 'hri_msgs::FacialActionUnits::*NOSTRIL_DILATOR*)
        ((= const 39) 'hri_msgs::FacialActionUnits::*NOSTRIL_COMPRESSOR*)
        ((= const 40) 'hri_msgs::FacialActionUnits::*SNIFF*)
        ((= const 41) 'hri_msgs::FacialActionUnits::*LID_DROOP*)
        ((= const 42) 'hri_msgs::FacialActionUnits::*SLIT*)
        ((= const 43) 'hri_msgs::FacialActionUnits::*EYES_CLOSED*)
        ((= const 44) 'hri_msgs::FacialActionUnits::*SQUINT*)
        ((= const 45) 'hri_msgs::FacialActionUnits::*BLINK*)
        ((= const 46) 'hri_msgs::FacialActionUnits::*WINK*)
        ((= const 50) 'hri_msgs::FacialActionUnits::*SPEECH*)
        ((= const 80) 'hri_msgs::FacialActionUnits::*SWALLOW*)
        ((= const 81) 'hri_msgs::FacialActionUnits::*CHEWING*)
        ((= const 82) 'hri_msgs::FacialActionUnits::*SHOULDER_SHRUG*)
        ((= const 84) 'hri_msgs::FacialActionUnits::*HEAD_SHAKE_BACK_AND_FORTH*)
        ((= const 85) 'hri_msgs::FacialActionUnits::*HEAD_NOD_UP_AND_DOWN*)
        ((= const 91) 'hri_msgs::FacialActionUnits::*FLASH*)
        ((= const 92) 'hri_msgs::FacialActionUnits::*PARTIAL_FLASH*)
        ((= const 97) 'hri_msgs::FacialActionUnits::*SHIVER_TREMBLE*)
        ((= const 98) 'hri_msgs::FacialActionUnits::*FAST_UP_DOWN_LOOK*)
        (t nil)))

(defclass hri_msgs::FacialActionUnits
  :super ros::object
  :slots (_header _intensity _confidence ))

(defmethod hri_msgs::FacialActionUnits
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:intensity __intensity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:confidence __confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _intensity __intensity)
   (setq _confidence __confidence)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:intensity
   (&optional __intensity)
   (if __intensity (setq _intensity __intensity)) _intensity)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _intensity
    (* 4    (length _intensity)) 4
    ;; float32[] _confidence
    (* 4    (length _confidence)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _intensity
     (write-long (length _intensity) s)
     (dotimes (i (length _intensity))
       (sys::poke (elt _intensity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _confidence
     (write-long (length _confidence) s)
     (dotimes (i (length _confidence))
       (sys::poke (elt _confidence i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _intensity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intensity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _intensity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _confidence i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hri_msgs::FacialActionUnits :md5sum-) "51deeb0e003e99c3f3ea2a5073d9d710")
(setf (get hri_msgs::FacialActionUnits :datatype-) "hri_msgs/FacialActionUnits")
(setf (get hri_msgs::FacialActionUnits :definition-)
      "# This message the intensity of each actions unit (AU), with their confidence, for a specific face.
#
# It follows the naming convention of the  Facial Action Coding System (FACS) developed by Ekman.

Header header

# AU codes
# List taken from https://en.wikipedia.org/wiki/Facial_Action_Coding_System

# Main codes
uint8 NEUTRAL_FACE=0  # Neutral face 
uint8 INNER_BROW_RAISER=1  # Inner brow raiser 
uint8 OUTER_BROW_RAISER=2  # Outer brow raiser 
uint8 BROW_LOWERER=4  # Brow lowerer 
uint8 UPPER_LID_RAISER=5  # Upper lid raiser 
uint8 CHEEK_RAISER=6  # Cheek raiser 
uint8 LID_TIGHTENER=7  # Lid tightener 
uint8 LIPS_TOWARD_EACH_OTHER=8  # Lips toward each other 
uint8 NOSE_WRINKLER=9  # Nose wrinkler 
uint8 UPPER_LIP_RAISER=10  # Upper lip raiser 
uint8 NASOLABIAL_DEEPENER=11  # Nasolabial deepener 
uint8 LIP_CORNER_PULLER=12  # Lip corner puller 
uint8 SHARP_LIP_PULLER=13  # Sharp lip puller 
uint8 DIMPLER=14  # Dimpler 
uint8 LIP_CORNER_DEPRESSOR=15  # Lip corner depressor 
uint8 LOWER_LIP_DEPRESSOR=16  # Lower lip depressor 
uint8 CHIN_RAISER=17  # Chin raiser 
uint8 LIP_PUCKER=18  # Lip pucker 
uint8 TONGUE_SHOW=19  # Tongue show 
uint8 LIP_STRETCHER=20  # Lip stretcher 
uint8 NECK_TIGHTENER=21  # Neck tightener 
uint8 LIP_FUNNELER=22  # Lip funneler 
uint8 LIP_TIGHTENER=23  # Lip tightener 
uint8 LIP_PRESSOR=24  # Lip pressor 
uint8 LIPS_PART=25  # Lips part 
uint8 JAW_DROP=26  # Jaw drop 
uint8 MOUTH_STRETCH=27  # Mouth stretch 
uint8 LIP_SUCK=28  # Lip suck 

# Head movement codes
uint8 HEAD_TURN_LEFT=51  # Head turn left
uint8 HEAD_TURN_RIGHT=52  # Head turn right
uint8 HEAD_UP=53  # Head up
uint8 HEAD_DOWN=54  # Head down
uint8 HEAD_TILT_LEFT=55  # Head tilt left
uint8 HEAD_TILT_RIGHT=56  # Head tilt right
uint8 HEAD_FORWARD=57  # Head forward
uint8 HEAD_BACK=58  # Head back

# Eye movement codes
uint8 EYES_TURN_LEFT=61  # Eyes turn left
uint8 EYES_TURN_RIGHT=62  # Eyes turn right
uint8 EYES_UP=63  # Eyes up
uint8 EYES_DOWN=64  # Eyes down
uint8 WALLEYE=65  # Walleye
uint8 CROSS_EYE=66  # Cross-eye
uint8 EYES_POSITIONED_TO_LOOK_AT_OTHER_PERSON=69  # Eyes positioned to look at other person : The 4, 5, or 7, alone or in combination, occurs while the eye position is fixed on the other person in the conversation.

# Visibility codes
uint8 BROWS_AND_FOREHEAD_NOT_VISIBLE=70  # Brows and forehead not visible
uint8 EYES_NOT_VISIBLE=71  # Eyes not visible
uint8 LOWER_FACE_NOT_VISIBLE=72  # Lower face not visible
uint8 ENTIRE_FACE_NOT_VISIBLE=73  # Entire face not visible
uint8 UNSOCIABLE=74  # Unsociable

# Gross behavior codes
uint8 JAW_THRUST=29  # Jaw thrust
uint8 JAW_SIDEWAYS=30  # Jaw sideways
uint8 JAW_CLENCHER=31  # Jaw clencher : masseter
uint8 LIP_BITE=32  # [Lip] bite
uint8 CHEEK_BLOW=33  # [Cheek] blow
uint8 CHEEK_PUFF=34  # [Cheek] puff
uint8 CHEEK_SUCK=35  # [Cheek] suck
uint8 TONGUE_BULGE=36  # [Tongue] bulge
uint8 LIP_WIPE=37  # Lip wipe
uint8 NOSTRIL_DILATOR=38  # Nostril dilator : nasalis (pars alaris)
uint8 NOSTRIL_COMPRESSOR=39  # Nostril compressor : nasalis (pars transversa) and depressor septi nasi
uint8 SNIFF=40  # Sniff
uint8 LID_DROOP=41  # Lid droop : Levator palpebrae superioris (relaxation)
uint8 SLIT=42  # Slit : Orbicularis oculi muscle
uint8 EYES_CLOSED=43  # Eyes closed : Relaxation of Levator palpebrae superioris
uint8 SQUINT=44  # Squint : Corrugator supercilii and orbicularis oculi muscle
uint8 BLINK=45  # Blink : Relaxation of Levator palpebrae superioris; contraction of orbicularis oculi (pars palpebralis)
uint8 WINK=46  # Wink : orbicularis oculi
uint8 SPEECH=50  # Speech
uint8 SWALLOW=80  # Swallow
uint8 CHEWING=81  # Chewing
uint8 SHOULDER_SHRUG=82  # Shoulder shrug
uint8 HEAD_SHAKE_BACK_AND_FORTH=84  # Head shake back and forth
uint8 HEAD_NOD_UP_AND_DOWN=85  # Head nod up and down
uint8 FLASH=91  # Flash
uint8 PARTIAL_FLASH=92  # Partial flash
uint8 SHIVER_TREMBLE=97  # Shiver/tremble
uint8 FAST_UP_DOWN_LOOK=98  # Fast up-down look


float32[] intensity # array of 99 AUs intensities, one per AU, ordered per AU codes
float32[] confidence # array of 99 AUs intensity confidences, one per AU, ordered per AU codes


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



(provide :hri_msgs/FacialActionUnits "51deeb0e003e99c3f3ea2a5073d9d710")


