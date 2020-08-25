#! /usr/bin/env python

import rospy
from std_msgs.msg import Empty

rospy.init_node('ros_graph_test')

def callback(message):
    rospy.loginfo('Message received')

pub = rospy.Publisher('ros_graph_topic', Empty, queue_size=1)
sub = rospy.Subscriber('ros_graph_topic', Empty, callback)

rospy.spin()
