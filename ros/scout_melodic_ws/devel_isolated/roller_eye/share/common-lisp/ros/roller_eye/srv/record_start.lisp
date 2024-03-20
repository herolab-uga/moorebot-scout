; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude record_start-request.msg.html

(cl:defclass <record_start-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0)
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass record_start-request (<record_start-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_start-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_start-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_start-request> is deprecated: use roller_eye-srv:record_start-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <record_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:type-val is deprecated.  Use roller_eye-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <record_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:mode-val is deprecated.  Use roller_eye-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <record_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:duration-val is deprecated.  Use roller_eye-srv:duration instead.")
  (duration m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <record_start-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:count-val is deprecated.  Use roller_eye-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_start-request>) ostream)
  "Serializes a message object of type '<record_start-request>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'duration)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_start-request>) istream)
  "Deserializes a message object of type '<record_start-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_start-request>)))
  "Returns string type for a service object of type '<record_start-request>"
  "roller_eye/record_startRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_start-request)))
  "Returns string type for a service object of type 'record_start-request"
  "roller_eye/record_startRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_start-request>)))
  "Returns md5sum for a message object of type '<record_start-request>"
  "dcee8cdcb7a021562b0a24a30cc43016")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_start-request)))
  "Returns md5sum for a message object of type 'record_start-request"
  "dcee8cdcb7a021562b0a24a30cc43016")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_start-request>)))
  "Returns full string definition for message of type '<record_start-request>"
  (cl:format cl:nil "# snapshot or record~%int8 type~%int8 mode~%uint32 duration~%int32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_start-request)))
  "Returns full string definition for message of type 'record_start-request"
  (cl:format cl:nil "# snapshot or record~%int8 type~%int8 mode~%uint32 duration~%int32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_start-request>))
  (cl:+ 0
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_start-request>))
  "Converts a ROS message object to a list"
  (cl:list 'record_start-request
    (cl:cons ':type (type msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':count (count msg))
))
;//! \htmlinclude record_start-response.msg.html

(cl:defclass <record_start-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass record_start-response (<record_start-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_start-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_start-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_start-response> is deprecated: use roller_eye-srv:record_start-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <record_start-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:status-val is deprecated.  Use roller_eye-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <record_start-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:id-val is deprecated.  Use roller_eye-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_start-response>) ostream)
  "Serializes a message object of type '<record_start-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_start-response>) istream)
  "Deserializes a message object of type '<record_start-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_start-response>)))
  "Returns string type for a service object of type '<record_start-response>"
  "roller_eye/record_startResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_start-response)))
  "Returns string type for a service object of type 'record_start-response"
  "roller_eye/record_startResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_start-response>)))
  "Returns md5sum for a message object of type '<record_start-response>"
  "dcee8cdcb7a021562b0a24a30cc43016")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_start-response)))
  "Returns md5sum for a message object of type 'record_start-response"
  "dcee8cdcb7a021562b0a24a30cc43016")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_start-response>)))
  "Returns full string definition for message of type '<record_start-response>"
  (cl:format cl:nil "int8 status~%#the id is used to indicate the record file~%string id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_start-response)))
  "Returns full string definition for message of type 'record_start-response"
  (cl:format cl:nil "int8 status~%#the id is used to indicate the record file~%string id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_start-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_start-response>))
  "Converts a ROS message object to a list"
  (cl:list 'record_start-response
    (cl:cons ':status (status msg))
    (cl:cons ':id (id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'record_start)))
  'record_start-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'record_start)))
  'record_start-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_start)))
  "Returns string type for a service object of type '<record_start>"
  "roller_eye/record_start")