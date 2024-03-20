;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::wifi_info)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'wifi_info (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::WIFI_INFO")
  (make-package "ROLLER_EYE::WIFI_INFO"))

(in-package "ROS")
;;//! \htmlinclude wifi_info.msg.html


(defclass roller_eye::wifi_info
  :super ros::object
  :slots (_ssid _quality _signal _noisy _freq _channel ))

(defmethod roller_eye::wifi_info
  (:init
   (&key
    ((:ssid __ssid) "")
    ((:quality __quality) 0.0)
    ((:signal __signal) 0)
    ((:noisy __noisy) 0)
    ((:freq __freq) 0.0)
    ((:channel __channel) 0)
    )
   (send-super :init)
   (setq _ssid (string __ssid))
   (setq _quality (float __quality))
   (setq _signal (round __signal))
   (setq _noisy (round __noisy))
   (setq _freq (float __freq))
   (setq _channel (round __channel))
   self)
  (:ssid
   (&optional __ssid)
   (if __ssid (setq _ssid __ssid)) _ssid)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:noisy
   (&optional __noisy)
   (if __noisy (setq _noisy __noisy)) _noisy)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:serialization-length
   ()
   (+
    ;; string _ssid
    4 (length _ssid)
    ;; float32 _quality
    4
    ;; int32 _signal
    4
    ;; int32 _noisy
    4
    ;; float32 _freq
    4
    ;; int32 _channel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ssid
       (write-long (length _ssid) s) (princ _ssid s)
     ;; float32 _quality
       (sys::poke _quality (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _signal
       (write-long _signal s)
     ;; int32 _noisy
       (write-long _noisy s)
     ;; float32 _freq
       (sys::poke _freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _channel
       (write-long _channel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ssid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ssid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _quality
     (setq _quality (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _signal
     (setq _signal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _noisy
     (setq _noisy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _freq
     (setq _freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _channel
     (setq _channel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roller_eye::wifi_info :md5sum-) "8fb5b560bac4c87ce2cb6e8e897ae350")
(setf (get roller_eye::wifi_info :datatype-) "roller_eye/wifi_info")
(setf (get roller_eye::wifi_info :definition-)
      "string ssid
float32 quality
int32 signal
int32 noisy
float32 freq
int32 channel
")



(provide :roller_eye/wifi_info "8fb5b560bac4c87ce2cb6e8e897ae350")


