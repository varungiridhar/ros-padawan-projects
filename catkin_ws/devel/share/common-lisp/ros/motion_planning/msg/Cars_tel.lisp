; Auto-generated. Do not edit!


(cl:in-package motion_planning-msg)


;//! \htmlinclude Cars_tel.msg.html

(cl:defclass <Cars_tel> (roslisp-msg-protocol:ros-message)
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
   (objectType
    :reader objectType
    :initarg :objectType
    :type cl:string
    :initform "")
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

(cl:defclass Cars_tel (<Cars_tel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cars_tel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cars_tel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_planning-msg:<Cars_tel> is deprecated: use motion_planning-msg:Cars_tel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Cars_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:header-val is deprecated.  Use motion_planning-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objectID-val :lambda-list '(m))
(cl:defmethod objectID-val ((m <Cars_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:objectID-val is deprecated.  Use motion_planning-msg:objectID instead.")
  (objectID m))

(cl:ensure-generic-function 'objectType-val :lambda-list '(m))
(cl:defmethod objectType-val ((m <Cars_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:objectType-val is deprecated.  Use motion_planning-msg:objectType instead.")
  (objectType m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <Cars_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:lat-val is deprecated.  Use motion_planning-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'long-val :lambda-list '(m))
(cl:defmethod long-val ((m <Cars_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:long-val is deprecated.  Use motion_planning-msg:long instead.")
  (long m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <Cars_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:acceleration-val is deprecated.  Use motion_planning-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Cars_tel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:heading-val is deprecated.  Use motion_planning-msg:heading instead.")
  (heading m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cars_tel>) ostream)
  "Serializes a message object of type '<Cars_tel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'objectID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'objectType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'objectType))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cars_tel>) istream)
  "Deserializes a message object of type '<Cars_tel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cars_tel>)))
  "Returns string type for a message object of type '<Cars_tel>"
  "motion_planning/Cars_tel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cars_tel)))
  "Returns string type for a message object of type 'Cars_tel"
  "motion_planning/Cars_tel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cars_tel>)))
  "Returns md5sum for a message object of type '<Cars_tel>"
  "24d57854c9b8ccdac0af31e8f24eb82f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cars_tel)))
  "Returns md5sum for a message object of type 'Cars_tel"
  "24d57854c9b8ccdac0af31e8f24eb82f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cars_tel>)))
  "Returns full string definition for message of type '<Cars_tel>"
  (cl:format cl:nil "Header header~%int8 objectID ~%string objectType~%float32 lat~%float32 long~%float32 acceleration~%float32 heading~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cars_tel)))
  "Returns full string definition for message of type 'Cars_tel"
  (cl:format cl:nil "Header header~%int8 objectID ~%string objectType~%float32 lat~%float32 long~%float32 acceleration~%float32 heading~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cars_tel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'objectType))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cars_tel>))
  "Converts a ROS message object to a list"
  (cl:list 'Cars_tel
    (cl:cons ':header (header msg))
    (cl:cons ':objectID (objectID msg))
    (cl:cons ':objectType (objectType msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':long (long msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':heading (heading msg))
))
