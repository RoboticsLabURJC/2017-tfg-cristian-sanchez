; Auto-generated. Do not edit!


(cl:in-package heatmap_util-msg)


;//! \htmlinclude GetPowerFrissGoal.msg.html

(cl:defclass <GetPowerFrissGoal> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (obstacle
    :reader obstacle
    :initarg :obstacle
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetPowerFrissGoal (<GetPowerFrissGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPowerFrissGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPowerFrissGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heatmap_util-msg:<GetPowerFrissGoal> is deprecated: use heatmap_util-msg:GetPowerFrissGoal instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <GetPowerFrissGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heatmap_util-msg:index-val is deprecated.  Use heatmap_util-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'obstacle-val :lambda-list '(m))
(cl:defmethod obstacle-val ((m <GetPowerFrissGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heatmap_util-msg:obstacle-val is deprecated.  Use heatmap_util-msg:obstacle instead.")
  (obstacle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPowerFrissGoal>) ostream)
  "Serializes a message object of type '<GetPowerFrissGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'index))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPowerFrissGoal>) istream)
  "Deserializes a message object of type '<GetPowerFrissGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'index) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'index)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
    (cl:setf (cl:slot-value msg 'obstacle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPowerFrissGoal>)))
  "Returns string type for a message object of type '<GetPowerFrissGoal>"
  "heatmap_util/GetPowerFrissGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPowerFrissGoal)))
  "Returns string type for a message object of type 'GetPowerFrissGoal"
  "heatmap_util/GetPowerFrissGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPowerFrissGoal>)))
  "Returns md5sum for a message object of type '<GetPowerFrissGoal>"
  "1822600a2f137b0c0bacd1494b7c3314")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPowerFrissGoal)))
  "Returns md5sum for a message object of type 'GetPowerFrissGoal"
  "1822600a2f137b0c0bacd1494b7c3314")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPowerFrissGoal>)))
  "Returns full string definition for message of type '<GetPowerFrissGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int16[] index~%bool obstacle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPowerFrissGoal)))
  "Returns full string definition for message of type 'GetPowerFrissGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%int16[] index~%bool obstacle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPowerFrissGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'index) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPowerFrissGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPowerFrissGoal
    (cl:cons ':index (index msg))
    (cl:cons ':obstacle (obstacle msg))
))
