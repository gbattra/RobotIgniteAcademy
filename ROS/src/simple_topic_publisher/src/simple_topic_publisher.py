#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Twist, Vector3

rospy.init_node('simple_topic_publisher')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

rate = rospy.Rate(2)

while not rospy.is_shutdown():
    linear = Vector3(1, 0, 3)
    angular = Vector3(4, 0, 6)
    twist = Twist()
    twist.linear = linear
    twist.angular = angular

    pub.publish(twist)
    rate.sleep()
