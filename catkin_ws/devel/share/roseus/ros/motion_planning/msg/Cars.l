;; Auto-generated. Do not edit!


(when (boundp 'motion_planning::Cars)
  (if (not (find-package "MOTION_PLANNING"))
    (make-package "MOTION_PLANNING"))
  (shadow 'Cars (find-package "MOTION_PLANNING")))
(unless (find-package "MOTION_PLANNING::CARS")
  (make-package "MOTION_PLANNING::CARS"))

(in-package "ROS")
;;//! \htmlinclude Cars.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass motion_planning::Cars
  :super ros::object
  :slots (_header _objectID _laneID _objectType _dx _dy _speed _acc _distanceFromAV ))

(defmethod motion_planning::Cars
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objectID __objectID) 0)
    ((:laneID __laneID) 0)
    ((:objectType __objectType) "")
    ((:dx __dx) 0.0)
    ((:dy __dy) 0.0)
    ((:speed __speed) 0.0)
    ((:acc __acc) 0.0)
    ((:distanceFromAV __distanceFromAV) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _objectID (round __objectID))
   (setq _laneID (round __laneID))
   (setq _objectType (string __objectType))
   (setq _dx (float __dx))
   (setq _dy (float __dy))
   (setq _speed (float __speed))
   (setq _acc (float __acc))
   (setq _distanceFromAV (float __distanceFromAV))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objectID
   (&optional __objectID)
   (if __objectID (setq _objectID __objectID)) _objectID)
  (:laneID
   (&optional __laneID)
   (if __laneID (setq _laneID __laneID)) _laneID)
  (:objectType
   (&optional __objectType)
   (if __objectType (setq _objectType __objectType)) _objectType)
  (:dx
   (&optional __dx)
   (if __dx (setq _dx __dx)) _dx)
  (:dy
   (&optional __dy)
   (if __dy (setq _dy __dy)) _dy)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:distanceFromAV
   (&optional __distanceFromAV)
   (if __distanceFromAV (setq _distanceFromAV __distanceFromAV)) _distanceFromAV)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _objectID
    1
    ;; int8 _laneID
    1
    ;; string _objectType
    4 (length _objectType)
    ;; float32 _dx
    4
    ;; float32 _dy
    4
    ;; float32 _speed
    4
    ;; float32 _acc
    4
    ;; float32 _distanceFromAV
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _objectID
       (write-byte _objectID s)
     ;; int8 _laneID
       (write-byte _laneID s)
     ;; string _objectType
       (write-long (length _objectType) s) (princ _objectType s)
     ;; float32 _dx
       (sys::poke _dx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dy
       (sys::poke _dy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distanceFromAV
       (sys::poke _distanceFromAV (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _objectID
     (setq _objectID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _objectID 127) (setq _objectID (- _objectID 256)))
   ;; int8 _laneID
     (setq _laneID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _laneID 127) (setq _laneID (- _laneID 256)))
   ;; string _objectType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _objectType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _dx
     (setq _dx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dy
     (setq _dy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distanceFromAV
     (setq _distanceFromAV (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get motion_planning::Cars :md5sum-) "4141725f390ac8dd13a07016926593a5")
(setf (get motion_planning::Cars :datatype-) "motion_planning/Cars")
(setf (get motion_planning::Cars :definition-)
      "Header header
int8 objectID 
int8 laneID
string objectType
float32 dx
float32 dy
float32 speed
float32 acc
float32 distanceFromAV

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



(provide :motion_planning/Cars "4141725f390ac8dd13a07016926593a5")


