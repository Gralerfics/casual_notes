// Generated by gencpp from file teach_repeat/SetJointStateRequest.msg
// DO NOT EDIT!


#ifndef TEACH_REPEAT_MESSAGE_SETJOINTSTATEREQUEST_H
#define TEACH_REPEAT_MESSAGE_SETJOINTSTATEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/JointState.h>

namespace teach_repeat
{
template <class ContainerAllocator>
struct SetJointStateRequest_
{
  typedef SetJointStateRequest_<ContainerAllocator> Type;

  SetJointStateRequest_()
    : jointStates()  {
    }
  SetJointStateRequest_(const ContainerAllocator& _alloc)
    : jointStates(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::JointState_<ContainerAllocator>  _jointStates_type;
  _jointStates_type jointStates;





  typedef boost::shared_ptr< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetJointStateRequest_

typedef ::teach_repeat::SetJointStateRequest_<std::allocator<void> > SetJointStateRequest;

typedef boost::shared_ptr< ::teach_repeat::SetJointStateRequest > SetJointStateRequestPtr;
typedef boost::shared_ptr< ::teach_repeat::SetJointStateRequest const> SetJointStateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::teach_repeat::SetJointStateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::teach_repeat::SetJointStateRequest_<ContainerAllocator1> & lhs, const ::teach_repeat::SetJointStateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.jointStates == rhs.jointStates;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::teach_repeat::SetJointStateRequest_<ContainerAllocator1> & lhs, const ::teach_repeat::SetJointStateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace teach_repeat

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce0f83a232331f23d6f38258c641fa10";
  }

  static const char* value(const ::teach_repeat::SetJointStateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce0f83a232331f23ULL;
  static const uint64_t static_value2 = 0xd6f38258c641fa10ULL;
};

template<class ContainerAllocator>
struct DataType< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "teach_repeat/SetJointStateRequest";
  }

  static const char* value(const ::teach_repeat::SetJointStateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/JointState jointStates\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/JointState\n"
"# This is a message that holds data to describe the state of a set of torque controlled joints. \n"
"#\n"
"# The state of each joint (revolute or prismatic) is defined by:\n"
"#  * the position of the joint (rad or m),\n"
"#  * the velocity of the joint (rad/s or m/s) and \n"
"#  * the effort that is applied in the joint (Nm or N).\n"
"#\n"
"# Each joint is uniquely identified by its name\n"
"# The header specifies the time at which the joint states were recorded. All the joint states\n"
"# in one message have to be recorded at the same time.\n"
"#\n"
"# This message consists of a multiple arrays, one for each part of the joint state. \n"
"# The goal is to make each of the fields optional. When e.g. your joints have no\n"
"# effort associated with them, you can leave the effort array empty. \n"
"#\n"
"# All arrays in this message should have the same size, or be empty.\n"
"# This is the only way to uniquely associate the joint name with the correct\n"
"# states.\n"
"\n"
"\n"
"Header header\n"
"\n"
"string[] name\n"
"float64[] position\n"
"float64[] velocity\n"
"float64[] effort\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::teach_repeat::SetJointStateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.jointStates);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetJointStateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::teach_repeat::SetJointStateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::teach_repeat::SetJointStateRequest_<ContainerAllocator>& v)
  {
    s << indent << "jointStates: ";
    s << std::endl;
    Printer< ::sensor_msgs::JointState_<ContainerAllocator> >::stream(s, indent + "  ", v.jointStates);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEACH_REPEAT_MESSAGE_SETJOINTSTATEREQUEST_H
