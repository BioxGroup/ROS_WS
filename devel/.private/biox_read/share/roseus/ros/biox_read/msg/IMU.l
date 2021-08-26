;; Auto-generated. Do not edit!


(when (boundp 'biox_read::IMU)
  (if (not (find-package "BIOX_READ"))
    (make-package "BIOX_READ"))
  (shadow 'IMU (find-package "BIOX_READ")))
(unless (find-package "BIOX_READ::IMU")
  (make-package "BIOX_READ::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass biox_read::IMU
  :super ros::object
  :slots (_gravity _gyro _linear_acceleration _euler _Quaternion ))

(defmethod biox_read::IMU
  (:init
   (&key
    ((:gravity __gravity) (instance geometry_msgs::Point :init))
    ((:gyro __gyro) (instance geometry_msgs::Point :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Point :init))
    ((:euler __euler) (instance geometry_msgs::Point :init))
    ((:Quaternion __Quaternion) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _gravity __gravity)
   (setq _gyro __gyro)
   (setq _linear_acceleration __linear_acceleration)
   (setq _euler __euler)
   (setq _Quaternion __Quaternion)
   self)
  (:gravity
   (&rest __gravity)
   (if (keywordp (car __gravity))
       (send* _gravity __gravity)
     (progn
       (if __gravity (setq _gravity (car __gravity)))
       _gravity)))
  (:gyro
   (&rest __gyro)
   (if (keywordp (car __gyro))
       (send* _gyro __gyro)
     (progn
       (if __gyro (setq _gyro (car __gyro)))
       _gyro)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:euler
   (&rest __euler)
   (if (keywordp (car __euler))
       (send* _euler __euler)
     (progn
       (if __euler (setq _euler (car __euler)))
       _euler)))
  (:Quaternion
   (&rest __Quaternion)
   (if (keywordp (car __Quaternion))
       (send* _Quaternion __Quaternion)
     (progn
       (if __Quaternion (setq _Quaternion (car __Quaternion)))
       _Quaternion)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _gravity
    (send _gravity :serialization-length)
    ;; geometry_msgs/Point _gyro
    (send _gyro :serialization-length)
    ;; geometry_msgs/Point _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; geometry_msgs/Point _euler
    (send _euler :serialization-length)
    ;; geometry_msgs/Quaternion _Quaternion
    (send _Quaternion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _gravity
       (send _gravity :serialize s)
     ;; geometry_msgs/Point _gyro
       (send _gyro :serialize s)
     ;; geometry_msgs/Point _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; geometry_msgs/Point _euler
       (send _euler :serialize s)
     ;; geometry_msgs/Quaternion _Quaternion
       (send _Quaternion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _gravity
     (send _gravity :deserialize buf ptr-) (incf ptr- (send _gravity :serialization-length))
   ;; geometry_msgs/Point _gyro
     (send _gyro :deserialize buf ptr-) (incf ptr- (send _gyro :serialization-length))
   ;; geometry_msgs/Point _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; geometry_msgs/Point _euler
     (send _euler :deserialize buf ptr-) (incf ptr- (send _euler :serialization-length))
   ;; geometry_msgs/Quaternion _Quaternion
     (send _Quaternion :deserialize buf ptr-) (incf ptr- (send _Quaternion :serialization-length))
   ;;
   self)
  )

(setf (get biox_read::IMU :md5sum-) "7d7d0d3dc06e3fee1ce2f3a62d5b110c")
(setf (get biox_read::IMU :datatype-) "biox_read/IMU")
(setf (get biox_read::IMU :definition-)
      "geometry_msgs/Point gravity
geometry_msgs/Point gyro
geometry_msgs/Point linear_acceleration
geometry_msgs/Point euler
geometry_msgs/Quaternion Quaternion
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :biox_read/IMU "7d7d0d3dc06e3fee1ce2f3a62d5b110c")


