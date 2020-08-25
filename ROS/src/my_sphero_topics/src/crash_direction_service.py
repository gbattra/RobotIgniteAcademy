#! /usr/bin/env python

import rospy
from imu_subscriber import ImuSubscriber
from std_srvs.srv import Trigger, TriggerRequest, TriggerResponse


class CrashDirectionService():
    def __init__(self):
        self.crash_detection_subscriber = rospy.Subscriber('/sphero/crash', Trigger, crash_callback)
        self.crash_handled = True
        self.crash_direction = ''
        self.service = rospy.Service('/crash_direction_service', Trigger, self.callback)

    def callback(self, request):
        res = TriggerResponse()
        if not self.crash_handled:
            res.success = False
            self.crash_handled = True
            self.crash_direction = ''
        res.message = self.direction_to_move()
        return res

    def direction_to_move(self):
        if not self.crash_direction == 'front':
            return 'forward'
        if not self.crash_direction == 'back':
            return 'backward'
        if not self.crash_direction == 'left':
            return 'left'
        if not self.crash_direction == 'right':
            return 'right'
        return 'forward'

    def crash_callback(message):
        self.crash_handled = False
        self.crash_direction = message.message


if __name__ == '__main__':
    rospy.init_node('crash_direction_service_node')
    trigger_serv = CrashDirectionService()
    rospy.spin()