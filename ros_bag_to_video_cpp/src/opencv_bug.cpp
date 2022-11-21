#include <opencv2/highgui/highgui.hpp>

int main (int argc, char** argv)
{
    cv::startWindowThread();
    cv::waitKey(0);
    return 0;
}
