; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude video_set_resolution-request.msg.html

(cl:defclass <video_set_resolution-request> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0))
)

(cl:defclass video_set_resolution-request (<video_set_resolution-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <video_set_resolution-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'video_set_resolution-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<video_set_resolution-request> is deprecated: use roller_eye-srv:video_set_resolution-request instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <video_set_resolution-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:width-val is deprecated.  Use roller_eye-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <video_set_resolution-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:height-val is deprecated.  Use roller_eye-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <video_set_resolution-request>) ostream)
  "Serializes a message object of type '<video_set_resolution-request>"
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <video_set_resolution-request>) istream)
  "Deserializes a message object of type '<video_set_resolution-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<video_set_resolution-request>)))
  "Returns string type for a service object of type '<video_set_resolution-request>"
  "roller_eye/video_set_resolutionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'video_set_resolution-request)))
  "Returns string type for a service object of type 'video_set_resolution-request"
  "roller_eye/video_set_resolutionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<video_set_resolution-request>)))
  "Returns md5sum for a message object of type '<video_set_resolution-request>"
  "4a2f7cfc95568599234b2a56d5a21730")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'video_set_resolution-request)))
  "Returns md5sum for a message object of type 'video_set_resolution-request"
  "4a2f7cfc95568599234b2a56d5a21730")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<video_set_resolution-request>)))
  "Returns full string definition for message of type '<video_set_resolution-request>"
  (cl:format cl:nil "int32 width~%int32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'video_set_resolution-request)))
  "Returns full string definition for message of type 'video_set_resolution-request"
  (cl:format cl:nil "int32 width~%int32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <video_set_resolution-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <video_set_resolution-request>))
  "Converts a ROS message object to a list"
  (cl:list 'video_set_resolution-request
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
;//! \htmlinclude video_set_resolution-response.msg.html

(cl:defclass <video_set_resolution-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass video_set_resolution-response (<video_set_resolution-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <video_set_resolution-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'video_set_resolution-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<video_set_resolution-response> is deprecated: use roller_eye-srv:video_set_resolution-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <video_set_resolution-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:status-val is deprecated.  Use roller_eye-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <video_set_resolution-response>) ostream)
  "Serializes a message object of type '<video_set_resolution-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <video_set_resolution-response>) istream)
  "Deserializes a message object of type '<video_set_resolution-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<video_set_resolution-response>)))
  "Returns string type for a service object of type '<video_set_resolution-response>"
  "roller_eye/video_set_resolutionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'video_set_resolution-response)))
  "Returns string type for a service object of type 'video_set_resolution-response"
  "roller_eye/video_set_resolutionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<video_set_resolution-response>)))
  "Returns md5sum for a message object of type '<video_set_resolution-response>"
  "4a2f7cfc95568599234b2a56d5a21730")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'video_set_resolution-response)))
  "Returns md5sum for a message object of type 'video_set_resolution-response"
  "4a2f7cfc95568599234b2a56d5a21730")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<video_set_resolution-response>)))
  "Returns full string definition for message of type '<video_set_resolution-response>"
  (cl:format cl:nil "int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'video_set_resolution-response)))
  "Returns full string definition for message of type 'video_set_resolution-response"
  (cl:format cl:nil "int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <video_set_resolution-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <video_set_resolution-response>))
  "Converts a ROS message object to a list"
  (cl:list 'video_set_resolution-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'video_set_resolution)))
  'video_set_resolution-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'video_set_resolution)))
  'video_set_resolution-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'video_set_resolution)))
  "Returns string type for a service object of type '<video_set_resolution>"
  "roller_eye/video_set_resolution")