#include "door_finder/edge_detector.h"
#include <door_finder/SimpleConfig.h>

#include <sensor_msgs/PointCloud2.h>
#include <pcl/ros/conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <ros/ros.h>

#include <image_transport/image_transport.h>
#include <opencv/cvwimage.h>
#include <opencv/highgui.h>
#include <cv_bridge/CvBridge.h>


static EdgeDetector * detector;
static ros::Publisher pub;
static image_transport::Publisher image_pub; 

void  cloud_cb (const sensor_msgs::PointCloud2ConstPtr& input)
{
    sensor_msgs::PointCloud2 output;
    EdgeDetector::PointCloud::Ptr cloud (new EdgeDetector::PointCloud );
    pcl::fromROSMsg (*input, *cloud);
    detector->inputPointCloud( cloud, true );
    //pub.publish (output);
}   

void publishImage( cv::Mat & mat ){
    
    if (detector->displayImage.data != NULL ){
        sensor_msgs::ImagePtr msg = sensor_msgs::CvBridge::cvToImgMsg( detector->displayImage, "mono8");
        image_pub.publish( msg );
    }

}

int main (int argc, char** argv)
{
    std::string configFileName ;
    //configFileName = "~/config/edgeDetectorConfig.txt";
    configFileName ="/home/swatdrc/catkin_ws/src/doorpcl/rospkg/src/config.txt";

    //cout << "Using default config file: " << configFileName << "\n";
  
    SimpleConfig config( configFileName );
    std::string cloudInputName, lineOutputName;
    config.get( "cloudInputStream", cloudInputName);
    
    //initialize the edge detector.
    detector = new EdgeDetector( configFileName );

    // Initialize ROS
    ros::init (argc, argv, "door_finder");
    
    ros::NodeHandle nh;

    // Create a ROS subscriber for the input point cloud
    ros::Subscriber sub = nh.subscribe(cloudInputName, 1, cloud_cb);

    // Create a ROS publisher for the output point cloud
    pub = nh.advertise<sensor_msgs::PointCloud2> ("output", 1);

    image_transport::ImageTransport it(nh);
    image_pub = it.advertise("door/image", 1);

    // Spin
    ros::spin ();
}
