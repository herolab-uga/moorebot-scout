; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude nav_mag_calibra-request.msg.html

(cl:defclass <nav_mag_calibra-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_mag_calibra-request (<nav_mag_calibra-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_mag_calibra-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_mag_calibra-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_mag_calibra-request> is deprecated: use roller_eye-srv:nav_mag_calibra-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_mag_calibra-request>) ostream)
  "Serializes a message object of type '<nav_mag_calibra-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_mag_calibra-request>) istream)
  "Deserializes a message object of type '<nav_mag_calibra-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_mag_calibra-request>)))
  "Returns string type for a service object of type '<nav_mag_calibra-request>"
  "roller_eye/nav_mag_calibraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_mag_calibra-request)))
  "Returns string type for a service object of type 'nav_mag_calibra-request"
  "roller_eye/nav_mag_calibraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_mag_calibra-request>)))
  "Returns md5sum for a message object of type '<nav_mag_calibra-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_mag_calibra-request)))
  "Returns md5sum for a message object of type 'nav_mag_calibra-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_mag_calibra-request>)))
  "Returns full string definition for message of type '<nav_mag_calibra-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_mag_calibra-request)))
  "Returns full string definition for message of type 'nav_mag_calibra-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_mag_calibra-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_mag_calibra-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_mag_calibra-request
))
;//! \htmlinclude nav_mag_calibra-response.msg.html

(cl:defclass <nav_mag_calibra-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_mag_calibra-response (<nav_mag_calibra-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_mag_calibra-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_mag_calibra-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_mag_calibra-response> is deprecated: use roller_eye-srv:nav_mag_calibra-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_mag_calibra-response>) ostream)
  "Serializes a message object of type '<nav_mag_calibra-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_mag_calibra-response>) istream)
  "Deserializes a message object of type '<nav_mag_calibra-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_mag_calibra-response>)))
  "Returns string type for a service object of type '<nav_mag_calibra-response>"
  "roller_eye/nav_mag_calibraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_mag_calibra-response)))
  "Returns string type for a service object of type 'nav_mag_calibra-response"
  "roller_eye/nav_mag_calibraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_mag_calibra-response>)))
  "Returns md5sum for a message object of type '<nav_mag_calibra-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_mag_calibra-response)))
  "Returns md5sum for a message object of type 'nav_mag_calibra-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_mag_calibra-response>)))
  "Returns full string definition for message of type '<nav_mag_calibra-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_mag_calibra-response)))
  "Returns full string definition for message of type 'nav_mag_calibra-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_mag_calibra-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_mag_calibra-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_mag_calibra-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_mag_calibra)))
  'nav_mag_calibra-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_mag_calibra)))
  'nav_mag_calibra-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_mag_calibra)))
  "Returns string type for a service object of type '<nav_mag_calibra>"
  "roller_eye/nav_mag_calibra")