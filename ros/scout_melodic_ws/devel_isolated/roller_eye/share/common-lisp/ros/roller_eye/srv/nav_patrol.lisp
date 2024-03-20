; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude nav_patrol-request.msg.html

(cl:defclass <nav_patrol-request> (roslisp-msg-protocol:ros-message)
  ((isFromOutStart
    :reader isFromOutStart
    :initarg :isFromOutStart
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass nav_patrol-request (<nav_patrol-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_patrol-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_patrol-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_patrol-request> is deprecated: use roller_eye-srv:nav_patrol-request instead.")))

(cl:ensure-generic-function 'isFromOutStart-val :lambda-list '(m))
(cl:defmethod isFromOutStart-val ((m <nav_patrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:isFromOutStart-val is deprecated.  Use roller_eye-srv:isFromOutStart instead.")
  (isFromOutStart m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <nav_patrol-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:name-val is deprecated.  Use roller_eye-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_patrol-request>) ostream)
  "Serializes a message object of type '<nav_patrol-request>"
  (cl:let* ((signed (cl:slot-value msg 'isFromOutStart)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_patrol-request>) istream)
  "Deserializes a message object of type '<nav_patrol-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'isFromOutStart) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_patrol-request>)))
  "Returns string type for a service object of type '<nav_patrol-request>"
  "roller_eye/nav_patrolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_patrol-request)))
  "Returns string type for a service object of type 'nav_patrol-request"
  "roller_eye/nav_patrolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_patrol-request>)))
  "Returns md5sum for a message object of type '<nav_patrol-request>"
  "d6a5af10fcc8d2d1a3207d2742669e6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_patrol-request)))
  "Returns md5sum for a message object of type 'nav_patrol-request"
  "d6a5af10fcc8d2d1a3207d2742669e6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_patrol-request>)))
  "Returns full string definition for message of type '<nav_patrol-request>"
  (cl:format cl:nil "#0-no, 1-yes~%int8     isFromOutStart~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_patrol-request)))
  "Returns full string definition for message of type 'nav_patrol-request"
  (cl:format cl:nil "#0-no, 1-yes~%int8     isFromOutStart~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_patrol-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_patrol-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_patrol-request
    (cl:cons ':isFromOutStart (isFromOutStart msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude nav_patrol-response.msg.html

(cl:defclass <nav_patrol-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0))
)

(cl:defclass nav_patrol-response (<nav_patrol-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_patrol-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_patrol-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_patrol-response> is deprecated: use roller_eye-srv:nav_patrol-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <nav_patrol-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:ret-val is deprecated.  Use roller_eye-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_patrol-response>) ostream)
  "Serializes a message object of type '<nav_patrol-response>"
  (cl:let* ((signed (cl:slot-value msg 'ret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_patrol-response>) istream)
  "Deserializes a message object of type '<nav_patrol-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_patrol-response>)))
  "Returns string type for a service object of type '<nav_patrol-response>"
  "roller_eye/nav_patrolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_patrol-response)))
  "Returns string type for a service object of type 'nav_patrol-response"
  "roller_eye/nav_patrolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_patrol-response>)))
  "Returns md5sum for a message object of type '<nav_patrol-response>"
  "d6a5af10fcc8d2d1a3207d2742669e6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_patrol-response)))
  "Returns md5sum for a message object of type 'nav_patrol-response"
  "d6a5af10fcc8d2d1a3207d2742669e6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_patrol-response>)))
  "Returns full string definition for message of type '<nav_patrol-response>"
  (cl:format cl:nil "int32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_patrol-response)))
  "Returns full string definition for message of type 'nav_patrol-response"
  (cl:format cl:nil "int32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_patrol-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_patrol-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_patrol-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_patrol)))
  'nav_patrol-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_patrol)))
  'nav_patrol-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_patrol)))
  "Returns string type for a service object of type '<nav_patrol>"
  "roller_eye/nav_patrol")