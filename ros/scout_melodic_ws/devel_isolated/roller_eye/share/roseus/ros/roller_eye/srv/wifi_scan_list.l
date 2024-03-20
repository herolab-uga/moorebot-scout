;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::wifi_scan_list)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'wifi_scan_list (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::WIFI_SCAN_LIST")
  (make-package "ROLLER_EYE::WIFI_SCAN_LIST"))
(unless (find-package "ROLLER_EYE::WIFI_SCAN_LISTREQUEST")
  (make-package "ROLLER_EYE::WIFI_SCAN_LISTREQUEST"))
(unless (find-package "ROLLER_EYE::WIFI_SCAN_LISTRESPONSE")
  (make-package "ROLLER_EYE::WIFI_SCAN_LISTRESPONSE"))

(in-package "ROS")





(defclass roller_eye::wifi_scan_listRequest
  :super ros::object
  :slots ())

(defmethod roller_eye::wifi_scan_listRequest
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

(defclass roller_eye::wifi_scan_listResponse
  :super ros::object
  :slots (_result ))

(defmethod roller_eye::wifi_scan_listResponse
  (:init
   (&key
    ((:result __result) (let (r) (dotimes (i 0) (push (instance roller_eye::wifi_info :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; roller_eye/wifi_info[] _result
    (apply #'+ (send-all _result :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roller_eye/wifi_info[] _result
     (write-long (length _result) s)
     (dolist (elem _result)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roller_eye/wifi_info[] _result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result (let (r) (dotimes (i n) (push (instance roller_eye::wifi_info :init) r)) r))
     (dolist (elem- _result)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass roller_eye::wifi_scan_list
  :super ros::object
  :slots ())

(setf (get roller_eye::wifi_scan_list :md5sum-) "fd54a28d4e6325d269f60a72dc202a7b")
(setf (get roller_eye::wifi_scan_list :datatype-) "roller_eye/wifi_scan_list")
(setf (get roller_eye::wifi_scan_list :request) roller_eye::wifi_scan_listRequest)
(setf (get roller_eye::wifi_scan_list :response) roller_eye::wifi_scan_listResponse)

(defmethod roller_eye::wifi_scan_listRequest
  (:response () (instance roller_eye::wifi_scan_listResponse :init)))

(setf (get roller_eye::wifi_scan_listRequest :md5sum-) "fd54a28d4e6325d269f60a72dc202a7b")
(setf (get roller_eye::wifi_scan_listRequest :datatype-) "roller_eye/wifi_scan_listRequest")
(setf (get roller_eye::wifi_scan_listRequest :definition-)
      "---
wifi_info[] result

================================================================================
MSG: roller_eye/wifi_info
string ssid
float32 quality
int32 signal
int32 noisy
float32 freq
")

(setf (get roller_eye::wifi_scan_listResponse :md5sum-) "fd54a28d4e6325d269f60a72dc202a7b")
(setf (get roller_eye::wifi_scan_listResponse :datatype-) "roller_eye/wifi_scan_listResponse")
(setf (get roller_eye::wifi_scan_listResponse :definition-)
      "---
wifi_info[] result

================================================================================
MSG: roller_eye/wifi_info
string ssid
float32 quality
int32 signal
int32 noisy
float32 freq
")



(provide :roller_eye/wifi_scan_list "fd54a28d4e6325d269f60a72dc202a7b")


