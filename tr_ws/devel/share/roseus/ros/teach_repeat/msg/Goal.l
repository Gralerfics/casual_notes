;; Auto-generated. Do not edit!


(when (boundp 'teach_repeat::Goal)
  (if (not (find-package "TEACH_REPEAT"))
    (make-package "TEACH_REPEAT"))
  (shadow 'Goal (find-package "TEACH_REPEAT")))
(unless (find-package "TEACH_REPEAT::GOAL")
  (make-package "TEACH_REPEAT::GOAL"))

(in-package "ROS")
;;//! \htmlinclude Goal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass teach_repeat::Goal
  :super ros::object
  :slots (_pose _stop_at_goal ))

(defmethod teach_repeat::Goal
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:stop_at_goal __stop_at_goal) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _stop_at_goal __stop_at_goal)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:stop_at_goal
   (&rest __stop_at_goal)
   (if (keywordp (car __stop_at_goal))
       (send* _stop_at_goal __stop_at_goal)
     (progn
       (if __stop_at_goal (setq _stop_at_goal (car __stop_at_goal)))
       _stop_at_goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; std_msgs/Bool _stop_at_goal
    (send _stop_at_goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; std_msgs/Bool _stop_at_goal
       (send _stop_at_goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; std_msgs/Bool _stop_at_goal
     (send _stop_at_goal :deserialize buf ptr-) (incf ptr- (send _stop_at_goal :serialization-length))
   ;;
   self)
  )

(setf (get teach_repeat::Goal :md5sum-) "916059bb7870d2b28241d774eeeb53cd")
(setf (get teach_repeat::Goal :datatype-) "teach_repeat/Goal")
(setf (get teach_repeat::Goal :definition-)
      "geometry_msgs/PoseStamped pose
std_msgs/Bool stop_at_goal
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Bool
bool data
")



(provide :teach_repeat/Goal "916059bb7870d2b28241d774eeeb53cd")


