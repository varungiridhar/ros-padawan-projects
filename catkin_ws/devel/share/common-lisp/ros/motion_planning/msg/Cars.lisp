; Auto-generated. Do not edit!


(cl:in-package motion_planning-msg)


;//! \htmlinclude Cars.msg.html

(cl:defclass <Cars> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objectID
    :reader objectID
    :initarg :objectID
    :type cl:fixnum
    :initform 0)
   (laneID
    :reader laneID
    :initarg :laneID
    :type cl:fixnum
    :initform 0)
   (objectType
    :reader objectType
    :initarg :objectType
    :type cl:string
    :initform "")
   (dx
    :reader dx
    :initarg :dx
    :type cl:float
    :initform 0.0)
   (dy
    :reader dy
    :initarg :dy
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0)
   (distanceFromAV
    :reader distanceFromAV
    :initarg :distanceFromAV
    :type cl:float
    :initform 0.0))
)

(cl:defclass Cars (<Cars>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cars>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cars)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_planning-msg:<Cars> is deprecated: use motion_planning-msg:Cars instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Cars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:header-val is deprecated.  Use motion_planning-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objectID-val :lambda-list '(m))
(cl:defmethod objectID-val ((m <Cars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:objectID-val is deprecated.  Use motion_planning-msg:objectID instead.")
  (objectID m))

(cl:ensure-generic-function 'laneID-val :lambda-list '(m))
(cl:defmethod laneID-val ((m <Cars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:laneID-val is deprecated.  Use motion_planning-msg:laneID instead.")
  (laneID m))

(cl:ensure-generic-function 'objectType-val :lambda-list '(m))
(cl:defmethod objectType-val ((m <Cars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:objectType-val is deprecated.  Use motion_planning-msg:objectType instead.")
  (objectType m))

(cl:ensure-generic-function 'dx-val :lambda-list '(m))
(cl:defmethod dx-val ((m <Cars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:dx-val is deprecated.  Use motion_planning-msg:dx instead.")
  (dx m))

(cl:ensure-generic-function 'dy-val :lambda-list '(m))
(cl:defmethod dy-val ((m <Cars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:dy-val is deprecated.  Use motion_planning-msg:dy instead.")
  (dy m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Cars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:speed-val is deprecated.  Use motion_planning-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <Cars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:acc-val is deprecated.  Use motion_planning-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'distanceFromAV-val :lambda-list '(m))
(cl:defmethod distanceFromAV-val ((m <Cars>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:distanceFromAV-val is deprecated.  Use motion_planning-msg:distanceFromAV instead.")
  (distanceFromAV m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cars>) ostream)
  "Serializes a message object of type '<Cars>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'objectID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'laneID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'objectType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'objectType))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distanceFromAV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cars>) istream)
  "Deserializes a message object of type '<Cars>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laneID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'objectType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distanceFromAV) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cars>)))
  "Returns string type for a message object of type '<Cars>"
  "motion_planning/Cars")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cars)))
  "Returns string type for a message object of type 'Cars"
  "motion_planning/Cars")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cars>)))
  "Returns md5sum for a message object of type '<Cars>"
  "4141725f390ac8dd13a07016926593a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cars)))
  "Returns md5sum for a message object of type 'Cars"
  "4141725f390ac8dd13a07016926593a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cars>)))
  "Returns full string definition for message of type '<Cars>"
  (cl:format cl:nil "Header header~%int8 objectID ~%int8 laneID~%string objectType~%float32 dx~%float32 dy~%float32 speed~%float32 acc~%float32 distanceFromAV~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cars)))
  "Returns full string definition for message of type 'Cars"
  (cl:format cl:nil "Header header~%int8 objectID ~%int8 laneID~%string objectType~%float32 dx~%float32 dy~%float32 speed~%float32 acc~%float32 distanceFromAV~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cars>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4 (cl:length (cl:slot-value msg 'objectType))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cars>))
  "Converts a ROS message object to a list"
  (cl:list 'Cars
    (cl:cons ':header (header msg))
    (cl:cons ':objectID (objectID msg))
    (cl:cons ':laneID (laneID msg))
    (cl:cons ':objectType (objectType msg))
    (cl:cons ':dx (dx msg))
    (cl:cons ':dy (dy msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':distanceFromAV (distanceFromAV msg))
))
