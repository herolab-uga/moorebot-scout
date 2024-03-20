;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::frame)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'frame (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::FRAME")
  (make-package "ROLLER_EYE::FRAME"))

(in-package "ROS")
;;//! \htmlinclude frame.msg.html


(intern "*VIDEO_STREAM_H264*" (find-package "ROLLER_EYE::FRAME"))
(shadow '*VIDEO_STREAM_H264* (find-package "ROLLER_EYE::FRAME"))
(defconstant roller_eye::frame::*VIDEO_STREAM_H264* 0)
(intern "*VIDEO_STREAM_JPG*" (find-package "ROLLER_EYE::FRAME"))
(shadow '*VIDEO_STREAM_JPG* (find-package "ROLLER_EYE::FRAME"))
(defconstant roller_eye::frame::*VIDEO_STREAM_JPG* 1)
(intern "*AUDIO_STREAM_AAC*" (find-package "ROLLER_EYE::FRAME"))
(shadow '*AUDIO_STREAM_AAC* (find-package "ROLLER_EYE::FRAME"))
(defconstant roller_eye::frame::*AUDIO_STREAM_AAC* 2)
(defclass roller_eye::frame
  :super ros::object
  :slots (_seq _stamp _session _type _oseq _par1 _par2 _par3 _par4 _data ))

(defmethod roller_eye::frame
  (:init
   (&key
    ((:seq __seq) 0)
    ((:stamp __stamp) 0)
    ((:session __session) 0)
    ((:type __type) 0)
    ((:oseq __oseq) 0)
    ((:par1 __par1) 0)
    ((:par2 __par2) 0)
    ((:par3 __par3) 0)
    ((:par4 __par4) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _stamp (round __stamp))
   (setq _session (round __session))
   (setq _type (round __type))
   (setq _oseq (round __oseq))
   (setq _par1 (round __par1))
   (setq _par2 (round __par2))
   (setq _par3 (round __par3))
   (setq _par4 (round __par4))
   (setq _data __data)
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:session
   (&optional __session)
   (if __session (setq _session __session)) _session)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:oseq
   (&optional __oseq)
   (if __oseq (setq _oseq __oseq)) _oseq)
  (:par1
   (&optional __par1)
   (if __par1 (setq _par1 __par1)) _par1)
  (:par2
   (&optional __par2)
   (if __par2 (setq _par2 __par2)) _par2)
  (:par3
   (&optional __par3)
   (if __par3 (setq _par3 __par3)) _par3)
  (:par4
   (&optional __par4)
   (if __par4 (setq _par4 __par4)) _par4)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _seq
    4
    ;; uint64 _stamp
    8
    ;; uint32 _session
    4
    ;; int8 _type
    1
    ;; uint32 _oseq
    4
    ;; int32 _par1
    4
    ;; int32 _par2
    4
    ;; int32 _par3
    4
    ;; int32 _par4
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _seq
       (write-long _seq s)
     ;; uint64 _stamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _stamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _stamp) (= (length (_stamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_stamp . bv) 0) 0) s)
              (write-long (ash (elt (_stamp . bv) 1) -1) s))
             ((and (class _stamp) (= (length (_stamp . bv)) 1)) ;; big1
              (write-long (elt (_stamp . bv) 0) s)
              (write-long (if (>= _stamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _stamp s)(write-long (if (>= _stamp 0) 0 #xffffffff) s)))
     ;; uint32 _session
       (write-long _session s)
     ;; int8 _type
       (write-byte _type s)
     ;; uint32 _oseq
       (write-long _oseq s)
     ;; int32 _par1
       (write-long _par1 s)
     ;; int32 _par2
       (write-long _par2 s)
     ;; int32 _par3
       (write-long _par3 s)
     ;; int32 _par4
       (write-long _par4 s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _stamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _stamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _stamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _session
     (setq _session (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; uint32 _oseq
     (setq _oseq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _par1
     (setq _par1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _par2
     (setq _par2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _par3
     (setq _par3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _par4
     (setq _par4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get roller_eye::frame :md5sum-) "bce5a3441e8f21e02d2b9d7ce432bea2")
(setf (get roller_eye::frame :datatype-) "roller_eye/frame")
(setf (get roller_eye::frame :definition-)
      "int8 VIDEO_STREAM_H264=0
int8 VIDEO_STREAM_JPG=1
int8 AUDIO_STREAM_AAC=2

#common frame for video/audio stream,compress picture
#do not use common head,define a new header
uint32 seq
uint64 stamp
uint32 session
int8 type

# origin frame seq
uint32 oseq           

#in video frame,par1 is width,par2 is height,par3 is key frame
#in audio  frame,par1 is sample rate,par2 is bitwidth,par3 is channels
#in file frame,par3 is frame flag:0->frame  1->eof  2->error
#par4 used to extend
int32 par1
int32 par2
int32 par3
int32 par4

#frame data
uint8[] data

")



(provide :roller_eye/frame "bce5a3441e8f21e02d2b9d7ce432bea2")


