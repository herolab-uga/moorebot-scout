;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::rtmp_start)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'rtmp_start (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::RTMP_START")
  (make-package "ROLLER_EYE::RTMP_START"))
(unless (find-package "ROLLER_EYE::RTMP_STARTREQUEST")
  (make-package "ROLLER_EYE::RTMP_STARTREQUEST"))
(unless (find-package "ROLLER_EYE::RTMP_STARTRESPONSE")
  (make-package "ROLLER_EYE::RTMP_STARTRESPONSE"))

(in-package "ROS")





(defclass roller_eye::rtmp_startRequest
  :super ros::object
  :slots (_app _name _cache _live _duration _flags ))

(defmethod roller_eye::rtmp_startRequest
  (:init
   (&key
    ((:app __app) "")
    ((:name __name) "")
    ((:cache __cache) nil)
    ((:live __live) nil)
    ((:duration __duration) 0)
    ((:flags __flags) 0)
    )
   (send-super :init)
   (setq _app (string __app))
   (setq _name (string __name))
   (setq _cache __cache)
   (setq _live __live)
   (setq _duration (round __duration))
   (setq _flags (round __flags))
   self)
  (:app
   (&optional __app)
   (if __app (setq _app __app)) _app)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:cache
   (&optional __cache)
   (if __cache (setq _cache __cache)) _cache)
  (:live
   (&optional __live)
   (if __live (setq _live __live)) _live)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:serialization-length
   ()
   (+
    ;; string _app
    4 (length _app)
    ;; string _name
    4 (length _name)
    ;; bool _cache
    1
    ;; bool _live
    1
    ;; int32 _duration
    4
    ;; uint32 _flags
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _app
       (write-long (length _app) s) (princ _app s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _cache
       (if _cache (write-byte -1 s) (write-byte 0 s))
     ;; bool _live
       (if _live (write-byte -1 s) (write-byte 0 s))
     ;; int32 _duration
       (write-long _duration s)
     ;; uint32 _flags
       (write-long _flags s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _app
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _app (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _cache
     (setq _cache (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _live
     (setq _live (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _flags
     (setq _flags (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roller_eye::rtmp_startResponse
  :super ros::object
  :slots (_result ))

(defmethod roller_eye::rtmp_startResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _result 127) (setq _result (- _result 256)))
   ;;
   self)
  )

(defclass roller_eye::rtmp_start
  :super ros::object
  :slots ())

(setf (get roller_eye::rtmp_start :md5sum-) "4b6f77a45b623c28a4a7ea205bfd70b1")
(setf (get roller_eye::rtmp_start :datatype-) "roller_eye/rtmp_start")
(setf (get roller_eye::rtmp_start :request) roller_eye::rtmp_startRequest)
(setf (get roller_eye::rtmp_start :response) roller_eye::rtmp_startResponse)

(defmethod roller_eye::rtmp_startRequest
  (:response () (instance roller_eye::rtmp_startResponse :init)))

(setf (get roller_eye::rtmp_startRequest :md5sum-) "4b6f77a45b623c28a4a7ea205bfd70b1")
(setf (get roller_eye::rtmp_startRequest :datatype-) "roller_eye/rtmp_startRequest")
(setf (get roller_eye::rtmp_startRequest :definition-)
      "#value is \"live\" or \"monitor\",when set \"monitor\" the server will record the data
string app
#stream name
string name
#need to be cached in local
bool cache
#need to open the camera,if false the video data will load from local cache
bool live
#the duration of the stream
int32 duration
#av flag
uint32 flags
---
int8 result
")

(setf (get roller_eye::rtmp_startResponse :md5sum-) "4b6f77a45b623c28a4a7ea205bfd70b1")
(setf (get roller_eye::rtmp_startResponse :datatype-) "roller_eye/rtmp_startResponse")
(setf (get roller_eye::rtmp_startResponse :definition-)
      "#value is \"live\" or \"monitor\",when set \"monitor\" the server will record the data
string app
#stream name
string name
#need to be cached in local
bool cache
#need to open the camera,if false the video data will load from local cache
bool live
#the duration of the stream
int32 duration
#av flag
uint32 flags
---
int8 result
")



(provide :roller_eye/rtmp_start "4b6f77a45b623c28a4a7ea205bfd70b1")


