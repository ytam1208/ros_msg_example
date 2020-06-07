; Auto-generated. Do not edit!


(cl:in-package value_msg-msg)


;//! \htmlinclude FibonacciActionGoal.msg.html

(cl:defclass <FibonacciActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type value_msg-msg:FibonacciGoal
    :initform (cl:make-instance 'value_msg-msg:FibonacciGoal)))
)

(cl:defclass FibonacciActionGoal (<FibonacciActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FibonacciActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FibonacciActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name value_msg-msg:<FibonacciActionGoal> is deprecated: use value_msg-msg:FibonacciActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FibonacciActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader value_msg-msg:header-val is deprecated.  Use value_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <FibonacciActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader value_msg-msg:goal_id-val is deprecated.  Use value_msg-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <FibonacciActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader value_msg-msg:goal-val is deprecated.  Use value_msg-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FibonacciActionGoal>) ostream)
  "Serializes a message object of type '<FibonacciActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FibonacciActionGoal>) istream)
  "Deserializes a message object of type '<FibonacciActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FibonacciActionGoal>)))
  "Returns string type for a message object of type '<FibonacciActionGoal>"
  "value_msg/FibonacciActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FibonacciActionGoal)))
  "Returns string type for a message object of type 'FibonacciActionGoal"
  "value_msg/FibonacciActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FibonacciActionGoal>)))
  "Returns md5sum for a message object of type '<FibonacciActionGoal>"
  "006871c7fa1d0e3d5fe2226bf17b2a94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FibonacciActionGoal)))
  "Returns md5sum for a message object of type 'FibonacciActionGoal"
  "006871c7fa1d0e3d5fe2226bf17b2a94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FibonacciActionGoal>)))
  "Returns full string definition for message of type '<FibonacciActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%FibonacciGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: value_msg/FibonacciGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%int32 order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FibonacciActionGoal)))
  "Returns full string definition for message of type 'FibonacciActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%FibonacciGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: value_msg/FibonacciGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%int32 order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FibonacciActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FibonacciActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FibonacciActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))