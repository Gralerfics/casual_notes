;; Auto-generated. Do not edit!


(when (boundp 'teach_repeat::CompressedImageSynchronised)
  (if (not (find-package "TEACH_REPEAT"))
    (make-package "TEACH_REPEAT"))
  (shadow 'CompressedImageSynchronised (find-package "TEACH_REPEAT")))
(unless (find-package "TEACH_REPEAT::COMPRESSEDIMAGESYNCHRONISED")
  (make-package "TEACH_REPEAT::COMPRESSEDIMAGESYNCHRONISED"))

(in-package "ROS")
;;//! \htmlinclude CompressedImageSynchronised.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass teach_repeat::CompressedImageSynchronised
  :super ros::object
  :slots (_left _right ))

(defmethod teach_repeat::CompressedImageSynchronised
  (:init
   (&key
    ((:left __left) (instance sensor_msgs::CompressedImage :init))
    ((:right __right) (instance sensor_msgs::CompressedImage :init))
    )
   (send-super :init)
   (setq _left __left)
   (setq _right __right)
   self)
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/CompressedImage _left
    (send _left :serialization-length)
    ;; sensor_msgs/CompressedImage _right
    (send _right :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/CompressedImage _left
       (send _left :serialize s)
     ;; sensor_msgs/CompressedImage _right
       (send _right :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/CompressedImage _left
     (send _left :deserialize buf ptr-) (incf ptr- (send _left :serialization-length))
   ;; sensor_msgs/CompressedImage _right
     (send _right :deserialize buf ptr-) (incf ptr- (send _right :serialization-length))
   ;;
   self)
  )

(setf (get teach_repeat::CompressedImageSynchronised :md5sum-) "c6e5e9dab29899863c78cfe4653e4f3c")
(setf (get teach_repeat::CompressedImageSynchronised :datatype-) "teach_repeat/CompressedImageSynchronised")
(setf (get teach_repeat::CompressedImageSynchronised :definition-)
      "sensor_msgs/CompressedImage left
sensor_msgs/CompressedImage right
================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :teach_repeat/CompressedImageSynchronised "c6e5e9dab29899863c78cfe4653e4f3c")


