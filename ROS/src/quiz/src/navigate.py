#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

rospy.init_node('navigate')

pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
rate = rospy.Rate(50)


def callback(msg):
    # right = min(msg.ranges[0:20])
    # forward = min(msg.ranges[350:370])
    # left = min(msg.ranges[699:719])
    right = msg.ranges[0]
    forward = msg.ranges[360]
    left = msg.ranges[719]

    print("R: %s" % right)
    print("F: %s" % forward)
    print("L: %s" % left)

    if right <= 1 or forward <= 1:
        z = 0.25
    elif left <= 1:
        z = -0.25
    else:
        z = 0
    x = 0.15

    twist = Twist()
    twist.linear.x = x
    twist.angular.z = z

    pub.publish(twist)
    rate.sleep()


sub = rospy.Subscriber('/kobuki/laser/scan', LaserScan, callback)
rospy.spin()
