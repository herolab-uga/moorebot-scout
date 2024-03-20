;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::status)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'status (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::STATUS")
  (make-package "ROLLER_EYE::STATUS"))

(in-package "ROS")
;;//! \htmlinclude status.msg.html


(intern "*PROCESS_OK*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*PROCESS_OK* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*PROCESS_OK* 0)
(intern "*PROCESS_ERROR*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*PROCESS_ERROR* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*PROCESS_ERROR* -1)
(intern "*OBJ_DETECT_CHARGE*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*OBJ_DETECT_CHARGE* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*OBJ_DETECT_CHARGE* 1)
(intern "*RECORD_START*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*RECORD_START* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*RECORD_START* 1)
(intern "*RECORD_STOP*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*RECORD_STOP* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*RECORD_STOP* 2)
(intern "*RECORD_ERROR*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*RECORD_ERROR* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*RECORD_ERROR* 3)
(intern "*P2P_AV_PLAYING*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*P2P_AV_PLAYING* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*P2P_AV_PLAYING* 1)
(intern "*P2P_AV_STOP*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*P2P_AV_STOP* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*P2P_AV_STOP* 2)
(intern "*P2P_AV_ERROR*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*P2P_AV_ERROR* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*P2P_AV_ERROR* 3)
(intern "*WIFI_MODE_AP*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*WIFI_MODE_AP* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*WIFI_MODE_AP* 0)
(intern "*WIFI_MODE_STA*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*WIFI_MODE_STA* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*WIFI_MODE_STA* 1)
(intern "*WIFI_STATUS_DISCONNECT*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*WIFI_STATUS_DISCONNECT* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*WIFI_STATUS_DISCONNECT* 0)
(intern "*WIFI_STATUS_CONNECTED*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*WIFI_STATUS_CONNECTED* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*WIFI_STATUS_CONNECTED* 1)
(intern "*WIFI_STATUS_CONNECTING*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*WIFI_STATUS_CONNECTING* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*WIFI_STATUS_CONNECTING* 2)
(intern "*WIFI_STATUS_WRONG_KEY*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*WIFI_STATUS_WRONG_KEY* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*WIFI_STATUS_WRONG_KEY* 3)
(intern "*WIFI_STATUS_CONN_FAIL*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*WIFI_STATUS_CONN_FAIL* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*WIFI_STATUS_CONN_FAIL* 4)
(intern "*WIFI_STATUS_STOP*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*WIFI_STATUS_STOP* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*WIFI_STATUS_STOP* 5)
(intern "*BACK_UP_DETECT*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BACK_UP_DETECT* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BACK_UP_DETECT* 1)
(intern "*BACK_UP_ALIGN*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BACK_UP_ALIGN* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BACK_UP_ALIGN* 2)
(intern "*BACK_UP_BACK*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BACK_UP_BACK* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BACK_UP_BACK* 3)
(intern "*BACK_UP_SUCCESS*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BACK_UP_SUCCESS* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BACK_UP_SUCCESS* 4)
(intern "*BACK_UP_FAIL*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BACK_UP_FAIL* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BACK_UP_FAIL* 5)
(intern "*BACK_UP_INACTIVE*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BACK_UP_INACTIVE* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BACK_UP_INACTIVE* 6)
(intern "*BACK_UP_CANCEL*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BACK_UP_CANCEL* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BACK_UP_CANCEL* 7)
(intern "*BACK_UP_REDETECT*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BACK_UP_REDETECT* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BACK_UP_REDETECT* 8)
(intern "*BATTERY_CHARGING*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BATTERY_CHARGING* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BATTERY_CHARGING* 0)
(intern "*BATTERY_UNCHARGE*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BATTERY_UNCHARGE* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BATTERY_UNCHARGE* 1)
(intern "*BATTERY_FULL*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BATTERY_FULL* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BATTERY_FULL* 2)
(intern "*BATTERY_UNKOWN*" (find-package "ROLLER_EYE::STATUS"))
(shadow '*BATTERY_UNKOWN* (find-package "ROLLER_EYE::STATUS"))
(defconstant roller_eye::status::*BATTERY_UNKOWN* 3)
(defclass roller_eye::status
  :super ros::object
  :slots (_status ))

(defmethod roller_eye::status
  (:init
   (&key
    ((:status __status) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32[] _status
    (* 4    (length _status)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _status
     (write-long (length _status) s)
     (dotimes (i (length _status))
       (write-long (elt _status i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _status i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roller_eye::status :md5sum-) "6919a5b3f28e39f677c7c81d4e5a2ef4")
(setf (get roller_eye::status :datatype-) "roller_eye/status")
(setf (get roller_eye::status :definition-)
      "#error and ok
int8 PROCESS_OK=0
int8 PROCESS_ERROR=-1


#const for object detecting
int8 OBJ_DETECT_CHARGE=1


#const for recording
int8 RECORD_START=1
int8 RECORD_STOP=2
int8 RECORD_ERROR=3



#const for p2p av module
int8 P2P_AV_PLAYING=1
int8 P2P_AV_STOP=2
int8 P2P_AV_ERROR=3

#const define for wifi
int8 WIFI_MODE_AP=0
int8 WIFI_MODE_STA=1

int8 WIFI_STATUS_DISCONNECT=0
int8 WIFI_STATUS_CONNECTED=1
int8 WIFI_STATUS_CONNECTING=2
int8 WIFI_STATUS_WRONG_KEY=3
int8 WIFI_STATUS_CONN_FAIL=4
int8 WIFI_STATUS_STOP=5

int8 BACK_UP_DETECT=1
int8 BACK_UP_ALIGN=2
int8 BACK_UP_BACK=3
int8 BACK_UP_SUCCESS=4
int8 BACK_UP_FAIL=5
int8 BACK_UP_INACTIVE=6
int8 BACK_UP_CANCEL=7
int8 BACK_UP_REDETECT=8

int8 BATTERY_CHARGING=0
int8 BATTERY_UNCHARGE=1
int8 BATTERY_FULL=2
int8 BATTERY_UNKOWN=3

#msg define
int32[]  status
")



(provide :roller_eye/status "6919a5b3f28e39f677c7c81d4e5a2ef4")


