;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::nav_get_patrol_name)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'nav_get_patrol_name (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::NAV_GET_PATROL_NAME")
  (make-package "ROLLER_EYE::NAV_GET_PATROL_NAME"))
(unless (find-package "ROLLER_EYE::NAV_GET_PATROL_NAMEREQUEST")
  (make-package "ROLLER_EYE::NAV_GET_PATROL_NAMEREQUEST"))
(unless (find-package "ROLLER_EYE::NAV_GET_PATROL_NAMERESPONSE")
  (make-package "ROLLER_EYE::NAV_GET_PATROL_NAMERESPONSE"))

(in-package "ROS")





(defclass roller_eye::nav_get_patrol_nameRequest
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_get_patrol_nameRequest
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

(defclass roller_eye::nav_get_patrol_nameResponse
  :super ros::object
  :slots (_name ))

(defmethod roller_eye::nav_get_patrol_nameResponse
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roller_eye::nav_get_patrol_name
  :super ros::object
  :slots ())

(setf (get roller_eye::nav_get_patrol_name :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get roller_eye::nav_get_patrol_name :datatype-) "roller_eye/nav_get_patrol_name")
(setf (get roller_eye::nav_get_patrol_name :request) roller_eye::nav_get_patrol_nameRequest)
(setf (get roller_eye::nav_get_patrol_name :response) roller_eye::nav_get_patrol_nameResponse)

(defmethod roller_eye::nav_get_patrol_nameRequest
  (:response () (instance roller_eye::nav_get_patrol_nameResponse :init)))

(setf (get roller_eye::nav_get_patrol_nameRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get roller_eye::nav_get_patrol_nameRequest :datatype-) "roller_eye/nav_get_patrol_nameRequest")
(setf (get roller_eye::nav_get_patrol_nameRequest :definition-)
      " #get patrol path name
---
string name
")

(setf (get roller_eye::nav_get_patrol_nameResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get roller_eye::nav_get_patrol_nameResponse :datatype-) "roller_eye/nav_get_patrol_nameResponse")
(setf (get roller_eye::nav_get_patrol_nameResponse :definition-)
      " #get patrol path name
---
string name
")



(provide :roller_eye/nav_get_patrol_name "c1f3d28f1b044c871e6eff2e9fc3c667")


