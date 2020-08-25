#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from service_exercise.srv import BB8CustomServiceMessage, BB8CustomServiceMessageResponse

pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)

def callback(request):
    rospy.loginfo('Callback triggered')
    
    side = get_side(request.side)
    squares = get_squares(request.repetitions)

    twist = Twist()
    twist.angular.z = side
    pub.publish(twist)

    for square in squares:
        rospy.loginfo("squares")
        for trajectory in square:
            rospy.loginfo("trajectories")
            twist = Twist()
            twist.angular.z = trajectory['z']
            twist.linear.x = trajectory['x']

            pub.publish(twist)

    rospy.loginfo(side)
    rospy.loginfo(squares)

    res = BB8CustomServiceMessageResponse()
    res.success = True
    return res

def get_squares(repetitions):
    squares = []
    for i in range(0, repetitions):
        squares.append([
            {
                'z': 0,
                'x': 1
            },
            {
                'z': 0.25,
                'x': 0
            },
            {
                'z': 0,
                'x': 1
            },
            {
                'z': 0.25,
                'x': 0
            },
            {
                'z': 0,
                'x': 1
            },
            {
                'z': 0.25,
                'x': 0
            },
            {
                'z': 0,
                'x': 1
            },
            {
                'z': 0.25,
                'x': 0
            }
        ])
    return squares

def get_side(side):
    if side == 1:
        return 0
    if side == 2:
        return 0.25
    if side == 3:
        return 0.5
    if side == 4:
        return 0.75
    return 0

rospy.init_node('service_quiz')
service = rospy.Service('move_bb8_in_square_custom', BB8CustomServiceMessage, callback)

rospy.spin()