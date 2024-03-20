; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude rtmp_start-request.msg.html

(cl:defclass <rtmp_start-request> (roslisp-msg-protocol:ros-message)
  ((app
    :reader app
    :initarg :app
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (cache
    :reader cache
    :initarg :cache
    :type cl:boolean
    :initform cl:nil)
   (live
    :reader live
    :initarg :live
    :type cl:boolean
    :initform cl:nil)
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:integer
    :initform 0))
)

(cl:defclass rtmp_start-request (<rtmp_start-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rtmp_start-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rtmp_start-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<rtmp_start-request> is deprecated: use roller_eye-srv:rtmp_start-request instead.")))

(cl:ensure-generic-function 'app-val :lambda-list '(m))
(cl:defmethod app-val ((m <rtmp_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:app-val is deprecated.  Use roller_eye-srv:app instead.")
  (app m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <rtmp_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:name-val is deprecated.  Use roller_eye-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'cache-val :lambda-list '(m))
(cl:defmethod cache-val ((m <rtmp_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:cache-val is deprecated.  Use roller_eye-srv:cache instead.")
  (cache m))

(cl:ensure-generic-function 'live-val :lambda-list '(m))
(cl:defmethod live-val ((m <rtmp_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:live-val is deprecated.  Use roller_eye-srv:live instead.")
  (live m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <rtmp_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:duration-val is deprecated.  Use roller_eye-srv:duration instead.")
  (duration m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <rtmp_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:flags-val is deprecated.  Use roller_eye-srv:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rtmp_start-request>) ostream)
  "Serializes a message object of type '<rtmp_start-request>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cache) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'live) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rtmp_start-request>) istream)
  "Deserializes a message object of type '<rtmp_start-request>"
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
    (cl:setf (cl:slot-value msg 'cache) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'live) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rtmp_start-request>)))
  "Returns string type for a service object of type '<rtmp_start-request>"
  "roller_eye/rtmp_startRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rtmp_start-request)))
  "Returns string type for a service object of type 'rtmp_start-request"
  "roller_eye/rtmp_startRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rtmp_start-request>)))
  "Returns md5sum for a message object of type '<rtmp_start-request>"
  "4b6f77a45b623c28a4a7ea205bfd70b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rtmp_start-request)))
  "Returns md5sum for a message object of type 'rtmp_start-request"
  "4b6f77a45b623c28a4a7ea205bfd70b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rtmp_start-request>)))
  "Returns full string definition for message of type '<rtmp_start-request>"
  (cl:format cl:nil "#value is \"live\" or \"monitor\",when set \"monitor\" the server will record the data~%string app~%#stream name~%string name~%#need to be cached in local~%bool cache~%#need to open the camera,if false the video data will load from local cache~%bool live~%#the duration of the stream~%int32 duration~%#av flag~%uint32 flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rtmp_start-request)))
  "Returns full string definition for message of type 'rtmp_start-request"
  (cl:format cl:nil "#value is \"live\" or \"monitor\",when set \"monitor\" the server will record the data~%string app~%#stream name~%string name~%#need to be cached in local~%bool cache~%#need to open the camera,if false the video data will load from local cache~%bool live~%#the duration of the stream~%int32 duration~%#av flag~%uint32 flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rtmp_start-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'app))
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rtmp_start-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rtmp_start-request
    (cl:cons ':app (app msg))
    (cl:cons ':name (name msg))
    (cl:cons ':cache (cache msg))
    (cl:cons ':live (live msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':flags (flags msg))
))
;//! \htmlinclude rtmp_start-response.msg.html

(cl:defclass <rtmp_start-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass rtmp_start-response (<rtmp_start-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rtmp_start-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rtmp_start-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<rtmp_start-response> is deprecated: use roller_eye-srv:rtmp_start-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <rtmp_start-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:result-val is deprecated.  Use roller_eye-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rtmp_start-response>) ostream)
  "Serializes a message object of type '<rtmp_start-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rtmp_start-response>) istream)
  "Deserializes a message object of type '<rtmp_start-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rtmp_start-response>)))
  "Returns string type for a service object of type '<rtmp_start-response>"
  "roller_eye/rtmp_startResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rtmp_start-response)))
  "Returns string type for a service object of type 'rtmp_start-response"
  "roller_eye/rtmp_startResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rtmp_start-response>)))
  "Returns md5sum for a message object of type '<rtmp_start-response>"
  "4b6f77a45b623c28a4a7ea205bfd70b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rtmp_start-response)))
  "Returns md5sum for a message object of type 'rtmp_start-response"
  "4b6f77a45b623c28a4a7ea205bfd70b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rtmp_start-response>)))
  "Returns full string definition for message of type '<rtmp_start-response>"
  (cl:format cl:nil "int8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rtmp_start-response)))
  "Returns full string definition for message of type 'rtmp_start-response"
  (cl:format cl:nil "int8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rtmp_start-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rtmp_start-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rtmp_start-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rtmp_start)))
  'rtmp_start-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rtmp_start)))
  'rtmp_start-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rtmp_start)))
  "Returns string type for a service object of type '<rtmp_start>"
  "roller_eye/rtmp_start")