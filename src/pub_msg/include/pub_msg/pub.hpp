#include <iostream>
#include <ros/ros.h>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>

#include "std_msgs/String.h"
#include "value_msg/value.h"


class pub
{
    ros::NodeHandle nh;
    ros::Publisher pub_msg;     //publish 할때 선언
    
    value_msg::value make_msg;  //value.msg 안에 있는 메시지 이름

    void initPublisher(ros::NodeHandle &nh);
    void ros_start();

public:
    pub()
    {
        initPublisher(nh);
        ros_start();
    }

    ~pub()
    {
    }

private:

};
