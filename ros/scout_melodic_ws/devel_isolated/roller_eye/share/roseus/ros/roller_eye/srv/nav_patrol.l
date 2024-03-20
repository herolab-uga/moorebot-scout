;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::nav_patrol)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'nav_patrol (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::NAV_PATROL")
  (make-package "ROLLER_EYE::NAV_PATROL"))
(unless (find-package "ROLLER_EYE::NAV_PATROLREQUEST")
  (make-package "ROLLER_EYE::NAV_PATROLREQUEST"))
(unless (find-package "ROLLER_EYE::NAV_PATROLRESPONSE")
  (make-package "ROLLER_EYE::NAV_PATROLRESPONSE"))

(in-package "ROS")





(defclass roller_eye::nav_patrolRequest
  :super ros::object
  :slots (_isFromOutStart _name ))

(defmethod roller_eye::nav_patrolRequest
  (:init
   (&key
    ((:isFromOutStart __isFromOutStart) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _isFromOutStart (round __isFromOutStart))
   (setq _name (string __name))
   self)
  (:isFromOutStart
   (&optional __isFromOutStart)
   (if __isFromOutStart (setq _isFromOutStart __isFromOutStart)) _isFromOutStart)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int8 _isFromOutStart
    1
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _isFromOutStart
       (write-byte _isFromOutStart s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _isFromOutStart
     (setq _isFromOutStart (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _isFromOutStart 127) (setq _isFromOutStart (- _isFromOutStart 256)))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roller_eye::nav_patrolResponse
  :super ros::object
  :slots (_ret ))

(defmethod roller_eye::nav_patrolResponse
  (:init
   (&key
    ((:ret __ret) 0)
    )
   (send-super :init)
   (setq _ret (round __ret))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; int32 _ret
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ret
       (write-long _ret s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roller_eye::nav_patrol
  :super ros::object
  :slots ())

(setf (get roller_eye::nav_patrol :md5sum-) "d6a5af10fcc8d2d1a3207d2742669e6d")
(setf (get roller_eye::nav_patrol :datatype-) "roller_eye/nav_patrol")
(setf (get roller_eye::nav_patrol :request) roller_eye::nav_patrolRequest)
(setf (get roller_eye::nav_patrol :response) roller_eye::nav_patrolResponse)

(defmethod roller_eye::nav_patrolRequest
  (:response () (instance roller_eye::nav_patrolResponse :init)))

(setf (get roller_eye::nav_patrolRequest :md5sum-) "d6a5af10fcc8d2d1a3207d2742669e6d")
(setf (get roller_eye::nav_patrolRequest :datatype-) "roller_eye/nav_patrolRequest")
(setf (get roller_eye::nav_patrolRequest :definition-)
      "#0-no, 1-yes
int8     isFromOutStart
string name
---
int32 ret
")

(setf (get roller_eye::nav_patrolResponse :md5sum-) "d6a5af10fcc8d2d1a3207d2742669e6d")
(setf (get roller_eye::nav_patrolResponse :datatype-) "roller_eye/nav_patrolResponse")
(setf (get roller_eye::nav_patrolResponse :definition-)
      "#0-no, 1-yes
int8     isFromOutStart
string name
---
int32 ret
")



(provide :roller_eye/nav_patrol "d6a5af10fcc8d2d1a3207d2742669e6d")


