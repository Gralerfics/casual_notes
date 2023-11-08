// Generated by gencpp from file teach_repeat/SetGoal.msg
// DO NOT EDIT!


#ifndef TEACH_REPEAT_MESSAGE_SETGOAL_H
#define TEACH_REPEAT_MESSAGE_SETGOAL_H

#include <ros/service_traits.h>


#include <teach_repeat/SetGoalRequest.h>
#include <teach_repeat/SetGoalResponse.h>


namespace teach_repeat
{

struct SetGoal
{

typedef SetGoalRequest Request;
typedef SetGoalResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetGoal
} // namespace teach_repeat


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::teach_repeat::SetGoal > {
  static const char* value()
  {
    return "cea44f0d3f6493aa6da990edf3114c5c";
  }

  static const char* value(const ::teach_repeat::SetGoal&) { return value(); }
};

template<>
struct DataType< ::teach_repeat::SetGoal > {
  static const char* value()
  {
    return "teach_repeat/SetGoal";
  }

  static const char* value(const ::teach_repeat::SetGoal&) { return value(); }
};


// service_traits::MD5Sum< ::teach_repeat::SetGoalRequest> should match
// service_traits::MD5Sum< ::teach_repeat::SetGoal >
template<>
struct MD5Sum< ::teach_repeat::SetGoalRequest>
{
  static const char* value()
  {
    return MD5Sum< ::teach_repeat::SetGoal >::value();
  }
  static const char* value(const ::teach_repeat::SetGoalRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::teach_repeat::SetGoalRequest> should match
// service_traits::DataType< ::teach_repeat::SetGoal >
template<>
struct DataType< ::teach_repeat::SetGoalRequest>
{
  static const char* value()
  {
    return DataType< ::teach_repeat::SetGoal >::value();
  }
  static const char* value(const ::teach_repeat::SetGoalRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::teach_repeat::SetGoalResponse> should match
// service_traits::MD5Sum< ::teach_repeat::SetGoal >
template<>
struct MD5Sum< ::teach_repeat::SetGoalResponse>
{
  static const char* value()
  {
    return MD5Sum< ::teach_repeat::SetGoal >::value();
  }
  static const char* value(const ::teach_repeat::SetGoalResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::teach_repeat::SetGoalResponse> should match
// service_traits::DataType< ::teach_repeat::SetGoal >
template<>
struct DataType< ::teach_repeat::SetGoalResponse>
{
  static const char* value()
  {
    return DataType< ::teach_repeat::SetGoal >::value();
  }
  static const char* value(const ::teach_repeat::SetGoalResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TEACH_REPEAT_MESSAGE_SETGOAL_H
