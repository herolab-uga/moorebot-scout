;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::point)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'point (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::POINT")
  (make-package "ROLLER_EYE::POINT"))

(in-package "ROS")
;;//! \htmlinclude point.msg.html


(defclass roller_eye::point
  :super ros::object
  :slots (_x _y ))

(defmethod roller_eye::point
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roller_eye::point :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get roller_eye::point :datatype-) "roller_eye/point")
(setf (get roller_eye::point :definition-)
      "float32 x
float32 y
")



(provide :roller_eye/point "ff8d7d66dd3e4b731ef14a45d38888b6")


