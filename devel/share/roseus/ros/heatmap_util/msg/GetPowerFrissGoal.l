;; Auto-generated. Do not edit!


(when (boundp 'heatmap_util::GetPowerFrissGoal)
  (if (not (find-package "HEATMAP_UTIL"))
    (make-package "HEATMAP_UTIL"))
  (shadow 'GetPowerFrissGoal (find-package "HEATMAP_UTIL")))
(unless (find-package "HEATMAP_UTIL::GETPOWERFRISSGOAL")
  (make-package "HEATMAP_UTIL::GETPOWERFRISSGOAL"))

(in-package "ROS")
;;//! \htmlinclude GetPowerFrissGoal.msg.html


(defclass heatmap_util::GetPowerFrissGoal
  :super ros::object
  :slots (_index _obstacle ))

(defmethod heatmap_util::GetPowerFrissGoal
  (:init
   (&key
    ((:index __index) (make-array 0 :initial-element 0 :element-type :integer))
    ((:obstacle __obstacle) nil)
    )
   (send-super :init)
   (setq _index __index)
   (setq _obstacle __obstacle)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:obstacle
   (&optional (__obstacle :null))
   (if (not (eq __obstacle :null)) (setq _obstacle __obstacle)) _obstacle)
  (:serialization-length
   ()
   (+
    ;; int16[] _index
    (* 2    (length _index)) 4
    ;; bool _obstacle
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[] _index
     (write-long (length _index) s)
     (dotimes (i (length _index))
       (write-word (elt _index i) s)
       )
     ;; bool _obstacle
       (if _obstacle (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[] _index
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _index (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _index i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; bool _obstacle
     (setq _obstacle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get heatmap_util::GetPowerFrissGoal :md5sum-) "1822600a2f137b0c0bacd1494b7c3314")
(setf (get heatmap_util::GetPowerFrissGoal :datatype-) "heatmap_util/GetPowerFrissGoal")
(setf (get heatmap_util::GetPowerFrissGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
int16[] index
bool obstacle

")



(provide :heatmap_util/GetPowerFrissGoal "1822600a2f137b0c0bacd1494b7c3314")


