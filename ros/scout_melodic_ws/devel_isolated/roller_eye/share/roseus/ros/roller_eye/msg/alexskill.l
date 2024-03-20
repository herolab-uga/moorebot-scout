;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::alexskill)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'alexskill (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::ALEXSKILL")
  (make-package "ROLLER_EYE::ALEXSKILL"))

(in-package "ROS")
;;//! \htmlinclude alexskill.msg.html


(intern "*ALEX_S_TURNLEFT*" (find-package "ROLLER_EYE::ALEXSKILL"))
(shadow '*ALEX_S_TURNLEFT* (find-package "ROLLER_EYE::ALEXSKILL"))
(defconstant roller_eye::alexskill::*ALEX_S_TURNLEFT* 0)
(intern "*ALEX_S_TURNRIGHT*" (find-package "ROLLER_EYE::ALEXSKILL"))
(shadow '*ALEX_S_TURNRIGHT* (find-package "ROLLER_EYE::ALEXSKILL"))
(defconstant roller_eye::alexskill::*ALEX_S_TURNRIGHT* 1)
(intern "*ALEX_S_MOVELEFT*" (find-package "ROLLER_EYE::ALEXSKILL"))
(shadow '*ALEX_S_MOVELEFT* (find-package "ROLLER_EYE::ALEXSKILL"))
(defconstant roller_eye::alexskill::*ALEX_S_MOVELEFT* 2)
(intern "*ALEX_S_MOVERIGHT*" (find-package "ROLLER_EYE::ALEXSKILL"))
(shadow '*ALEX_S_MOVERIGHT* (find-package "ROLLER_EYE::ALEXSKILL"))
(defconstant roller_eye::alexskill::*ALEX_S_MOVERIGHT* 3)
(intern "*ALEX_S_MOVEFORWARD*" (find-package "ROLLER_EYE::ALEXSKILL"))
(shadow '*ALEX_S_MOVEFORWARD* (find-package "ROLLER_EYE::ALEXSKILL"))
(defconstant roller_eye::alexskill::*ALEX_S_MOVEFORWARD* 4)
(intern "*ALEX_S_MOVEBACKWARD*" (find-package "ROLLER_EYE::ALEXSKILL"))
(shadow '*ALEX_S_MOVEBACKWARD* (find-package "ROLLER_EYE::ALEXSKILL"))
(defconstant roller_eye::alexskill::*ALEX_S_MOVEBACKWARD* 5)
(intern "*ALEX_S_CLOCKWISEROTATE*" (find-package "ROLLER_EYE::ALEXSKILL"))
(shadow '*ALEX_S_CLOCKWISEROTATE* (find-package "ROLLER_EYE::ALEXSKILL"))
(defconstant roller_eye::alexskill::*ALEX_S_CLOCKWISEROTATE* 6)
(intern "*ALEX_S_COUNTERCLOCKROTATE*" (find-package "ROLLER_EYE::ALEXSKILL"))
(shadow '*ALEX_S_COUNTERCLOCKROTATE* (find-package "ROLLER_EYE::ALEXSKILL"))
(defconstant roller_eye::alexskill::*ALEX_S_COUNTERCLOCKROTATE* 7)
(defclass roller_eye::alexskill
  :super ros::object
  :slots (_cmd _dist _vx _vy _w ))

(defmethod roller_eye::alexskill
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:dist __dist) 0.0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _dist (float __dist))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _w (float __w))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; uint32 _cmd
    4
    ;; float32 _dist
    4
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _cmd
       (write-long _cmd s)
     ;; float32 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dist
     (setq _dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roller_eye::alexskill :md5sum-) "1709b62875f0d4583ac2cce6d24340c8")
(setf (get roller_eye::alexskill :datatype-) "roller_eye/alexskill")
(setf (get roller_eye::alexskill :definition-)
      "#alex skill command
#0-turn left 1-turn right 2-move left 3-move right 4-move forward 
#5-move bacward 6-clockwise rotate 7-counterclockwise rotate
#error and ok
int8 ALEX_S_TURNLEFT                              = 0
int8 ALEX_S_TURNRIGHT                           = 1
int8 ALEX_S_MOVELEFT                              = 2
int8 ALEX_S_MOVERIGHT                           = 3
int8 ALEX_S_MOVEFORWARD                   = 4
int8 ALEX_S_MOVEBACKWARD                = 5
int8 ALEX_S_CLOCKWISEROTATE           = 6
int8 ALEX_S_COUNTERCLOCKROTATE = 7

uint32 cmd

#motion distance
float32 dist

#x velocity
float32 vx

#y velocity
float32 vy

#Rotationl Speed
float32 w




")



(provide :roller_eye/alexskill "1709b62875f0d4583ac2cce6d24340c8")


