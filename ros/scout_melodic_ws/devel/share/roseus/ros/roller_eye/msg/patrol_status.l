;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::patrol_status)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'patrol_status (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::PATROL_STATUS")
  (make-package "ROLLER_EYE::PATROL_STATUS"))

(in-package "ROS")
;;//! \htmlinclude patrol_status.msg.html


(intern "*START_PATROL*" (find-package "ROLLER_EYE::PATROL_STATUS"))
(shadow '*START_PATROL* (find-package "ROLLER_EYE::PATROL_STATUS"))
(defconstant roller_eye::patrol_status::*START_PATROL* 0)
(intern "*END_PATROL*" (find-package "ROLLER_EYE::PATROL_STATUS"))
(shadow '*END_PATROL* (find-package "ROLLER_EYE::PATROL_STATUS"))
(defconstant roller_eye::patrol_status::*END_PATROL* 1)
(intern "*PATROL_LOSE_PILE*" (find-package "ROLLER_EYE::PATROL_STATUS"))
(shadow '*PATROL_LOSE_PILE* (find-package "ROLLER_EYE::PATROL_STATUS"))
(defconstant roller_eye::patrol_status::*PATROL_LOSE_PILE* 2)
(intern "*PATROL_AVOID_OBS_FAIL*" (find-package "ROLLER_EYE::PATROL_STATUS"))
(shadow '*PATROL_AVOID_OBS_FAIL* (find-package "ROLLER_EYE::PATROL_STATUS"))
(defconstant roller_eye::patrol_status::*PATROL_AVOID_OBS_FAIL* 3)
(defclass roller_eye::patrol_status
  :super ros::object
  :slots (_type _name ))

(defmethod roller_eye::patrol_status
  (:init
   (&key
    ((:type __type) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _name (string __name))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get roller_eye::patrol_status :md5sum-) "799344e2827d6e4c33a67d7ff2c81773")
(setf (get roller_eye::patrol_status :datatype-) "roller_eye/patrol_status")
(setf (get roller_eye::patrol_status :definition-)
      "int8  START_PATROL          = 0
int8 END_PATROL                = 1
int8 PATROL_LOSE_PILE  = 2
int8 PATROL_AVOID_OBS_FAIL  = 3
#patrol status
int32 type

#patrol name
string name
")



(provide :roller_eye/patrol_status "799344e2827d6e4c33a67d7ff2c81773")


