#! /usr/bin/env python

import rospy

rospy.init_node('ObiWan')
rate = rospy.Rate(2)               # We create a Rate object of 2Hz
while not rospy.is_shutdown():     # Endless loop until Ctrl + C
   print "Help me Obi-Wan Kenobi, you're my only hope"
   rate.sleep()                    # We sleep the needed time to maintain the Rate fixed above
    