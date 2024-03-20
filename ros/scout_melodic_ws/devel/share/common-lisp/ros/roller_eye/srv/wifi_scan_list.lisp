; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude wifi_scan_list-request.msg.html

(cl:defclass <wifi_scan_list-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass wifi_scan_list-request (<wifi_scan_list-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wifi_scan_list-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wifi_scan_list-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<wifi_scan_list-request> is deprecated: use roller_eye-srv:wifi_scan_list-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wifi_scan_list-request>) ostream)
  "Serializes a message object of type '<wifi_scan_list-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wifi_scan_list-request>) istream)
  "Deserializes a message object of type '<wifi_scan_list-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wifi_scan_list-request>)))
  "Returns string type for a service object of type '<wifi_scan_list-request>"
  "roller_eye/wifi_scan_listRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_scan_list-request)))
  "Returns string type for a service object of type 'wifi_scan_list-request"
  "roller_eye/wifi_scan_listRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wifi_scan_list-request>)))
  "Returns md5sum for a message object of type '<wifi_scan_list-request>"
  "fd54a28d4e6325d269f60a72dc202a7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wifi_scan_list-request)))
  "Returns md5sum for a message object of type 'wifi_scan_list-request"
  "fd54a28d4e6325d269f60a72dc202a7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wifi_scan_list-request>)))
  "Returns full string definition for message of type '<wifi_scan_list-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wifi_scan_list-request)))
  "Returns full string definition for message of type 'wifi_scan_list-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wifi_scan_list-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wifi_scan_list-request>))
  "Converts a ROS message object to a list"
  (cl:list 'wifi_scan_list-request
))
;//! \htmlinclude wifi_scan_list-response.msg.html

(cl:defclass <wifi_scan_list-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type (cl:vector roller_eye-msg:wifi_info)
   :initform (cl:make-array 0 :element-type 'roller_eye-msg:wifi_info :initial-element (cl:make-instance 'roller_eye-msg:wifi_info))))
)

(cl:defclass wifi_scan_list-response (<wifi_scan_list-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wifi_scan_list-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wifi_scan_list-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<wifi_scan_list-response> is deprecated: use roller_eye-srv:wifi_scan_list-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <wifi_scan_list-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-srv:result-val is deprecated.  Use roller_eye-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wifi_scan_list-response>) ostream)
  "Serializes a message object of type '<wifi_scan_list-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wifi_scan_list-response>) istream)
  "Deserializes a message object of type '<wifi_scan_list-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roller_eye-msg:wifi_info))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wifi_scan_list-response>)))
  "Returns string type for a service object of type '<wifi_scan_list-response>"
  "roller_eye/wifi_scan_listResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_scan_list-response)))
  "Returns string type for a service object of type 'wifi_scan_list-response"
  "roller_eye/wifi_scan_listResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wifi_scan_list-response>)))
  "Returns md5sum for a message object of type '<wifi_scan_list-response>"
  "fd54a28d4e6325d269f60a72dc202a7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wifi_scan_list-response)))
  "Returns md5sum for a message object of type 'wifi_scan_list-response"
  "fd54a28d4e6325d269f60a72dc202a7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wifi_scan_list-response>)))
  "Returns full string definition for message of type '<wifi_scan_list-response>"
  (cl:format cl:nil "wifi_info[] result~%~%================================================================================~%MSG: roller_eye/wifi_info~%string ssid~%float32 quality~%int32 signal~%int32 noisy~%float32 freq~%int32 channel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wifi_scan_list-response)))
  "Returns full string definition for message of type 'wifi_scan_list-response"
  (cl:format cl:nil "wifi_info[] result~%~%================================================================================~%MSG: roller_eye/wifi_info~%string ssid~%float32 quality~%int32 signal~%int32 noisy~%float32 freq~%int32 channel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wifi_scan_list-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wifi_scan_list-response>))
  "Converts a ROS message object to a list"
  (cl:list 'wifi_scan_list-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'wifi_scan_list)))
  'wifi_scan_list-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'wifi_scan_list)))
  'wifi_scan_list-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_scan_list)))
  "Returns string type for a service object of type '<wifi_scan_list>"
  "roller_eye/wifi_scan_list")