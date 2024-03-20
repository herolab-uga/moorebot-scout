; Auto-generated. Do not edit!


(cl:in-package roller_eye-msg)


;//! \htmlinclude wifi_config_info.msg.html

(cl:defclass <wifi_config_info> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (ssid
    :reader ssid
    :initarg :ssid
    :type cl:string
    :initform ""))
)

(cl:defclass wifi_config_info (<wifi_config_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wifi_config_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wifi_config_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-msg:<wifi_config_info> is deprecated: use roller_eye-msg:wifi_config_info instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <wifi_config_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:cmd-val is deprecated.  Use roller_eye-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'ssid-val :lambda-list '(m))
(cl:defmethod ssid-val ((m <wifi_config_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:ssid-val is deprecated.  Use roller_eye-msg:ssid instead.")
  (ssid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wifi_config_info>) ostream)
  "Serializes a message object of type '<wifi_config_info>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ssid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ssid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wifi_config_info>) istream)
  "Deserializes a message object of type '<wifi_config_info>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ssid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ssid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wifi_config_info>)))
  "Returns string type for a message object of type '<wifi_config_info>"
  "roller_eye/wifi_config_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_config_info)))
  "Returns string type for a message object of type 'wifi_config_info"
  "roller_eye/wifi_config_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wifi_config_info>)))
  "Returns md5sum for a message object of type '<wifi_config_info>"
  "771488fba0e3eb08451a186125ca6c2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wifi_config_info)))
  "Returns md5sum for a message object of type 'wifi_config_info"
  "771488fba0e3eb08451a186125ca6c2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wifi_config_info>)))
  "Returns full string definition for message of type '<wifi_config_info>"
  (cl:format cl:nil "#cmd: 0-start, 1- config success, 2-config failure~%int8    cmd~%string ssid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wifi_config_info)))
  "Returns full string definition for message of type 'wifi_config_info"
  (cl:format cl:nil "#cmd: 0-start, 1- config success, 2-config failure~%int8    cmd~%string ssid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wifi_config_info>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'ssid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wifi_config_info>))
  "Converts a ROS message object to a list"
  (cl:list 'wifi_config_info
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':ssid (ssid msg))
))
