;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::nav_mag_calibra)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'nav_mag_calibra (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::NAV_MAG_CALIBRA")
  (make-package "ROLLER_EYE::NAV_MAG_CALIBRA"))
(unless (find-package "ROLLER_EYE::NAV_MAG_CALIBRAREQUEST")
  (make-package "ROLLER_EYE::NAV_MAG_CALIBRAREQUEST"))
(unless (find-package "ROLLER_EYE::NAV_MAG_CALIBRARESPONSE")
  (make-package "ROLLER_EYE::NAV_MAG_CALIBRARESPONSE"))

(in-package "ROS")





(defclass roller_eye::nav_mag_calibraRequest
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_mag_calibraRequest
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

(defclass roller_eye::nav_mag_calibraResponse
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_mag_calibraResponse
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

(defclass roller_eye::nav_mag_calibra
  :super ros::object
  :slots ())

(setf (get roller_eye::nav_mag_calibra :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get roller_eye::nav_mag_calibra :datatype-) "roller_eye/nav_mag_calibra")
(setf (get roller_eye::nav_mag_calibra :request) roller_eye::nav_mag_calibraRequest)
(setf (get roller_eye::nav_mag_calibra :response) roller_eye::nav_mag_calibraResponse)

(defmethod roller_eye::nav_mag_calibraRequest
  (:response () (instance roller_eye::nav_mag_calibraResponse :init)))

(setf (get roller_eye::nav_mag_calibraRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get roller_eye::nav_mag_calibraRequest :datatype-) "roller_eye/nav_mag_calibraRequest")
(setf (get roller_eye::nav_mag_calibraRequest :definition-)
      "---
")

(setf (get roller_eye::nav_mag_calibraResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get roller_eye::nav_mag_calibraResponse :datatype-) "roller_eye/nav_mag_calibraResponse")
(setf (get roller_eye::nav_mag_calibraResponse :definition-)
      "---
")



(provide :roller_eye/nav_mag_calibra "d41d8cd98f00b204e9800998ecf8427e")


