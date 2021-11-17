;; Auto-generated. Do not edit!


(when (boundp 'motion_planning::AV)
  (if (not (find-package "MOTION_PLANNING"))
    (make-package "MOTION_PLANNING"))
  (shadow 'AV (find-package "MOTION_PLANNING")))
(unless (find-package "MOTION_PLANNING::AV")
  (make-package "MOTION_PLANNING::AV"))

(in-package "ROS")
;;//! \htmlinclude AV.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass motion_planning::AV
  :super ros::object
  :slots (_header _laneID _speed _latitude _longitude _acc _heading ))

(defmethod motion_planning::AV
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:laneID __laneID) 0)
    ((:speed __speed) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:acc __acc) 0.0)
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _laneID (round __laneID))
   (setq _speed (float __speed))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _acc (float __acc))
   (setq _heading (float __heading))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:laneID
   (&optional __laneID)
   (if __laneID (setq _laneID __laneID)) _laneID)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _laneID
    1
    ;; float32 _speed
    4
    ;; float32 _latitude
    4
    ;; float32 _longitude
    4
    ;; float32 _acc
    4
    ;; float32 _heading
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _laneID
       (write-byte _laneID s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _laneID
     (setq _laneID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _laneID 127) (setq _laneID (- _laneID 256)))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _latitude
     (setq _latitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get motion_planning::AV :md5sum-) "dcc44aec6d849a4b2e718a007466ed54")
(setf (get motion_planning::AV :datatype-) "motion_planning/AV")
(setf (get motion_planning::AV :definition-)
      "Header header
int8 laneID
float32 speed
float32 latitude
float32 longitude
float32 acc
float32 heading

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



(provide :motion_planning/AV "dcc44aec6d849a4b2e718a007466ed54")


