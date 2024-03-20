; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude record_delete_file-request.msg.html

(cl:defclass <record_delete_file-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass record_delete_file-request (<record_delete_file-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_delete_file-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_delete_file-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_delete_file-request> is deprecated: use roller_eye-srv:record_delete_file-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <record_delete_file-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:id-val is deprecated.  Use roller_eye-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_delete_file-request>) ostream)
  "Serializes a message object of type '<record_delete_file-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_delete_file-request>) istream)
  "Deserializes a message object of type '<record_delete_file-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_delete_file-request>)))
  "Returns string type for a service object of type '<record_delete_file-request>"
  "roller_eye/record_delete_fileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_delete_file-request)))
  "Returns string type for a service object of type 'record_delete_file-request"
  "roller_eye/record_delete_fileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_delete_file-request>)))
  "Returns md5sum for a message object of type '<record_delete_file-request>"
  "d174aae7b527c51850235bfe2b29a33b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_delete_file-request)))
  "Returns md5sum for a message object of type 'record_delete_file-request"
  "d174aae7b527c51850235bfe2b29a33b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_delete_file-request>)))
  "Returns full string definition for message of type '<record_delete_file-request>"
  (cl:format cl:nil "#the id is used to indicate the record file~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_delete_file-request)))
  "Returns full string definition for message of type 'record_delete_file-request"
  (cl:format cl:nil "#the id is used to indicate the record file~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_delete_file-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_delete_file-request>))
  "Converts a ROS message object to a list"
  (cl:list 'record_delete_file-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude record_delete_file-response.msg.html

(cl:defclass <record_delete_file-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass record_delete_file-response (<record_delete_file-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_delete_file-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_delete_file-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_delete_file-response> is deprecated: use roller_eye-srv:record_delete_file-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <record_delete_file-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:status-val is deprecated.  Use roller_eye-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_delete_file-response>) ostream)
  "Serializes a message object of type '<record_delete_file-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_delete_file-response>) istream)
  "Deserializes a message object of type '<record_delete_file-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_delete_file-response>)))
  "Returns string type for a service object of type '<record_delete_file-response>"
  "roller_eye/record_delete_fileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_delete_file-response)))
  "Returns string type for a service object of type 'record_delete_file-response"
  "roller_eye/record_delete_fileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_delete_file-response>)))
  "Returns md5sum for a message object of type '<record_delete_file-response>"
  "d174aae7b527c51850235bfe2b29a33b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_delete_file-response)))
  "Returns md5sum for a message object of type 'record_delete_file-response"
  "d174aae7b527c51850235bfe2b29a33b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_delete_file-response>)))
  "Returns full string definition for message of type '<record_delete_file-response>"
  (cl:format cl:nil "int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_delete_file-response)))
  "Returns full string definition for message of type 'record_delete_file-response"
  (cl:format cl:nil "int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_delete_file-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_delete_file-response>))
  "Converts a ROS message object to a list"
  (cl:list 'record_delete_file-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'record_delete_file)))
  'record_delete_file-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'record_delete_file)))
  'record_delete_file-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_delete_file)))
  "Returns string type for a service object of type '<record_delete_file>"
  "roller_eye/record_delete_file")