#! /usr/bin/env python

import rospy
from nav_msgs.msg import Odometry


class OdomSubscriber:
    def __init__(self):
        self.latest_message = Odometry()
        self.subscriber = rospy.Subscriber('/odom', Odometry, self.callback)

    def callback(self, message):
        self.latest_message = message


if __name__ == '__main__':
    rospy.init_node('odom_subscriber_node')
    odom_sub = OdomSubscriber()
    rate = rospy.Rate(0.5)

    ctrl_c = False
    def shutdown():
        ctrl_c = True

    rospy.on_shutdown(shutdown)

    while not ctrl_c:
        data = odom_sub.latest_message
        rospy.loginfo('Data: %s' % data)
        rate.sleep()
