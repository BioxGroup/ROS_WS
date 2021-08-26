// Auto-generated. Do not edit!

// (in-package biox_read.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class IMU {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gravity = null;
      this.gyro = null;
      this.linear_acceleration = null;
      this.euler = null;
      this.Quaternion = null;
    }
    else {
      if (initObj.hasOwnProperty('gravity')) {
        this.gravity = initObj.gravity
      }
      else {
        this.gravity = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('euler')) {
        this.euler = initObj.euler
      }
      else {
        this.euler = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('Quaternion')) {
        this.Quaternion = initObj.Quaternion
      }
      else {
        this.Quaternion = new geometry_msgs.msg.Quaternion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IMU
    // Serialize message field [gravity]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.gravity, buffer, bufferOffset);
    // Serialize message field [gyro]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.gyro, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [euler]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.euler, buffer, bufferOffset);
    // Serialize message field [Quaternion]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.Quaternion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IMU
    let len;
    let data = new IMU(null);
    // Deserialize message field [gravity]
    data.gravity = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyro]
    data.gyro = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [euler]
    data.euler = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [Quaternion]
    data.Quaternion = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'biox_read/IMU';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d7d0d3dc06e3fee1ce2f3a62d5b110c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point gravity
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IMU(null);
    if (msg.gravity !== undefined) {
      resolved.gravity = geometry_msgs.msg.Point.Resolve(msg.gravity)
    }
    else {
      resolved.gravity = new geometry_msgs.msg.Point()
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = geometry_msgs.msg.Point.Resolve(msg.gyro)
    }
    else {
      resolved.gyro = new geometry_msgs.msg.Point()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = geometry_msgs.msg.Point.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new geometry_msgs.msg.Point()
    }

    if (msg.euler !== undefined) {
      resolved.euler = geometry_msgs.msg.Point.Resolve(msg.euler)
    }
    else {
      resolved.euler = new geometry_msgs.msg.Point()
    }

    if (msg.Quaternion !== undefined) {
      resolved.Quaternion = geometry_msgs.msg.Quaternion.Resolve(msg.Quaternion)
    }
    else {
      resolved.Quaternion = new geometry_msgs.msg.Quaternion()
    }

    return resolved;
    }
};

module.exports = IMU;
