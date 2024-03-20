;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::contour)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'contour (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::CONTOUR")
  (make-package "ROLLER_EYE::CONTOUR"))

(in-package "ROS")
;;//! \htmlinclude contour.msg.html


(defclass roller_eye::contour
  :super ros::object
  :slots (_points _inside ))

(defmethod roller_eye::contour
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance roller_eye::point :init) r)) r))
    ((:inside __inside) nil)
    )
   (send-super :init)
   (setq _points __points)
   (setq _inside __inside)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:inside
   (&optional __inside)
   (if __inside (setq _inside __inside)) _inside)
  (:serialization-length
   ()
   (+
    ;; roller_eye/point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; bool _inside
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roller_eye/point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; bool _inside
       (if _inside (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roller_eye/point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance roller_eye::point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _inside
     (setq _inside (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roller_eye::contour :md5sum-) "a642c753275229829f5cad7ec8aa4996")
(setf (get roller_eye::contour :datatype-) "roller_eye/contour")
(setf (get roller_eye::contour :definition-)
      "point[] points
bool inside
================================================================================
MSG: roller_eye/point
float32 x
float32 y
")



(provide :roller_eye/contour "a642c753275229829f5cad7ec8aa4996")


