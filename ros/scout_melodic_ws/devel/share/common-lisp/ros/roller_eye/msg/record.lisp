; Auto-generated. Do not edit!


(cl:in-package roller_eye-msg)


;//! \htmlinclude record.msg.html

(cl:defclass <record> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (dur
    :reader dur
    :initarg :dur
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (create
    :reader create
    :initarg :create
    :type cl:real
    :initform 0)
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0))
)

(cl:defclass record (<record>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <record>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'record)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-msg:<record> is deprecated: use roller_eye-msg:record instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <record>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:id-val is deprecated.  Use roller_eye-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <record>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:name-val is deprecated.  Use roller_eye-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'dur-val :lambda-list '(m))
(cl:defmethod dur-val ((m <record>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:dur-val is deprecated.  Use roller_eye-msg:dur instead.")
  (dur m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <record>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:type-val is deprecated.  Use roller_eye-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'create-val :lambda-list '(m))
(cl:defmethod create-val ((m <record>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:create-val is deprecated.  Use roller_eye-msg:create instead.")
  (create m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <record>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:size-val is deprecated.  Use roller_eye-msg:size instead.")
  (size m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<record>)))
    "Constants for message type '<record>"
  '((:RECORD_TYPE_ALL . 0)
    (:RECORD_TYPE_SNAPSHOT . 1)
    (:RECORD_TYPE_RECORD . 2)
    (:RECORD_TYPE_THUMB . 3)
    (:RECORD_TYPE_SCHED_RECORD . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'record)))
    "Constants for message type 'record"
  '((:RECORD_TYPE_ALL . 0)
    (:RECORD_TYPE_SNAPSHOT . 1)
    (:RECORD_TYPE_RECORD . 2)
    (:RECORD_TYPE_THUMB . 3)
    (:RECORD_TYPE_SCHED_RECORD . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <record>) ostream)
  "Serializes a message object of type '<record>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dur)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dur)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'create)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'create) (cl:floor (cl:slot-value msg 'create)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <record>) istream)
  "Deserializes a message object of type '<record>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dur)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dur)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'create) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<record>)))
  "Returns string type for a message object of type '<record>"
  "roller_eye/record")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'record)))
  "Returns string type for a message object of type 'record"
  "roller_eye/record")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<record>)))
  "Returns md5sum for a message object of type '<record>"
  "544f18c422ce92fad9c49fbb341e07c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'record)))
  "Returns md5sum for a message object of type 'record"
  "544f18c422ce92fad9c49fbb341e07c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<record>)))
  "Returns full string definition for message of type '<record>"
  (cl:format cl:nil "int8 RECORD_TYPE_ALL=0~%int8 RECORD_TYPE_SNAPSHOT=1~%int8 RECORD_TYPE_RECORD=2~%int8 RECORD_TYPE_THUMB=3~%int8 RECORD_TYPE_SCHED_RECORD=4~%~%#record file descriptor~%string id~%string name~%uint32 dur~%int8 type~%time create~%uint32 size~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'record)))
  "Returns full string definition for message of type 'record"
  (cl:format cl:nil "int8 RECORD_TYPE_ALL=0~%int8 RECORD_TYPE_SNAPSHOT=1~%int8 RECORD_TYPE_RECORD=2~%int8 RECORD_TYPE_THUMB=3~%int8 RECORD_TYPE_SCHED_RECORD=4~%~%#record file descriptor~%string id~%string name~%uint32 dur~%int8 type~%time create~%uint32 size~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <record>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'name))
     4
     1
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <record>))
  "Converts a ROS message object to a list"
  (cl:list 'record
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':dur (dur msg))
    (cl:cons ':type (type msg))
    (cl:cons ':create (create msg))
    (cl:cons ':size (size msg))
))
