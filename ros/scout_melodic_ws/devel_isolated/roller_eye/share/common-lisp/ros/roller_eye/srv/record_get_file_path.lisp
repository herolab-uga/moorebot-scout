; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude record_get_file_path-request.msg.html

(cl:defclass <record_get_file_path-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass record_get_file_path-request (<record_get_file_path-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_get_file_path-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_get_file_path-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_get_file_path-request> is deprecated: use roller_eye-srv:record_get_file_path-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <record_get_file_path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:id-val is deprecated.  Use roller_eye-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_get_file_path-request>) ostream)
  "Serializes a message object of type '<record_get_file_path-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_get_file_path-request>) istream)
  "Deserializes a message object of type '<record_get_file_path-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_get_file_path-request>)))
  "Returns string type for a service object of type '<record_get_file_path-request>"
  "roller_eye/record_get_file_pathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_file_path-request)))
  "Returns string type for a service object of type 'record_get_file_path-request"
  "roller_eye/record_get_file_pathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_get_file_path-request>)))
  "Returns md5sum for a message object of type '<record_get_file_path-request>"
  "73ce38f5a1056a6317ab86498f7bf007")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_get_file_path-request)))
  "Returns md5sum for a message object of type 'record_get_file_path-request"
  "73ce38f5a1056a6317ab86498f7bf007")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_get_file_path-request>)))
  "Returns full string definition for message of type '<record_get_file_path-request>"
  (cl:format cl:nil " #the id is used to indicate the record file~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_get_file_path-request)))
  "Returns full string definition for message of type 'record_get_file_path-request"
  (cl:format cl:nil " #the id is used to indicate the record file~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_get_file_path-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_get_file_path-request>))
  "Converts a ROS message object to a list"
  (cl:list 'record_get_file_path-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude record_get_file_path-response.msg.html

(cl:defclass <record_get_file_path-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass record_get_file_path-response (<record_get_file_path-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_get_file_path-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_get_file_path-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_get_file_path-response> is deprecated: use roller_eye-srv:record_get_file_path-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <record_get_file_path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:path-val is deprecated.  Use roller_eye-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_get_file_path-response>) ostream)
  "Serializes a message object of type '<record_get_file_path-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_get_file_path-response>) istream)
  "Deserializes a message object of type '<record_get_file_path-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_get_file_path-response>)))
  "Returns string type for a service object of type '<record_get_file_path-response>"
  "roller_eye/record_get_file_pathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_file_path-response)))
  "Returns string type for a service object of type 'record_get_file_path-response"
  "roller_eye/record_get_file_pathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_get_file_path-response>)))
  "Returns md5sum for a message object of type '<record_get_file_path-response>"
  "73ce38f5a1056a6317ab86498f7bf007")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_get_file_path-response)))
  "Returns md5sum for a message object of type 'record_get_file_path-response"
  "73ce38f5a1056a6317ab86498f7bf007")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_get_file_path-response>)))
  "Returns full string definition for message of type '<record_get_file_path-response>"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_get_file_path-response)))
  "Returns full string definition for message of type 'record_get_file_path-response"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_get_file_path-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_get_file_path-response>))
  "Converts a ROS message object to a list"
  (cl:list 'record_get_file_path-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'record_get_file_path)))
  'record_get_file_path-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'record_get_file_path)))
  'record_get_file_path-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_file_path)))
  "Returns string type for a service object of type '<record_get_file_path>"
  "roller_eye/record_get_file_path")