#include <ros/ros.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include "opencv2/opencv.hpp"
using namespace std;
using namespace cv;

cv::VideoWriter video_out("/home/varungiridhar/catkin_ws/src/ros_bag_to_video_cpp/src/out.avi",CV_FOURCC('M','J','P','G'),29.97, cv::Size(1920,1080),true);

void imagecompressedCallback(const sensor_msgs::CompressedImageConstPtr& msg)
{
  try
  {
    cv::Mat image = cv::imdecode(cv::Mat(msg->data),1);//convert compressed image data to cv::Mat
    cv::imshow("view", image);
    video_out.write(image);
    cv::waitKey(10);
  }
  catch (cv_bridge::Exception& e)
  {
    ROS_ERROR("Could not convert to image!");
  }
}

int main(int argc, char **argv)
{

  ros::init(argc, argv, "image_listener");
  ros::NodeHandle nh;
  cv::namedWindow("view");
  cv::startWindowThread();
  ros::Subscriber sub = nh.subscribe("/camera/image_raw/compressed", 1, imagecompressedCallback);
  ros::spin();
  cv::destroyWindow("view");
}
