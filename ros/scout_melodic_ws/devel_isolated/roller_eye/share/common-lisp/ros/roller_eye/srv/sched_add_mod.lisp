; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude sched_add_mod-request.msg.html

(cl:defclass <sched_add_mod-request> (roslisp-msg-protocol:ros-message)
  ((tsk
    :reader tsk
    :initarg :tsk
    :type roller_eye-msg:task
    :initform (cl:make-instance 'roller_eye-msg:task)))
)

(cl:defclass sched_add_mod-request (<sched_add_mod-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sched_add_mod-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sched_add_mod-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<sched_add_mod-request> is deprecated: use roller_eye-srv:sched_add_mod-request instead.")))

(cl:ensure-generic-function 'tsk-val :lambda-list '(m))
(cl:defmethod tsk-val ((m <sched_add_mod-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:tsk-val is deprecated.  Use roller_eye-srv:tsk instead.")
  (tsk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sched_add_mod-request>) ostream)
  "Serializes a message object of type '<sched_add_mod-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tsk) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sched_add_mod-request>) istream)
  "Deserializes a message object of type '<sched_add_mod-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tsk) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sched_add_mod-request>)))
  "Returns string type for a service object of type '<sched_add_mod-request>"
  "roller_eye/sched_add_modRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sched_add_mod-request)))
  "Returns string type for a service object of type 'sched_add_mod-request"
  "roller_eye/sched_add_modRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sched_add_mod-request>)))
  "Returns md5sum for a message object of type '<sched_add_mod-request>"
  "e0be7b42d9f9c638e488c09d9f0ede84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sched_add_mod-request)))
  "Returns md5sum for a message object of type 'sched_add_mod-request"
  "e0be7b42d9f9c638e488c09d9f0ede84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sched_add_mod-request>)))
  "Returns full string definition for message of type '<sched_add_mod-request>"
  (cl:format cl:nil "task tsk~%~%================================================================================~%MSG: roller_eye/task~%int32 id~%string name~%string type~%int8 repeateType~%int8[] repeateDays~%int32 timeYear~%int8 timeMonth~%int8 timeDay~%int8 timeHour~%int8 timeMinute~%int8 timeSecond~%int32 expire~%string param~%bool notice~%bool active~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sched_add_mod-request)))
  "Returns full string definition for message of type 'sched_add_mod-request"
  (cl:format cl:nil "task tsk~%~%================================================================================~%MSG: roller_eye/task~%int32 id~%string name~%string type~%int8 repeateType~%int8[] repeateDays~%int32 timeYear~%int8 timeMonth~%int8 timeDay~%int8 timeHour~%int8 timeMinute~%int8 timeSecond~%int32 expire~%string param~%bool notice~%bool active~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sched_add_mod-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tsk))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sched_add_mod-request>))
  "Converts a ROS message object to a list"
  (cl:list 'sched_add_mod-request
    (cl:cons ':tsk (tsk msg))
))
;//! \htmlinclude sched_add_mod-response.msg.html

(cl:defclass <sched_add_mod-response> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass sched_add_mod-response (<sched_add_mod-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sched_add_mod-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sched_add_mod-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<sched_add_mod-response> is deprecated: use roller_eye-srv:sched_add_mod-response instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <sched_add_mod-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:id-val is deprecated.  Use roller_eye-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sched_add_mod-response>) ostream)
  "Serializes a message object of type '<sched_add_mod-response>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sched_add_mod-response>) istream)
  "Deserializes a message object of type '<sched_add_mod-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sched_add_mod-response>)))
  "Returns string type for a service object of type '<sched_add_mod-response>"
  "roller_eye/sched_add_modResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sched_add_mod-response)))
  "Returns string type for a service object of type 'sched_add_mod-response"
  "roller_eye/sched_add_modResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sched_add_mod-response>)))
  "Returns md5sum for a message object of type '<sched_add_mod-response>"
  "e0be7b42d9f9c638e488c09d9f0ede84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sched_add_mod-response)))
  "Returns md5sum for a message object of type 'sched_add_mod-response"
  "e0be7b42d9f9c638e488c09d9f0ede84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sched_add_mod-response>)))
  "Returns full string definition for message of type '<sched_add_mod-response>"
  (cl:format cl:nil "int32 id~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sched_add_mod-response)))
  "Returns full string definition for message of type 'sched_add_mod-response"
  (cl:format cl:nil "int32 id~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sched_add_mod-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sched_add_mod-response>))
  "Converts a ROS message object to a list"
  (cl:list 'sched_add_mod-response
    (cl:cons ':id (id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'sched_add_mod)))
  'sched_add_mod-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'sched_add_mod)))
  'sched_add_mod-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sched_add_mod)))
  "Returns string type for a service object of type '<sched_add_mod>"
  "roller_eye/sched_add_mod")