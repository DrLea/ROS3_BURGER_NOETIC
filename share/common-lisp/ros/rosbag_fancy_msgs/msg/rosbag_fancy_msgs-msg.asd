
(cl:in-package :asdf)

(defsystem "rosbag_fancy_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Status" :depends-on ("_package_Status"))
    (:file "_package_Status" :depends-on ("_package"))
    (:file "TopicStatus" :depends-on ("_package_TopicStatus"))
    (:file "_package_TopicStatus" :depends-on ("_package"))
  ))