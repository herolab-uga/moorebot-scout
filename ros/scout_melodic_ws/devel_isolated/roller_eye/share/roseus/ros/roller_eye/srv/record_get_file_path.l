;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::record_get_file_path)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'record_get_file_path (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::RECORD_GET_FILE_PATH")
  (make-package "ROLLER_EYE::RECORD_GET_FILE_PATH"))
(unless (find-package "ROLLER_EYE::RECORD_GET_FILE_PATHREQUEST")
  (make-package "ROLLER_EYE::RECORD_GET_FILE_PATHREQUEST"))
(unless (find-package "ROLLER_EYE::RECORD_GET_FILE_PATHRESPONSE")
  (make-package "ROLLER_EYE::RECORD_GET_FILE_PATHRESPONSE"))

(in-package "ROS")





(defclass roller_eye::record_get_file_pathRequest
  :super ros::object
  :slots (_id ))

(defmethod roller_eye::record_get_file_pathRequest
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

(defclass roller_eye::record_get_file_pathResponse
  :super ros::object
  :slots (_path ))

(defmethod roller_eye::record_get_file_pathResponse
  (:init
   (&key
    ((:path __path) "")
    )
   (send-super :init)
   (setq _path (string __path))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roller_eye::record_get_file_path
  :super ros::object
  :slots ())

(setf (get roller_eye::record_get_file_path :md5sum-) "73ce38f5a1056a6317ab86498f7bf007")
(setf (get roller_eye::record_get_file_path :datatype-) "roller_eye/record_get_file_path")
(setf (get roller_eye::record_get_file_path :request) roller_eye::record_get_file_pathRequest)
(setf (get roller_eye::record_get_file_path :response) roller_eye::record_get_file_pathResponse)

(defmethod roller_eye::record_get_file_pathRequest
  (:response () (instance roller_eye::record_get_file_pathResponse :init)))

(setf (get roller_eye::record_get_file_pathRequest :md5sum-) "73ce38f5a1056a6317ab86498f7bf007")
(setf (get roller_eye::record_get_file_pathRequest :datatype-) "roller_eye/record_get_file_pathRequest")
(setf (get roller_eye::record_get_file_pathRequest :definition-)
      " #the id is used to indicate the record file
string id
---
string path
")

(setf (get roller_eye::record_get_file_pathResponse :md5sum-) "73ce38f5a1056a6317ab86498f7bf007")
(setf (get roller_eye::record_get_file_pathResponse :datatype-) "roller_eye/record_get_file_pathResponse")
(setf (get roller_eye::record_get_file_pathResponse :definition-)
      " #the id is used to indicate the record file
string id
---
string path
")



(provide :roller_eye/record_get_file_path "73ce38f5a1056a6317ab86498f7bf007")


