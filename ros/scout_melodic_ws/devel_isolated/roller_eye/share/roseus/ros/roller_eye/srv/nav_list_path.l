;; Auto-generated. Do not edit!


(when (boundp 'roller_eye::nav_list_path)
  (if (not (find-package "ROLLER_EYE"))
    (make-package "ROLLER_EYE"))
  (shadow 'nav_list_path (find-package "ROLLER_EYE")))
(unless (find-package "ROLLER_EYE::NAV_LIST_PATH")
  (make-package "ROLLER_EYE::NAV_LIST_PATH"))
(unless (find-package "ROLLER_EYE::NAV_LIST_PATHREQUEST")
  (make-package "ROLLER_EYE::NAV_LIST_PATHREQUEST"))
(unless (find-package "ROLLER_EYE::NAV_LIST_PATHRESPONSE")
  (make-package "ROLLER_EYE::NAV_LIST_PATHRESPONSE"))

(in-package "ROS")





(defclass roller_eye::nav_list_pathRequest
  :super ros::object
  :slots ())

(defmethod roller_eye::nav_list_pathRequest
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

(defclass roller_eye::nav_list_pathResponse
  :super ros::object
  :slots (_path_list _size_list _create_time_list _name_list ))

(defmethod roller_eye::nav_list_pathResponse
  (:init
   (&key
    ((:path_list __path_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:size_list __size_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:create_time_list __create_time_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:name_list __name_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _path_list __path_list)
   (setq _size_list __size_list)
   (setq _create_time_list __create_time_list)
   (setq _name_list __name_list)
   self)
  (:path_list
   (&optional __path_list)
   (if __path_list (setq _path_list __path_list)) _path_list)
  (:size_list
   (&optional __size_list)
   (if __size_list (setq _size_list __size_list)) _size_list)
  (:create_time_list
   (&optional __create_time_list)
   (if __create_time_list (setq _create_time_list __create_time_list)) _create_time_list)
  (:name_list
   (&optional __name_list)
   (if __name_list (setq _name_list __name_list)) _name_list)
  (:serialization-length
   ()
   (+
    ;; string[] _path_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _path_list)) 4
    ;; int32[] _size_list
    (* 4    (length _size_list)) 4
    ;; string[] _create_time_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _create_time_list)) 4
    ;; string[] _name_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _path_list
     (write-long (length _path_list) s)
     (dolist (elem _path_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _size_list
     (write-long (length _size_list) s)
     (dotimes (i (length _size_list))
       (write-long (elt _size_list i) s)
       )
     ;; string[] _create_time_list
     (write-long (length _create_time_list) s)
     (dolist (elem _create_time_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _name_list
     (write-long (length _name_list) s)
     (dolist (elem _name_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _path_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _path_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _size_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _size_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _size_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _create_time_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _create_time_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _create_time_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _name_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roller_eye::nav_list_path
  :super ros::object
  :slots ())

(setf (get roller_eye::nav_list_path :md5sum-) "09857f8ab43e3dd303b36715eecbde30")
(setf (get roller_eye::nav_list_path :datatype-) "roller_eye/nav_list_path")
(setf (get roller_eye::nav_list_path :request) roller_eye::nav_list_pathRequest)
(setf (get roller_eye::nav_list_path :response) roller_eye::nav_list_pathResponse)

(defmethod roller_eye::nav_list_pathRequest
  (:response () (instance roller_eye::nav_list_pathResponse :init)))

(setf (get roller_eye::nav_list_pathRequest :md5sum-) "09857f8ab43e3dd303b36715eecbde30")
(setf (get roller_eye::nav_list_pathRequest :datatype-) "roller_eye/nav_list_pathRequest")
(setf (get roller_eye::nav_list_pathRequest :definition-)
      "---
string[] path_list
int32[] size_list
string[] create_time_list
string[] name_list
")

(setf (get roller_eye::nav_list_pathResponse :md5sum-) "09857f8ab43e3dd303b36715eecbde30")
(setf (get roller_eye::nav_list_pathResponse :datatype-) "roller_eye/nav_list_pathResponse")
(setf (get roller_eye::nav_list_pathResponse :definition-)
      "---
string[] path_list
int32[] size_list
string[] create_time_list
string[] name_list
")



(provide :roller_eye/nav_list_path "09857f8ab43e3dd303b36715eecbde30")


