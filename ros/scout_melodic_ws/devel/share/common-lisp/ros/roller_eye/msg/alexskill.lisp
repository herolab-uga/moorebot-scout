; Auto-generated. Do not edit!


(cl:in-package roller_eye-msg)


;//! \htmlinclude alexskill.msg.html

(cl:defclass <alexskill> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0)
   (dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0)
   (vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0))
)

(cl:defclass alexskill (<alexskill>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <alexskill>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'alexskill)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roller_eye-msg:<alexskill> is deprecated: use roller_eye-msg:alexskill instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <alexskill>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:cmd-val is deprecated.  Use roller_eye-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <alexskill>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:dist-val is deprecated.  Use roller_eye-msg:dist instead.")
  (dist m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <alexskill>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:vx-val is deprecated.  Use roller_eye-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <alexskill>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:vy-val is deprecated.  Use roller_eye-msg:vy instead.")
  (vy m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <alexskill>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roller_eye-msg:w-val is deprecated.  Use roller_eye-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<alexskill>)))
    "Constants for message type '<alexskill>"
  '((:ALEX_S_TURNLEFT . 0)
    (:ALEX_S_TURNRIGHT . 1)
    (:ALEX_S_MOVELEFT . 2)
    (:ALEX_S_MOVERIGHT . 3)
    (:ALEX_S_MOVEFORWARD . 4)
    (:ALEX_S_MOVEBACKWARD . 5)
    (:ALEX_S_CLOCKWISEROTATE . 6)
    (:ALEX_S_COUNTERCLOCKROTATE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'alexskill)))
    "Constants for message type 'alexskill"
  '((:ALEX_S_TURNLEFT . 0)
    (:ALEX_S_TURNRIGHT . 1)
    (:ALEX_S_MOVELEFT . 2)
    (:ALEX_S_MOVERIGHT . 3)
    (:ALEX_S_MOVEFORWARD . 4)
    (:ALEX_S_MOVEBACKWARD . 5)
    (:ALEX_S_CLOCKWISEROTATE . 6)
    (:ALEX_S_COUNTERCLOCKROTATE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <alexskill>) ostream)
  "Serializes a message object of type '<alexskill>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cmd)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <alexskill>) istream)
  "Deserializes a message object of type '<alexskill>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<alexskill>)))
  "Returns string type for a message object of type '<alexskill>"
  "roller_eye/alexskill")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'alexskill)))
  "Returns string type for a message object of type 'alexskill"
  "roller_eye/alexskill")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<alexskill>)))
  "Returns md5sum for a message object of type '<alexskill>"
  "1709b62875f0d4583ac2cce6d24340c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'alexskill)))
  "Returns md5sum for a message object of type 'alexskill"
  "1709b62875f0d4583ac2cce6d24340c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<alexskill>)))
  "Returns full string definition for message of type '<alexskill>"
  (cl:format cl:nil "#alex skill command~%#0-turn left 1-turn right 2-move left 3-move right 4-move forward ~%#5-move bacward 6-clockwise rotate 7-counterclockwise rotate~%#error and ok~%int8 ALEX_S_TURNLEFT                              = 0~%int8 ALEX_S_TURNRIGHT                           = 1~%int8 ALEX_S_MOVELEFT                              = 2~%int8 ALEX_S_MOVERIGHT                           = 3~%int8 ALEX_S_MOVEFORWARD                   = 4~%int8 ALEX_S_MOVEBACKWARD                = 5~%int8 ALEX_S_CLOCKWISEROTATE           = 6~%int8 ALEX_S_COUNTERCLOCKROTATE = 7~%~%uint32 cmd~%~%#motion distance~%float32 dist~%~%#x velocity~%float32 vx~%~%#y velocity~%float32 vy~%~%#Rotationl Speed~%float32 w~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'alexskill)))
  "Returns full string definition for message of type 'alexskill"
  (cl:format cl:nil "#alex skill command~%#0-turn left 1-turn right 2-move left 3-move right 4-move forward ~%#5-move bacward 6-clockwise rotate 7-counterclockwise rotate~%#error and ok~%int8 ALEX_S_TURNLEFT                              = 0~%int8 ALEX_S_TURNRIGHT                           = 1~%int8 ALEX_S_MOVELEFT                              = 2~%int8 ALEX_S_MOVERIGHT                           = 3~%int8 ALEX_S_MOVEFORWARD                   = 4~%int8 ALEX_S_MOVEBACKWARD                = 5~%int8 ALEX_S_CLOCKWISEROTATE           = 6~%int8 ALEX_S_COUNTERCLOCKROTATE = 7~%~%uint32 cmd~%~%#motion distance~%float32 dist~%~%#x velocity~%float32 vx~%~%#y velocity~%float32 vy~%~%#Rotationl Speed~%float32 w~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <alexskill>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <alexskill>))
  "Converts a ROS message object to a list"
  (cl:list 'alexskill
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':dist (dist msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':w (w msg))
))
