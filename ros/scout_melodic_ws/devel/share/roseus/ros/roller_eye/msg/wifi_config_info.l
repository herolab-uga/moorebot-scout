;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::wifi_config_info)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'wifi_config_info (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::WIFI_CONFIG_INFO")
  (make-package "ROLLER_EYE::WIFI_CONFIG_INFO"))

(in-package "ROS")
;;//! \htmlinclude wifi_config_info.msg.html


(defclass roller_eye::wifi_config_info
  :super ros::object
  :slots (_cmd _ssid ))

(defmethod roller_eye::wifi_config_info
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:ssid __ssid) "")
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _ssid (string __ssid))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:ssid
   (&optional __ssid)
   (if __ssid (setq _ssid __ssid)) _ssid)
  (:serialization-length
   ()
   (+
    ;; int8 _cmd
    1
    ;; string _ssid
    4 (length _ssid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmd
       (write-byte _cmd s)
     ;; string _ssid
       (write-long (length _ssid) s) (princ _ssid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmd 127) (setq _cmd (- _cmd 256)))
   ;; string _ssid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ssid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get roller_eye::wifi_config_info :md5sum-) "771488fba0e3eb08451a186125ca6c2a")
(setf (get roller_eye::wifi_config_info :datatype-) "roller_eye/wifi_config_info")
(setf (get roller_eye::wifi_config_info :definition-)
      "#cmd: 0-start, 1- config success, 2-config failure
int8    cmd
string ssid
")



(provide :roller_eye/wifi_config_info "771488fba0e3eb08451a186125ca6c2a")


