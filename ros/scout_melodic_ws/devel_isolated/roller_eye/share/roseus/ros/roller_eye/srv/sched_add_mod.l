;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::sched_add_mod)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'sched_add_mod (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::SCHED_ADD_MOD")
  (make-package "ROLLER_EYE::SCHED_ADD_MOD"))
(unless (find-package "ROLLER_EYE::SCHED_ADD_MODREQUEST")
  (make-package "ROLLER_EYE::SCHED_ADD_MODREQUEST"))
(unless (find-package "ROLLER_EYE::SCHED_ADD_MODRESPONSE")
  (make-package "ROLLER_EYE::SCHED_ADD_MODRESPONSE"))

(in-package "ROS")





(defclass roller_eye::sched_add_modRequest
  :super ros::object
  :slots (_tsk ))

(defmethod roller_eye::sched_add_modRequest
  (:init
   (&key
    ((:tsk __tsk) (instance roller_eye::task :init))
    )
   (send-super :init)
   (setq _tsk __tsk)
   self)
  (:tsk
   (&rest __tsk)
   (if (keywordp (car __tsk))
       (send* _tsk __tsk)
     (progn
       (if __tsk (setq _tsk (car __tsk)))
       _tsk)))
  (:serialization-length
   ()
   (+
    ;; roller_eye/task _tsk
    (send _tsk :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roller_eye/task _tsk
       (send _tsk :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roller_eye/task _tsk
     (send _tsk :deserialize buf ptr-) (incf ptr- (send _tsk :serialization-length))
   ;;
   self)
  )

(defclass roller_eye::sched_add_modResponse
  :super ros::object
  :slots (_id ))

(defmethod roller_eye::sched_add_modResponse
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roller_eye::sched_add_mod
  :super ros::object
  :slots ())

(setf (get roller_eye::sched_add_mod :md5sum-) "e0be7b42d9f9c638e488c09d9f0ede84")
(setf (get roller_eye::sched_add_mod :datatype-) "roller_eye/sched_add_mod")
(setf (get roller_eye::sched_add_mod :request) roller_eye::sched_add_modRequest)
(setf (get roller_eye::sched_add_mod :response) roller_eye::sched_add_modResponse)

(defmethod roller_eye::sched_add_modRequest
  (:response () (instance roller_eye::sched_add_modResponse :init)))

(setf (get roller_eye::sched_add_modRequest :md5sum-) "e0be7b42d9f9c638e488c09d9f0ede84")
(setf (get roller_eye::sched_add_modRequest :datatype-) "roller_eye/sched_add_modRequest")
(setf (get roller_eye::sched_add_modRequest :definition-)
      "task tsk

================================================================================
MSG: roller_eye/task
int32 id
string name
string type
int8 repeateType
int8[] repeateDays
int32 timeYear
int8 timeMonth
int8 timeDay
int8 timeHour
int8 timeMinute
int8 timeSecond
int32 expire
string param
bool notice
---
int32 id


")

(setf (get roller_eye::sched_add_modResponse :md5sum-) "e0be7b42d9f9c638e488c09d9f0ede84")
(setf (get roller_eye::sched_add_modResponse :datatype-) "roller_eye/sched_add_modResponse")
(setf (get roller_eye::sched_add_modResponse :definition-)
      "task tsk

================================================================================
MSG: roller_eye/task
int32 id
string name
string type
int8 repeateType
int8[] repeateDays
int32 timeYear
int8 timeMonth
int8 timeDay
int8 timeHour
int8 timeMinute
int8 timeSecond
int32 expire
string param
bool notice
---
int32 id


")



(provide :roller_eye/sched_add_mod "e0be7b42d9f9c638e488c09d9f0ede84")


