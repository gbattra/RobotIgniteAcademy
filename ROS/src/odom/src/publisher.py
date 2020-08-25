#! /usr/bin/env python

import rospy
from odom.msg import Age

rospy.init_node('odom_publisher')
pub = rospy.Publisher('/odom_age', Age, queue_size=1)
rate = rospy.Rate(2)

while not rospy.is_shutdown():
    age = Age()
    age.years = 1
    age.months = 2
    age.days = 5

    pub.publish(age)
    rate.sleep()
