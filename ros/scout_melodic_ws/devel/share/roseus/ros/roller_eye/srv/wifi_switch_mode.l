;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::wifi_switch_mode)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'wifi_switch_mode (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::WIFI_SWITCH_MODE")
  (make-package "ROLLER_EYE::WIFI_SWITCH_MODE"))
(unless (find-package "ROLLER_EYE::WIFI_SWITCH_MODEREQUEST")
  (make-package "ROLLER_EYE::WIFI_SWITCH_MODEREQUEST"))
(unless (find-package "ROLLER_EYE::WIFI_SWITCH_MODERESPONSE")
  (make-package "ROLLER_EYE::WIFI_SWITCH_MODERESPONSE"))

(in-package "ROS")





(defclass roller_eye::wifi_switch_modeRequest
  :super ros::object
  :slots (_mode _kill ))

(defmethod roller_eye::wifi_switch_modeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:kill __kill) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _kill (round __kill))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:kill
   (&optional __kill)
   (if __kill (setq _kill __kill)) _kill)
  (:serialization-length
   ()
   (+
    ;; int8 _mode
    1
    ;; int8 _kill
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mode
       (write-byte _mode s)
     ;; int8 _kill
       (write-byte _kill s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; int8 _kill
     (setq _kill (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _kill 127) (setq _kill (- _kill 256)))
   ;;
   self)
  )

(defclass roller_eye::wifi_switch_modeResponse
  :super ros::object
  :slots (_status ))

(defmethod roller_eye::wifi_switch_modeResponse
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

(defclass roller_eye::wifi_switch_mode
  :super ros::object
  :slots ())

(setf (get roller_eye::wifi_switch_mode :md5sum-) "106fdf359311f6beba452ddefdd87f1b")
(setf (get roller_eye::wifi_switch_mode :datatype-) "roller_eye/wifi_switch_mode")
(setf (get roller_eye::wifi_switch_mode :request) roller_eye::wifi_switch_modeRequest)
(setf (get roller_eye::wifi_switch_mode :response) roller_eye::wifi_switch_modeResponse)

(defmethod roller_eye::wifi_switch_modeRequest
  (:response () (instance roller_eye::wifi_switch_modeResponse :init)))

(setf (get roller_eye::wifi_switch_modeRequest :md5sum-) "106fdf359311f6beba452ddefdd87f1b")
(setf (get roller_eye::wifi_switch_modeRequest :datatype-) "roller_eye/wifi_switch_modeRequest")
(setf (get roller_eye::wifi_switch_modeRequest :definition-)
      "int8 mode
#0-don't 1-kill wifi_start_sta.sh 2-kill wifi_start_ap.sh
int8 kill
---
int8 status
")

(setf (get roller_eye::wifi_switch_modeResponse :md5sum-) "106fdf359311f6beba452ddefdd87f1b")
(setf (get roller_eye::wifi_switch_modeResponse :datatype-) "roller_eye/wifi_switch_modeResponse")
(setf (get roller_eye::wifi_switch_modeResponse :definition-)
      "int8 mode
#0-don't 1-kill wifi_start_sta.sh 2-kill wifi_start_ap.sh
int8 kill
---
int8 status
")



(provide :roller_eye/wifi_switch_mode "106fdf359311f6beba452ddefdd87f1b")


