; Auto-generated. Do not edit!


(cl:in-package value_msg-msg)


;//! \htmlinclude value.msg.html

(cl:defclass <value> (roslisp-msg-protocol:ros-message)
  ((msg_msg
    :reader msg_msg
    :initarg :msg_msg
    :type cl:integer
    :initform 0))
)

(cl:defclass value (<value>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <value>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'value)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name value_msg-msg:<value> is deprecated: use value_msg-msg:value instead.")))

(cl:ensure-generic-function 'msg_msg-val :lambda-list '(m))
(cl:defmethod msg_msg-val ((m <value>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader value_msg-msg:msg_msg-val is deprecated.  Use value_msg-msg:msg_msg instead.")
  (msg_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <value>) ostream)
  "Serializes a message object of type '<value>"
  (cl:let* ((signed (cl:slot-value msg 'msg_msg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <value>) istream)
  "Deserializes a message object of type '<value>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg_msg) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<value>)))
  "Returns string type for a message object of type '<value>"
  "value_msg/value")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'value)))
  "Returns string type for a message object of type 'value"
  "value_msg/value")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<value>)))
  "Returns md5sum for a message object of type '<value>"
  "27d68748e893d7f456dfb185e9ecf1a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'value)))
  "Returns md5sum for a message object of type 'value"
  "27d68748e893d7f456dfb185e9ecf1a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<value>)))
  "Returns full string definition for message of type '<value>"
  (cl:format cl:nil "int64 msg_msg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'value)))
  "Returns full string definition for message of type 'value"
  (cl:format cl:nil "int64 msg_msg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <value>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <value>))
  "Converts a ROS message object to a list"
  (cl:list 'value
    (cl:cons ':msg_msg (msg_msg msg))
))
