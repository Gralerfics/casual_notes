; Auto-generated. Do not edit!


(cl:in-package teach_repeat-msg)


;//! \htmlinclude CompressedImageSynchronised.msg.html

(cl:defclass <CompressedImageSynchronised> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage))
   (right
    :reader right
    :initarg :right
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage)))
)

(cl:defclass CompressedImageSynchronised (<CompressedImageSynchronised>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CompressedImageSynchronised>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CompressedImageSynchronised)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teach_repeat-msg:<CompressedImageSynchronised> is deprecated: use teach_repeat-msg:CompressedImageSynchronised instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <CompressedImageSynchronised>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-msg:left-val is deprecated.  Use teach_repeat-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <CompressedImageSynchronised>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-msg:right-val is deprecated.  Use teach_repeat-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CompressedImageSynchronised>) ostream)
  "Serializes a message object of type '<CompressedImageSynchronised>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CompressedImageSynchronised>) istream)
  "Deserializes a message object of type '<CompressedImageSynchronised>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CompressedImageSynchronised>)))
  "Returns string type for a message object of type '<CompressedImageSynchronised>"
  "teach_repeat/CompressedImageSynchronised")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CompressedImageSynchronised)))
  "Returns string type for a message object of type 'CompressedImageSynchronised"
  "teach_repeat/CompressedImageSynchronised")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CompressedImageSynchronised>)))
  "Returns md5sum for a message object of type '<CompressedImageSynchronised>"
  "c6e5e9dab29899863c78cfe4653e4f3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CompressedImageSynchronised)))
  "Returns md5sum for a message object of type 'CompressedImageSynchronised"
  "c6e5e9dab29899863c78cfe4653e4f3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CompressedImageSynchronised>)))
  "Returns full string definition for message of type '<CompressedImageSynchronised>"
  (cl:format cl:nil "sensor_msgs/CompressedImage left~%sensor_msgs/CompressedImage right~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CompressedImageSynchronised)))
  "Returns full string definition for message of type 'CompressedImageSynchronised"
  (cl:format cl:nil "sensor_msgs/CompressedImage left~%sensor_msgs/CompressedImage right~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CompressedImageSynchronised>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CompressedImageSynchronised>))
  "Converts a ROS message object to a list"
  (cl:list 'CompressedImageSynchronised
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
