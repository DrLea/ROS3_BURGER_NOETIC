
(cl:in-package :asdf)

(defsystem "py_trees_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CloseBlackboardWatcher" :depends-on ("_package_CloseBlackboardWatcher"))
    (:file "_package_CloseBlackboardWatcher" :depends-on ("_package"))
    (:file "GetBlackboardVariables" :depends-on ("_package_GetBlackboardVariables"))
    (:file "_package_GetBlackboardVariables" :depends-on ("_package"))
    (:file "OpenBlackboardWatcher" :depends-on ("_package_OpenBlackboardWatcher"))
    (:file "_package_OpenBlackboardWatcher" :depends-on ("_package"))
  ))