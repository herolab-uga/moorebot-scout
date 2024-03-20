;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::wifi_switch_ssid_key)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'wifi_switch_ssid_key (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::WIFI_SWITCH_SSID_KEY")
  (make-package "ROLLER_EYE::WIFI_SWITCH_SSID_KEY"))
(unless (find-package "ROLLER_EYE::WIFI_SWITCH_SSID_KEYREQUEST")
  (make-package "ROLLER_EYE::WIFI_SWITCH_SSID_KEYREQUEST"))
(unless (find-package "ROLLER_EYE::WIFI_SWITCH_SSID_KEYRESPONSE")
  (make-package "ROLLER_EYE::WIFI_SWITCH_SSID_KEYRESPONSE"))

(in-package "ROS")





(defclass roller_eye::wifi_switch_ssid_keyRequest
  :super ros::object
  :slots (_mode _ssid _key ))

(defmethod roller_eye::wifi_switch_ssid_keyRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:ssid __ssid) "")
    ((:key __key) "")
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _ssid (string __ssid))
   (setq _key (string __key))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:ssid
   (&optional __ssid)
   (if __ssid (setq _ssid __ssid)) _ssid)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:serialization-length
   ()
   (+
    ;; int8 _mode
    1
    ;; string _ssid
    4 (length _ssid)
    ;; string _key
    4 (length _key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mode
       (write-byte _mode s)
     ;; string _ssid
       (write-long (length _ssid) s) (princ _ssid s)
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; string _ssid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ssid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roller_eye::wifi_switch_ssid_keyResponse
  :super ros::object
  :slots (_status ))

(defmethod roller_eye::wifi_switch_ssid_keyResponse
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

(defclass roller_eye::wifi_switch_ssid_key
  :super ros::object
  :slots ())

(setf (get roller_eye::wifi_switch_ssid_key :md5sum-) "879dd501d4c8e7d6703c458f6fc7737c")
(setf (get roller_eye::wifi_switch_ssid_key :datatype-) "roller_eye/wifi_switch_ssid_key")
(setf (get roller_eye::wifi_switch_ssid_key :request) roller_eye::wifi_switch_ssid_keyRequest)
(setf (get roller_eye::wifi_switch_ssid_key :response) roller_eye::wifi_switch_ssid_keyResponse)

(defmethod roller_eye::wifi_switch_ssid_keyRequest
  (:response () (instance roller_eye::wifi_switch_ssid_keyResponse :init)))

(setf (get roller_eye::wifi_switch_ssid_keyRequest :md5sum-) "879dd501d4c8e7d6703c458f6fc7737c")
(setf (get roller_eye::wifi_switch_ssid_keyRequest :datatype-) "roller_eye/wifi_switch_ssid_keyRequest")
(setf (get roller_eye::wifi_switch_ssid_keyRequest :definition-)
      "int8 mode
string ssid
string key
---
int8 status
")

(setf (get roller_eye::wifi_switch_ssid_keyResponse :md5sum-) "879dd501d4c8e7d6703c458f6fc7737c")
(setf (get roller_eye::wifi_switch_ssid_keyResponse :datatype-) "roller_eye/wifi_switch_ssid_keyResponse")
(setf (get roller_eye::wifi_switch_ssid_keyResponse :definition-)
      "int8 mode
string ssid
string key
---
int8 status
")



(provide :roller_eye/wifi_switch_ssid_key "879dd501d4c8e7d6703c458f6fc7737c")


