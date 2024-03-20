;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::record_get_files)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'record_get_files (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::RECORD_GET_FILES")
  (make-package "ROLLER_EYE::RECORD_GET_FILES"))
(unless (find-package "ROLLER_EYE::RECORD_GET_FILESREQUEST")
  (make-package "ROLLER_EYE::RECORD_GET_FILESREQUEST"))
(unless (find-package "ROLLER_EYE::RECORD_GET_FILESRESPONSE")
  (make-package "ROLLER_EYE::RECORD_GET_FILESRESPONSE"))

(in-package "ROS")





(defclass roller_eye::record_get_filesRequest
  :super ros::object
  :slots (_type _id _start _size ))

(defmethod roller_eye::record_get_filesRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:id __id) "")
    ((:start __start) 0)
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _id (string __id))
   (setq _start (round __start))
   (setq _size (round __size))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ;; string _id
    4 (length _id)
    ;; int32 _start
    4
    ;; int32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int32 _start
       (write-long _start s)
     ;; int32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _start
     (setq _start (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roller_eye::record_get_filesResponse
  :super ros::object
  :slots (_files ))

(defmethod roller_eye::record_get_filesResponse
  (:init
   (&key
    ((:files __files) (let (r) (dotimes (i 0) (push (instance roller_eye::record :init) r)) r))
    )
   (send-super :init)
   (setq _files __files)
   self)
  (:files
   (&rest __files)
   (if (keywordp (car __files))
       (send* _files __files)
     (progn
       (if __files (setq _files (car __files)))
       _files)))
  (:serialization-length
   ()
   (+
    ;; roller_eye/record[] _files
    (apply #'+ (send-all _files :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roller_eye/record[] _files
     (write-long (length _files) s)
     (dolist (elem _files)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roller_eye/record[] _files
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _files (let (r) (dotimes (i n) (push (instance roller_eye::record :init) r)) r))
     (dolist (elem- _files)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass roller_eye::record_get_files
  :super ros::object
  :slots ())

(setf (get roller_eye::record_get_files :md5sum-) "75b0c1893df243a157454eb4b9a2c1ea")
(setf (get roller_eye::record_get_files :datatype-) "roller_eye/record_get_files")
(setf (get roller_eye::record_get_files :request) roller_eye::record_get_filesRequest)
(setf (get roller_eye::record_get_files :response) roller_eye::record_get_filesResponse)

(defmethod roller_eye::record_get_filesRequest
  (:response () (instance roller_eye::record_get_filesResponse :init)))

(setf (get roller_eye::record_get_filesRequest :md5sum-) "75b0c1893df243a157454eb4b9a2c1ea")
(setf (get roller_eye::record_get_filesRequest :datatype-) "roller_eye/record_get_filesRequest")
(setf (get roller_eye::record_get_filesRequest :definition-)
      "# snapshot or record
int8 type
string id
int32 start
int32 size
---
record[] files

================================================================================
MSG: roller_eye/record
int8 RECORD_TYPE_ALL=0
int8 RECORD_TYPE_SNAPSHOT=1
int8 RECORD_TYPE_RECORD=2
int8 RECORD_TYPE_THUMB=3
int8 RECORD_TYPE_SCHED_RECORD=4

#record file descriptor
string id
string name
uint32 dur
int8 type
time create
")

(setf (get roller_eye::record_get_filesResponse :md5sum-) "75b0c1893df243a157454eb4b9a2c1ea")
(setf (get roller_eye::record_get_filesResponse :datatype-) "roller_eye/record_get_filesResponse")
(setf (get roller_eye::record_get_filesResponse :definition-)
      "# snapshot or record
int8 type
string id
int32 start
int32 size
---
record[] files

================================================================================
MSG: roller_eye/record
int8 RECORD_TYPE_ALL=0
int8 RECORD_TYPE_SNAPSHOT=1
int8 RECORD_TYPE_RECORD=2
int8 RECORD_TYPE_THUMB=3
int8 RECORD_TYPE_SCHED_RECORD=4

#record file descriptor
string id
string name
uint32 dur
int8 type
time create
")



(provide :roller_eye/record_get_files "75b0c1893df243a157454eb4b9a2c1ea")


