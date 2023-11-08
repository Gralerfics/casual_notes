
(cl:in-package :asdf)

(defsystem "teach_repeat-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImageMatch" :depends-on ("_package_ImageMatch"))
    (:file "_package_ImageMatch" :depends-on ("_package"))
    (:file "SaveImageAndPose" :depends-on ("_package_SaveImageAndPose"))
    (:file "_package_SaveImageAndPose" :depends-on ("_package"))
    (:file "SetGoal" :depends-on ("_package_SetGoal"))
    (:file "_package_SetGoal" :depends-on ("_package"))
    (:file "SetJointState" :depends-on ("_package_SetJointState"))
    (:file "_package_SetJointState" :depends-on ("_package"))
  ))