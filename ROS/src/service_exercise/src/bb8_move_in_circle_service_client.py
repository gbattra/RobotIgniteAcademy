#! /usr/bin/env python

import rospy
from std_srvs.srv import Empty, EmptyRequest

rospy.init_node('service_client')
rospy.wait_for_service('move_bb8_in_circle')
serv = rospy.ServiceProxy('move_bb8_in_circle', Empty)
req = EmptyRequest()
res = serv(req)