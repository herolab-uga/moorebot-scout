; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude record_get_file_num-request.msg.html

(cl:defclass <record_get_file_num-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass record_get_file_num-request (<record_get_file_num-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_get_file_num-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_get_file_num-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_get_file_num-request> is deprecated: use roller_eye-srv:record_get_file_num-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <record_get_file_num-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:type-val is deprecated.  Use roller_eye-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_get_file_num-request>) ostream)
  "Serializes a message object of type '<record_get_file_num-request>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_get_file_num-request>) istream)
  "Deserializes a message object of type '<record_get_file_num-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_get_file_num-request>)))
  "Returns string type for a service object of type '<record_get_file_num-request>"
  "roller_eye/record_get_file_numRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_file_num-request)))
  "Returns string type for a service object of type 'record_get_file_num-request"
  "roller_eye/record_get_file_numRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_get_file_num-request>)))
  "Returns md5sum for a message object of type '<record_get_file_num-request>"
  "512c7fac39aff0618cf82eac01aae055")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_get_file_num-request)))
  "Returns md5sum for a message object of type 'record_get_file_num-request"
  "512c7fac39aff0618cf82eac01aae055")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_get_file_num-request>)))
  "Returns full string definition for message of type '<record_get_file_num-request>"
  (cl:format cl:nil "# snapshot or record~%int8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_get_file_num-request)))
  "Returns full string definition for message of type 'record_get_file_num-request"
  (cl:format cl:nil "# snapshot or record~%int8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_get_file_num-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_get_file_num-request>))
  "Converts a ROS message object to a list"
  (cl:list 'record_get_file_num-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude record_get_file_num-response.msg.html

(cl:defclass <record_get_file_num-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass record_get_file_num-response (<record_get_file_num-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_get_file_num-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_get_file_num-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_get_file_num-response> is deprecated: use roller_eye-srv:record_get_file_num-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <record_get_file_num-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:count-val is deprecated.  Use roller_eye-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_get_file_num-response>) ostream)
  "Serializes a message object of type '<record_get_file_num-response>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_get_file_num-response>) istream)
  "Deserializes a message object of type '<record_get_file_num-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_get_file_num-response>)))
  "Returns string type for a service object of type '<record_get_file_num-response>"
  "roller_eye/record_get_file_numResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_file_num-response)))
  "Returns string type for a service object of type 'record_get_file_num-response"
  "roller_eye/record_get_file_numResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_get_file_num-response>)))
  "Returns md5sum for a message object of type '<record_get_file_num-response>"
  "512c7fac39aff0618cf82eac01aae055")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_get_file_num-response)))
  "Returns md5sum for a message object of type 'record_get_file_num-response"
  "512c7fac39aff0618cf82eac01aae055")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_get_file_num-response>)))
  "Returns full string definition for message of type '<record_get_file_num-response>"
  (cl:format cl:nil "int32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_get_file_num-response)))
  "Returns full string definition for message of type 'record_get_file_num-response"
  (cl:format cl:nil "int32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_get_file_num-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_get_file_num-response>))
  "Converts a ROS message object to a list"
  (cl:list 'record_get_file_num-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'record_get_file_num)))
  'record_get_file_num-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'record_get_file_num)))
  'record_get_file_num-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_file_num)))
  "Returns string type for a service object of type '<record_get_file_num>"
  "roller_eye/record_get_file_num")