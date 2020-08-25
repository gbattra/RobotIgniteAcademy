#!/usr/bin/env python

import rospy
import rospkg
from iri_wam_reproduce_trajectory.srv import ExecTraj, ExecTrajRequest
import sys

rospack = rospkg.RosPack()
rospy.init_node('exercise_4_1')
rospy.wait_for_service('/execute_trajectory')
exec_traj_service = rospy.ServiceProxy('/execute_trajectory', ExecTraj)
req = ExecTrajRequest()
req.file = rospack.get_path('iri_wam_reproduce_trajectory') + '/config/get_food.txt'
result = exec_traj_service(req)

print result
