; Auto-generated. Do not edit!


(cl:in-package biox_read-msg)


;//! \htmlinclude IMU.msg.html

(cl:defclass <IMU> (roslisp-msg-protocol:ros-message)
  ((gravity
    :reader gravity
    :initarg :gravity
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (gyro
    :reader gyro
    :initarg :gyro
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (euler
    :reader euler
    :initarg :euler
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (Quaternion
    :reader Quaternion
    :initarg :Quaternion
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass IMU (<IMU>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IMU>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IMU)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name biox_read-msg:<IMU> is deprecated: use biox_read-msg:IMU instead.")))

(cl:ensure-generic-function 'gravity-val :lambda-list '(m))
(cl:defmethod gravity-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader biox_read-msg:gravity-val is deprecated.  Use biox_read-msg:gravity instead.")
  (gravity m))

(cl:ensure-generic-function 'gyro-val :lambda-list '(m))
(cl:defmethod gyro-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader biox_read-msg:gyro-val is deprecated.  Use biox_read-msg:gyro instead.")
  (gyro m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader biox_read-msg:linear_acceleration-val is deprecated.  Use biox_read-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'euler-val :lambda-list '(m))
(cl:defmethod euler-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader biox_read-msg:euler-val is deprecated.  Use biox_read-msg:euler instead.")
  (euler m))

(cl:ensure-generic-function 'Quaternion-val :lambda-list '(m))
(cl:defmethod Quaternion-val ((m <IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader biox_read-msg:Quaternion-val is deprecated.  Use biox_read-msg:Quaternion instead.")
  (Quaternion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IMU>) ostream)
  "Serializes a message object of type '<IMU>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gravity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyro) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'euler) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Quaternion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IMU>) istream)
  "Deserializes a message object of type '<IMU>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gravity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyro) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'euler) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Quaternion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IMU>)))
  "Returns string type for a message object of type '<IMU>"
  "biox_read/IMU")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IMU)))
  "Returns string type for a message object of type 'IMU"
  "biox_read/IMU")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IMU>)))
  "Returns md5sum for a message object of type '<IMU>"
  "7d7d0d3dc06e3fee1ce2f3a62d5b110c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IMU)))
  "Returns md5sum for a message object of type 'IMU"
  "7d7d0d3dc06e3fee1ce2f3a62d5b110c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IMU>)))
  "Returns full string definition for message of type '<IMU>"
  (cl:format cl:nil "geometry_msgs/Point gravity~%geometry_msgs/Point gyro~%geometry_msgs/Point linear_acceleration~%geometry_msgs/Point euler~%geometry_msgs/Quaternion Quaternion~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IMU)))
  "Returns full string definition for message of type 'IMU"
  (cl:format cl:nil "geometry_msgs/Point gravity~%geometry_msgs/Point gyro~%geometry_msgs/Point linear_acceleration~%geometry_msgs/Point euler~%geometry_msgs/Quaternion Quaternion~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IMU>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gravity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyro))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'euler))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Quaternion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IMU>))
  "Converts a ROS message object to a list"
  (cl:list 'IMU
    (cl:cons ':gravity (gravity msg))
    (cl:cons ':gyro (gyro msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':euler (euler msg))
    (cl:cons ':Quaternion (Quaternion msg))
))
