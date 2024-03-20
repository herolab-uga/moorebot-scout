;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::record_clean)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'record_clean (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::RECORD_CLEAN")
  (make-package "ROLLER_EYE::RECORD_CLEAN"))
(unless (find-package "ROLLER_EYE::RECORD_CLEANREQUEST")
  (make-package "ROLLER_EYE::RECORD_CLEANREQUEST"))
(unless (find-package "ROLLER_EYE::RECORD_CLEANRESPONSE")
  (make-package "ROLLER_EYE::RECORD_CLEANRESPONSE"))

(in-package "ROS")





(defclass roller_eye::record_cleanRequest
  :super ros::object
  :slots (_type ))

(defmethod roller_eye::record_cleanRequest
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roller_eye::record_cleanResponse
  :super ros::object
  :slots ())

(defmethod roller_eye::record_cleanResponse
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

(defclass roller_eye::record_clean
  :super ros::object
  :slots ())

(setf (get roller_eye::record_clean :md5sum-) "bda37decd5e3814bcc042f341d2e60a1")
(setf (get roller_eye::record_clean :datatype-) "roller_eye/record_clean")
(setf (get roller_eye::record_clean :request) roller_eye::record_cleanRequest)
(setf (get roller_eye::record_clean :response) roller_eye::record_cleanResponse)

(defmethod roller_eye::record_cleanRequest
  (:response () (instance roller_eye::record_cleanResponse :init)))

(setf (get roller_eye::record_cleanRequest :md5sum-) "bda37decd5e3814bcc042f341d2e60a1")
(setf (get roller_eye::record_cleanRequest :datatype-) "roller_eye/record_cleanRequest")
(setf (get roller_eye::record_cleanRequest :definition-)
      "int32 type

---
")

(setf (get roller_eye::record_cleanResponse :md5sum-) "bda37decd5e3814bcc042f341d2e60a1")
(setf (get roller_eye::record_cleanResponse :datatype-) "roller_eye/record_cleanResponse")
(setf (get roller_eye::record_cleanResponse :definition-)
      "int32 type

---
")



(provide :roller_eye/record_clean "bda37decd5e3814bcc042f341d2e60a1")


