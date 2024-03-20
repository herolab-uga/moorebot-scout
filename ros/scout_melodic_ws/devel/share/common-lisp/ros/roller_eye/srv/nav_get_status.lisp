; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude nav_get_status-request.msg.html

(cl:defclass <nav_get_status-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_get_status-request (<nav_get_status-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_get_status-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_get_status-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_get_status-request> is deprecated: use roller_eye-srv:nav_get_status-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_get_status-request>) ostream)
  "Serializes a message object of type '<nav_get_status-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_get_status-request>) istream)
  "Deserializes a message object of type '<nav_get_status-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_get_status-request>)))
  "Returns string type for a service object of type '<nav_get_status-request>"
  "roller_eye/nav_get_statusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_get_status-request)))
  "Returns string type for a service object of type 'nav_get_status-request"
  "roller_eye/nav_get_statusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_get_status-request>)))
  "Returns md5sum for a message object of type '<nav_get_status-request>"
  "86791dcf1de997ec7de5a0de7e4dcfcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_get_status-request)))
  "Returns md5sum for a message object of type 'nav_get_status-request"
  "86791dcf1de997ec7de5a0de7e4dcfcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_get_status-request>)))
  "Returns full string definition for message of type '<nav_get_status-request>"
  (cl:format cl:nil " #get nav status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_get_status-request)))
  "Returns full string definition for message of type 'nav_get_status-request"
  (cl:format cl:nil " #get nav status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_get_status-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_get_status-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_get_status-request
))
;//! \htmlinclude nav_get_status-response.msg.html

(cl:defclass <nav_get_status-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass nav_get_status-response (<nav_get_status-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_get_status-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_get_status-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_get_status-response> is deprecated: use roller_eye-srv:nav_get_status-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <nav_get_status-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:status-val is deprecated.  Use roller_eye-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_get_status-response>) ostream)
  "Serializes a message object of type '<nav_get_status-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_get_status-response>) istream)
  "Deserializes a message object of type '<nav_get_status-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_get_status-response>)))
  "Returns string type for a service object of type '<nav_get_status-response>"
  "roller_eye/nav_get_statusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_get_status-response)))
  "Returns string type for a service object of type 'nav_get_status-response"
  "roller_eye/nav_get_statusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_get_status-response>)))
  "Returns md5sum for a message object of type '<nav_get_status-response>"
  "86791dcf1de997ec7de5a0de7e4dcfcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_get_status-response)))
  "Returns md5sum for a message object of type 'nav_get_status-response"
  "86791dcf1de997ec7de5a0de7e4dcfcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_get_status-response>)))
  "Returns full string definition for message of type '<nav_get_status-response>"
  (cl:format cl:nil "int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_get_status-response)))
  "Returns full string definition for message of type 'nav_get_status-response"
  (cl:format cl:nil "int32 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_get_status-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_get_status-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_get_status-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_get_status)))
  'nav_get_status-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_get_status)))
  'nav_get_status-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_get_status)))
  "Returns string type for a service object of type '<nav_get_status>"
  "roller_eye/nav_get_status")