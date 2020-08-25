#! /usr/bin/env python

import rospy
from sensor_msgs.msg import Imu
from std_srvs.srv import Trigger


class ImuSubscriber():
    def __init__(self):
        self.crash_publisher = rospy.Publisher('/sphero/crashed', Trigger, queue_size=1)
        self.subscriber = rospy.Subscriber('/sphero/imu/data3', Imu, self.callback)
        self.latest_message = Imu()
        self.accel_threshold = 1.0

    def callback(self, message):
        self.latest_message = message
        self.detection_dict = self.four_sector_detection()
        crashed, direction =  self.has_crashed():
        if crashed:
            trigger = Trigger()
            trigger.success = False
            trigger.message = direction
            self.crash_publisher.publish(trigger)

    def four_sector_detection(self):
        message = 'nothing'
        
        axis_list = [x_accel, y_accel, z_accel]

        x_accel = self.latest_message.linear_acceleration.x
        y_accel = self.latest_message.linear_acceleration.y
        z_accel = self.latest_message.linear_acceleration.z

        max_axis_index = axis_list.index(max(axis_list))
        positive = axis_list[max_axis_index] >= 0
        significative_value = abs(axis_list[max_axis_index]) > self.accel_threshold

        if not significative_value:
            rospy.loginfo("X="+str(x_accel)+"Y="+str(y_accel)+", Z="+str(z_accel)+"]")
            return self.convert_to_dict(message)

        if max_axis_index == 0:
            rospy.logwarn('[X=%s, ' % x_accel)
            rospy.loginfo('Y=%s, Z=%s]' % (y_accel, z_accel))
            if positive:
                message = 'right'
            else:
                message = 'left'
        if max_axis_index == 1:
            rospy.logwarn('[Y=%s, ' % y_accel)
            rospy.loginfo('X=%s, Z=%s]' % (x_accel, z_accel))
            if positive:
                message = 'front'
            else:
                message = 'back'
        if max_axis_index == 2:
            rospy.logwarn('[Z=%s, ' % z_accel)
            rospy.loginfo('X=%s, Y=%s]' % (x_accel, y_accel))
            if positive:
                message = 'up'
            else:
                message = 'down'

        return self.convert_to_dict(message)

    def convert_to_dict(self, message):
        return {
            'front': message == 'front' or message == 'up' or message == 'down',
            'back': message == 'back',
            'left': message == 'left',
            'right': message == 'right'
        }

    def has_crashed(self):
        for direction, collision_detected in self.detection_dict.iteritems():
            if collision_detected:
                return True, direction
        return False, None


if __name__ == '__main__':
    rospy.init_node('imu_subscriber_node')
    imu_sub = ImuSubscriber()
    rate = rospy.Rate(0.5)

    ctrl_c = False
    def shutdown():
        ctrl_c = True

    rospy.on_shutdown(shutdown)

    while not ctrl_c:
        data = imu_sub.latest_message
        rospy.loginfo('Data: %s' % data)
        rate.sleep()
