;; Auto-generated. Do not edit!


(when (boundp 'value_msg::FibonacciGoal)
  (if (not (find-package "VALUE_MSG"))
    (make-package "VALUE_MSG"))
  (shadow 'FibonacciGoal (find-package "VALUE_MSG")))
(unless (find-package "VALUE_MSG::FIBONACCIGOAL")
  (make-package "VALUE_MSG::FIBONACCIGOAL"))

(in-package "ROS")
;;//! \htmlinclude FibonacciGoal.msg.html


(defclass value_msg::FibonacciGoal
  :super ros::object
  :slots (_order ))

(defmethod value_msg::FibonacciGoal
  (:init
   (&key
    ((:order __order) 0)
    )
   (send-super :init)
   (setq _order (round __order))
   self)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:serialization-length
   ()
   (+
    ;; int32 _order
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _order
       (write-long _order s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _order
     (setq _order (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get value_msg::FibonacciGoal :md5sum-) "6889063349a00b249bd1661df429d822")
(setf (get value_msg::FibonacciGoal :datatype-) "value_msg/FibonacciGoal")
(setf (get value_msg::FibonacciGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
int32 order

")



(provide :value_msg/FibonacciGoal "6889063349a00b249bd1661df429d822")

