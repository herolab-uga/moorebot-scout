;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::detect)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'detect (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::DETECT")
  (make-package "ROLLER_EYE::DETECT"))

(in-package "ROS")
;;//! \htmlinclude detect.msg.html


(defclass roller_eye::detect
  :super ros::object
  :slots (_seq _score _index _name _width _height _top _left _bottom _right _stamp ))

(defmethod roller_eye::detect
  (:init
   (&key
    ((:seq __seq) 0)
    ((:score __score) 0.0)
    ((:index __index) 0)
    ((:name __name) "")
    ((:width __width) 0)
    ((:height __height) 0)
    ((:top __top) 0.0)
    ((:left __left) 0.0)
    ((:bottom __bottom) 0.0)
    ((:right __right) 0.0)
    ((:stamp __stamp) 0)
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _score (float __score))
   (setq _index (round __index))
   (setq _name (string __name))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _top (float __top))
   (setq _left (float __left))
   (setq _bottom (float __bottom))
   (setq _right (float __right))
   (setq _stamp (round __stamp))
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:top
   (&optional __top)
   (if __top (setq _top __top)) _top)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:bottom
   (&optional __bottom)
   (if __bottom (setq _bottom __bottom)) _bottom)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint32 _seq
    4
    ;; float32 _score
    4
    ;; int32 _index
    4
    ;; string _name
    4 (length _name)
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; float32 _top
    4
    ;; float32 _left
    4
    ;; float32 _bottom
    4
    ;; float32 _right
    4
    ;; uint64 _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _seq
       (write-long _seq s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _index
       (write-long _index s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; float32 _top
       (sys::poke _top (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left
       (sys::poke _left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bottom
       (sys::poke _bottom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right
       (sys::poke _right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _top
     (setq _top (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left
     (setq _left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bottom
     (setq _bottom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right
     (setq _right (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;;
   self)
  )

(setf (get roller_eye::detect :md5sum-) "8a1e00202f115f18d1fa580d7c9f1bc3")
(setf (get roller_eye::detect :datatype-) "roller_eye/detect")
(setf (get roller_eye::detect :definition-)
      "#0.5: 1 nose [122.382, 483.588, 157.864, 566.004]
#0.5: 2 eye [294.182, 447.601, 339.913, 530.017]

uint32 seq
float32 score
int32 index
 #object name
string name

#img size
int32 width
int32 height

#the position
float32 top
float32 left
float32 bottom
float32 right
uint64 stamp
")



(provide :roller_eye/detect "8a1e00202f115f18d1fa580d7c9f1bc3")


