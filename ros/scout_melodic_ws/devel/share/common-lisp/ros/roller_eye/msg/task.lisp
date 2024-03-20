; Auto-generated. Do not edit!


(cl:in-package roller_eye-msg)


;//! \htmlinclude task.msg.html

(cl:defclass <task> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (repeateType
    :reader repeateType
    :initarg :repeateType
    :type cl:fixnum
    :initform 0)
   (repeateDays
    :reader repeateDays
    :initarg :repeateDays
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (timeYear
    :reader timeYear
    :initarg :timeYear
    :type cl:integer
    :initform 0)
   (timeMonth
    :reader timeMonth
    :initarg :timeMonth
    :type cl:fixnum
    :initform 0)
   (timeDay
    :reader timeDay
    :initarg :timeDay
    :type cl:fixnum
    :initform 0)
   (timeHour
    :reader timeHour
    :initarg :timeHour
    :type cl:fixnum
    :initform 0)
   (timeMinute
    :reader timeMinute
    :initarg :timeMinute
    :type cl:fixnum
    :initform 0)
   (timeSecond
    :reader timeSecond
    :initarg :timeSecond
    :type cl:fixnum
    :initform 0)
   (expire
    :reader expire
    :initarg :expire
    :type cl:integer
    :initform 0)
   (param
    :reader param
    :initarg :param
    :type cl:string
    :initform "")
   (notice
    :reader notice
    :initarg :notice
    :type cl:boolean
    :initform cl:nil)
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass task (<task>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <task>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'task)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-msg:<task> is deprecated: use roller_eye-msg:task instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:id-val is deprecated.  Use roller_eye-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:name-val is deprecated.  Use roller_eye-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:type-val is deprecated.  Use roller_eye-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'repeateType-val :lambda-list '(m))
(cl:defmethod repeateType-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:repeateType-val is deprecated.  Use roller_eye-msg:repeateType instead.")
  (repeateType m))

(cl:ensure-generic-function 'repeateDays-val :lambda-list '(m))
(cl:defmethod repeateDays-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:repeateDays-val is deprecated.  Use roller_eye-msg:repeateDays instead.")
  (repeateDays m))

(cl:ensure-generic-function 'timeYear-val :lambda-list '(m))
(cl:defmethod timeYear-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:timeYear-val is deprecated.  Use roller_eye-msg:timeYear instead.")
  (timeYear m))

(cl:ensure-generic-function 'timeMonth-val :lambda-list '(m))
(cl:defmethod timeMonth-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:timeMonth-val is deprecated.  Use roller_eye-msg:timeMonth instead.")
  (timeMonth m))

(cl:ensure-generic-function 'timeDay-val :lambda-list '(m))
(cl:defmethod timeDay-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:timeDay-val is deprecated.  Use roller_eye-msg:timeDay instead.")
  (timeDay m))

(cl:ensure-generic-function 'timeHour-val :lambda-list '(m))
(cl:defmethod timeHour-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:timeHour-val is deprecated.  Use roller_eye-msg:timeHour instead.")
  (timeHour m))

(cl:ensure-generic-function 'timeMinute-val :lambda-list '(m))
(cl:defmethod timeMinute-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:timeMinute-val is deprecated.  Use roller_eye-msg:timeMinute instead.")
  (timeMinute m))

(cl:ensure-generic-function 'timeSecond-val :lambda-list '(m))
(cl:defmethod timeSecond-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:timeSecond-val is deprecated.  Use roller_eye-msg:timeSecond instead.")
  (timeSecond m))

(cl:ensure-generic-function 'expire-val :lambda-list '(m))
(cl:defmethod expire-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:expire-val is deprecated.  Use roller_eye-msg:expire instead.")
  (expire m))

(cl:ensure-generic-function 'param-val :lambda-list '(m))
(cl:defmethod param-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:param-val is deprecated.  Use roller_eye-msg:param instead.")
  (param m))

(cl:ensure-generic-function 'notice-val :lambda-list '(m))
(cl:defmethod notice-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:notice-val is deprecated.  Use roller_eye-msg:notice instead.")
  (notice m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:active-val is deprecated.  Use roller_eye-msg:active instead.")
  (active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <task>) ostream)
  "Serializes a message object of type '<task>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let* ((signed (cl:slot-value msg 'repeateType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'repeateDays))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'repeateDays))
  (cl:let* ((signed (cl:slot-value msg 'timeYear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timeMonth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timeDay)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timeHour)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timeMinute)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timeSecond)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'expire)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'notice) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <task>) istream)
  "Deserializes a message object of type '<task>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'repeateType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'repeateDays) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'repeateDays)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeYear) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeMonth) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeDay) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeHour) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeMinute) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeSecond) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'expire) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'notice) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<task>)))
  "Returns string type for a message object of type '<task>"
  "roller_eye/task")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'task)))
  "Returns string type for a message object of type 'task"
  "roller_eye/task")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<task>)))
  "Returns md5sum for a message object of type '<task>"
  "9830df15a89026240f987f0f60f06f98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'task)))
  "Returns md5sum for a message object of type 'task"
  "9830df15a89026240f987f0f60f06f98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<task>)))
  "Returns full string definition for message of type '<task>"
  (cl:format cl:nil "int32 id~%string name~%string type~%int8 repeateType~%int8[] repeateDays~%int32 timeYear~%int8 timeMonth~%int8 timeDay~%int8 timeHour~%int8 timeMinute~%int8 timeSecond~%int32 expire~%string param~%bool notice~%bool active~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'task)))
  "Returns full string definition for message of type 'task"
  (cl:format cl:nil "int32 id~%string name~%string type~%int8 repeateType~%int8[] repeateDays~%int32 timeYear~%int8 timeMonth~%int8 timeDay~%int8 timeHour~%int8 timeMinute~%int8 timeSecond~%int32 expire~%string param~%bool notice~%bool active~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <task>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'repeateDays) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     1
     1
     1
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'param))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <task>))
  "Converts a ROS message object to a list"
  (cl:list 'task
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':repeateType (repeateType msg))
    (cl:cons ':repeateDays (repeateDays msg))
    (cl:cons ':timeYear (timeYear msg))
    (cl:cons ':timeMonth (timeMonth msg))
    (cl:cons ':timeDay (timeDay msg))
    (cl:cons ':timeHour (timeHour msg))
    (cl:cons ':timeMinute (timeMinute msg))
    (cl:cons ':timeSecond (timeSecond msg))
    (cl:cons ':expire (expire msg))
    (cl:cons ':param (param msg))
    (cl:cons ':notice (notice msg))
    (cl:cons ':active (active msg))
))
