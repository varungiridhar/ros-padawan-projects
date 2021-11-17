#!/usr/bin/env python3
import rospy
import os
import sys
import json
from std_msgs.msg import String
from motion_planning.msg import AV
from motion_planning.msg import Cars
from motion_planning.msg import Cars_vector




self_tel_pub = rospy.Publisher('self_tel', AV, queue_size=10)
others_tel_pub = rospy.Publisher('others_tel', Cars_vector, queue_size=10)
rospy.init_node('node_name')
r = rospy.Rate(10) # 10hz
self_tel_lines = []
others_tel_lines = []
with open('/home/varungiridhar/catkin_ws/src/motion_planning/src/topic2.txt', 'r') as file:
	self_tel_lines = file.readlines()
	self_tel_lines = [line.rstrip() for line in self_tel_lines]
	
with open('/home/varungiridhar/catkin_ws/src/motion_planning/src/topic1.txt', 'r') as file:
	lines = file.readlines()
	lines = [line.rstrip() for line in lines]
	count = 0
	temp = []



	while count < len(lines):
		if (count % 5 == 0 and count > 0):
			others_tel_lines.append(temp)
			temp = []
		temp.append(lines[count])
		count = count + 1

print(others_tel_lines[0][0])




counter = 0
while not rospy.is_shutdown():
	while counter < len(others_tel_lines) - 1:
		avVectInfo = self_tel_lines[counter].replace(" ", "").split(",")
		av_tel = AV()
		av_tel.header.stamp = rospy.Time.now()
		av_tel.speed = float(avVectInfo[2])
		av_tel.latitude = float(avVectInfo[0])
		av_tel.longitude = float(avVectInfo[1])
		av_tel.acc = float(avVectInfo[3])
		av_tel.heading = float(avVectInfo[4])
		rospy.loginfo(counter)
		self_tel_pub.publish(av_tel)



		#we get the data in the form of [["", "", "", "", ""], [...], [...], ...]
		cars_vect = Cars_vector()
		for carVectInfo in others_tel_lines[counter]:
			carVectInfo = carVectInfo.replace(" ", "").split(",")
			car_tel = Cars()
			car_tel.header.stamp = rospy.Time.now()
			car_tel.objectID = int(carVectInfo[0])
			car_tel.objectType = carVectInfo[1]
			car_tel.dx = float(carVectInfo[2])
			car_tel.dy = float(carVectInfo[3])
			car_tel.speed = float(carVectInfo[4])
			car_tel.acc = float(carVectInfo[5])
			cars_vect.cars.append(car_tel)
		
		others_tel_pub.publish(cars_vect)
		counter = counter + 1
		r.sleep()

	

