;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::record)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'record (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::RECORD")
  (make-package "ROLLER_EYE::RECORD"))

(in-package "ROS")
;;//! \htmlinclude record.msg.html


(intern "*RECORD_TYPE_ALL*" (find-package "ROLLER_EYE::RECORD"))
(shadow '*RECORD_TYPE_ALL* (find-package "ROLLER_EYE::RECORD"))
(defconstant roller_eye::record::*RECORD_TYPE_ALL* 0)
(intern "*RECORD_TYPE_SNAPSHOT*" (find-package "ROLLER_EYE::RECORD"))
(shadow '*RECORD_TYPE_SNAPSHOT* (find-package "ROLLER_EYE::RECORD"))
(defconstant roller_eye::record::*RECORD_TYPE_SNAPSHOT* 1)
(intern "*RECORD_TYPE_RECORD*" (find-package "ROLLER_EYE::RECORD"))
(shadow '*RECORD_TYPE_RECORD* (find-package "ROLLER_EYE::RECORD"))
(defconstant roller_eye::record::*RECORD_TYPE_RECORD* 2)
(intern "*RECORD_TYPE_THUMB*" (find-package "ROLLER_EYE::RECORD"))
(shadow '*RECORD_TYPE_THUMB* (find-package "ROLLER_EYE::RECORD"))
(defconstant roller_eye::record::*RECORD_TYPE_THUMB* 3)
(intern "*RECORD_TYPE_SCHED_RECORD*" (find-package "ROLLER_EYE::RECORD"))
(shadow '*RECORD_TYPE_SCHED_RECORD* (find-package "ROLLER_EYE::RECORD"))
(defconstant roller_eye::record::*RECORD_TYPE_SCHED_RECORD* 4)
(defclass roller_eye::record
  :super ros::object
  :slots (_id _name _dur _type _create _size ))

(defmethod roller_eye::record
  (:init
   (&key
    ((:id __id) "")
    ((:name __name) "")
    ((:dur __dur) 0)
    ((:type __type) 0)
    ((:create __create) (instance ros::time :init))
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _name (string __name))
   (setq _dur (round __dur))
   (setq _type (round __type))
   (setq _create __create)
   (setq _size (round __size))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:dur
   (&optional __dur)
   (if __dur (setq _dur __dur)) _dur)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:create
   (&optional __create)
   (if __create (setq _create __create)) _create)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _name
    4 (length _name)
    ;; uint32 _dur
    4
    ;; int8 _type
    1
    ;; time _create
    8
    ;; uint32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint32 _dur
       (write-long _dur s)
     ;; int8 _type
       (write-byte _type s)
     ;; time _create
       (write-long (send _create :sec) s) (write-long (send _create :nsec) s)
     ;; uint32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _dur
     (setq _dur (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; time _create
     (send _create :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _create :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roller_eye::record :md5sum-) "544f18c422ce92fad9c49fbb341e07c5")
(setf (get roller_eye::record :datatype-) "roller_eye/record")
(setf (get roller_eye::record :definition-)
      "int8 RECORD_TYPE_ALL=0
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
uint32 size
")



(provide :roller_eye/record "544f18c422ce92fad9c49fbb341e07c5")


