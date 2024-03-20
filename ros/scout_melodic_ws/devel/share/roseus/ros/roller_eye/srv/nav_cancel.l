;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::nav_cancel)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'nav_cancel (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::NAV_CANCEL")
  (make-package "ROLLER_EYE::NAV_CANCEL"))
(unless (find-package "ROLLER_EYE::NAV_CANCELREQUEST")
  (make-package "ROLLER_EYE::NAV_CANCELREQUEST"))
(unless (find-package "ROLLER_EYE::NAV_CANCELRESPONSE")
  (make-package "ROLLER_EYE::NAV_CANCELRESPONSE"))

(in-package "ROS")





(defclass roller_eye::nav_cancelRequest
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_cancelRequest
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

(defclass roller_eye::nav_cancelResponse
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_cancelResponse
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

(defclass roller_eye::nav_cancel
  :super ros::object
  :slots ())

(setf (get roller_eye::nav_cancel :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get roller_eye::nav_cancel :datatype-) "roller_eye/nav_cancel")
(setf (get roller_eye::nav_cancel :request) roller_eye::nav_cancelRequest)
(setf (get roller_eye::nav_cancel :response) roller_eye::nav_cancelResponse)

(defmethod roller_eye::nav_cancelRequest
  (:response () (instance roller_eye::nav_cancelResponse :init)))

(setf (get roller_eye::nav_cancelRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get roller_eye::nav_cancelRequest :datatype-) "roller_eye/nav_cancelRequest")
(setf (get roller_eye::nav_cancelRequest :definition-)
      "---
")

(setf (get roller_eye::nav_cancelResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get roller_eye::nav_cancelResponse :datatype-) "roller_eye/nav_cancelResponse")
(setf (get roller_eye::nav_cancelResponse :definition-)
      "---
")



(provide :roller_eye/nav_cancel "d41d8cd98f00b204e9800998ecf8427e")


