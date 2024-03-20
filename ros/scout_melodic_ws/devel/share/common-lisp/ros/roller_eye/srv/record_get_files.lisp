; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude record_get_files-request.msg.html

(cl:defclass <record_get_files-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (start
    :reader start
    :initarg :start
    :type cl:integer
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass record_get_files-request (<record_get_files-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_get_files-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_get_files-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_get_files-request> is deprecated: use roller_eye-srv:record_get_files-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <record_get_files-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:type-val is deprecated.  Use roller_eye-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <record_get_files-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:id-val is deprecated.  Use roller_eye-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <record_get_files-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:start-val is deprecated.  Use roller_eye-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <record_get_files-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:size-val is deprecated.  Use roller_eye-srv:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_get_files-request>) ostream)
  "Serializes a message object of type '<record_get_files-request>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let* ((signed (cl:slot-value msg 'start)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_get_files-request>) istream)
  "Deserializes a message object of type '<record_get_files-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_get_files-request>)))
  "Returns string type for a service object of type '<record_get_files-request>"
  "roller_eye/record_get_filesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_files-request)))
  "Returns string type for a service object of type 'record_get_files-request"
  "roller_eye/record_get_filesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_get_files-request>)))
  "Returns md5sum for a message object of type '<record_get_files-request>"
  "75b0c1893df243a157454eb4b9a2c1ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_get_files-request)))
  "Returns md5sum for a message object of type 'record_get_files-request"
  "75b0c1893df243a157454eb4b9a2c1ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_get_files-request>)))
  "Returns full string definition for message of type '<record_get_files-request>"
  (cl:format cl:nil "# snapshot or record~%int8 type~%string id~%int32 start~%int32 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_get_files-request)))
  "Returns full string definition for message of type 'record_get_files-request"
  (cl:format cl:nil "# snapshot or record~%int8 type~%string id~%int32 start~%int32 size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_get_files-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'id))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_get_files-request>))
  "Converts a ROS message object to a list"
  (cl:list 'record_get_files-request
    (cl:cons ':type (type msg))
    (cl:cons ':id (id msg))
    (cl:cons ':start (start msg))
    (cl:cons ':size (size msg))
))
;//! \htmlinclude record_get_files-response.msg.html

(cl:defclass <record_get_files-response> (roslisp-msg-protocol:ros-message)
  ((files
    :reader files
    :initarg :files
    :type (cl:vector roller_eye-msg:record)
   :initform (cl:make-array 0 :element-type 'roller_eye-msg:record :initial-element (cl:make-instance 'roller_eye-msg:record))))
)

(cl:defclass record_get_files-response (<record_get_files-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record_get_files-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record_get_files-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<record_get_files-response> is deprecated: use roller_eye-srv:record_get_files-response instead.")))

(cl:ensure-generic-function 'files-val :lambda-list '(m))
(cl:defmethod files-val ((m <record_get_files-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:files-val is deprecated.  Use roller_eye-srv:files instead.")
  (files m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record_get_files-response>) ostream)
  "Serializes a message object of type '<record_get_files-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'files))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'files))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record_get_files-response>) istream)
  "Deserializes a message object of type '<record_get_files-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'files) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'files)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roller_eye-msg:record))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record_get_files-response>)))
  "Returns string type for a service object of type '<record_get_files-response>"
  "roller_eye/record_get_filesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_files-response)))
  "Returns string type for a service object of type 'record_get_files-response"
  "roller_eye/record_get_filesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record_get_files-response>)))
  "Returns md5sum for a message object of type '<record_get_files-response>"
  "75b0c1893df243a157454eb4b9a2c1ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record_get_files-response)))
  "Returns md5sum for a message object of type 'record_get_files-response"
  "75b0c1893df243a157454eb4b9a2c1ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record_get_files-response>)))
  "Returns full string definition for message of type '<record_get_files-response>"
  (cl:format cl:nil "record[] files~%~%================================================================================~%MSG: roller_eye/record~%int8 RECORD_TYPE_ALL=0~%int8 RECORD_TYPE_SNAPSHOT=1~%int8 RECORD_TYPE_RECORD=2~%int8 RECORD_TYPE_THUMB=3~%int8 RECORD_TYPE_SCHED_RECORD=4~%~%#record file descriptor~%string id~%string name~%uint32 dur~%int8 type~%time create~%uint32 size~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record_get_files-response)))
  "Returns full string definition for message of type 'record_get_files-response"
  (cl:format cl:nil "record[] files~%~%================================================================================~%MSG: roller_eye/record~%int8 RECORD_TYPE_ALL=0~%int8 RECORD_TYPE_SNAPSHOT=1~%int8 RECORD_TYPE_RECORD=2~%int8 RECORD_TYPE_THUMB=3~%int8 RECORD_TYPE_SCHED_RECORD=4~%~%#record file descriptor~%string id~%string name~%uint32 dur~%int8 type~%time create~%uint32 size~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record_get_files-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'files) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record_get_files-response>))
  "Converts a ROS message object to a list"
  (cl:list 'record_get_files-response
    (cl:cons ':files (files msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'record_get_files)))
  'record_get_files-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'record_get_files)))
  'record_get_files-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record_get_files)))
  "Returns string type for a service object of type '<record_get_files>"
  "roller_eye/record_get_files")