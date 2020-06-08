#include <ros/ros.h>
#include <std_msgs/Int32.h>
#include <actionlib/server/simple_action_server.h>
#include "value_msg/testAction.h"
#include <boost/bind.hpp>

class Action_server
{
protected:
    actionlib::SimpleActionServer<value_msg::testAction> as_server;
    ros::NodeHandle nh_;
    ros::Subscriber sub_;


private:
    std::string action_name_;
    int32_t goal_;
    value_msg::testActionFeedback feedback_;
    value_msg::testActionResult result_;

public:

    //Action_server(std::string name) : as_server(nh_, name, false), action_name_(name)
    Action_server(std::string name) : 
            as_server(nh_, name, boost::bind(&Action_server::executeCB, this, _1), false)
    {
        //as_server.registerGoalCallback(boost::bind(&Action_server::executeCB, this));
        as_server.start();
    }
    ~Action_server()
    {

    }
    void executeCB(const value_msg::testActionGoalConstPtr &_goal)
    {

        int goal_mode = (int)_goal->goal.order;
        ROS_INFO("Goal_mode = %d", goal_mode);

    }


};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "test_action");

    Action_server test(ros::this_node::getName());
    ros::spin();

    return 0;
}