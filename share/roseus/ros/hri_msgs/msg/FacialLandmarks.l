;; Auto-generated. Do not edit!


(when (boundp 'hri_msgs::FacialLandmarks)
  (if (not (find-package "HRI_MSGS"))
    (make-package "HRI_MSGS"))
  (shadow 'FacialLandmarks (find-package "HRI_MSGS")))
(unless (find-package "HRI_MSGS::FACIALLANDMARKS")
  (make-package "HRI_MSGS::FACIALLANDMARKS"))

(in-package "ROS")
;;//! \htmlinclude FacialLandmarks.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*RIGHT_EAR*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EAR* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EAR* 0)
(intern "*RIGHT_PROFILE_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_PROFILE_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_PROFILE_1* 1)
(intern "*RIGHT_PROFILE_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_PROFILE_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_PROFILE_2* 2)
(intern "*RIGHT_PROFILE_3*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_PROFILE_3* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_PROFILE_3* 3)
(intern "*RIGHT_PROFILE_4*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_PROFILE_4* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_PROFILE_4* 4)
(intern "*RIGHT_PROFILE_5*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_PROFILE_5* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_PROFILE_5* 5)
(intern "*RIGHT_PROFILE_6*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_PROFILE_6* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_PROFILE_6* 6)
(intern "*RIGHT_PROFILE_7*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_PROFILE_7* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_PROFILE_7* 7)
(intern "*MENTON*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MENTON* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MENTON* 8)
(intern "*LEFT_EAR*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EAR* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EAR* 16)
(intern "*LEFT_PROFILE_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_PROFILE_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_PROFILE_1* 15)
(intern "*LEFT_PROFILE_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_PROFILE_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_PROFILE_2* 14)
(intern "*LEFT_PROFILE_3*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_PROFILE_3* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_PROFILE_3* 13)
(intern "*LEFT_PROFILE_4*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_PROFILE_4* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_PROFILE_4* 12)
(intern "*LEFT_PROFILE_5*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_PROFILE_5* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_PROFILE_5* 11)
(intern "*LEFT_PROFILE_6*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_PROFILE_6* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_PROFILE_6* 10)
(intern "*LEFT_PROFILE_7*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_PROFILE_7* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_PROFILE_7* 9)
(intern "*RIGHT_EYEBROW_OUTSIDE*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYEBROW_OUTSIDE* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYEBROW_OUTSIDE* 17)
(intern "*RIGHT_EYEBROW_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYEBROW_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYEBROW_1* 18)
(intern "*RIGHT_EYEBROW_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYEBROW_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYEBROW_2* 19)
(intern "*RIGHT_EYEBROW_3*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYEBROW_3* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYEBROW_3* 20)
(intern "*RIGHT_EYEBROW_INSIDE*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYEBROW_INSIDE* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYEBROW_INSIDE* 21)
(intern "*RIGHT_EYE_OUTSIDE*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYE_OUTSIDE* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYE_OUTSIDE* 36)
(intern "*RIGHT_EYE_TOP_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYE_TOP_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYE_TOP_1* 37)
(intern "*RIGHT_EYE_TOP_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYE_TOP_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYE_TOP_2* 38)
(intern "*RIGHT_EYE_INSIDE*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYE_INSIDE* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYE_INSIDE* 39)
(intern "*RIGHT_EYE_BOTTOM_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYE_BOTTOM_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYE_BOTTOM_1* 41)
(intern "*RIGHT_EYE_BOTTOM_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_EYE_BOTTOM_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_EYE_BOTTOM_2* 40)
(intern "*RIGHT_PUPIL*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*RIGHT_PUPIL* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*RIGHT_PUPIL* 68)
(intern "*LEFT_EYEBROW_OUTSIDE*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYEBROW_OUTSIDE* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYEBROW_OUTSIDE* 26)
(intern "*LEFT_EYEBROW_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYEBROW_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYEBROW_1* 25)
(intern "*LEFT_EYEBROW_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYEBROW_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYEBROW_2* 24)
(intern "*LEFT_EYEBROW_3*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYEBROW_3* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYEBROW_3* 23)
(intern "*LEFT_EYEBROW_INSIDE*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYEBROW_INSIDE* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYEBROW_INSIDE* 22)
(intern "*LEFT_EYE_OUTSIDE*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYE_OUTSIDE* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYE_OUTSIDE* 45)
(intern "*LEFT_EYE_TOP_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYE_TOP_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYE_TOP_1* 44)
(intern "*LEFT_EYE_TOP_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYE_TOP_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYE_TOP_2* 43)
(intern "*LEFT_EYE_INSIDE*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYE_INSIDE* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYE_INSIDE* 42)
(intern "*LEFT_EYE_BOTTOM_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYE_BOTTOM_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYE_BOTTOM_1* 46)
(intern "*LEFT_EYE_BOTTOM_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_EYE_BOTTOM_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_EYE_BOTTOM_2* 47)
(intern "*LEFT_PUPIL*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*LEFT_PUPIL* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*LEFT_PUPIL* 69)
(intern "*SELLION*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*SELLION* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*SELLION* 27)
(intern "*NOSE_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*NOSE_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*NOSE_1* 28)
(intern "*NOSE_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*NOSE_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*NOSE_2* 29)
(intern "*NOSE*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*NOSE* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*NOSE* 30)
(intern "*NOSTRIL_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*NOSTRIL_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*NOSTRIL_1* 31)
(intern "*NOSTRIL_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*NOSTRIL_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*NOSTRIL_2* 32)
(intern "*NOSTRIL_3*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*NOSTRIL_3* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*NOSTRIL_3* 33)
(intern "*NOSTRIL_4*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*NOSTRIL_4* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*NOSTRIL_4* 34)
(intern "*NOSTRIL_5*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*NOSTRIL_5* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*NOSTRIL_5* 35)
(intern "*MOUTH_OUTER_RIGHT*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_RIGHT* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_RIGHT* 48)
(intern "*MOUTH_OUTER_TOP_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_TOP_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_TOP_1* 49)
(intern "*MOUTH_OUTER_TOP_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_TOP_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_TOP_2* 50)
(intern "*MOUTH_OUTER_TOP_3*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_TOP_3* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_TOP_3* 51)
(intern "*MOUTH_OUTER_TOP_4*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_TOP_4* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_TOP_4* 52)
(intern "*MOUTH_OUTER_TOP_5*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_TOP_5* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_TOP_5* 53)
(intern "*MOUTH_OUTER_LEFT*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_LEFT* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_LEFT* 54)
(intern "*MOUTH_OUTER_BOTTOM_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_BOTTOM_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_BOTTOM_1* 59)
(intern "*MOUTH_OUTER_BOTTOM_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_BOTTOM_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_BOTTOM_2* 58)
(intern "*MOUTH_OUTER_BOTTOM_3*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_BOTTOM_3* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_BOTTOM_3* 57)
(intern "*MOUTH_OUTER_BOTTOM_4*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_BOTTOM_4* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_BOTTOM_4* 56)
(intern "*MOUTH_OUTER_BOTTOM_5*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_OUTER_BOTTOM_5* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_OUTER_BOTTOM_5* 55)
(intern "*MOUTH_INNER_RIGHT*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_INNER_RIGHT* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_INNER_RIGHT* 60)
(intern "*MOUTH_INNER_TOP_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_INNER_TOP_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_INNER_TOP_1* 61)
(intern "*MOUTH_INNER_TOP_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_INNER_TOP_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_INNER_TOP_2* 62)
(intern "*MOUTH_INNER_TOP_3*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_INNER_TOP_3* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_INNER_TOP_3* 63)
(intern "*MOUTH_INNER_LEFT*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_INNER_LEFT* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_INNER_LEFT* 64)
(intern "*MOUTH_INNER_BOTTOM_1*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_INNER_BOTTOM_1* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_INNER_BOTTOM_1* 67)
(intern "*MOUTH_INNER_BOTTOM_2*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_INNER_BOTTOM_2* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_INNER_BOTTOM_2* 66)
(intern "*MOUTH_INNER_BOTTOM_3*" (find-package "HRI_MSGS::FACIALLANDMARKS"))
(shadow '*MOUTH_INNER_BOTTOM_3* (find-package "HRI_MSGS::FACIALLANDMARKS"))
(defconstant hri_msgs::FacialLandmarks::*MOUTH_INNER_BOTTOM_3* 65)

(defun hri_msgs::FacialLandmarks-to-symbol (const)
  (cond
        ((= const 0) 'hri_msgs::FacialLandmarks::*RIGHT_EAR*)
        ((= const 1) 'hri_msgs::FacialLandmarks::*RIGHT_PROFILE_1*)
        ((= const 2) 'hri_msgs::FacialLandmarks::*RIGHT_PROFILE_2*)
        ((= const 3) 'hri_msgs::FacialLandmarks::*RIGHT_PROFILE_3*)
        ((= const 4) 'hri_msgs::FacialLandmarks::*RIGHT_PROFILE_4*)
        ((= const 5) 'hri_msgs::FacialLandmarks::*RIGHT_PROFILE_5*)
        ((= const 6) 'hri_msgs::FacialLandmarks::*RIGHT_PROFILE_6*)
        ((= const 7) 'hri_msgs::FacialLandmarks::*RIGHT_PROFILE_7*)
        ((= const 8) 'hri_msgs::FacialLandmarks::*MENTON*)
        ((= const 16) 'hri_msgs::FacialLandmarks::*LEFT_EAR*)
        ((= const 15) 'hri_msgs::FacialLandmarks::*LEFT_PROFILE_1*)
        ((= const 14) 'hri_msgs::FacialLandmarks::*LEFT_PROFILE_2*)
        ((= const 13) 'hri_msgs::FacialLandmarks::*LEFT_PROFILE_3*)
        ((= const 12) 'hri_msgs::FacialLandmarks::*LEFT_PROFILE_4*)
        ((= const 11) 'hri_msgs::FacialLandmarks::*LEFT_PROFILE_5*)
        ((= const 10) 'hri_msgs::FacialLandmarks::*LEFT_PROFILE_6*)
        ((= const 9) 'hri_msgs::FacialLandmarks::*LEFT_PROFILE_7*)
        ((= const 17) 'hri_msgs::FacialLandmarks::*RIGHT_EYEBROW_OUTSIDE*)
        ((= const 18) 'hri_msgs::FacialLandmarks::*RIGHT_EYEBROW_1*)
        ((= const 19) 'hri_msgs::FacialLandmarks::*RIGHT_EYEBROW_2*)
        ((= const 20) 'hri_msgs::FacialLandmarks::*RIGHT_EYEBROW_3*)
        ((= const 21) 'hri_msgs::FacialLandmarks::*RIGHT_EYEBROW_INSIDE*)
        ((= const 36) 'hri_msgs::FacialLandmarks::*RIGHT_EYE_OUTSIDE*)
        ((= const 37) 'hri_msgs::FacialLandmarks::*RIGHT_EYE_TOP_1*)
        ((= const 38) 'hri_msgs::FacialLandmarks::*RIGHT_EYE_TOP_2*)
        ((= const 39) 'hri_msgs::FacialLandmarks::*RIGHT_EYE_INSIDE*)
        ((= const 41) 'hri_msgs::FacialLandmarks::*RIGHT_EYE_BOTTOM_1*)
        ((= const 40) 'hri_msgs::FacialLandmarks::*RIGHT_EYE_BOTTOM_2*)
        ((= const 68) 'hri_msgs::FacialLandmarks::*RIGHT_PUPIL*)
        ((= const 26) 'hri_msgs::FacialLandmarks::*LEFT_EYEBROW_OUTSIDE*)
        ((= const 25) 'hri_msgs::FacialLandmarks::*LEFT_EYEBROW_1*)
        ((= const 24) 'hri_msgs::FacialLandmarks::*LEFT_EYEBROW_2*)
        ((= const 23) 'hri_msgs::FacialLandmarks::*LEFT_EYEBROW_3*)
        ((= const 22) 'hri_msgs::FacialLandmarks::*LEFT_EYEBROW_INSIDE*)
        ((= const 45) 'hri_msgs::FacialLandmarks::*LEFT_EYE_OUTSIDE*)
        ((= const 44) 'hri_msgs::FacialLandmarks::*LEFT_EYE_TOP_1*)
        ((= const 43) 'hri_msgs::FacialLandmarks::*LEFT_EYE_TOP_2*)
        ((= const 42) 'hri_msgs::FacialLandmarks::*LEFT_EYE_INSIDE*)
        ((= const 46) 'hri_msgs::FacialLandmarks::*LEFT_EYE_BOTTOM_1*)
        ((= const 47) 'hri_msgs::FacialLandmarks::*LEFT_EYE_BOTTOM_2*)
        ((= const 69) 'hri_msgs::FacialLandmarks::*LEFT_PUPIL*)
        ((= const 27) 'hri_msgs::FacialLandmarks::*SELLION*)
        ((= const 28) 'hri_msgs::FacialLandmarks::*NOSE_1*)
        ((= const 29) 'hri_msgs::FacialLandmarks::*NOSE_2*)
        ((= const 30) 'hri_msgs::FacialLandmarks::*NOSE*)
        ((= const 31) 'hri_msgs::FacialLandmarks::*NOSTRIL_1*)
        ((= const 32) 'hri_msgs::FacialLandmarks::*NOSTRIL_2*)
        ((= const 33) 'hri_msgs::FacialLandmarks::*NOSTRIL_3*)
        ((= const 34) 'hri_msgs::FacialLandmarks::*NOSTRIL_4*)
        ((= const 35) 'hri_msgs::FacialLandmarks::*NOSTRIL_5*)
        ((= const 48) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_RIGHT*)
        ((= const 49) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_TOP_1*)
        ((= const 50) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_TOP_2*)
        ((= const 51) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_TOP_3*)
        ((= const 52) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_TOP_4*)
        ((= const 53) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_TOP_5*)
        ((= const 54) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_LEFT*)
        ((= const 59) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_BOTTOM_1*)
        ((= const 58) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_BOTTOM_2*)
        ((= const 57) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_BOTTOM_3*)
        ((= const 56) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_BOTTOM_4*)
        ((= const 55) 'hri_msgs::FacialLandmarks::*MOUTH_OUTER_BOTTOM_5*)
        ((= const 60) 'hri_msgs::FacialLandmarks::*MOUTH_INNER_RIGHT*)
        ((= const 61) 'hri_msgs::FacialLandmarks::*MOUTH_INNER_TOP_1*)
        ((= const 62) 'hri_msgs::FacialLandmarks::*MOUTH_INNER_TOP_2*)
        ((= const 63) 'hri_msgs::FacialLandmarks::*MOUTH_INNER_TOP_3*)
        ((= const 64) 'hri_msgs::FacialLandmarks::*MOUTH_INNER_LEFT*)
        ((= const 67) 'hri_msgs::FacialLandmarks::*MOUTH_INNER_BOTTOM_1*)
        ((= const 66) 'hri_msgs::FacialLandmarks::*MOUTH_INNER_BOTTOM_2*)
        ((= const 65) 'hri_msgs::FacialLandmarks::*MOUTH_INNER_BOTTOM_3*)
        (t nil)))

(defclass hri_msgs::FacialLandmarks
  :super ros::object
  :slots (_header _landmarks _height _width ))

(defmethod hri_msgs::FacialLandmarks
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:landmarks __landmarks) ())
    ((:height __height) 0)
    ((:width __width) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _landmarks __landmarks)
   (setq _height (round __height))
   (setq _width (round __width))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hri_msgs/NormalizedPointOfInterest2D[] _landmarks
    (apply #'+ (send-all _landmarks :serialization-length)) 4
    ;; uint32 _height
    4
    ;; uint32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hri_msgs/NormalizedPointOfInterest2D[] _landmarks
     (write-long (length _landmarks) s)
     (dolist (elem _landmarks)
       (send elem :serialize s)
       )
     ;; uint32 _height
       (write-long _height s)
     ;; uint32 _width
       (write-long _width s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hri_msgs/NormalizedPointOfInterest2D[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (let (r) (dotimes (i n) (push (instance hri_msgs::NormalizedPointOfInterest2D :init) r)) r))
     (dolist (elem- _landmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hri_msgs::FacialLandmarks :md5sum-) "c779d9fd02c1af8ab6a1712921ab9da5")
(setf (get hri_msgs::FacialLandmarks :datatype-) "hri_msgs/FacialLandmarks")
(setf (get hri_msgs::FacialLandmarks :definition-)
      "# This message contains a list of facial features detected on a face
# (0, 0) is at top-left corner of image
# Features' coordinates are expressed in normalised pixel coordinates 
# (in the range [0., 1.]), from the top-left corner.
Header header

# Facial landmarks codes
# Follows dlib and OpenPose convention
# https://github.com/CMU-Perceptual-Computing-Lab/openpose/blob/master/doc/02_output.md#face-output-format
uint8 RIGHT_EAR=0
uint8 RIGHT_PROFILE_1=1
uint8 RIGHT_PROFILE_2=2
uint8 RIGHT_PROFILE_3=3
uint8 RIGHT_PROFILE_4=4
uint8 RIGHT_PROFILE_5=5
uint8 RIGHT_PROFILE_6=6
uint8 RIGHT_PROFILE_7=7

uint8 MENTON=8

uint8 LEFT_EAR=16
uint8 LEFT_PROFILE_1=15
uint8 LEFT_PROFILE_2=14
uint8 LEFT_PROFILE_3=13
uint8 LEFT_PROFILE_4=12
uint8 LEFT_PROFILE_5=11
uint8 LEFT_PROFILE_6=10
uint8 LEFT_PROFILE_7=9

uint8 RIGHT_EYEBROW_OUTSIDE=17
uint8 RIGHT_EYEBROW_1=18
uint8 RIGHT_EYEBROW_2=19
uint8 RIGHT_EYEBROW_3=20
uint8 RIGHT_EYEBROW_INSIDE=21

uint8 RIGHT_EYE_OUTSIDE=36
uint8 RIGHT_EYE_TOP_1=37
uint8 RIGHT_EYE_TOP_2=38
uint8 RIGHT_EYE_INSIDE=39
uint8 RIGHT_EYE_BOTTOM_1=41
uint8 RIGHT_EYE_BOTTOM_2=40

uint8 RIGHT_PUPIL=68

uint8 LEFT_EYEBROW_OUTSIDE=26
uint8 LEFT_EYEBROW_1=25
uint8 LEFT_EYEBROW_2=24
uint8 LEFT_EYEBROW_3=23
uint8 LEFT_EYEBROW_INSIDE=22

uint8 LEFT_EYE_OUTSIDE=45
uint8 LEFT_EYE_TOP_1=44
uint8 LEFT_EYE_TOP_2=43
uint8 LEFT_EYE_INSIDE=42
uint8 LEFT_EYE_BOTTOM_1=46
uint8 LEFT_EYE_BOTTOM_2=47

uint8 LEFT_PUPIL=69

uint8 SELLION=27
uint8 NOSE_1=28
uint8 NOSE_2=29
uint8 NOSE=30

uint8 NOSTRIL_1=31
uint8 NOSTRIL_2=32
uint8 NOSTRIL_3=33
uint8 NOSTRIL_4=34
uint8 NOSTRIL_5=35

uint8 MOUTH_OUTER_RIGHT=48
uint8 MOUTH_OUTER_TOP_1=49
uint8 MOUTH_OUTER_TOP_2=50
uint8 MOUTH_OUTER_TOP_3=51
uint8 MOUTH_OUTER_TOP_4=52
uint8 MOUTH_OUTER_TOP_5=53
uint8 MOUTH_OUTER_LEFT=54
uint8 MOUTH_OUTER_BOTTOM_1=59
uint8 MOUTH_OUTER_BOTTOM_2=58
uint8 MOUTH_OUTER_BOTTOM_3=57
uint8 MOUTH_OUTER_BOTTOM_4=56
uint8 MOUTH_OUTER_BOTTOM_5=55

uint8 MOUTH_INNER_RIGHT=60
uint8 MOUTH_INNER_TOP_1=61
uint8 MOUTH_INNER_TOP_2=62
uint8 MOUTH_INNER_TOP_3=63
uint8 MOUTH_INNER_LEFT=64
uint8 MOUTH_INNER_BOTTOM_1=67
uint8 MOUTH_INNER_BOTTOM_2=66
uint8 MOUTH_INNER_BOTTOM_3=65

# array of 70 landmark normalized coordinates, one per landmark, ordered per landmarks codes
NormalizedPointOfInterest2D[] landmarks

uint32 height # image height in pixels, that is, number of rows
uint32 width # image width in pixels, that is, number of columns

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

================================================================================
MSG: hri_msgs/NormalizedPointOfInterest2D
# This contains the position of a point of interest (typically in an image)
# the coordinates are always normalized and must belong to [0.,1.].
# c is a confidence level (between 0. and 1.) associated to that POI
float32 x
float32 y
float32 c

")



(provide :hri_msgs/FacialLandmarks "c779d9fd02c1af8ab6a1712921ab9da5")


