
(cl:in-package :asdf)

(defsystem "biox_read-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "FSR" :depends-on ("_package_FSR"))
    (:file "_package_FSR" :depends-on ("_package"))
    (:file "IMU" :depends-on ("_package_IMU"))
    (:file "_package_IMU" :depends-on ("_package"))
  ))