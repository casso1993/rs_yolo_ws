#! /usr/bin/env python3
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Point

def doMsg(msg):
    rospy.loginfo("point: %f, %f, %f", msg.x, msg.y, msg.z)

if __name__ == "__main__":
    rospy.init_node("SUB")
    sub = rospy.Subscriber("/detect_result_out", Point, doMsg, queue_size = 10)
    rospy.spin()