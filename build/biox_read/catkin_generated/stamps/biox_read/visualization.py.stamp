import rospy
from geometry_msgs.msg import PoseStamped
from visualization_msgs.msg import Marker
from biox_read.msg import IMU

class visualization:

    def __init__(self):
        self.ori_sub = rospy.Subscriber("/IMU", IMU, self.pose_callback)
        self.pose_pub = rospy.Publisher("/Armband_pose", PoseStamped, queue_size=10)

    def pose_callback(self, ori_data):
        self.qx = ori_data.Quaternion.x
        self.qy = ori_data.Quaternion.y
        self.qz = ori_data.Quaternion.z
        self.qw = ori_data.Quaternion.w
        self.visualize()

    def visualize(self):
        x_st = PoseStamped()
        x_st.header.stamp = rospy.Time.now()
        x_st.header.frame_id = "base_link"
        x_st.pose.position.x = 0
        x_st.pose.position.y = 0
        x_st.pose.position.z = 0
        x_st.pose.orientation.x = self.qx
        x_st.pose.orientation.y = self.qy
        x_st.pose.orientation.z = self.qz
        x_st.pose.orientation.w = self.qw
        print(x_st)
        self.pose_pub.publish(x_st)


if __name__ == "__main__":

    rospy.init_node('vizualization')

    while not rospy.is_shutdown():
        visualization()
        rospy.spin()