#include <iostream>
#include <ros/ros.h>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>

#include "std_msgs/String.h"
#include "value_msg/value.h"

class sub
{
public:
    ros::NodeHandle nh;
    ros::Subscriber msg_sub;

    value_msg::value make_msg;

    void initSubscriber(ros::NodeHandle &nh);
    void msg_callback(const value_msg::value::ConstPtr &make_msg);

    void init();

    sub()
    {
        init();
    }

    ~sub()
    {
    }

    int sub_value;
    int index;

private:
};