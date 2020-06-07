#include <iostream>
#include "sub.hpp"

void sub::initSubscriber(ros::NodeHandle &nh)
{
    msg_sub = nh.subscribe("/num", 10, &sub::msg_callback, this);
}

void sub::msg_callback(const value_msg::value::ConstPtr &make_msg)
{

    sub_value = make_msg->msg_msg;
}

void sub::init()
{
    initSubscriber(nh);

    ros::Rate loop_rate(1);
    ROS_INFO("SUB_START!!");


    while (ros::ok())
    {   
        ROS_INFO("sub_value = %d", sub_value);

        ros::spinOnce();

        loop_rate.sleep();

    }
}