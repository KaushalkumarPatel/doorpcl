#ifndef PLANE_SEGMENTER
#define PLANE_SEGMENTER

#include <iostream>
#include <exception>
#include <assert.h>

#include <pcl/ModelCoefficients.h>
#include <pcl/point_types.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/visualization/image_viewer.h>
#include <pcl/filters/filter.h>
#include <pcl/common/common_headers.h>

#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/core/core.hpp"


class PlaneSegmenter{


public:
    typedef pcl::PointXYZRGBA Point;  
    typedef pcl::PointCloud<Point> PointCloud;
    typedef std::vector< cv::Vec4i > LineArray;
    typedef std::vector< pcl::PointXYZ > LinePosArray;


    PlaneSegmenter(int maxNumPlanes=6, int minSize=50000,
                   bool optimize=false, float threshold=0.03 );

    void segment(const PointCloud::ConstPtr &cloud, 
                 std::vector< LinePosArray > & linePositions,
                  pcl::visualization::ImageViewer * viewer=NULL  );

    void setHoughLines( float rho, float theta, int threshold,
                                    int minLineLength, int minLineGap);

    void setCameraIntrinsics( float focus_x, float focus_y,
                              float origin_x, float origin_y );

private:

    int maxPlaneNumber;
    int minPlaneSize; 

    //these variables control the parameters of the HoughLines function.
    float HL_rhoRes, HL_thetaRes;
    int HL_threshold, HL_minLineLength, HL_minLineGap ;

    //these are the intrinsics of the camera
    float fx, fy, u0, v0;

    bool haveSetCamera;
 
    pcl::SACSegmentation<Point> seg;

    //this modifies the vector "larger" in place, and resizes it.
    //This function assumes that both structures hold integer
    //values that get larger. 
    inline void filterOutIndices( std::vector< int > & larger,
                           const std::vector<int> & remove     );

    //this takes a set of indices (validPoints) and sets the corresponding
    //cells in a matrix to 255. The matrix should start out as a matrix of all
    //zeros.
    //This creates a binary image that can be easily used to threshold and
    //find lines or features.
    inline void cloudToMat(const std::vector< int > & validPoints,
                           cv::Mat &mat                            );
    //This takes an image (preferably a binary image) and performs the canny
    //edge detection algorithm. Then a houghLine algorithm is run to extract lines
    inline void findLines(cv::Mat & src, LineArray & lines,
                          pcl::visualization::ImageViewer * viewer );
    

    //this takes the equation of a plane (Ax + By + Cz + D = 0) as coeffs,
    //and the positions of the endpoints of lines in a picture.
    //These endpoints are then projected onto the plane to convert the 2d 
    //line positions into 3d lines on the plane.
    //the projection equations have been solved analytically. 
    inline void linesToPositions( const pcl::ModelCoefficients::Ptr & coeffs,
                                  const LineArray & lines, 
                                  LinePosArray & linePositions               );
};

#endif 