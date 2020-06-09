#include <ros/ros.h>
#include <std_msgs/Int32.h>
#include <actionlib/server/simple_action_server.h>
#include "value_msg/testAction.h"
#include <boost/bind.hpp>
#include <cstring>

class Action_server
{
public:
    Action_server(std::string name) : as_server(name, false), action_name_(name)
    {
        as_server.registerGoalCallback(boost::bind(&Action_server::executeCB, this));       //Callback goal
        as_server.registerPreemptCallback(boost::bind(&Action_server::preemptCB, this));    //Callback

        sub_ = nh_.subscribe("/test_number", 1, &Action_server::testCB, this);

        as_server.start();
    }
    ~Action_server(void)
    {
    }
    
    void executeCB()
    {
        goal_mode = as_server.acceptNewGoal() -> order;
        ROS_INFO("Goal_mode = %d", goal_mode);
    }

    void preemptCB()
    {
        ROS_INFO("%s: Preempted", action_name_.c_str());
        // set the action state to preempted
        as_server.setPreempted();
    }

    void testCB(const std_msgs::Int32::ConstPtr &msg)
    {
        if(!as_server.isActive())
            return;

        feedback_.feedback.data = msg->data;
        result_.result.result = msg->data;

        as_server.publishFeedback(feedback_.feedback);

        ROS_INFO("%s: Succeeded", action_name_.c_str());
        as_server.setSucceeded(result_.result);
    }

protected:
    actionlib::SimpleActionServer<value_msg::testAction> as_server;
    std::string action_name_;

    value_msg::testActionFeedback feedback_;
    value_msg::testActionResult result_;

    ros::NodeHandle nh_;
    ros::Subscriber sub_;

    int goal_mode;
};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "test_action_server");

    Action_server test(ros::this_node::getName());
    ros::spin();

    return 0;
}