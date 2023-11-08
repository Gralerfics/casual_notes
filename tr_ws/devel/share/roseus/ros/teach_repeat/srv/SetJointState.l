;; Auto-generated. Do not edit!


(when (boundp 'teach_repeat::SetJointState)
  (if (not (find-package "TEACH_REPEAT"))
    (make-package "TEACH_REPEAT"))
  (shadow 'SetJointState (find-package "TEACH_REPEAT")))
(unless (find-package "TEACH_REPEAT::SETJOINTSTATE")
  (make-package "TEACH_REPEAT::SETJOINTSTATE"))
(unless (find-package "TEACH_REPEAT::SETJOINTSTATEREQUEST")
  (make-package "TEACH_REPEAT::SETJOINTSTATEREQUEST"))
(unless (find-package "TEACH_REPEAT::SETJOINTSTATERESPONSE")
  (make-package "TEACH_REPEAT::SETJOINTSTATERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass teach_repeat::SetJointStateRequest
  :super ros::object
  :slots (_jointStates ))

(defmethod teach_repeat::SetJointStateRequest
  (:init
   (&key
    ((:jointStates __jointStates) (instance sensor_msgs::JointState :init))
    )
   (send-super :init)
   (setq _jointStates __jointStates)
   self)
  (:jointStates
   (&rest __jointStates)
   (if (keywordp (car __jointStates))
       (send* _jointStates __jointStates)
     (progn
       (if __jointStates (setq _jointStates (car __jointStates)))
       _jointStates)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/JointState _jointStates
    (send _jointStates :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/JointState _jointStates
       (send _jointStates :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/JointState _jointStates
     (send _jointStates :deserialize buf ptr-) (incf ptr- (send _jointStates :serialization-length))
   ;;
   self)
  )

(defclass teach_repeat::SetJointStateResponse
  :super ros::object
  :slots (_success _message ))

(defmethod teach_repeat::SetJointStateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass teach_repeat::SetJointState
  :super ros::object
  :slots ())

(setf (get teach_repeat::SetJointState :md5sum-) "a2e5d0f6e7d0bf3763b0d5e04dd5b765")
(setf (get teach_repeat::SetJointState :datatype-) "teach_repeat/SetJointState")
(setf (get teach_repeat::SetJointState :request) teach_repeat::SetJointStateRequest)
(setf (get teach_repeat::SetJointState :response) teach_repeat::SetJointStateResponse)

(defmethod teach_repeat::SetJointStateRequest
  (:response () (instance teach_repeat::SetJointStateResponse :init)))

(setf (get teach_repeat::SetJointStateRequest :md5sum-) "a2e5d0f6e7d0bf3763b0d5e04dd5b765")
(setf (get teach_repeat::SetJointStateRequest :datatype-) "teach_repeat/SetJointStateRequest")
(setf (get teach_repeat::SetJointStateRequest :definition-)
      "sensor_msgs/JointState jointStates

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get teach_repeat::SetJointStateResponse :md5sum-) "a2e5d0f6e7d0bf3763b0d5e04dd5b765")
(setf (get teach_repeat::SetJointStateResponse :datatype-) "teach_repeat/SetJointStateResponse")
(setf (get teach_repeat::SetJointStateResponse :definition-)
      "sensor_msgs/JointState jointStates

================================================================================
MSG: sensor_msgs/JointState
# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :teach_repeat/SetJointState "a2e5d0f6e7d0bf3763b0d5e04dd5b765")


