;; Auto-generated. Do not edit!


(when (boundp 'motion_planning::Cars_vector)
  (if (not (find-package "MOTION_PLANNING"))
    (make-package "MOTION_PLANNING"))
  (shadow 'Cars_vector (find-package "MOTION_PLANNING")))
(unless (find-package "MOTION_PLANNING::CARS_VECTOR")
  (make-package "MOTION_PLANNING::CARS_VECTOR"))

(in-package "ROS")
;;//! \htmlinclude Cars_vector.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass motion_planning::Cars_vector
  :super ros::object
  :slots (_header _cars ))

(defmethod motion_planning::Cars_vector
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cars __cars) (let (r) (dotimes (i 0) (push (instance motion_planning::Cars :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cars __cars)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cars
   (&rest __cars)
   (if (keywordp (car __cars))
       (send* _cars __cars)
     (progn
       (if __cars (setq _cars (car __cars)))
       _cars)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; motion_planning/Cars[] _cars
    (apply #'+ (send-all _cars :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; motion_planning/Cars[] _cars
     (write-long (length _cars) s)
     (dolist (elem _cars)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; motion_planning/Cars[] _cars
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cars (let (r) (dotimes (i n) (push (instance motion_planning::Cars :init) r)) r))
     (dolist (elem- _cars)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get motion_planning::Cars_vector :md5sum-) "e1f8459a9d28dbba0869e7fd9fb500bc")
(setf (get motion_planning::Cars_vector :datatype-) "motion_planning/Cars_vector")
(setf (get motion_planning::Cars_vector :definition-)
      "Header header
Cars[] cars
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
MSG: motion_planning/Cars
Header header
int8 objectID 
int8 laneID
string objectType
float32 dx
float32 dy
float32 speed
float32 acc
float32 distanceFromAV

")



(provide :motion_planning/Cars_vector "e1f8459a9d28dbba0869e7fd9fb500bc")


