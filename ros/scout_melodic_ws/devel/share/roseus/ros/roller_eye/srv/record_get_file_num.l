;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::record_get_file_num)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'record_get_file_num (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::RECORD_GET_FILE_NUM")
  (make-package "ROLLER_EYE::RECORD_GET_FILE_NUM"))
(unless (find-package "ROLLER_EYE::RECORD_GET_FILE_NUMREQUEST")
  (make-package "ROLLER_EYE::RECORD_GET_FILE_NUMREQUEST"))
(unless (find-package "ROLLER_EYE::RECORD_GET_FILE_NUMRESPONSE")
  (make-package "ROLLER_EYE::RECORD_GET_FILE_NUMRESPONSE"))

(in-package "ROS")





(defclass roller_eye::record_get_file_numRequest
  :super ros::object
  :slots (_type ))

(defmethod roller_eye::record_get_file_numRequest
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

(defclass roller_eye::record_get_file_numResponse
  :super ros::object
  :slots (_count ))

(defmethod roller_eye::record_get_file_numResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roller_eye::record_get_file_num
  :super ros::object
  :slots ())

(setf (get roller_eye::record_get_file_num :md5sum-) "512c7fac39aff0618cf82eac01aae055")
(setf (get roller_eye::record_get_file_num :datatype-) "roller_eye/record_get_file_num")
(setf (get roller_eye::record_get_file_num :request) roller_eye::record_get_file_numRequest)
(setf (get roller_eye::record_get_file_num :response) roller_eye::record_get_file_numResponse)

(defmethod roller_eye::record_get_file_numRequest
  (:response () (instance roller_eye::record_get_file_numResponse :init)))

(setf (get roller_eye::record_get_file_numRequest :md5sum-) "512c7fac39aff0618cf82eac01aae055")
(setf (get roller_eye::record_get_file_numRequest :datatype-) "roller_eye/record_get_file_numRequest")
(setf (get roller_eye::record_get_file_numRequest :definition-)
      "# snapshot or record
int8 type
---
int32 count
")

(setf (get roller_eye::record_get_file_numResponse :md5sum-) "512c7fac39aff0618cf82eac01aae055")
(setf (get roller_eye::record_get_file_numResponse :datatype-) "roller_eye/record_get_file_numResponse")
(setf (get roller_eye::record_get_file_numResponse :definition-)
      "# snapshot or record
int8 type
---
int32 count
")



(provide :roller_eye/record_get_file_num "512c7fac39aff0618cf82eac01aae055")


