;; Auto-generated. Do not edit!


(when (boundp 'teach_repeat::SetGoal)
  (if (not (find-package "TEACH_REPEAT"))
    (make-package "TEACH_REPEAT"))
  (shadow 'SetGoal (find-package "TEACH_REPEAT")))
(unless (find-package "TEACH_REPEAT::SETGOAL")
  (make-package "TEACH_REPEAT::SETGOAL"))
(unless (find-package "TEACH_REPEAT::SETGOALREQUEST")
  (make-package "TEACH_REPEAT::SETGOALREQUEST"))
(unless (find-package "TEACH_REPEAT::SETGOALRESPONSE")
  (make-package "TEACH_REPEAT::SETGOALRESPONSE"))

(in-package "ROS")





(defclass teach_repeat::SetGoalRequest
  :super ros::object
  :slots (_goalnum ))

(defmethod teach_repeat::SetGoalRequest
  (:init
   (&key
    ((:goalnum __goalnum) 0)
    )
   (send-super :init)
   (setq _goalnum (round __goalnum))
   self)
  (:goalnum
   (&optional __goalnum)
   (if __goalnum (setq _goalnum __goalnum)) _goalnum)
  (:serialization-length
   ()
   (+
    ;; int64 _goalnum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _goalnum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _goalnum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _goalnum) (= (length (_goalnum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_goalnum . bv) 0) 0) s)
              (write-long (ash (elt (_goalnum . bv) 1) -1) s))
             ((and (class _goalnum) (= (length (_goalnum . bv)) 1)) ;; big1
              (write-long (elt (_goalnum . bv) 0) s)
              (write-long (if (>= _goalnum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _goalnum s)(write-long (if (>= _goalnum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _goalnum
#+(or :alpha :irix6 :x86_64)
      (setf _goalnum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _goalnum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass teach_repeat::SetGoalResponse
  :super ros::object
  :slots (_success ))

(defmethod teach_repeat::SetGoalResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass teach_repeat::SetGoal
  :super ros::object
  :slots ())

(setf (get teach_repeat::SetGoal :md5sum-) "cea44f0d3f6493aa6da990edf3114c5c")
(setf (get teach_repeat::SetGoal :datatype-) "teach_repeat/SetGoal")
(setf (get teach_repeat::SetGoal :request) teach_repeat::SetGoalRequest)
(setf (get teach_repeat::SetGoal :response) teach_repeat::SetGoalResponse)

(defmethod teach_repeat::SetGoalRequest
  (:response () (instance teach_repeat::SetGoalResponse :init)))

(setf (get teach_repeat::SetGoalRequest :md5sum-) "cea44f0d3f6493aa6da990edf3114c5c")
(setf (get teach_repeat::SetGoalRequest :datatype-) "teach_repeat/SetGoalRequest")
(setf (get teach_repeat::SetGoalRequest :definition-)
      "int64 goalnum
---
bool success

")

(setf (get teach_repeat::SetGoalResponse :md5sum-) "cea44f0d3f6493aa6da990edf3114c5c")
(setf (get teach_repeat::SetGoalResponse :datatype-) "teach_repeat/SetGoalResponse")
(setf (get teach_repeat::SetGoalResponse :definition-)
      "int64 goalnum
---
bool success

")



(provide :teach_repeat/SetGoal "cea44f0d3f6493aa6da990edf3114c5c")


