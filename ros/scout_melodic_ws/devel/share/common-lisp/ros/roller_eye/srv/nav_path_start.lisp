; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude nav_path_start-request.msg.html

(cl:defclass <nav_path_start-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass nav_path_start-request (<nav_path_start-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_path_start-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_path_start-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_path_start-request> is deprecated: use roller_eye-srv:nav_path_start-request instead.")))

(cl:ensure-generic-function 'isFromOutStart-val :lambda-list '(m))
(cl:defmethod isFromOutStart-val ((m <nav_path_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:isFromOutStart-val is deprecated.  Use roller_eye-srv:isFromOutStart instead.")
  (isFromOutStart m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <nav_path_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:name-val is deprecated.  Use roller_eye-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_path_start-request>) ostream)
  "Serializes a message object of type '<nav_path_start-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_path_start-request>) istream)
  "Deserializes a message object of type '<nav_path_start-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_path_start-request>)))
  "Returns string type for a service object of type '<nav_path_start-request>"
  "roller_eye/nav_path_startRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_path_start-request)))
  "Returns string type for a service object of type 'nav_path_start-request"
  "roller_eye/nav_path_startRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_path_start-request>)))
  "Returns md5sum for a message object of type '<nav_path_start-request>"
  "3c9f7c0536edb947c8a33193074afe9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_path_start-request)))
  "Returns md5sum for a message object of type 'nav_path_start-request"
  "3c9f7c0536edb947c8a33193074afe9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_path_start-request>)))
  "Returns full string definition for message of type '<nav_path_start-request>"
  (cl:format cl:nil "#0-no, 1-yes~%int8     isFromOutStart~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_path_start-request)))
  "Returns full string definition for message of type 'nav_path_start-request"
  (cl:format cl:nil "#0-no, 1-yes~%int8     isFromOutStart~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_path_start-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_path_start-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_path_start-request
    (cl:cons ':isFromOutStart (isFromOutStart msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude nav_path_start-response.msg.html

(cl:defclass <nav_path_start-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_path_start-response (<nav_path_start-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_path_start-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_path_start-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_path_start-response> is deprecated: use roller_eye-srv:nav_path_start-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_path_start-response>) ostream)
  "Serializes a message object of type '<nav_path_start-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_path_start-response>) istream)
  "Deserializes a message object of type '<nav_path_start-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_path_start-response>)))
  "Returns string type for a service object of type '<nav_path_start-response>"
  "roller_eye/nav_path_startResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_path_start-response)))
  "Returns string type for a service object of type 'nav_path_start-response"
  "roller_eye/nav_path_startResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_path_start-response>)))
  "Returns md5sum for a message object of type '<nav_path_start-response>"
  "3c9f7c0536edb947c8a33193074afe9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_path_start-response)))
  "Returns md5sum for a message object of type 'nav_path_start-response"
  "3c9f7c0536edb947c8a33193074afe9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_path_start-response>)))
  "Returns full string definition for message of type '<nav_path_start-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_path_start-response)))
  "Returns full string definition for message of type 'nav_path_start-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_path_start-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_path_start-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_path_start-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_path_start)))
  'nav_path_start-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_path_start)))
  'nav_path_start-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_path_start)))
  "Returns string type for a service object of type '<nav_path_start>"
  "roller_eye/nav_path_start")