; Auto-generated. Do not edit!


(cl:in-package roller_eye-srv)


;//! \htmlinclude nav_patrol_stop-request.msg.html

(cl:defclass <nav_patrol_stop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_patrol_stop-request (<nav_patrol_stop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_patrol_stop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_patrol_stop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_patrol_stop-request> is deprecated: use roller_eye-srv:nav_patrol_stop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_patrol_stop-request>) ostream)
  "Serializes a message object of type '<nav_patrol_stop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_patrol_stop-request>) istream)
  "Deserializes a message object of type '<nav_patrol_stop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_patrol_stop-request>)))
  "Returns string type for a service object of type '<nav_patrol_stop-request>"
  "roller_eye/nav_patrol_stopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_patrol_stop-request)))
  "Returns string type for a service object of type 'nav_patrol_stop-request"
  "roller_eye/nav_patrol_stopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_patrol_stop-request>)))
  "Returns md5sum for a message object of type '<nav_patrol_stop-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_patrol_stop-request)))
  "Returns md5sum for a message object of type 'nav_patrol_stop-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_patrol_stop-request>)))
  "Returns full string definition for message of type '<nav_patrol_stop-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_patrol_stop-request)))
  "Returns full string definition for message of type 'nav_patrol_stop-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_patrol_stop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_patrol_stop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_patrol_stop-request
))
;//! \htmlinclude nav_patrol_stop-response.msg.html

(cl:defclass <nav_patrol_stop-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass nav_patrol_stop-response (<nav_patrol_stop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_patrol_stop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_patrol_stop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-srv:<nav_patrol_stop-response> is deprecated: use roller_eye-srv:nav_patrol_stop-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_patrol_stop-response>) ostream)
  "Serializes a message object of type '<nav_patrol_stop-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_patrol_stop-response>) istream)
  "Deserializes a message object of type '<nav_patrol_stop-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_patrol_stop-response>)))
  "Returns string type for a service object of type '<nav_patrol_stop-response>"
  "roller_eye/nav_patrol_stopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_patrol_stop-response)))
  "Returns string type for a service object of type 'nav_patrol_stop-response"
  "roller_eye/nav_patrol_stopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_patrol_stop-response>)))
  "Returns md5sum for a message object of type '<nav_patrol_stop-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_patrol_stop-response)))
  "Returns md5sum for a message object of type 'nav_patrol_stop-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_patrol_stop-response>)))
  "Returns full string definition for message of type '<nav_patrol_stop-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_patrol_stop-response)))
  "Returns full string definition for message of type 'nav_patrol_stop-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_patrol_stop-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_patrol_stop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_patrol_stop-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_patrol_stop)))
  'nav_patrol_stop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_patrol_stop)))
  'nav_patrol_stop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_patrol_stop)))
  "Returns string type for a service object of type '<nav_patrol_stop>"
  "roller_eye/nav_patrol_stop")