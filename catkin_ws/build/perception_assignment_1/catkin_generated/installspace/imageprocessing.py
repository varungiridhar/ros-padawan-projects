import rospy
from std_msgs.msg import String

def processVideoFrames():

    rospy.init_node('imageprocessing', anonymous=True)

    //subscriber
    //rospy.Subscriber("chatter", String, callback)
    //publisherrosrun beginner_tutorials talker  
    pub = rospy.Publisher('chatter', String, queue_size=10)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()

if __name__ == '__main__':
    try
        processVideoFrames()
    except rospy.ROSInterruptException:
        pass
