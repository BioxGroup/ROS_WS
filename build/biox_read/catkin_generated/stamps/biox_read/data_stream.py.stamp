import socket
import json
# import gc
import struct
import math
import numpy as np
import pandas as pd
import rospy
from enum import Enum
from biox_read.msg import FSR, IMU
import time


class Error(Exception):
    """Base class for other exceptions"""
    pass


class WrongDataType(Error):
    """Raised when the input is not correct type"""
    pass


global main_loop_running

global data_struct

data_struct = {
    "raw": {},
    "raw_cut": {},
    "cut_rms": {},
    "NN_data": pd.DataFrame,  
    "testing_data": []
}

headers = {
            "fsr" : ["FSR_1","FSR_2","FSR_3","FSR_4","FSR_5","FSR_6","FSR_7","FSR_8"],
            "angular_velocity" : ["ANGULAR_VELOCITY_X","ANGULAR_VELOCITY_Y","ANGULAR_VELOCITY_Z"],
            "linear_acceleration" : ["LINEAR_ACCELERATION_X","LINEAR_ACCELERATION_Y","LINEAR_ACCELERATION_Z"],
            "euler_angle" : ["EULER_ANGLE_X","EULER_ANGLE_Y","EULER_ANGLE_Z"],
            "quaternions" : ["QUATERNION_X","QUATERNION_Y","QUATERNION_Z","QUATERNION_W"]
        }
headers["imu"] = headers["angular_velocity"] + headers["linear_acceleration"] + headers["quaternions"] + headers["euler_angle"]
headers["full"] = headers["fsr"] + headers["imu"] + ["t"]
headers["full_q"] = headers["fsr"] + headers["imu"]


class Command(Enum):
    """
    Pre-defined orders
    """
    INIT = 0
    ACK = 1
    START_TRANSMISSION = 2
    STOP_TRANSMISSION = 3
    # GAIN_UP = 4
    # GAIN_DOWN = 5
    GAIN_RESET = 4
    CALIBRATE = 5
    DISCONNECT = 6
    SHUTDOWN = 7
    ERROR = 8
    NONE = 9
    SLEEP = 10


def decode(msg, numFrames=7):
    numBytes = 2    ## size in  bytes of selected fw Datatype
    numFSR = 8      ## fsr sensors
    numFSRframes = 10
    numIMU = 10
    numValues = (numFSR * numFSRframes) + numIMU
    totalBytes = numValues * numBytes
    dataType = 'h'  ## parameter to struct() function == 2 byte int

    data_decoded = list()
    for j in range(numFrames):
        buff = msg[(j * totalBytes):(totalBytes + j * totalBytes)]
        data_frame = list()

        for i in range(numValues):
            data_raw = buff[(i * numBytes):(numBytes + i * numBytes)]
            value, = struct.unpack(dataType, data_raw)
            data_frame.append(value)

        data_decoded.append(data_frame)

    return data_decoded


def publish_data(important="\U0001F346"):
    ## Set the server to listen allow connections from any client
    bindIp     = "0.0.0.0"
    bindPort   = 4444
    # bindPort   = 1234
    bufferSize  = 10000
    # bufferSize  = 1440
    
    numFSR = 8
    numFSRFrames = 10

    fsr_pub = rospy.Publisher(f"/FSR", FSR, queue_size=10)
    imu_pub = rospy.Publisher("IMU", IMU, queue_size=10)

    while True:

        # Create a datagram socket
        # UDPServerSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
        with socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM) as UDPServerSocket:

            # Bind to address and ip
            UDPServerSocket.bind((bindIp, bindPort))
            UDPServerSocket.settimeout(60)

            msg, addr = UDPServerSocket.recvfrom(bufferSize)

            data = decode(msg)
            # print("{} len:{}".format(important, len(data)))

            if len(data) < 1:
                print(">>>>>>>Data decode error")
                raise AssertionError
            

            msg_list = list()
            numDataFrames = len(data)
            print(numDataFrames)

            for i in range(numDataFrames):

                # 10 arrays of size 8
                fsr_values = list()
                for j in range(numFSRFrames):
                    #fsr_values.append(data[i][(j * numFSR):(numFSR + j * numFSR)])
                    fsr_msg = FSR()
                    fsr_msg.data = data[i][(j * numFSR):(numFSR + j * numFSR)]
                    fsr_pub.publish(fsr_msg)

                gyro_temp = [x/10 for x in data[i][80:83]]    ## 1x3 python list
                gyro_values = np.full((10,3), gyro_temp)

                acc_temp = [x/100 for x in data[i][83:86]]
                acc_values = np.full((10,3), acc_temp)

                quat_temp = [x/1000 for x in data[i][86:]]


                quat_normalized = quat_temp / np.linalg.norm(quat_temp)
                quat_values = np.full((10,4), quat_normalized)

                roll,pitch,yaw = toEulerAngles(quat_normalized, scale360=True)

                euler = np.full((10,3), [roll,pitch,yaw])

                imu_msg = IMU()

                imu_msg.gyro.x = gyro_values[0,0]
                imu_msg.gyro.y = gyro_values[0,1]
                imu_msg.gyro.z = gyro_values[0,2]

                imu_msg.linear_acceleration.x = acc_values[0, 0]
                imu_msg.linear_acceleration.y = acc_values[0, 1]
                imu_msg.linear_acceleration.z = acc_values[0, 2]

                imu_msg.euler.x = euler[0, 0]
                imu_msg.euler.y = euler[0, 1]
                imu_msg.euler.z = euler[0, 2]

                imu_msg.Quaternion.x = quat_values[0, 0]
                imu_msg.Quaternion.y = quat_values[0, 1]
                imu_msg.Quaternion.z = quat_values[0, 2]
                imu_msg.Quaternion.w = quat_values[0, 3]


                imu_pub.publish(imu_msg)


def toEulerAngles(q, scale360 = False):
    _x, _y, _z, _w = q
    sqw = _w * _w
    sqx = _x * _x
    sqy = _y * _y
    sqz = _z * _z

    x = math.atan2(2.0 * (_x * _y + _z * _w), (sqx - sqy - sqz + sqw))
    y = math.asin(-2.0 * (_x * _z - _y * _w) / (sqx + sqy + sqz + sqw))
    z = math.atan2(2.0 * (_y * _z + _x * _w), (-sqx - sqy + sqz + sqw))

    ## Convert from rad to degrees
    x = math.degrees(x)
    y = math.degrees(y)
    z = math.degrees(z)

    if scale360:
        ## Change degree display to 0-360 range
        x = x % 360
        y = y % 360
        z = z % 360

    return [x,y,z]


if __name__ == "__main__":

    rospy.init_node('biox_read')

    while not rospy.is_shutdown():
        try:
            publish_data()
        except Exception as e:
            rospy.logerr("Error in main loop during runtime")
