; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude wifi_switch_ssid_key-request.msg.html

(cl:defclass <wifi_switch_ssid_key-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (ssid
    :reader ssid
    :initarg :ssid
    :type cl:string
    :initform "")
   (key
    :reader key
    :initarg :key
    :type cl:string
    :initform ""))
)

(cl:defclass wifi_switch_ssid_key-request (<wifi_switch_ssid_key-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wifi_switch_ssid_key-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wifi_switch_ssid_key-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<wifi_switch_ssid_key-request> is deprecated: use roller_eye-srv:wifi_switch_ssid_key-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <wifi_switch_ssid_key-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:mode-val is deprecated.  Use roller_eye-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'ssid-val :lambda-list '(m))
(cl:defmethod ssid-val ((m <wifi_switch_ssid_key-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:ssid-val is deprecated.  Use roller_eye-srv:ssid instead.")
  (ssid m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <wifi_switch_ssid_key-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:key-val is deprecated.  Use roller_eye-srv:key instead.")
  (key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wifi_switch_ssid_key-request>) ostream)
  "Serializes a message object of type '<wifi_switch_ssid_key-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ssid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ssid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wifi_switch_ssid_key-request>) istream)
  "Deserializes a message object of type '<wifi_switch_ssid_key-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ssid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ssid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wifi_switch_ssid_key-request>)))
  "Returns string type for a service object of type '<wifi_switch_ssid_key-request>"
  "roller_eye/wifi_switch_ssid_keyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_switch_ssid_key-request)))
  "Returns string type for a service object of type 'wifi_switch_ssid_key-request"
  "roller_eye/wifi_switch_ssid_keyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wifi_switch_ssid_key-request>)))
  "Returns md5sum for a message object of type '<wifi_switch_ssid_key-request>"
  "879dd501d4c8e7d6703c458f6fc7737c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wifi_switch_ssid_key-request)))
  "Returns md5sum for a message object of type 'wifi_switch_ssid_key-request"
  "879dd501d4c8e7d6703c458f6fc7737c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wifi_switch_ssid_key-request>)))
  "Returns full string definition for message of type '<wifi_switch_ssid_key-request>"
  (cl:format cl:nil "int8 mode~%string ssid~%string key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wifi_switch_ssid_key-request)))
  "Returns full string definition for message of type 'wifi_switch_ssid_key-request"
  (cl:format cl:nil "int8 mode~%string ssid~%string key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wifi_switch_ssid_key-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'ssid))
     4 (cl:length (cl:slot-value msg 'key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wifi_switch_ssid_key-request>))
  "Converts a ROS message object to a list"
  (cl:list 'wifi_switch_ssid_key-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':ssid (ssid msg))
    (cl:cons ':key (key msg))
))
;//! \htmlinclude wifi_switch_ssid_key-response.msg.html

(cl:defclass <wifi_switch_ssid_key-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass wifi_switch_ssid_key-response (<wifi_switch_ssid_key-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wifi_switch_ssid_key-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wifi_switch_ssid_key-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<wifi_switch_ssid_key-response> is deprecated: use roller_eye-srv:wifi_switch_ssid_key-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <wifi_switch_ssid_key-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:status-val is deprecated.  Use roller_eye-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wifi_switch_ssid_key-response>) ostream)
  "Serializes a message object of type '<wifi_switch_ssid_key-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wifi_switch_ssid_key-response>) istream)
  "Deserializes a message object of type '<wifi_switch_ssid_key-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wifi_switch_ssid_key-response>)))
  "Returns string type for a service object of type '<wifi_switch_ssid_key-response>"
  "roller_eye/wifi_switch_ssid_keyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_switch_ssid_key-response)))
  "Returns string type for a service object of type 'wifi_switch_ssid_key-response"
  "roller_eye/wifi_switch_ssid_keyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wifi_switch_ssid_key-response>)))
  "Returns md5sum for a message object of type '<wifi_switch_ssid_key-response>"
  "879dd501d4c8e7d6703c458f6fc7737c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wifi_switch_ssid_key-response)))
  "Returns md5sum for a message object of type 'wifi_switch_ssid_key-response"
  "879dd501d4c8e7d6703c458f6fc7737c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wifi_switch_ssid_key-response>)))
  "Returns full string definition for message of type '<wifi_switch_ssid_key-response>"
  (cl:format cl:nil "int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wifi_switch_ssid_key-response)))
  "Returns full string definition for message of type 'wifi_switch_ssid_key-response"
  (cl:format cl:nil "int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wifi_switch_ssid_key-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wifi_switch_ssid_key-response>))
  "Converts a ROS message object to a list"
  (cl:list 'wifi_switch_ssid_key-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'wifi_switch_ssid_key)))
  'wifi_switch_ssid_key-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'wifi_switch_ssid_key)))
  'wifi_switch_ssid_key-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_switch_ssid_key)))
  "Returns string type for a service object of type '<wifi_switch_ssid_key>"
  "roller_eye/wifi_switch_ssid_key")