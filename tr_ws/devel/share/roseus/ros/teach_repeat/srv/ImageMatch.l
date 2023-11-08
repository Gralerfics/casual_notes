;; Auto-generated. Do not edit!


(when (boundp 'teach_repeat::ImageMatch)
  (if (not (find-package "TEACH_REPEAT"))
    (make-package "TEACH_REPEAT"))
  (shadow 'ImageMatch (find-package "TEACH_REPEAT")))
(unless (find-package "TEACH_REPEAT::IMAGEMATCH")
  (make-package "TEACH_REPEAT::IMAGEMATCH"))
(unless (find-package "TEACH_REPEAT::IMAGEMATCHREQUEST")
  (make-package "TEACH_REPEAT::IMAGEMATCHREQUEST"))
(unless (find-package "TEACH_REPEAT::IMAGEMATCHRESPONSE")
  (make-package "TEACH_REPEAT::IMAGEMATCHRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass teach_repeat::ImageMatchRequest
  :super ros::object
  :slots (_normalisedImage _imageIndex _searchRange ))

(defmethod teach_repeat::ImageMatchRequest
  (:init
   (&key
    ((:normalisedImage __normalisedImage) (instance sensor_msgs::Image :init))
    ((:imageIndex __imageIndex) (instance std_msgs::UInt32 :init))
    ((:searchRange __searchRange) (instance std_msgs::UInt32 :init))
    )
   (send-super :init)
   (setq _normalisedImage __normalisedImage)
   (setq _imageIndex __imageIndex)
   (setq _searchRange __searchRange)
   self)
  (:normalisedImage
   (&rest __normalisedImage)
   (if (keywordp (car __normalisedImage))
       (send* _normalisedImage __normalisedImage)
     (progn
       (if __normalisedImage (setq _normalisedImage (car __normalisedImage)))
       _normalisedImage)))
  (:imageIndex
   (&rest __imageIndex)
   (if (keywordp (car __imageIndex))
       (send* _imageIndex __imageIndex)
     (progn
       (if __imageIndex (setq _imageIndex (car __imageIndex)))
       _imageIndex)))
  (:searchRange
   (&rest __searchRange)
   (if (keywordp (car __searchRange))
       (send* _searchRange __searchRange)
     (progn
       (if __searchRange (setq _searchRange (car __searchRange)))
       _searchRange)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _normalisedImage
    (send _normalisedImage :serialization-length)
    ;; std_msgs/UInt32 _imageIndex
    (send _imageIndex :serialization-length)
    ;; std_msgs/UInt32 _searchRange
    (send _searchRange :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _normalisedImage
       (send _normalisedImage :serialize s)
     ;; std_msgs/UInt32 _imageIndex
       (send _imageIndex :serialize s)
     ;; std_msgs/UInt32 _searchRange
       (send _searchRange :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _normalisedImage
     (send _normalisedImage :deserialize buf ptr-) (incf ptr- (send _normalisedImage :serialization-length))
   ;; std_msgs/UInt32 _imageIndex
     (send _imageIndex :deserialize buf ptr-) (incf ptr- (send _imageIndex :serialization-length))
   ;; std_msgs/UInt32 _searchRange
     (send _searchRange :deserialize buf ptr-) (incf ptr- (send _searchRange :serialization-length))
   ;;
   self)
  )

(defclass teach_repeat::ImageMatchResponse
  :super ros::object
  :slots (_offsets _correlations ))

(defmethod teach_repeat::ImageMatchResponse
  (:init
   (&key
    ((:offsets __offsets) (instance std_msgs::Int32MultiArray :init))
    ((:correlations __correlations) (instance std_msgs::Float32MultiArray :init))
    )
   (send-super :init)
   (setq _offsets __offsets)
   (setq _correlations __correlations)
   self)
  (:offsets
   (&rest __offsets)
   (if (keywordp (car __offsets))
       (send* _offsets __offsets)
     (progn
       (if __offsets (setq _offsets (car __offsets)))
       _offsets)))
  (:correlations
   (&rest __correlations)
   (if (keywordp (car __correlations))
       (send* _correlations __correlations)
     (progn
       (if __correlations (setq _correlations (car __correlations)))
       _correlations)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32MultiArray _offsets
    (send _offsets :serialization-length)
    ;; std_msgs/Float32MultiArray _correlations
    (send _correlations :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32MultiArray _offsets
       (send _offsets :serialize s)
     ;; std_msgs/Float32MultiArray _correlations
       (send _correlations :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32MultiArray _offsets
     (send _offsets :deserialize buf ptr-) (incf ptr- (send _offsets :serialization-length))
   ;; std_msgs/Float32MultiArray _correlations
     (send _correlations :deserialize buf ptr-) (incf ptr- (send _correlations :serialization-length))
   ;;
   self)
  )

(defclass teach_repeat::ImageMatch
  :super ros::object
  :slots ())

(setf (get teach_repeat::ImageMatch :md5sum-) "bf90076cbd0aaa2c3002ff8e25b2d560")
(setf (get teach_repeat::ImageMatch :datatype-) "teach_repeat/ImageMatch")
(setf (get teach_repeat::ImageMatch :request) teach_repeat::ImageMatchRequest)
(setf (get teach_repeat::ImageMatch :response) teach_repeat::ImageMatchResponse)

(defmethod teach_repeat::ImageMatchRequest
  (:response () (instance teach_repeat::ImageMatchResponse :init)))

(setf (get teach_repeat::ImageMatchRequest :md5sum-) "bf90076cbd0aaa2c3002ff8e25b2d560")
(setf (get teach_repeat::ImageMatchRequest :datatype-) "teach_repeat/ImageMatchRequest")
(setf (get teach_repeat::ImageMatchRequest :definition-)
      "sensor_msgs/Image normalisedImage
std_msgs/UInt32 imageIndex
std_msgs/UInt32 searchRange # total images searched = 1 + 2*searchRange

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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

================================================================================
MSG: std_msgs/UInt32
---
std_msgs/Int32MultiArray offsets
std_msgs/Float32MultiArray correlations

================================================================================
MSG: std_msgs/Int32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int32[]           data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data

")

(setf (get teach_repeat::ImageMatchResponse :md5sum-) "bf90076cbd0aaa2c3002ff8e25b2d560")
(setf (get teach_repeat::ImageMatchResponse :datatype-) "teach_repeat/ImageMatchResponse")
(setf (get teach_repeat::ImageMatchResponse :definition-)
      "sensor_msgs/Image normalisedImage
std_msgs/UInt32 imageIndex
std_msgs/UInt32 searchRange # total images searched = 1 + 2*searchRange

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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

================================================================================
MSG: std_msgs/UInt32
---
std_msgs/Int32MultiArray offsets
std_msgs/Float32MultiArray correlations

================================================================================
MSG: std_msgs/Int32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int32[]           data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data

")



(provide :teach_repeat/ImageMatch "bf90076cbd0aaa2c3002ff8e25b2d560")


