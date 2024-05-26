
(cl:in-package :asdf)

(defsystem "pr2_power_board-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PowerBoardCommand" :depends-on ("_package_PowerBoardCommand"))
    (:file "_package_PowerBoardCommand" :depends-on ("_package"))
    (:file "PowerBoardCommand2" :depends-on ("_package_PowerBoardCommand2"))
    (:file "_package_PowerBoardCommand2" :depends-on ("_package"))
  ))