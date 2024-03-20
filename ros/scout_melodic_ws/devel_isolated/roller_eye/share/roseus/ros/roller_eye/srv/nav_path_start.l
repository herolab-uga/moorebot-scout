;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::nav_path_start)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'nav_path_start (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::NAV_PATH_START")
  (make-package "ROLLER_EYE::NAV_PATH_START"))
(unless (find-package "ROLLER_EYE::NAV_PATH_STARTREQUEST")
  (make-package "ROLLER_EYE::NAV_PATH_STARTREQUEST"))
(unless (find-package "ROLLER_EYE::NAV_PATH_STARTRESPONSE")
  (make-package "ROLLER_EYE::NAV_PATH_STARTRESPONSE"))

(in-package "ROS")





(defclass roller_eye::nav_path_startRequest
  :super ros::object
  :slots (_isFromOutStart _name ))

(defmethod roller_eye::nav_path_startRequest
  (:init
   (&key
    ((:isFromOutStart __isFromOutStart) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _isFromOutStart (round __isFromOutStart))
   (setq _name (string __name))
   self)
  (:isFromOutStart
   (&optional __isFromOutStart)
   (if __isFromOutStart (setq _isFromOutStart __isFromOutStart)) _isFromOutStart)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int8 _isFromOutStart
    1
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _isFromOutStart
       (write-byte _isFromOutStart s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _isFromOutStart
     (setq _isFromOutStart (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _isFromOutStart 127) (setq _isFromOutStart (- _isFromOutStart 256)))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roller_eye::nav_path_startResponse
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_path_startResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roller_eye::nav_path_start
  :super ros::object
  :slots ())

(setf (get roller_eye::nav_path_start :md5sum-) "3c9f7c0536edb947c8a33193074afe9e")
(setf (get roller_eye::nav_path_start :datatype-) "roller_eye/nav_path_start")
(setf (get roller_eye::nav_path_start :request) roller_eye::nav_path_startRequest)
(setf (get roller_eye::nav_path_start :response) roller_eye::nav_path_startResponse)

(defmethod roller_eye::nav_path_startRequest
  (:response () (instance roller_eye::nav_path_startResponse :init)))

(setf (get roller_eye::nav_path_startRequest :md5sum-) "3c9f7c0536edb947c8a33193074afe9e")
(setf (get roller_eye::nav_path_startRequest :datatype-) "roller_eye/nav_path_startRequest")
(setf (get roller_eye::nav_path_startRequest :definition-)
      "#0-no, 1-yes
int8     isFromOutStart
string name
---
")

(setf (get roller_eye::nav_path_startResponse :md5sum-) "3c9f7c0536edb947c8a33193074afe9e")
(setf (get roller_eye::nav_path_startResponse :datatype-) "roller_eye/nav_path_startResponse")
(setf (get roller_eye::nav_path_startResponse :definition-)
      "#0-no, 1-yes
int8     isFromOutStart
string name
---
")



(provide :roller_eye/nav_path_start "3c9f7c0536edb947c8a33193074afe9e")


