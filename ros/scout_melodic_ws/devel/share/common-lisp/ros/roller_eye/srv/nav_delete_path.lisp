; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude nav_delete_path-request.msg.html

(cl:defclass <nav_delete_path-request> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass nav_delete_path-request (<nav_delete_path-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_delete_path-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_delete_path-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_delete_path-request> is deprecated: use roller_eye-srv:nav_delete_path-request instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <nav_delete_path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:names-val is deprecated.  Use roller_eye-srv:names instead.")
  (names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_delete_path-request>) ostream)
  "Serializes a message object of type '<nav_delete_path-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_delete_path-request>) istream)
  "Deserializes a message object of type '<nav_delete_path-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_delete_path-request>)))
  "Returns string type for a service object of type '<nav_delete_path-request>"
  "roller_eye/nav_delete_pathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_delete_path-request)))
  "Returns string type for a service object of type 'nav_delete_path-request"
  "roller_eye/nav_delete_pathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_delete_path-request>)))
  "Returns md5sum for a message object of type '<nav_delete_path-request>"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_delete_path-request)))
  "Returns md5sum for a message object of type 'nav_delete_path-request"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_delete_path-request>)))
  "Returns full string definition for message of type '<nav_delete_path-request>"
  (cl:format cl:nil "string[] names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_delete_path-request)))
  "Returns full string definition for message of type 'nav_delete_path-request"
  (cl:format cl:nil "string[] names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_delete_path-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_delete_path-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_delete_path-request
    (cl:cons ':names (names msg))
))
;//! \htmlinclude nav_delete_path-response.msg.html

(cl:defclass <nav_delete_path-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_delete_path-response (<nav_delete_path-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_delete_path-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_delete_path-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_delete_path-response> is deprecated: use roller_eye-srv:nav_delete_path-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_delete_path-response>) ostream)
  "Serializes a message object of type '<nav_delete_path-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_delete_path-response>) istream)
  "Deserializes a message object of type '<nav_delete_path-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_delete_path-response>)))
  "Returns string type for a service object of type '<nav_delete_path-response>"
  "roller_eye/nav_delete_pathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_delete_path-response)))
  "Returns string type for a service object of type 'nav_delete_path-response"
  "roller_eye/nav_delete_pathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_delete_path-response>)))
  "Returns md5sum for a message object of type '<nav_delete_path-response>"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_delete_path-response)))
  "Returns md5sum for a message object of type 'nav_delete_path-response"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_delete_path-response>)))
  "Returns full string definition for message of type '<nav_delete_path-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_delete_path-response)))
  "Returns full string definition for message of type 'nav_delete_path-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_delete_path-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_delete_path-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_delete_path-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_delete_path)))
  'nav_delete_path-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_delete_path)))
  'nav_delete_path-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_delete_path)))
  "Returns string type for a service object of type '<nav_delete_path>"
  "roller_eye/nav_delete_path")