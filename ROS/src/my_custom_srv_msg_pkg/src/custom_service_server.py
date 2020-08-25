#! /usr/bin/env python

import rospy
from my_custom_srv_msg_pkg.srv import MyCustomServiceMessage, MyCustomServiceMessageResponse

def my_callback(request):
    res = MyCustomServiceMessageResponse()
    res.success = True

    return res

rospy.init_node('service_client')
service = rospy.Service('/my_service', MyCustomServiceMessage, my_callback)
rospy.spin()
