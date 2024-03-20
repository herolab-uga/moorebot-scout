; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude record_clean-request.msg.html

(cl:defclass <record_clean-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass record_clean-request (<record_clean-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_clean-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_clean-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_clean-request> is deprecated: use roller_eye-srv:record_clean-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <record_clean-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:type-val is deprecated.  Use roller_eye-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_clean-request>) ostream)
  "Serializes a message object of type '<record_clean-request>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_clean-request>) istream)
  "Deserializes a message object of type '<record_clean-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_clean-request>)))
  "Returns string type for a service object of type '<record_clean-request>"
  "roller_eye/record_cleanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_clean-request)))
  "Returns string type for a service object of type 'record_clean-request"
  "roller_eye/record_cleanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_clean-request>)))
  "Returns md5sum for a message object of type '<record_clean-request>"
  "bda37decd5e3814bcc042f341d2e60a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_clean-request)))
  "Returns md5sum for a message object of type 'record_clean-request"
  "bda37decd5e3814bcc042f341d2e60a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_clean-request>)))
  "Returns full string definition for message of type '<record_clean-request>"
  (cl:format cl:nil "int32 type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_clean-request)))
  "Returns full string definition for message of type 'record_clean-request"
  (cl:format cl:nil "int32 type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_clean-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_clean-request>))
  "Converts a ROS message object to a list"
  (cl:list 'record_clean-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude record_clean-response.msg.html

(cl:defclass <record_clean-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass record_clean-response (<record_clean-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_clean-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_clean-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_clean-response> is deprecated: use roller_eye-srv:record_clean-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_clean-response>) ostream)
  "Serializes a message object of type '<record_clean-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_clean-response>) istream)
  "Deserializes a message object of type '<record_clean-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_clean-response>)))
  "Returns string type for a service object of type '<record_clean-response>"
  "roller_eye/record_cleanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_clean-response)))
  "Returns string type for a service object of type 'record_clean-response"
  "roller_eye/record_cleanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_clean-response>)))
  "Returns md5sum for a message object of type '<record_clean-response>"
  "bda37decd5e3814bcc042f341d2e60a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_clean-response)))
  "Returns md5sum for a message object of type 'record_clean-response"
  "bda37decd5e3814bcc042f341d2e60a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_clean-response>)))
  "Returns full string definition for message of type '<record_clean-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_clean-response)))
  "Returns full string definition for message of type 'record_clean-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_clean-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_clean-response>))
  "Converts a ROS message object to a list"
  (cl:list 'record_clean-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'record_clean)))
  'record_clean-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'record_clean)))
  'record_clean-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_clean)))
  "Returns string type for a service object of type '<record_clean>"
  "roller_eye/record_clean")