; Auto-generated. Do not edit!


(cl:in-package teach_repeat-srv)


;//! \htmlinclude ImageMatch-request.msg.html

(cl:defclass <ImageMatch-request> (roslisp-msg-protocol:ros-message)
  ((normalisedImage
    :reader normalisedImage
    :initarg :normalisedImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (imageIndex
    :reader imageIndex
    :initarg :imageIndex
    :type std_msgs-msg:UInt32
    :initform (cl:make-instance 'std_msgs-msg:UInt32))
   (searchRange
    :reader searchRange
    :initarg :searchRange
    :type std_msgs-msg:UInt32
    :initform (cl:make-instance 'std_msgs-msg:UInt32)))
)

(cl:defclass ImageMatch-request (<ImageMatch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageMatch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageMatch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teach_repeat-srv:<ImageMatch-request> is deprecated: use teach_repeat-srv:ImageMatch-request instead.")))

(cl:ensure-generic-function 'normalisedImage-val :lambda-list '(m))
(cl:defmethod normalisedImage-val ((m <ImageMatch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:normalisedImage-val is deprecated.  Use teach_repeat-srv:normalisedImage instead.")
  (normalisedImage m))

(cl:ensure-generic-function 'imageIndex-val :lambda-list '(m))
(cl:defmethod imageIndex-val ((m <ImageMatch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:imageIndex-val is deprecated.  Use teach_repeat-srv:imageIndex instead.")
  (imageIndex m))

(cl:ensure-generic-function 'searchRange-val :lambda-list '(m))
(cl:defmethod searchRange-val ((m <ImageMatch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:searchRange-val is deprecated.  Use teach_repeat-srv:searchRange instead.")
  (searchRange m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageMatch-request>) ostream)
  "Serializes a message object of type '<ImageMatch-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normalisedImage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imageIndex) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'searchRange) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageMatch-request>) istream)
  "Deserializes a message object of type '<ImageMatch-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normalisedImage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imageIndex) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'searchRange) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageMatch-request>)))
  "Returns string type for a service object of type '<ImageMatch-request>"
  "teach_repeat/ImageMatchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageMatch-request)))
  "Returns string type for a service object of type 'ImageMatch-request"
  "teach_repeat/ImageMatchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageMatch-request>)))
  "Returns md5sum for a message object of type '<ImageMatch-request>"
  "bf90076cbd0aaa2c3002ff8e25b2d560")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageMatch-request)))
  "Returns md5sum for a message object of type 'ImageMatch-request"
  "bf90076cbd0aaa2c3002ff8e25b2d560")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageMatch-request>)))
  "Returns full string definition for message of type '<ImageMatch-request>"
  (cl:format cl:nil "sensor_msgs/Image normalisedImage~%std_msgs/UInt32 imageIndex~%std_msgs/UInt32 searchRange # total images searched = 1 + 2*searchRange~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageMatch-request)))
  "Returns full string definition for message of type 'ImageMatch-request"
  (cl:format cl:nil "sensor_msgs/Image normalisedImage~%std_msgs/UInt32 imageIndex~%std_msgs/UInt32 searchRange # total images searched = 1 + 2*searchRange~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt32~%uint32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageMatch-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normalisedImage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imageIndex))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'searchRange))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageMatch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageMatch-request
    (cl:cons ':normalisedImage (normalisedImage msg))
    (cl:cons ':imageIndex (imageIndex msg))
    (cl:cons ':searchRange (searchRange msg))
))
;//! \htmlinclude ImageMatch-response.msg.html

(cl:defclass <ImageMatch-response> (roslisp-msg-protocol:ros-message)
  ((offsets
    :reader offsets
    :initarg :offsets
    :type std_msgs-msg:Int32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int32MultiArray))
   (correlations
    :reader correlations
    :initarg :correlations
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray)))
)

(cl:defclass ImageMatch-response (<ImageMatch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageMatch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageMatch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teach_repeat-srv:<ImageMatch-response> is deprecated: use teach_repeat-srv:ImageMatch-response instead.")))

(cl:ensure-generic-function 'offsets-val :lambda-list '(m))
(cl:defmethod offsets-val ((m <ImageMatch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:offsets-val is deprecated.  Use teach_repeat-srv:offsets instead.")
  (offsets m))

(cl:ensure-generic-function 'correlations-val :lambda-list '(m))
(cl:defmethod correlations-val ((m <ImageMatch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:correlations-val is deprecated.  Use teach_repeat-srv:correlations instead.")
  (correlations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageMatch-response>) ostream)
  "Serializes a message object of type '<ImageMatch-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offsets) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'correlations) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageMatch-response>) istream)
  "Deserializes a message object of type '<ImageMatch-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offsets) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'correlations) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageMatch-response>)))
  "Returns string type for a service object of type '<ImageMatch-response>"
  "teach_repeat/ImageMatchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageMatch-response)))
  "Returns string type for a service object of type 'ImageMatch-response"
  "teach_repeat/ImageMatchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageMatch-response>)))
  "Returns md5sum for a message object of type '<ImageMatch-response>"
  "bf90076cbd0aaa2c3002ff8e25b2d560")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageMatch-response)))
  "Returns md5sum for a message object of type 'ImageMatch-response"
  "bf90076cbd0aaa2c3002ff8e25b2d560")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageMatch-response>)))
  "Returns full string definition for message of type '<ImageMatch-response>"
  (cl:format cl:nil "std_msgs/Int32MultiArray offsets~%std_msgs/Float32MultiArray correlations~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageMatch-response)))
  "Returns full string definition for message of type 'ImageMatch-response"
  (cl:format cl:nil "std_msgs/Int32MultiArray offsets~%std_msgs/Float32MultiArray correlations~%~%================================================================================~%MSG: std_msgs/Int32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int32[]           data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageMatch-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offsets))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'correlations))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageMatch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageMatch-response
    (cl:cons ':offsets (offsets msg))
    (cl:cons ':correlations (correlations msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ImageMatch)))
  'ImageMatch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ImageMatch)))
  'ImageMatch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageMatch)))
  "Returns string type for a service object of type '<ImageMatch>"
  "teach_repeat/ImageMatch")