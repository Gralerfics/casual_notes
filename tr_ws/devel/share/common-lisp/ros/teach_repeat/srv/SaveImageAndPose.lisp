; Auto-generated. Do not edit!


(cl:in-package teach_repeat-srv)


;//! \htmlinclude SaveImageAndPose-request.msg.html

(cl:defclass <SaveImageAndPose-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SaveImageAndPose-request (<SaveImageAndPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveImageAndPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveImageAndPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teach_repeat-srv:<SaveImageAndPose-request> is deprecated: use teach_repeat-srv:SaveImageAndPose-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <SaveImageAndPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:image-val is deprecated.  Use teach_repeat-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SaveImageAndPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:pose-val is deprecated.  Use teach_repeat-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveImageAndPose-request>) ostream)
  "Serializes a message object of type '<SaveImageAndPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveImageAndPose-request>) istream)
  "Deserializes a message object of type '<SaveImageAndPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveImageAndPose-request>)))
  "Returns string type for a service object of type '<SaveImageAndPose-request>"
  "teach_repeat/SaveImageAndPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveImageAndPose-request)))
  "Returns string type for a service object of type 'SaveImageAndPose-request"
  "teach_repeat/SaveImageAndPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveImageAndPose-request>)))
  "Returns md5sum for a message object of type '<SaveImageAndPose-request>"
  "096c348e1b8b4999d302e8c64a739f94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveImageAndPose-request)))
  "Returns md5sum for a message object of type 'SaveImageAndPose-request"
  "096c348e1b8b4999d302e8c64a739f94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveImageAndPose-request>)))
  "Returns full string definition for message of type '<SaveImageAndPose-request>"
  (cl:format cl:nil "sensor_msgs/Image image~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveImageAndPose-request)))
  "Returns full string definition for message of type 'SaveImageAndPose-request"
  (cl:format cl:nil "sensor_msgs/Image image~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveImageAndPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveImageAndPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveImageAndPose-request
    (cl:cons ':image (image msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude SaveImageAndPose-response.msg.html

(cl:defclass <SaveImageAndPose-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SaveImageAndPose-response (<SaveImageAndPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveImageAndPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveImageAndPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teach_repeat-srv:<SaveImageAndPose-response> is deprecated: use teach_repeat-srv:SaveImageAndPose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveImageAndPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:success-val is deprecated.  Use teach_repeat-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveImageAndPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:message-val is deprecated.  Use teach_repeat-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveImageAndPose-response>) ostream)
  "Serializes a message object of type '<SaveImageAndPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveImageAndPose-response>) istream)
  "Deserializes a message object of type '<SaveImageAndPose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveImageAndPose-response>)))
  "Returns string type for a service object of type '<SaveImageAndPose-response>"
  "teach_repeat/SaveImageAndPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveImageAndPose-response)))
  "Returns string type for a service object of type 'SaveImageAndPose-response"
  "teach_repeat/SaveImageAndPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveImageAndPose-response>)))
  "Returns md5sum for a message object of type '<SaveImageAndPose-response>"
  "096c348e1b8b4999d302e8c64a739f94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveImageAndPose-response)))
  "Returns md5sum for a message object of type 'SaveImageAndPose-response"
  "096c348e1b8b4999d302e8c64a739f94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveImageAndPose-response>)))
  "Returns full string definition for message of type '<SaveImageAndPose-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveImageAndPose-response)))
  "Returns full string definition for message of type 'SaveImageAndPose-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveImageAndPose-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveImageAndPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveImageAndPose-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveImageAndPose)))
  'SaveImageAndPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveImageAndPose)))
  'SaveImageAndPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveImageAndPose)))
  "Returns string type for a service object of type '<SaveImageAndPose>"
  "teach_repeat/SaveImageAndPose")