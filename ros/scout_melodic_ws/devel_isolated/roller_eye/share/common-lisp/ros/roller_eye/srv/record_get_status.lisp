; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude record_get_status-request.msg.html

(cl:defclass <record_get_status-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass record_get_status-request (<record_get_status-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_get_status-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_get_status-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_get_status-request> is deprecated: use roller_eye-srv:record_get_status-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <record_get_status-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:type-val is deprecated.  Use roller_eye-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_get_status-request>) ostream)
  "Serializes a message object of type '<record_get_status-request>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_get_status-request>) istream)
  "Deserializes a message object of type '<record_get_status-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_get_status-request>)))
  "Returns string type for a service object of type '<record_get_status-request>"
  "roller_eye/record_get_statusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_status-request)))
  "Returns string type for a service object of type 'record_get_status-request"
  "roller_eye/record_get_statusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_get_status-request>)))
  "Returns md5sum for a message object of type '<record_get_status-request>"
  "2534c826460bf93cfe607a7e6b3bfe9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_get_status-request)))
  "Returns md5sum for a message object of type 'record_get_status-request"
  "2534c826460bf93cfe607a7e6b3bfe9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_get_status-request>)))
  "Returns full string definition for message of type '<record_get_status-request>"
  (cl:format cl:nil "# snapshot or record~%int8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_get_status-request)))
  "Returns full string definition for message of type 'record_get_status-request"
  (cl:format cl:nil "# snapshot or record~%int8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_get_status-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_get_status-request>))
  "Converts a ROS message object to a list"
  (cl:list 'record_get_status-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude record_get_status-response.msg.html

(cl:defclass <record_get_status-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass record_get_status-response (<record_get_status-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_get_status-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_get_status-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_get_status-response> is deprecated: use roller_eye-srv:record_get_status-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <record_get_status-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:status-val is deprecated.  Use roller_eye-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_get_status-response>) ostream)
  "Serializes a message object of type '<record_get_status-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_get_status-response>) istream)
  "Deserializes a message object of type '<record_get_status-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_get_status-response>)))
  "Returns string type for a service object of type '<record_get_status-response>"
  "roller_eye/record_get_statusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_status-response)))
  "Returns string type for a service object of type 'record_get_status-response"
  "roller_eye/record_get_statusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_get_status-response>)))
  "Returns md5sum for a message object of type '<record_get_status-response>"
  "2534c826460bf93cfe607a7e6b3bfe9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_get_status-response)))
  "Returns md5sum for a message object of type 'record_get_status-response"
  "2534c826460bf93cfe607a7e6b3bfe9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_get_status-response>)))
  "Returns full string definition for message of type '<record_get_status-response>"
  (cl:format cl:nil "int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_get_status-response)))
  "Returns full string definition for message of type 'record_get_status-response"
  (cl:format cl:nil "int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_get_status-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_get_status-response>))
  "Converts a ROS message object to a list"
  (cl:list 'record_get_status-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'record_get_status)))
  'record_get_status-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'record_get_status)))
  'record_get_status-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_status)))
  "Returns string type for a service object of type '<record_get_status>"
  "roller_eye/record_get_status")