# ROS_WS
ROS workspace that connects BioX armband to the ROS ecosystem. It allows BioX sensor data to be streamed, decoded, and published as ROS topics for robotics and automation applications. However, since ROS is no longer supported, it can be said that it is outdated.

## Purpose
- Stream BioX armband sensor data (FSR, IMU, quaternions, Euler angles) into ROS.
- Convert raw UDP packets into standard ROS messages.
- Enable seamless integration of BioX with robots, automation systems, and ROS-based research platforms.

## Typical Use Cases
- Robotic control and feedback using wearable sensor signals.
- Human–robot interaction studies and applications.
- Sensor data logging and visualization with ROS tools like rviz or rqt.
- Advanced research in sensor fusion, automation, or prosthetics.

## Components
- UDP Data Reception – Listens for real-time sensor packets from the BioX armband.
- Decoding Layer – Unpacks binary data into FSR, IMU, quaternion, and Euler values.
- ROS Publishers – Publishes decoded data on /FSR and /IMU topics.
- Quaternion to Euler Conversion – Provides orientation data in multiple formats for easier robotics use.
- Integration with ROS – Makes BioX data available to any ROS node for control, feedback, or visualization.
