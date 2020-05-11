;; Auto-generated. Do not edit!


(when (boundp 'value_msg::value)
  (if (not (find-package "VALUE_MSG"))
    (make-package "VALUE_MSG"))
  (shadow 'value (find-package "VALUE_MSG")))
(unless (find-package "VALUE_MSG::VALUE")
  (make-package "VALUE_MSG::VALUE"))

(in-package "ROS")
;;//! \htmlinclude value.msg.html


(defclass value_msg::value
  :super ros::object
  :slots (_msg_msg ))

(defmethod value_msg::value
  (:init
   (&key
    ((:msg_msg __msg_msg) 0)
    )
   (send-super :init)
   (setq _msg_msg (round __msg_msg))
   self)
  (:msg_msg
   (&optional __msg_msg)
   (if __msg_msg (setq _msg_msg __msg_msg)) _msg_msg)
  (:serialization-length
   ()
   (+
    ;; int64 _msg_msg
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _msg_msg
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _msg_msg (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _msg_msg) (= (length (_msg_msg . bv)) 2)) ;; bignum
              (write-long (ash (elt (_msg_msg . bv) 0) 0) s)
              (write-long (ash (elt (_msg_msg . bv) 1) -1) s))
             ((and (class _msg_msg) (= (length (_msg_msg . bv)) 1)) ;; big1
              (write-long (elt (_msg_msg . bv) 0) s)
              (write-long (if (>= _msg_msg 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _msg_msg s)(write-long (if (>= _msg_msg 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _msg_msg
#+(or :alpha :irix6 :x86_64)
      (setf _msg_msg (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _msg_msg (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get value_msg::value :md5sum-) "27d68748e893d7f456dfb185e9ecf1a7")
(setf (get value_msg::value :datatype-) "value_msg/value")
(setf (get value_msg::value :definition-)
      "int64 msg_msg
")



(provide :value_msg/value "27d68748e893d7f456dfb185e9ecf1a7")


