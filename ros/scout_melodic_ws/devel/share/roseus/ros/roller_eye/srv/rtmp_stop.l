;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::rtmp_stop)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'rtmp_stop (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::RTMP_STOP")
  (make-package "ROLLER_EYE::RTMP_STOP"))
(unless (find-package "ROLLER_EYE::RTMP_STOPREQUEST")
  (make-package "ROLLER_EYE::RTMP_STOPREQUEST"))
(unless (find-package "ROLLER_EYE::RTMP_STOPRESPONSE")
  (make-package "ROLLER_EYE::RTMP_STOPRESPONSE"))

(in-package "ROS")





(defclass roller_eye::rtmp_stopRequest
  :super ros::object
  :slots (_app _name ))

(defmethod roller_eye::rtmp_stopRequest
  (:init
   (&key
    ((:app __app) "")
    ((:name __name) "")
    )
   (send-super :init)
   (setq _app (string __app))
   (setq _name (string __name))
   self)
  (:app
   (&optional __app)
   (if __app (setq _app __app)) _app)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _app
    4 (length _app)
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _app
       (write-long (length _app) s) (princ _app s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _app
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _app (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roller_eye::rtmp_stopResponse
  :super ros::object
  :slots (_result ))

(defmethod roller_eye::rtmp_stopResponse
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

(defclass roller_eye::rtmp_stop
  :super ros::object
  :slots ())

(setf (get roller_eye::rtmp_stop :md5sum-) "f6dfd2cf4653c7fe4ab53921ea828817")
(setf (get roller_eye::rtmp_stop :datatype-) "roller_eye/rtmp_stop")
(setf (get roller_eye::rtmp_stop :request) roller_eye::rtmp_stopRequest)
(setf (get roller_eye::rtmp_stop :response) roller_eye::rtmp_stopResponse)

(defmethod roller_eye::rtmp_stopRequest
  (:response () (instance roller_eye::rtmp_stopResponse :init)))

(setf (get roller_eye::rtmp_stopRequest :md5sum-) "f6dfd2cf4653c7fe4ab53921ea828817")
(setf (get roller_eye::rtmp_stopRequest :datatype-) "roller_eye/rtmp_stopRequest")
(setf (get roller_eye::rtmp_stopRequest :definition-)
      "string app
string name
---
int8 result
")

(setf (get roller_eye::rtmp_stopResponse :md5sum-) "f6dfd2cf4653c7fe4ab53921ea828817")
(setf (get roller_eye::rtmp_stopResponse :datatype-) "roller_eye/rtmp_stopResponse")
(setf (get roller_eye::rtmp_stopResponse :definition-)
      "string app
string name
---
int8 result
")



(provide :roller_eye/rtmp_stop "f6dfd2cf4653c7fe4ab53921ea828817")


