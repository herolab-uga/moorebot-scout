; Auto-generated. Do not edit!


(cl:in-package roller_eye-msg)


;//! \htmlinclude contour.msg.html

(cl:defclass <contour> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector roller_eye-msg:point)
   :initform (cl:make-array 0 :element-type 'roller_eye-msg:point :initial-element (cl:make-instance 'roller_eye-msg:point)))
   (inside
    :reader inside
    :initarg :inside
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass contour (<contour>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <contour>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'contour)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-msg:<contour> is deprecated: use roller_eye-msg:contour instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <contour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:points-val is deprecated.  Use roller_eye-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'inside-val :lambda-list '(m))
(cl:defmethod inside-val ((m <contour>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:inside-val is deprecated.  Use roller_eye-msg:inside instead.")
  (inside m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <contour>) ostream)
  "Serializes a message object of type '<contour>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inside) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <contour>) istream)
  "Deserializes a message object of type '<contour>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roller_eye-msg:point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'inside) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<contour>)))
  "Returns string type for a message object of type '<contour>"
  "roller_eye/contour")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'contour)))
  "Returns string type for a message object of type 'contour"
  "roller_eye/contour")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<contour>)))
  "Returns md5sum for a message object of type '<contour>"
  "a642c753275229829f5cad7ec8aa4996")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'contour)))
  "Returns md5sum for a message object of type 'contour"
  "a642c753275229829f5cad7ec8aa4996")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<contour>)))
  "Returns full string definition for message of type '<contour>"
  (cl:format cl:nil "point[] points~%bool inside~%================================================================================~%MSG: roller_eye/point~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'contour)))
  "Returns full string definition for message of type 'contour"
  (cl:format cl:nil "point[] points~%bool inside~%================================================================================~%MSG: roller_eye/point~%float32 x~%float32 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <contour>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <contour>))
  "Converts a ROS message object to a list"
  (cl:list 'contour
    (cl:cons ':points (points msg))
    (cl:cons ':inside (inside msg))
))
