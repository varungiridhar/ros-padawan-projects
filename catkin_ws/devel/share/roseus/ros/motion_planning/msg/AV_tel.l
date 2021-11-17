;; Auto-generated. Do not edit!


(when (boundp 'motion_planning::AV_tel)
  (if (not (find-package "MOTION_PLANNING"))
    (make-package "MOTION_PLANNING"))
  (shadow 'AV_tel (find-package "MOTION_PLANNING")))
(unless (find-package "MOTION_PLANNING::AV_TEL")
  (make-package "MOTION_PLANNING::AV_TEL"))

(in-package "ROS")
;;//! \htmlinclude AV_tel.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass motion_planning::AV_tel
  :super ros::object
  :slots (_header _lat _long _acceleration _heading ))

(defmethod motion_planning::AV_tel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lat __lat) 0.0)
    ((:long __long) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lat (float __lat))
   (setq _long (float __long))
   (setq _acceleration (float __acceleration))
   (setq _heading (float __heading))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:long
   (&optional __long)
   (if __long (setq _long __long)) _long)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _lat
    4
    ;; float32 _long
    4
    ;; float32 _acceleration
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
     ;; float32 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _long
       (sys::poke _long (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _lat
     (setq _lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _long
     (setq _long (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acceleration
     (setq _acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get motion_planning::AV_tel :md5sum-) "3a9af059582e963638a803153c25cef2")
(setf (get motion_planning::AV_tel :datatype-) "motion_planning/AV_tel")
(setf (get motion_planning::AV_tel :definition-)
      "Header header
float32 lat
float32 long
float32 acceleration
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



(provide :motion_planning/AV_tel "3a9af059582e963638a803153c25cef2")


