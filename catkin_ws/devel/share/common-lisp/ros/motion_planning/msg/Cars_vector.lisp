; Auto-generated. Do not edit!


(cl:in-package motion_planning-msg)


;//! \htmlinclude Cars_vector.msg.html

(cl:defclass <Cars_vector> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cars
    :reader cars
    :initarg :cars
    :type (cl:vector motion_planning-msg:Cars)
   :initform (cl:make-array 0 :element-type 'motion_planning-msg:Cars :initial-element (cl:make-instance 'motion_planning-msg:Cars))))
)

(cl:defclass Cars_vector (<Cars_vector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cars_vector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cars_vector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_planning-msg:<Cars_vector> is deprecated: use motion_planning-msg:Cars_vector instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Cars_vector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:header-val is deprecated.  Use motion_planning-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cars-val :lambda-list '(m))
(cl:defmethod cars-val ((m <Cars_vector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:cars-val is deprecated.  Use motion_planning-msg:cars instead.")
  (cars m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cars_vector>) ostream)
  "Serializes a message object of type '<Cars_vector>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cars))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cars))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cars_vector>) istream)
  "Deserializes a message object of type '<Cars_vector>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cars) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cars)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'motion_planning-msg:Cars))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cars_vector>)))
  "Returns string type for a message object of type '<Cars_vector>"
  "motion_planning/Cars_vector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cars_vector)))
  "Returns string type for a message object of type 'Cars_vector"
  "motion_planning/Cars_vector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cars_vector>)))
  "Returns md5sum for a message object of type '<Cars_vector>"
  "e1f8459a9d28dbba0869e7fd9fb500bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cars_vector)))
  "Returns md5sum for a message object of type 'Cars_vector"
  "e1f8459a9d28dbba0869e7fd9fb500bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cars_vector>)))
  "Returns full string definition for message of type '<Cars_vector>"
  (cl:format cl:nil "Header header~%Cars[] cars~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: motion_planning/Cars~%Header header~%int8 objectID ~%int8 laneID~%string objectType~%float32 dx~%float32 dy~%float32 speed~%float32 acc~%float32 distanceFromAV~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cars_vector)))
  "Returns full string definition for message of type 'Cars_vector"
  (cl:format cl:nil "Header header~%Cars[] cars~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: motion_planning/Cars~%Header header~%int8 objectID ~%int8 laneID~%string objectType~%float32 dx~%float32 dy~%float32 speed~%float32 acc~%float32 distanceFromAV~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cars_vector>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cars) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cars_vector>))
  "Converts a ROS message object to a list"
  (cl:list 'Cars_vector
    (cl:cons ':header (header msg))
    (cl:cons ':cars (cars msg))
))
