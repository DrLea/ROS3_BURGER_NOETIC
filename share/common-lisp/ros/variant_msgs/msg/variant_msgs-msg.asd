
(cl:in-package :asdf)

(defsystem "variant_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Test" :depends-on ("_package_Test"))
    (:file "_package_Test" :depends-on ("_package"))
    (:file "Variant" :depends-on ("_package_Variant"))
    (:file "_package_Variant" :depends-on ("_package"))
    (:file "VariantHeader" :depends-on ("_package_VariantHeader"))
    (:file "_package_VariantHeader" :depends-on ("_package"))
    (:file "VariantType" :depends-on ("_package_VariantType"))
    (:file "_package_VariantType" :depends-on ("_package"))
  ))