#! /usr/bin/env python

import rospy
from std_srvs.srv import Empty, EmptyResponse
from geometry_msgs.msg import Twist

rospy.init_node('service_server')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

def callback(request):
    rospy.loginfo("Callback triggered")
    twist = Twist()
    twist.linear.x = 0.5
    twist.angular.z = 0.5
    pub.publish(twist)
    return EmptyResponse()

service = rospy.Service('move_bb8_in_circle', Empty, callback)
rospy.spin()