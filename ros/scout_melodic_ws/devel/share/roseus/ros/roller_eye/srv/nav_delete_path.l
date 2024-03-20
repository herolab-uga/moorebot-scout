;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::nav_delete_path)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'nav_delete_path (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::NAV_DELETE_PATH")
  (make-package "ROLLER_EYE::NAV_DELETE_PATH"))
(unless (find-package "ROLLER_EYE::NAV_DELETE_PATHREQUEST")
  (make-package "ROLLER_EYE::NAV_DELETE_PATHREQUEST"))
(unless (find-package "ROLLER_EYE::NAV_DELETE_PATHRESPONSE")
  (make-package "ROLLER_EYE::NAV_DELETE_PATHRESPONSE"))

(in-package "ROS")





(defclass roller_eye::nav_delete_pathRequest
  :super ros::object
  :slots (_names ))

(defmethod roller_eye::nav_delete_pathRequest
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _names __names)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roller_eye::nav_delete_pathResponse
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_delete_pathResponse
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

(defclass roller_eye::nav_delete_path
  :super ros::object
  :slots ())

(setf (get roller_eye::nav_delete_path :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get roller_eye::nav_delete_path :datatype-) "roller_eye/nav_delete_path")
(setf (get roller_eye::nav_delete_path :request) roller_eye::nav_delete_pathRequest)
(setf (get roller_eye::nav_delete_path :response) roller_eye::nav_delete_pathResponse)

(defmethod roller_eye::nav_delete_pathRequest
  (:response () (instance roller_eye::nav_delete_pathResponse :init)))

(setf (get roller_eye::nav_delete_pathRequest :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get roller_eye::nav_delete_pathRequest :datatype-) "roller_eye/nav_delete_pathRequest")
(setf (get roller_eye::nav_delete_pathRequest :definition-)
      "string[] names
---
")

(setf (get roller_eye::nav_delete_pathResponse :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get roller_eye::nav_delete_pathResponse :datatype-) "roller_eye/nav_delete_pathResponse")
(setf (get roller_eye::nav_delete_pathResponse :definition-)
      "string[] names
---
")



(provide :roller_eye/nav_delete_path "dc7ae3609524b18034e49294a4ce670e")


