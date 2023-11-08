
(cl:in-package :asdf)

(defsystem "teach_repeat-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CompressedImageSynchronised" :depends-on ("_package_CompressedImageSynchronised"))
    (:file "_package_CompressedImageSynchronised" :depends-on ("_package"))
    (:file "Goal" :depends-on ("_package_Goal"))
    (:file "_package_Goal" :depends-on ("_package"))
  ))