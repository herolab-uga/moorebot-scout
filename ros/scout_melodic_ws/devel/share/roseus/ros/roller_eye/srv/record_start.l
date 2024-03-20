;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::record_start)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'record_start (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::RECORD_START")
  (make-package "ROLLER_EYE::RECORD_START"))
(unless (find-package "ROLLER_EYE::RECORD_STARTREQUEST")
  (make-package "ROLLER_EYE::RECORD_STARTREQUEST"))
(unless (find-package "ROLLER_EYE::RECORD_STARTRESPONSE")
  (make-package "ROLLER_EYE::RECORD_STARTRESPONSE"))

(in-package "ROS")





(defclass roller_eye::record_startRequest
  :super ros::object
  :slots (_type _mode _duration _count ))

(defmethod roller_eye::record_startRequest
  (:init
   (&key
    ((:type __type) 0)
    ((:mode __mode) 0)
    ((:duration __duration) 0)
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _mode (round __mode))
   (setq _duration (round __duration))
   (setq _count (round __count))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ;; int8 _mode
    1
    ;; uint32 _duration
    4
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;; int8 _mode
       (write-byte _mode s)
     ;; uint32 _duration
       (write-long _duration s)
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; uint32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roller_eye::record_startResponse
  :super ros::object
  :slots (_status _id ))

(defmethod roller_eye::record_startResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:id __id) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _id (string __id))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int8 _status
    1
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _status
       (write-byte _status s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roller_eye::record_start
  :super ros::object
  :slots ())

(setf (get roller_eye::record_start :md5sum-) "dcee8cdcb7a021562b0a24a30cc43016")
(setf (get roller_eye::record_start :datatype-) "roller_eye/record_start")
(setf (get roller_eye::record_start :request) roller_eye::record_startRequest)
(setf (get roller_eye::record_start :response) roller_eye::record_startResponse)

(defmethod roller_eye::record_startRequest
  (:response () (instance roller_eye::record_startResponse :init)))

(setf (get roller_eye::record_startRequest :md5sum-) "dcee8cdcb7a021562b0a24a30cc43016")
(setf (get roller_eye::record_startRequest :datatype-) "roller_eye/record_startRequest")
(setf (get roller_eye::record_startRequest :definition-)
      "# snapshot or record
int8 type
int8 mode
uint32 duration
int32 count
---
int8 status
#the id is used to indicate the record file
string id

")

(setf (get roller_eye::record_startResponse :md5sum-) "dcee8cdcb7a021562b0a24a30cc43016")
(setf (get roller_eye::record_startResponse :datatype-) "roller_eye/record_startResponse")
(setf (get roller_eye::record_startResponse :definition-)
      "# snapshot or record
int8 type
int8 mode
uint32 duration
int32 count
---
int8 status
#the id is used to indicate the record file
string id

")



(provide :roller_eye/record_start "dcee8cdcb7a021562b0a24a30cc43016")


