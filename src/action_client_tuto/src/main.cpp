#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include "value_msg/testAction.h"
#include <boost/thread.hpp>

typedef actionlib::SimpleActionClient<value_msg::testAction> Client;

void spinThread()
{
    ros::spin();
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "test_action_clinet");
    boost::thread spin_thread(&spinThread);

    Client client("/test_action_tuto", true);

    ROS_INFO("Waiting for action server to start!!");
    client.waitForServer();
    ROS_INFO("Action server started, sending goal.");
    
    value_msg::testAction goal;
    
    while(ros::ok())
    {
    int a = 10;
    goal.action_goal.goal.order = a;

    client.sendGoal(goal.action_goal.goal);
    }

    // bool finished_before_timeout = client.waitForResult(ros::Duration(50.0));

    // if(finished_before_timeout)
    // {
    //     actionlib::SimpleClientGoalState state = client.getState();
    //     ROS_INFO("Action finished: %s", state.toString().c_str());
    // }
    // else
    //     ROS_INFO("Action did not finished before the time out. ");
    ros::shutdown();
    spin_thread.join();

    return 0;
}