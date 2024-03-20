; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude nav_list_path-request.msg.html

(cl:defclass <nav_list_path-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_list_path-request (<nav_list_path-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_list_path-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_list_path-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_list_path-request> is deprecated: use roller_eye-srv:nav_list_path-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_list_path-request>) ostream)
  "Serializes a message object of type '<nav_list_path-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_list_path-request>) istream)
  "Deserializes a message object of type '<nav_list_path-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_list_path-request>)))
  "Returns string type for a service object of type '<nav_list_path-request>"
  "roller_eye/nav_list_pathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_list_path-request)))
  "Returns string type for a service object of type 'nav_list_path-request"
  "roller_eye/nav_list_pathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_list_path-request>)))
  "Returns md5sum for a message object of type '<nav_list_path-request>"
  "09857f8ab43e3dd303b36715eecbde30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_list_path-request)))
  "Returns md5sum for a message object of type 'nav_list_path-request"
  "09857f8ab43e3dd303b36715eecbde30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_list_path-request>)))
  "Returns full string definition for message of type '<nav_list_path-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_list_path-request)))
  "Returns full string definition for message of type 'nav_list_path-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_list_path-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_list_path-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_list_path-request
))
;//! \htmlinclude nav_list_path-response.msg.html

(cl:defclass <nav_list_path-response> (roslisp-msg-protocol:ros-message)
  ((path_list
    :reader path_list
    :initarg :path_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (size_list
    :reader size_list
    :initarg :size_list
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (create_time_list
    :reader create_time_list
    :initarg :create_time_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (name_list
    :reader name_list
    :initarg :name_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass nav_list_path-response (<nav_list_path-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_list_path-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_list_path-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_list_path-response> is deprecated: use roller_eye-srv:nav_list_path-response instead.")))

(cl:ensure-generic-function 'path_list-val :lambda-list '(m))
(cl:defmethod path_list-val ((m <nav_list_path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:path_list-val is deprecated.  Use roller_eye-srv:path_list instead.")
  (path_list m))

(cl:ensure-generic-function 'size_list-val :lambda-list '(m))
(cl:defmethod size_list-val ((m <nav_list_path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:size_list-val is deprecated.  Use roller_eye-srv:size_list instead.")
  (size_list m))

(cl:ensure-generic-function 'create_time_list-val :lambda-list '(m))
(cl:defmethod create_time_list-val ((m <nav_list_path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:create_time_list-val is deprecated.  Use roller_eye-srv:create_time_list instead.")
  (create_time_list m))

(cl:ensure-generic-function 'name_list-val :lambda-list '(m))
(cl:defmethod name_list-val ((m <nav_list_path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:name_list-val is deprecated.  Use roller_eye-srv:name_list instead.")
  (name_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_list_path-response>) ostream)
  "Serializes a message object of type '<nav_list_path-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_list))))
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
   (cl:slot-value msg 'path_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'size_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'size_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'create_time_list))))
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
   (cl:slot-value msg 'create_time_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name_list))))
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
   (cl:slot-value msg 'name_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_list_path-response>) istream)
  "Deserializes a message object of type '<nav_list_path-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'size_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'size_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'create_time_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'create_time_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name_list)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_list_path-response>)))
  "Returns string type for a service object of type '<nav_list_path-response>"
  "roller_eye/nav_list_pathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_list_path-response)))
  "Returns string type for a service object of type 'nav_list_path-response"
  "roller_eye/nav_list_pathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_list_path-response>)))
  "Returns md5sum for a message object of type '<nav_list_path-response>"
  "09857f8ab43e3dd303b36715eecbde30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_list_path-response)))
  "Returns md5sum for a message object of type 'nav_list_path-response"
  "09857f8ab43e3dd303b36715eecbde30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_list_path-response>)))
  "Returns full string definition for message of type '<nav_list_path-response>"
  (cl:format cl:nil "string[] path_list~%int32[] size_list~%string[] create_time_list~%string[] name_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_list_path-response)))
  "Returns full string definition for message of type 'nav_list_path-response"
  (cl:format cl:nil "string[] path_list~%int32[] size_list~%string[] create_time_list~%string[] name_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_list_path-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'size_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'create_time_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_list_path-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_list_path-response
    (cl:cons ':path_list (path_list msg))
    (cl:cons ':size_list (size_list msg))
    (cl:cons ':create_time_list (create_time_list msg))
    (cl:cons ':name_list (name_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_list_path)))
  'nav_list_path-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_list_path)))
  'nav_list_path-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_list_path)))
  "Returns string type for a service object of type '<nav_list_path>"
  "roller_eye/nav_list_path")