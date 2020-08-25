#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Twist


class VelocityPublisher:
    def __init__(self):
        self.linear_vel = 0.25
        self.angular_vel = 0.5
        self.publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=1)


    def move_robot(self, direction):
        twist = self.new_twist()
        if direction == 'forward':
            twist.linear.x = self.linear_vel
            twist.angular.z = 0.0
        if direction == 'right':
            twist.linear.x = 0.0
            twist.angular.z = self.angular_vel
        if direction == 'left':
            twist.linear.x = 0.0
            twist.angular.z = -self.angular_vel
        if direction == 'back':
            twist.linear.x = -self.linear_vel
            twist.angular.z = 0.0
        if direction == 'stop':
            twist.linear.x = 0.0
            twist.angular.z = 0.0
        else:
            pass

        self.publisher.publish(twist)

    def new_twist(self):
        return Twist()


if __name__ == '__main__':
    rospy.init_node('velocity_publisher_node')
    velocity_publisher = VelocityPublisher()

    rate = rospy.Rate(1)

    ctrl_c = False

    def shutdown():
        rospy.loginfo('Shutting down')
        ctrl_c = True
        velocity_publisher.move_robot('stop')

    rospy.on_shutdown(shutdown)
    
    while not ctrl_c:
        velocity_publisher.move_robot('forward')
        rate.sleep()
