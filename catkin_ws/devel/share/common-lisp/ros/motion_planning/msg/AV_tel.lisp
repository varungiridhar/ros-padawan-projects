; Auto-generated. Do not edit!


(cl:in-package motion_planning-msg)


;//! \htmlinclude AV_tel.msg.html

(cl:defclass <AV_tel> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lat
    :reader lat
    :initarg :lat
    :type cl:float
    :initform 0.0)
   (long
    :reader long
    :initarg :long
    :type cl:float
    :initform 0.0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0))
)

(cl:defclass AV_tel (<AV_tel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AV_tel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AV_tel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_planning-msg:<AV_tel> is deprecated: use motion_planning-msg:AV_tel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AV_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:header-val is deprecated.  Use motion_planning-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <AV_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:lat-val is deprecated.  Use motion_planning-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'long-val :lambda-list '(m))
(cl:defmethod long-val ((m <AV_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:long-val is deprecated.  Use motion_planning-msg:long instead.")
  (long m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <AV_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:acceleration-val is deprecated.  Use motion_planning-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <AV_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:heading-val is deprecated.  Use motion_planning-msg:heading instead.")
  (heading m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AV_tel>) ostream)
  "Serializes a message object of type '<AV_tel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'long))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AV_tel>) istream)
  "Deserializes a message object of type '<AV_tel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'long) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AV_tel>)))
  "Returns string type for a message object of type '<AV_tel>"
  "motion_planning/AV_tel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AV_tel)))
  "Returns string type for a message object of type 'AV_tel"
  "motion_planning/AV_tel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AV_tel>)))
  "Returns md5sum for a message object of type '<AV_tel>"
  "3a9af059582e963638a803153c25cef2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AV_tel)))
  "Returns md5sum for a message object of type 'AV_tel"
  "3a9af059582e963638a803153c25cef2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AV_tel>)))
  "Returns full string definition for message of type '<AV_tel>"
  (cl:format cl:nil "Header header~%float32 lat~%float32 long~%float32 acceleration~%float32 heading~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AV_tel)))
  "Returns full string definition for message of type 'AV_tel"
  (cl:format cl:nil "Header header~%float32 lat~%float32 long~%float32 acceleration~%float32 heading~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AV_tel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AV_tel>))
  "Converts a ROS message object to a list"
  (cl:list 'AV_tel
    (cl:cons ':header (header msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':long (long msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':heading (heading msg))
))
