#! /usr/bin/env python

import rospy
from std_srvs.srv import Trigger, TriggerRequest

class CrashDetectionClient():
    def __init__(self):
        rospy.wait_for_service('/crash_direction_service')
        self.direction_service = rospy.ServiceProxy('/crash_direction_service', Trigger)


if __name__ == '__main__':
    rospy.init_node('crash_direction_client_node')
    client = CrashDetectionClient()
    ctrl_c = False
    def shutdown():
        ctrl_c = True

    rospy.on_shutdown(shutdown)

    while not ctrl_c:
        rate = rospy.Rate(5)
        result = client.direction_service(TriggerRequest())

        rospy.logwarn('Success %s ' % result.success)
        rospy.logwarn('Direction == %s' % result.message)

        rate.sleep()
