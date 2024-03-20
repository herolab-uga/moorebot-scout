; Auto-generated. Do not edit!


(cl:in-package roller_eye-msg)


;//! \htmlinclude patrol_status.msg.html

(cl:defclass <patrol_status> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass patrol_status (<patrol_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <patrol_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'patrol_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-msg:<patrol_status> is deprecated: use roller_eye-msg:patrol_status instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <patrol_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:type-val is deprecated.  Use roller_eye-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <patrol_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:name-val is deprecated.  Use roller_eye-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<patrol_status>)))
    "Constants for message type '<patrol_status>"
  '((:START_PATROL . 0)
    (:END_PATROL . 1)
    (:PATROL_LOSE_PILE . 2)
    (:PATROL_AVOID_OBS_FAIL . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'patrol_status)))
    "Constants for message type 'patrol_status"
  '((:START_PATROL . 0)
    (:END_PATROL . 1)
    (:PATROL_LOSE_PILE . 2)
    (:PATROL_AVOID_OBS_FAIL . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <patrol_status>) ostream)
  "Serializes a message object of type '<patrol_status>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <patrol_status>) istream)
  "Deserializes a message object of type '<patrol_status>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<patrol_status>)))
  "Returns string type for a message object of type '<patrol_status>"
  "roller_eye/patrol_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'patrol_status)))
  "Returns string type for a message object of type 'patrol_status"
  "roller_eye/patrol_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<patrol_status>)))
  "Returns md5sum for a message object of type '<patrol_status>"
  "799344e2827d6e4c33a67d7ff2c81773")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'patrol_status)))
  "Returns md5sum for a message object of type 'patrol_status"
  "799344e2827d6e4c33a67d7ff2c81773")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<patrol_status>)))
  "Returns full string definition for message of type '<patrol_status>"
  (cl:format cl:nil "int8  START_PATROL          = 0~%int8 END_PATROL                = 1~%int8 PATROL_LOSE_PILE  = 2~%int8 PATROL_AVOID_OBS_FAIL  = 3~%#patrol status~%int32 type~%~%#patrol name~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'patrol_status)))
  "Returns full string definition for message of type 'patrol_status"
  (cl:format cl:nil "int8  START_PATROL          = 0~%int8 END_PATROL                = 1~%int8 PATROL_LOSE_PILE  = 2~%int8 PATROL_AVOID_OBS_FAIL  = 3~%#patrol status~%int32 type~%~%#patrol name~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <patrol_status>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <patrol_status>))
  "Converts a ROS message object to a list"
  (cl:list 'patrol_status
    (cl:cons ':type (type msg))
    (cl:cons ':name (name msg))
))
