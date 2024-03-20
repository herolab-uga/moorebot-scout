;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::record_delete_file)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'record_delete_file (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::RECORD_DELETE_FILE")
  (make-package "ROLLER_EYE::RECORD_DELETE_FILE"))
(unless (find-package "ROLLER_EYE::RECORD_DELETE_FILEREQUEST")
  (make-package "ROLLER_EYE::RECORD_DELETE_FILEREQUEST"))
(unless (find-package "ROLLER_EYE::RECORD_DELETE_FILERESPONSE")
  (make-package "ROLLER_EYE::RECORD_DELETE_FILERESPONSE"))

(in-package "ROS")





(defclass roller_eye::record_delete_fileRequest
  :super ros::object
  :slots (_id ))

(defmethod roller_eye::record_delete_fileRequest
  (:init
   (&key
    ((:id __id) "")
    )
   (send-super :init)
   (setq _id (string __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roller_eye::record_delete_fileResponse
  :super ros::object
  :slots (_status ))

(defmethod roller_eye::record_delete_fileResponse
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

(defclass roller_eye::record_delete_file
  :super ros::object
  :slots ())

(setf (get roller_eye::record_delete_file :md5sum-) "d174aae7b527c51850235bfe2b29a33b")
(setf (get roller_eye::record_delete_file :datatype-) "roller_eye/record_delete_file")
(setf (get roller_eye::record_delete_file :request) roller_eye::record_delete_fileRequest)
(setf (get roller_eye::record_delete_file :response) roller_eye::record_delete_fileResponse)

(defmethod roller_eye::record_delete_fileRequest
  (:response () (instance roller_eye::record_delete_fileResponse :init)))

(setf (get roller_eye::record_delete_fileRequest :md5sum-) "d174aae7b527c51850235bfe2b29a33b")
(setf (get roller_eye::record_delete_fileRequest :datatype-) "roller_eye/record_delete_fileRequest")
(setf (get roller_eye::record_delete_fileRequest :definition-)
      "#the id is used to indicate the record file
string id
---
int8 status
")

(setf (get roller_eye::record_delete_fileResponse :md5sum-) "d174aae7b527c51850235bfe2b29a33b")
(setf (get roller_eye::record_delete_fileResponse :datatype-) "roller_eye/record_delete_fileResponse")
(setf (get roller_eye::record_delete_fileResponse :definition-)
      "#the id is used to indicate the record file
string id
---
int8 status
")



(provide :roller_eye/record_delete_file "d174aae7b527c51850235bfe2b29a33b")


