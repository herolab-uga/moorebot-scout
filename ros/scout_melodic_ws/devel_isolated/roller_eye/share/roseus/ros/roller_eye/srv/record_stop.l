;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::record_stop)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'record_stop (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::RECORD_STOP")
  (make-package "ROLLER_EYE::RECORD_STOP"))
(unless (find-package "ROLLER_EYE::RECORD_STOPREQUEST")
  (make-package "ROLLER_EYE::RECORD_STOPREQUEST"))
(unless (find-package "ROLLER_EYE::RECORD_STOPRESPONSE")
  (make-package "ROLLER_EYE::RECORD_STOPRESPONSE"))

(in-package "ROS")





(defclass roller_eye::record_stopRequest
  :super ros::object
  :slots (_type ))

(defmethod roller_eye::record_stopRequest
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
    ;; int8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;;
   self)
  )

(defclass roller_eye::record_stopResponse
  :super ros::object
  :slots (_status ))

(defmethod roller_eye::record_stopResponse
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
    ;; int8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(defclass roller_eye::record_stop
  :super ros::object
  :slots ())

(setf (get roller_eye::record_stop :md5sum-) "2534c826460bf93cfe607a7e6b3bfe9d")
(setf (get roller_eye::record_stop :datatype-) "roller_eye/record_stop")
(setf (get roller_eye::record_stop :request) roller_eye::record_stopRequest)
(setf (get roller_eye::record_stop :response) roller_eye::record_stopResponse)

(defmethod roller_eye::record_stopRequest
  (:response () (instance roller_eye::record_stopResponse :init)))

(setf (get roller_eye::record_stopRequest :md5sum-) "2534c826460bf93cfe607a7e6b3bfe9d")
(setf (get roller_eye::record_stopRequest :datatype-) "roller_eye/record_stopRequest")
(setf (get roller_eye::record_stopRequest :definition-)
      "# snapshot or record
int8 type
---
int8 status

")

(setf (get roller_eye::record_stopResponse :md5sum-) "2534c826460bf93cfe607a7e6b3bfe9d")
(setf (get roller_eye::record_stopResponse :datatype-) "roller_eye/record_stopResponse")
(setf (get roller_eye::record_stopResponse :definition-)
      "# snapshot or record
int8 type
---
int8 status

")



(provide :roller_eye/record_stop "2534c826460bf93cfe607a7e6b3bfe9d")


