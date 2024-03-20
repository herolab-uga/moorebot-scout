;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::video_set_resolution)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'video_set_resolution (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::VIDEO_SET_RESOLUTION")
  (make-package "ROLLER_EYE::VIDEO_SET_RESOLUTION"))
(unless (find-package "ROLLER_EYE::VIDEO_SET_RESOLUTIONREQUEST")
  (make-package "ROLLER_EYE::VIDEO_SET_RESOLUTIONREQUEST"))
(unless (find-package "ROLLER_EYE::VIDEO_SET_RESOLUTIONRESPONSE")
  (make-package "ROLLER_EYE::VIDEO_SET_RESOLUTIONRESPONSE"))

(in-package "ROS")





(defclass roller_eye::video_set_resolutionRequest
  :super ros::object
  :slots (_width _height ))

(defmethod roller_eye::video_set_resolutionRequest
  (:init
   (&key
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; int32 _width
    4
    ;; int32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roller_eye::video_set_resolutionResponse
  :super ros::object
  :slots (_status ))

(defmethod roller_eye::video_set_resolutionResponse
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

(defclass roller_eye::video_set_resolution
  :super ros::object
  :slots ())

(setf (get roller_eye::video_set_resolution :md5sum-) "4a2f7cfc95568599234b2a56d5a21730")
(setf (get roller_eye::video_set_resolution :datatype-) "roller_eye/video_set_resolution")
(setf (get roller_eye::video_set_resolution :request) roller_eye::video_set_resolutionRequest)
(setf (get roller_eye::video_set_resolution :response) roller_eye::video_set_resolutionResponse)

(defmethod roller_eye::video_set_resolutionRequest
  (:response () (instance roller_eye::video_set_resolutionResponse :init)))

(setf (get roller_eye::video_set_resolutionRequest :md5sum-) "4a2f7cfc95568599234b2a56d5a21730")
(setf (get roller_eye::video_set_resolutionRequest :datatype-) "roller_eye/video_set_resolutionRequest")
(setf (get roller_eye::video_set_resolutionRequest :definition-)
      "int32 width
int32 height
---
int8 status
")

(setf (get roller_eye::video_set_resolutionResponse :md5sum-) "4a2f7cfc95568599234b2a56d5a21730")
(setf (get roller_eye::video_set_resolutionResponse :datatype-) "roller_eye/video_set_resolutionResponse")
(setf (get roller_eye::video_set_resolutionResponse :definition-)
      "int32 width
int32 height
---
int8 status
")



(provide :roller_eye/video_set_resolution "4a2f7cfc95568599234b2a56d5a21730")


