#include "pub.hpp"

int main(int argc, char **argv)
{
	ros::init(argc, argv, "pub_test"); //rqt_graph name(just node name)

	pub test;

	return 0;
}

