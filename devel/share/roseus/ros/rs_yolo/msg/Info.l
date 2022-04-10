;; Auto-generated. Do not edit!


(when (boundp 'rs_yolo::Info)
  (if (not (find-package "RS_YOLO"))
    (make-package "RS_YOLO"))
  (shadow 'Info (find-package "RS_YOLO")))
(unless (find-package "RS_YOLO::INFO")
  (make-package "RS_YOLO::INFO"))

(in-package "ROS")
;;//! \htmlinclude Info.msg.html


(defclass rs_yolo::Info
  :super ros::object
  :slots (_x _y _z _classification ))

(defmethod rs_yolo::Info
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:classification __classification) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _classification (string __classification))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:classification
   (&optional __classification)
   (if __classification (setq _classification __classification)) _classification)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; string _classification
    4 (length _classification)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _classification
       (write-long (length _classification) s) (princ _classification s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _classification
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _classification (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rs_yolo::Info :md5sum-) "82d1159b13041461343d20c791a8a740")
(setf (get rs_yolo::Info :datatype-) "rs_yolo/Info")
(setf (get rs_yolo::Info :definition-)
      "float64 x
float64 y
float64 z
string classification
")



(provide :rs_yolo/Info "82d1159b13041461343d20c791a8a740")


