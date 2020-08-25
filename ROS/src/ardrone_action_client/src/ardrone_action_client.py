#! /usr/bin/env python

import rospy
import actionlib
from geometry_msgs.msg import Twist
from ardrone_as.msg import ArdroneAction, ArdroneGoal, ArdroneResult, ArdroneFeedback

DONE = 2

pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)

nImage = 1
def feedback_callback(feedback):
    global nImage
    print('Feedback image %s' % nImage)
    nImage += 1

rospy.init_node('ardrone_action_client')

client = actionlib.SimpleActionClient('ardrone_action_server', ArdroneAction)
client.wait_for_server()

goal = ArdroneGoal()
goal.nseconds = 10

client.send_goal(goal, feedback_cb=feedback_callback)

rate = rospy.Rate(1)

while client.get_state() < DONE:
    rospy.loginfo("twisting")
    twist = Twist()
    twist.linear.x = 0.25
    twist.linear.z = 0.25
    twist.angular.z = 0.25
    pub.publish(twist)

rospy.loginfo("State finished %s" % client.get_state())

