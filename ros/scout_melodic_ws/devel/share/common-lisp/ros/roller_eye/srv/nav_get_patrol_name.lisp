; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude nav_get_patrol_name-request.msg.html

(cl:defclass <nav_get_patrol_name-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_get_patrol_name-request (<nav_get_patrol_name-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_get_patrol_name-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_get_patrol_name-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_get_patrol_name-request> is deprecated: use roller_eye-srv:nav_get_patrol_name-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_get_patrol_name-request>) ostream)
  "Serializes a message object of type '<nav_get_patrol_name-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_get_patrol_name-request>) istream)
  "Deserializes a message object of type '<nav_get_patrol_name-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_get_patrol_name-request>)))
  "Returns string type for a service object of type '<nav_get_patrol_name-request>"
  "roller_eye/nav_get_patrol_nameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_get_patrol_name-request)))
  "Returns string type for a service object of type 'nav_get_patrol_name-request"
  "roller_eye/nav_get_patrol_nameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_get_patrol_name-request>)))
  "Returns md5sum for a message object of type '<nav_get_patrol_name-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_get_patrol_name-request)))
  "Returns md5sum for a message object of type 'nav_get_patrol_name-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_get_patrol_name-request>)))
  "Returns full string definition for message of type '<nav_get_patrol_name-request>"
  (cl:format cl:nil " #get patrol path name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_get_patrol_name-request)))
  "Returns full string definition for message of type 'nav_get_patrol_name-request"
  (cl:format cl:nil " #get patrol path name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_get_patrol_name-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_get_patrol_name-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_get_patrol_name-request
))
;//! \htmlinclude nav_get_patrol_name-response.msg.html

(cl:defclass <nav_get_patrol_name-response> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass nav_get_patrol_name-response (<nav_get_patrol_name-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_get_patrol_name-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_get_patrol_name-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_get_patrol_name-response> is deprecated: use roller_eye-srv:nav_get_patrol_name-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <nav_get_patrol_name-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:name-val is deprecated.  Use roller_eye-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_get_patrol_name-response>) ostream)
  "Serializes a message object of type '<nav_get_patrol_name-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_get_patrol_name-response>) istream)
  "Deserializes a message object of type '<nav_get_patrol_name-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_get_patrol_name-response>)))
  "Returns string type for a service object of type '<nav_get_patrol_name-response>"
  "roller_eye/nav_get_patrol_nameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_get_patrol_name-response)))
  "Returns string type for a service object of type 'nav_get_patrol_name-response"
  "roller_eye/nav_get_patrol_nameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_get_patrol_name-response>)))
  "Returns md5sum for a message object of type '<nav_get_patrol_name-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_get_patrol_name-response)))
  "Returns md5sum for a message object of type 'nav_get_patrol_name-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_get_patrol_name-response>)))
  "Returns full string definition for message of type '<nav_get_patrol_name-response>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_get_patrol_name-response)))
  "Returns full string definition for message of type 'nav_get_patrol_name-response"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_get_patrol_name-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_get_patrol_name-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_get_patrol_name-response
    (cl:cons ':name (name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_get_patrol_name)))
  'nav_get_patrol_name-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_get_patrol_name)))
  'nav_get_patrol_name-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_get_patrol_name)))
  "Returns string type for a service object of type '<nav_get_patrol_name>"
  "roller_eye/nav_get_patrol_name")