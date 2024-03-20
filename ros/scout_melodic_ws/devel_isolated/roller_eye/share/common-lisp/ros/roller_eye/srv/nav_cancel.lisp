; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude nav_cancel-request.msg.html

(cl:defclass <nav_cancel-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_cancel-request (<nav_cancel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_cancel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_cancel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_cancel-request> is deprecated: use roller_eye-srv:nav_cancel-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_cancel-request>) ostream)
  "Serializes a message object of type '<nav_cancel-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_cancel-request>) istream)
  "Deserializes a message object of type '<nav_cancel-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_cancel-request>)))
  "Returns string type for a service object of type '<nav_cancel-request>"
  "roller_eye/nav_cancelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_cancel-request)))
  "Returns string type for a service object of type 'nav_cancel-request"
  "roller_eye/nav_cancelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_cancel-request>)))
  "Returns md5sum for a message object of type '<nav_cancel-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_cancel-request)))
  "Returns md5sum for a message object of type 'nav_cancel-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_cancel-request>)))
  "Returns full string definition for message of type '<nav_cancel-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_cancel-request)))
  "Returns full string definition for message of type 'nav_cancel-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_cancel-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_cancel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_cancel-request
))
;//! \htmlinclude nav_cancel-response.msg.html

(cl:defclass <nav_cancel-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_cancel-response (<nav_cancel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_cancel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_cancel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_cancel-response> is deprecated: use roller_eye-srv:nav_cancel-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_cancel-response>) ostream)
  "Serializes a message object of type '<nav_cancel-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_cancel-response>) istream)
  "Deserializes a message object of type '<nav_cancel-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_cancel-response>)))
  "Returns string type for a service object of type '<nav_cancel-response>"
  "roller_eye/nav_cancelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_cancel-response)))
  "Returns string type for a service object of type 'nav_cancel-response"
  "roller_eye/nav_cancelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_cancel-response>)))
  "Returns md5sum for a message object of type '<nav_cancel-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_cancel-response)))
  "Returns md5sum for a message object of type 'nav_cancel-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_cancel-response>)))
  "Returns full string definition for message of type '<nav_cancel-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_cancel-response)))
  "Returns full string definition for message of type 'nav_cancel-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_cancel-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_cancel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_cancel-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_cancel)))
  'nav_cancel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_cancel)))
  'nav_cancel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_cancel)))
  "Returns string type for a service object of type '<nav_cancel>"
  "roller_eye/nav_cancel")