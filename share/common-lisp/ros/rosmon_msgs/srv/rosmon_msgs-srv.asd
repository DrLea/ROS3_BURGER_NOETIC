
(cl:in-package :asdf)

(defsystem "rosmon_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StartStop" :depends-on ("_package_StartStop"))
    (:file "_package_StartStop" :depends-on ("_package"))
  ))