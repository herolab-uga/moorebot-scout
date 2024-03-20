; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude nav_path_save-request.msg.html

(cl:defclass <nav_path_save-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass nav_path_save-request (<nav_path_save-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_path_save-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_path_save-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_path_save-request> is deprecated: use roller_eye-srv:nav_path_save-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <nav_path_save-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:name-val is deprecated.  Use roller_eye-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_path_save-request>) ostream)
  "Serializes a message object of type '<nav_path_save-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_path_save-request>) istream)
  "Deserializes a message object of type '<nav_path_save-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_path_save-request>)))
  "Returns string type for a service object of type '<nav_path_save-request>"
  "roller_eye/nav_path_saveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_path_save-request)))
  "Returns string type for a service object of type 'nav_path_save-request"
  "roller_eye/nav_path_saveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_path_save-request>)))
  "Returns md5sum for a message object of type '<nav_path_save-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_path_save-request)))
  "Returns md5sum for a message object of type 'nav_path_save-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_path_save-request>)))
  "Returns full string definition for message of type '<nav_path_save-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_path_save-request)))
  "Returns full string definition for message of type 'nav_path_save-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_path_save-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_path_save-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_path_save-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude nav_path_save-response.msg.html

(cl:defclass <nav_path_save-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_path_save-response (<nav_path_save-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_path_save-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_path_save-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_path_save-response> is deprecated: use roller_eye-srv:nav_path_save-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_path_save-response>) ostream)
  "Serializes a message object of type '<nav_path_save-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_path_save-response>) istream)
  "Deserializes a message object of type '<nav_path_save-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_path_save-response>)))
  "Returns string type for a service object of type '<nav_path_save-response>"
  "roller_eye/nav_path_saveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_path_save-response)))
  "Returns string type for a service object of type 'nav_path_save-response"
  "roller_eye/nav_path_saveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_path_save-response>)))
  "Returns md5sum for a message object of type '<nav_path_save-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_path_save-response)))
  "Returns md5sum for a message object of type 'nav_path_save-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_path_save-response>)))
  "Returns full string definition for message of type '<nav_path_save-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_path_save-response)))
  "Returns full string definition for message of type 'nav_path_save-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_path_save-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_path_save-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_path_save-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_path_save)))
  'nav_path_save-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_path_save)))
  'nav_path_save-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_path_save)))
  "Returns string type for a service object of type '<nav_path_save>"
  "roller_eye/nav_path_save")