// Generated by gencpp from file teach_repeat/SaveImageAndPose.msg
// DO NOT EDIT!


#ifndef TEACH_REPEAT_MESSAGE_SAVEIMAGEANDPOSE_H
#define TEACH_REPEAT_MESSAGE_SAVEIMAGEANDPOSE_H

#include <ros/service_traits.h>


#include <teach_repeat/SaveImageAndPoseRequest.h>
#include <teach_repeat/SaveImageAndPoseResponse.h>


namespace teach_repeat
{

struct SaveImageAndPose
{

typedef SaveImageAndPoseRequest Request;
typedef SaveImageAndPoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SaveImageAndPose
} // namespace teach_repeat


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::teach_repeat::SaveImageAndPose > {
  static const char* value()
  {
    return "096c348e1b8b4999d302e8c64a739f94";
  }

  static const char* value(const ::teach_repeat::SaveImageAndPose&) { return value(); }
};

template<>
struct DataType< ::teach_repeat::SaveImageAndPose > {
  static const char* value()
  {
    return "teach_repeat/SaveImageAndPose";
  }

  static const char* value(const ::teach_repeat::SaveImageAndPose&) { return value(); }
};


// service_traits::MD5Sum< ::teach_repeat::SaveImageAndPoseRequest> should match
// service_traits::MD5Sum< ::teach_repeat::SaveImageAndPose >
template<>
struct MD5Sum< ::teach_repeat::SaveImageAndPoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::teach_repeat::SaveImageAndPose >::value();
  }
  static const char* value(const ::teach_repeat::SaveImageAndPoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::teach_repeat::SaveImageAndPoseRequest> should match
// service_traits::DataType< ::teach_repeat::SaveImageAndPose >
template<>
struct DataType< ::teach_repeat::SaveImageAndPoseRequest>
{
  static const char* value()
  {
    return DataType< ::teach_repeat::SaveImageAndPose >::value();
  }
  static const char* value(const ::teach_repeat::SaveImageAndPoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::teach_repeat::SaveImageAndPoseResponse> should match
// service_traits::MD5Sum< ::teach_repeat::SaveImageAndPose >
template<>
struct MD5Sum< ::teach_repeat::SaveImageAndPoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::teach_repeat::SaveImageAndPose >::value();
  }
  static const char* value(const ::teach_repeat::SaveImageAndPoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::teach_repeat::SaveImageAndPoseResponse> should match
// service_traits::DataType< ::teach_repeat::SaveImageAndPose >
template<>
struct DataType< ::teach_repeat::SaveImageAndPoseResponse>
{
  static const char* value()
  {
    return DataType< ::teach_repeat::SaveImageAndPose >::value();
  }
  static const char* value(const ::teach_repeat::SaveImageAndPoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TEACH_REPEAT_MESSAGE_SAVEIMAGEANDPOSE_H
