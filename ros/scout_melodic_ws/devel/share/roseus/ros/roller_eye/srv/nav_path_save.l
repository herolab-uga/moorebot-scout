;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::nav_path_save)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'nav_path_save (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::NAV_PATH_SAVE")
  (make-package "ROLLER_EYE::NAV_PATH_SAVE"))
(unless (find-package "ROLLER_EYE::NAV_PATH_SAVEREQUEST")
  (make-package "ROLLER_EYE::NAV_PATH_SAVEREQUEST"))
(unless (find-package "ROLLER_EYE::NAV_PATH_SAVERESPONSE")
  (make-package "ROLLER_EYE::NAV_PATH_SAVERESPONSE"))

(in-package "ROS")





(defclass roller_eye::nav_path_saveRequest
  :super ros::object
  :slots (_name ))

(defmethod roller_eye::nav_path_saveRequest
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

(defclass roller_eye::nav_path_saveResponse
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_path_saveResponse
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

(defclass roller_eye::nav_path_save
  :super ros::object
  :slots ())

(setf (get roller_eye::nav_path_save :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get roller_eye::nav_path_save :datatype-) "roller_eye/nav_path_save")
(setf (get roller_eye::nav_path_save :request) roller_eye::nav_path_saveRequest)
(setf (get roller_eye::nav_path_save :response) roller_eye::nav_path_saveResponse)

(defmethod roller_eye::nav_path_saveRequest
  (:response () (instance roller_eye::nav_path_saveResponse :init)))

(setf (get roller_eye::nav_path_saveRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get roller_eye::nav_path_saveRequest :datatype-) "roller_eye/nav_path_saveRequest")
(setf (get roller_eye::nav_path_saveRequest :definition-)
      "string name
---
")

(setf (get roller_eye::nav_path_saveResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get roller_eye::nav_path_saveResponse :datatype-) "roller_eye/nav_path_saveResponse")
(setf (get roller_eye::nav_path_saveResponse :definition-)
      "string name
---
")



(provide :roller_eye/nav_path_save "c1f3d28f1b044c871e6eff2e9fc3c667")


