// Generated by gencpp from file value_msg/value.msg
// DO NOT EDIT!


#ifndef VALUE_MSG_MESSAGE_VALUE_H
#define VALUE_MSG_MESSAGE_VALUE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace value_msg
{
template <class ContainerAllocator>
struct value_
{
  typedef value_<ContainerAllocator> Type;

  value_()
    : msg_msg(0)  {
    }
  value_(const ContainerAllocator& _alloc)
    : msg_msg(0)  {
  (void)_alloc;
    }



   typedef int64_t _msg_msg_type;
  _msg_msg_type msg_msg;





  typedef boost::shared_ptr< ::value_msg::value_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::value_msg::value_<ContainerAllocator> const> ConstPtr;

}; // struct value_

typedef ::value_msg::value_<std::allocator<void> > value;

typedef boost::shared_ptr< ::value_msg::value > valuePtr;
typedef boost::shared_ptr< ::value_msg::value const> valueConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::value_msg::value_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::value_msg::value_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace value_msg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'value_msg': ['/home/cona/ros_msg_example/src/value_msg/msg', '/home/cona/ros_msg_example/devel/share/value_msg/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::value_msg::value_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::value_msg::value_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::value_msg::value_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::value_msg::value_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::value_msg::value_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::value_msg::value_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::value_msg::value_<ContainerAllocator> >
{
  static const char* value()
  {
    return "27d68748e893d7f456dfb185e9ecf1a7";
  }

  static const char* value(const ::value_msg::value_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x27d68748e893d7f4ULL;
  static const uint64_t static_value2 = 0x56dfb185e9ecf1a7ULL;
};

template<class ContainerAllocator>
struct DataType< ::value_msg::value_<ContainerAllocator> >
{
  static const char* value()
  {
    return "value_msg/value";
  }

  static const char* value(const ::value_msg::value_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::value_msg::value_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 msg_msg\n\
";
  }

  static const char* value(const ::value_msg::value_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::value_msg::value_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.msg_msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct value_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::value_msg::value_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::value_msg::value_<ContainerAllocator>& v)
  {
    s << indent << "msg_msg: ";
    Printer<int64_t>::stream(s, indent + "  ", v.msg_msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VALUE_MSG_MESSAGE_VALUE_H
