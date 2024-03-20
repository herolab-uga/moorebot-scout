; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude wifi_switch_mode-request.msg.html

(cl:defclass <wifi_switch_mode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (kill
    :reader kill
    :initarg :kill
    :type cl:fixnum
    :initform 0))
)

(cl:defclass wifi_switch_mode-request (<wifi_switch_mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wifi_switch_mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wifi_switch_mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<wifi_switch_mode-request> is deprecated: use roller_eye-srv:wifi_switch_mode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <wifi_switch_mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:mode-val is deprecated.  Use roller_eye-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'kill-val :lambda-list '(m))
(cl:defmethod kill-val ((m <wifi_switch_mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:kill-val is deprecated.  Use roller_eye-srv:kill instead.")
  (kill m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wifi_switch_mode-request>) ostream)
  "Serializes a message object of type '<wifi_switch_mode-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kill)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wifi_switch_mode-request>) istream)
  "Deserializes a message object of type '<wifi_switch_mode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kill) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wifi_switch_mode-request>)))
  "Returns string type for a service object of type '<wifi_switch_mode-request>"
  "roller_eye/wifi_switch_modeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_switch_mode-request)))
  "Returns string type for a service object of type 'wifi_switch_mode-request"
  "roller_eye/wifi_switch_modeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wifi_switch_mode-request>)))
  "Returns md5sum for a message object of type '<wifi_switch_mode-request>"
  "106fdf359311f6beba452ddefdd87f1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wifi_switch_mode-request)))
  "Returns md5sum for a message object of type 'wifi_switch_mode-request"
  "106fdf359311f6beba452ddefdd87f1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wifi_switch_mode-request>)))
  "Returns full string definition for message of type '<wifi_switch_mode-request>"
  (cl:format cl:nil "int8 mode~%#0-don't 1-kill wifi_start_sta.sh 2-kill wifi_start_ap.sh~%int8 kill~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wifi_switch_mode-request)))
  "Returns full string definition for message of type 'wifi_switch_mode-request"
  (cl:format cl:nil "int8 mode~%#0-don't 1-kill wifi_start_sta.sh 2-kill wifi_start_ap.sh~%int8 kill~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wifi_switch_mode-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wifi_switch_mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'wifi_switch_mode-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':kill (kill msg))
))
;//! \htmlinclude wifi_switch_mode-response.msg.html

(cl:defclass <wifi_switch_mode-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass wifi_switch_mode-response (<wifi_switch_mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wifi_switch_mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wifi_switch_mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<wifi_switch_mode-response> is deprecated: use roller_eye-srv:wifi_switch_mode-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <wifi_switch_mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:status-val is deprecated.  Use roller_eye-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wifi_switch_mode-response>) ostream)
  "Serializes a message object of type '<wifi_switch_mode-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wifi_switch_mode-response>) istream)
  "Deserializes a message object of type '<wifi_switch_mode-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wifi_switch_mode-response>)))
  "Returns string type for a service object of type '<wifi_switch_mode-response>"
  "roller_eye/wifi_switch_modeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_switch_mode-response)))
  "Returns string type for a service object of type 'wifi_switch_mode-response"
  "roller_eye/wifi_switch_modeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wifi_switch_mode-response>)))
  "Returns md5sum for a message object of type '<wifi_switch_mode-response>"
  "106fdf359311f6beba452ddefdd87f1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wifi_switch_mode-response)))
  "Returns md5sum for a message object of type 'wifi_switch_mode-response"
  "106fdf359311f6beba452ddefdd87f1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wifi_switch_mode-response>)))
  "Returns full string definition for message of type '<wifi_switch_mode-response>"
  (cl:format cl:nil "int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wifi_switch_mode-response)))
  "Returns full string definition for message of type 'wifi_switch_mode-response"
  (cl:format cl:nil "int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wifi_switch_mode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wifi_switch_mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'wifi_switch_mode-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'wifi_switch_mode)))
  'wifi_switch_mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'wifi_switch_mode)))
  'wifi_switch_mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_switch_mode)))
  "Returns string type for a service object of type '<wifi_switch_mode>"
  "roller_eye/wifi_switch_mode")