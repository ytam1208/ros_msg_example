
(cl:in-package :asdf)

(defsystem "value_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "value" :depends-on ("_package_value"))
    (:file "_package_value" :depends-on ("_package"))
  ))