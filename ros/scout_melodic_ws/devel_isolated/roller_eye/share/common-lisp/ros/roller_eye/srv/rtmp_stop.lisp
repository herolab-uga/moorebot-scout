; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude rtmp_stop-request.msg.html

(cl:defclass <rtmp_stop-request> (roslisp-msg-protocol:ros-message)
  ((app
    :reader app
    :initarg :app
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass rtmp_stop-request (<rtmp_stop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rtmp_stop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rtmp_stop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<rtmp_stop-request> is deprecated: use roller_eye-srv:rtmp_stop-request instead.")))

(cl:ensure-generic-function 'app-val :lambda-list '(m))
(cl:defmethod app-val ((m <rtmp_stop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:app-val is deprecated.  Use roller_eye-srv:app instead.")
  (app m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <rtmp_stop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:name-val is deprecated.  Use roller_eye-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rtmp_stop-request>) ostream)
  "Serializes a message object of type '<rtmp_stop-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'app))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'app))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rtmp_stop-request>) istream)
  "Deserializes a message object of type '<rtmp_stop-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'app) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'app) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rtmp_stop-request>)))
  "Returns string type for a service object of type '<rtmp_stop-request>"
  "roller_eye/rtmp_stopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rtmp_stop-request)))
  "Returns string type for a service object of type 'rtmp_stop-request"
  "roller_eye/rtmp_stopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rtmp_stop-request>)))
  "Returns md5sum for a message object of type '<rtmp_stop-request>"
  "f6dfd2cf4653c7fe4ab53921ea828817")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rtmp_stop-request)))
  "Returns md5sum for a message object of type 'rtmp_stop-request"
  "f6dfd2cf4653c7fe4ab53921ea828817")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rtmp_stop-request>)))
  "Returns full string definition for message of type '<rtmp_stop-request>"
  (cl:format cl:nil "string app~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rtmp_stop-request)))
  "Returns full string definition for message of type 'rtmp_stop-request"
  (cl:format cl:nil "string app~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rtmp_stop-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'app))
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rtmp_stop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rtmp_stop-request
    (cl:cons ':app (app msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude rtmp_stop-response.msg.html

(cl:defclass <rtmp_stop-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass rtmp_stop-response (<rtmp_stop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rtmp_stop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rtmp_stop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<rtmp_stop-response> is deprecated: use roller_eye-srv:rtmp_stop-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <rtmp_stop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:result-val is deprecated.  Use roller_eye-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rtmp_stop-response>) ostream)
  "Serializes a message object of type '<rtmp_stop-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rtmp_stop-response>) istream)
  "Deserializes a message object of type '<rtmp_stop-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rtmp_stop-response>)))
  "Returns string type for a service object of type '<rtmp_stop-response>"
  "roller_eye/rtmp_stopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rtmp_stop-response)))
  "Returns string type for a service object of type 'rtmp_stop-response"
  "roller_eye/rtmp_stopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rtmp_stop-response>)))
  "Returns md5sum for a message object of type '<rtmp_stop-response>"
  "f6dfd2cf4653c7fe4ab53921ea828817")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rtmp_stop-response)))
  "Returns md5sum for a message object of type 'rtmp_stop-response"
  "f6dfd2cf4653c7fe4ab53921ea828817")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rtmp_stop-response>)))
  "Returns full string definition for message of type '<rtmp_stop-response>"
  (cl:format cl:nil "int8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rtmp_stop-response)))
  "Returns full string definition for message of type 'rtmp_stop-response"
  (cl:format cl:nil "int8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rtmp_stop-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rtmp_stop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rtmp_stop-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rtmp_stop)))
  'rtmp_stop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rtmp_stop)))
  'rtmp_stop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rtmp_stop)))
  "Returns string type for a service object of type '<rtmp_stop>"
  "roller_eye/rtmp_stop")