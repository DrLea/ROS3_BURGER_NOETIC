
(cl:in-package :asdf)

(defsystem "rosmon_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "NodeState" :depends-on ("_package_NodeState"))
    (:file "_package_NodeState" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
  ))