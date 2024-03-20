;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::task)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'task (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::TASK")
  (make-package "ROLLER_EYE::TASK"))

(in-package "ROS")
;;//! \htmlinclude task.msg.html


(defclass roller_eye::task
  :super ros::object
  :slots (_id _name _type _repeateType _repeateDays _timeYear _timeMonth _timeDay _timeHour _timeMinute _timeSecond _expire _param _notice _active ))

(defmethod roller_eye::task
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:type __type) "")
    ((:repeateType __repeateType) 0)
    ((:repeateDays __repeateDays) (make-array 0 :initial-element 0 :element-type :integer))
    ((:timeYear __timeYear) 0)
    ((:timeMonth __timeMonth) 0)
    ((:timeDay __timeDay) 0)
    ((:timeHour __timeHour) 0)
    ((:timeMinute __timeMinute) 0)
    ((:timeSecond __timeSecond) 0)
    ((:expire __expire) 0)
    ((:param __param) "")
    ((:notice __notice) nil)
    ((:active __active) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _repeateType (round __repeateType))
   (setq _repeateDays __repeateDays)
   (setq _timeYear (round __timeYear))
   (setq _timeMonth (round __timeMonth))
   (setq _timeDay (round __timeDay))
   (setq _timeHour (round __timeHour))
   (setq _timeMinute (round __timeMinute))
   (setq _timeSecond (round __timeSecond))
   (setq _expire (round __expire))
   (setq _param (string __param))
   (setq _notice __notice)
   (setq _active __active)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:repeateType
   (&optional __repeateType)
   (if __repeateType (setq _repeateType __repeateType)) _repeateType)
  (:repeateDays
   (&optional __repeateDays)
   (if __repeateDays (setq _repeateDays __repeateDays)) _repeateDays)
  (:timeYear
   (&optional __timeYear)
   (if __timeYear (setq _timeYear __timeYear)) _timeYear)
  (:timeMonth
   (&optional __timeMonth)
   (if __timeMonth (setq _timeMonth __timeMonth)) _timeMonth)
  (:timeDay
   (&optional __timeDay)
   (if __timeDay (setq _timeDay __timeDay)) _timeDay)
  (:timeHour
   (&optional __timeHour)
   (if __timeHour (setq _timeHour __timeHour)) _timeHour)
  (:timeMinute
   (&optional __timeMinute)
   (if __timeMinute (setq _timeMinute __timeMinute)) _timeMinute)
  (:timeSecond
   (&optional __timeSecond)
   (if __timeSecond (setq _timeSecond __timeSecond)) _timeSecond)
  (:expire
   (&optional __expire)
   (if __expire (setq _expire __expire)) _expire)
  (:param
   (&optional __param)
   (if __param (setq _param __param)) _param)
  (:notice
   (&optional __notice)
   (if __notice (setq _notice __notice)) _notice)
  (:active
   (&optional __active)
   (if __active (setq _active __active)) _active)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; int8 _repeateType
    1
    ;; int8[] _repeateDays
    (* 1    (length _repeateDays)) 4
    ;; int32 _timeYear
    4
    ;; int8 _timeMonth
    1
    ;; int8 _timeDay
    1
    ;; int8 _timeHour
    1
    ;; int8 _timeMinute
    1
    ;; int8 _timeSecond
    1
    ;; int32 _expire
    4
    ;; string _param
    4 (length _param)
    ;; bool _notice
    1
    ;; bool _active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; int8 _repeateType
       (write-byte _repeateType s)
     ;; int8[] _repeateDays
     (write-long (length _repeateDays) s)
     (dotimes (i (length _repeateDays))
       (write-byte (elt _repeateDays i) s)
       )
     ;; int32 _timeYear
       (write-long _timeYear s)
     ;; int8 _timeMonth
       (write-byte _timeMonth s)
     ;; int8 _timeDay
       (write-byte _timeDay s)
     ;; int8 _timeHour
       (write-byte _timeHour s)
     ;; int8 _timeMinute
       (write-byte _timeMinute s)
     ;; int8 _timeSecond
       (write-byte _timeSecond s)
     ;; int32 _expire
       (write-long _expire s)
     ;; string _param
       (write-long (length _param) s) (princ _param s)
     ;; bool _notice
       (if _notice (write-byte -1 s) (write-byte 0 s))
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _repeateType
     (setq _repeateType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _repeateType 127) (setq _repeateType (- _repeateType 256)))
   ;; int8[] _repeateDays
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _repeateDays (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _repeateDays i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _repeateDays i) 127) (setf (elt _repeateDays i) (- (elt _repeateDays i) 256)))
     ))
   ;; int32 _timeYear
     (setq _timeYear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _timeMonth
     (setq _timeMonth (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _timeMonth 127) (setq _timeMonth (- _timeMonth 256)))
   ;; int8 _timeDay
     (setq _timeDay (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _timeDay 127) (setq _timeDay (- _timeDay 256)))
   ;; int8 _timeHour
     (setq _timeHour (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _timeHour 127) (setq _timeHour (- _timeHour 256)))
   ;; int8 _timeMinute
     (setq _timeMinute (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _timeMinute 127) (setq _timeMinute (- _timeMinute 256)))
   ;; int8 _timeSecond
     (setq _timeSecond (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _timeSecond 127) (setq _timeSecond (- _timeSecond 256)))
   ;; int32 _expire
     (setq _expire (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _param
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _notice
     (setq _notice (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roller_eye::task :md5sum-) "9830df15a89026240f987f0f60f06f98")
(setf (get roller_eye::task :datatype-) "roller_eye/task")
(setf (get roller_eye::task :definition-)
      "int32 id
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
bool active
")



(provide :roller_eye/task "9830df15a89026240f987f0f60f06f98")


