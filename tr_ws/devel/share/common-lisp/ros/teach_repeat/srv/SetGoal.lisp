; Auto-generated. Do not edit!


(cl:in-package teach_repeat-srv)


;//! \htmlinclude SetGoal-request.msg.html

(cl:defclass <SetGoal-request> (roslisp-msg-protocol:ros-message)
  ((goalnum
    :reader goalnum
    :initarg :goalnum
    :type cl:integer
    :initform 0))
)

(cl:defclass SetGoal-request (<SetGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teach_repeat-srv:<SetGoal-request> is deprecated: use teach_repeat-srv:SetGoal-request instead.")))

(cl:ensure-generic-function 'goalnum-val :lambda-list '(m))
(cl:defmethod goalnum-val ((m <SetGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:goalnum-val is deprecated.  Use teach_repeat-srv:goalnum instead.")
  (goalnum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoal-request>) ostream)
  "Serializes a message object of type '<SetGoal-request>"
  (cl:let* ((signed (cl:slot-value msg 'goalnum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoal-request>) istream)
  "Deserializes a message object of type '<SetGoal-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goalnum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoal-request>)))
  "Returns string type for a service object of type '<SetGoal-request>"
  "teach_repeat/SetGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal-request)))
  "Returns string type for a service object of type 'SetGoal-request"
  "teach_repeat/SetGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoal-request>)))
  "Returns md5sum for a message object of type '<SetGoal-request>"
  "cea44f0d3f6493aa6da990edf3114c5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoal-request)))
  "Returns md5sum for a message object of type 'SetGoal-request"
  "cea44f0d3f6493aa6da990edf3114c5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoal-request>)))
  "Returns full string definition for message of type '<SetGoal-request>"
  (cl:format cl:nil "int64 goalnum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoal-request)))
  "Returns full string definition for message of type 'SetGoal-request"
  (cl:format cl:nil "int64 goalnum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoal-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoal-request
    (cl:cons ':goalnum (goalnum msg))
))
;//! \htmlinclude SetGoal-response.msg.html

(cl:defclass <SetGoal-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetGoal-response (<SetGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teach_repeat-srv:<SetGoal-response> is deprecated: use teach_repeat-srv:SetGoal-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teach_repeat-srv:success-val is deprecated.  Use teach_repeat-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoal-response>) ostream)
  "Serializes a message object of type '<SetGoal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoal-response>) istream)
  "Deserializes a message object of type '<SetGoal-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoal-response>)))
  "Returns string type for a service object of type '<SetGoal-response>"
  "teach_repeat/SetGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal-response)))
  "Returns string type for a service object of type 'SetGoal-response"
  "teach_repeat/SetGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoal-response>)))
  "Returns md5sum for a message object of type '<SetGoal-response>"
  "cea44f0d3f6493aa6da990edf3114c5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoal-response)))
  "Returns md5sum for a message object of type 'SetGoal-response"
  "cea44f0d3f6493aa6da990edf3114c5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoal-response>)))
  "Returns full string definition for message of type '<SetGoal-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoal-response)))
  "Returns full string definition for message of type 'SetGoal-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoal-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoal-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGoal)))
  'SetGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGoal)))
  'SetGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal)))
  "Returns string type for a service object of type '<SetGoal>"
  "teach_repeat/SetGoal")