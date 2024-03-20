;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::nav_patrol_stop)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'nav_patrol_stop (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::NAV_PATROL_STOP")
  (make-package "ROLLER_EYE::NAV_PATROL_STOP"))
(unless (find-package "ROLLER_EYE::NAV_PATROL_STOPREQUEST")
  (make-package "ROLLER_EYE::NAV_PATROL_STOPREQUEST"))
(unless (find-package "ROLLER_EYE::NAV_PATROL_STOPRESPONSE")
  (make-package "ROLLER_EYE::NAV_PATROL_STOPRESPONSE"))

(in-package "ROS")





(defclass roller_eye::nav_patrol_stopRequest
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_patrol_stopRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roller_eye::nav_patrol_stopResponse
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_patrol_stopResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roller_eye::nav_patrol_stop
  :super ros::object
  :slots ())

(setf (get roller_eye::nav_patrol_stop :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get roller_eye::nav_patrol_stop :datatype-) "roller_eye/nav_patrol_stop")
(setf (get roller_eye::nav_patrol_stop :request) roller_eye::nav_patrol_stopRequest)
(setf (get roller_eye::nav_patrol_stop :response) roller_eye::nav_patrol_stopResponse)

(defmethod roller_eye::nav_patrol_stopRequest
  (:response () (instance roller_eye::nav_patrol_stopResponse :init)))

(setf (get roller_eye::nav_patrol_stopRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get roller_eye::nav_patrol_stopRequest :datatype-) "roller_eye/nav_patrol_stopRequest")
(setf (get roller_eye::nav_patrol_stopRequest :definition-)
      "---
")

(setf (get roller_eye::nav_patrol_stopResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get roller_eye::nav_patrol_stopResponse :datatype-) "roller_eye/nav_patrol_stopResponse")
(setf (get roller_eye::nav_patrol_stopResponse :definition-)
      "---
")



(provide :roller_eye/nav_patrol_stop "d41d8cd98f00b204e9800998ecf8427e")


