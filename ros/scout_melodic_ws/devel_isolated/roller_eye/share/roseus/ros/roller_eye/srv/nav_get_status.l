;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::nav_get_status)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'nav_get_status (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::NAV_GET_STATUS")
  (make-package "ROLLER_EYE::NAV_GET_STATUS"))
(unless (find-package "ROLLER_EYE::NAV_GET_STATUSREQUEST")
  (make-package "ROLLER_EYE::NAV_GET_STATUSREQUEST"))
(unless (find-package "ROLLER_EYE::NAV_GET_STATUSRESPONSE")
  (make-package "ROLLER_EYE::NAV_GET_STATUSRESPONSE"))

(in-package "ROS")





(defclass roller_eye::nav_get_statusRequest
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_get_statusRequest
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

(defclass roller_eye::nav_get_statusResponse
  :super ros::object
  :slots (_status ))

(defmethod roller_eye::nav_get_statusResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roller_eye::nav_get_status
  :super ros::object
  :slots ())

(setf (get roller_eye::nav_get_status :md5sum-) "86791dcf1de997ec7de5a0de7e4dcfcc")
(setf (get roller_eye::nav_get_status :datatype-) "roller_eye/nav_get_status")
(setf (get roller_eye::nav_get_status :request) roller_eye::nav_get_statusRequest)
(setf (get roller_eye::nav_get_status :response) roller_eye::nav_get_statusResponse)

(defmethod roller_eye::nav_get_statusRequest
  (:response () (instance roller_eye::nav_get_statusResponse :init)))

(setf (get roller_eye::nav_get_statusRequest :md5sum-) "86791dcf1de997ec7de5a0de7e4dcfcc")
(setf (get roller_eye::nav_get_statusRequest :datatype-) "roller_eye/nav_get_statusRequest")
(setf (get roller_eye::nav_get_statusRequest :definition-)
      " #get nav status
---
int32 status
")

(setf (get roller_eye::nav_get_statusResponse :md5sum-) "86791dcf1de997ec7de5a0de7e4dcfcc")
(setf (get roller_eye::nav_get_statusResponse :datatype-) "roller_eye/nav_get_statusResponse")
(setf (get roller_eye::nav_get_statusResponse :definition-)
      " #get nav status
---
int32 status
")



(provide :roller_eye/nav_get_status "86791dcf1de997ec7de5a0de7e4dcfcc")


