//source devel/setup.bash!!!!!!!!!

#include <iostream>
#include "pub_msg/pub.hpp"

void pub::initPublisher(ros::NodeHandle &nh)
{
    pub_msg = nh.advertise<value_msg::value>("/num",10);
}

void pub::ros_start()
{
    ROS_INFO("MESSAGE_PUB");

    ros::Rate loop_rate(10);     

    while (ros::ok())
    {
        int num = 1;

        make_msg.msg_msg = num; //value.msg 안에 있는 msg_msg 변수안에 num을 넣어준다.

        //ROS_INFO("NUM = %d", make_msg.msg_msg);

        pub_msg.publish(make_msg);

        ros::spinOnce();

        loop_rate.sleep();
    }
}
