// Generated by gencpp from file roller_eye/video_set_resolution.msg
// DO NOT EDIT!


#ifndef ROLLER_EYE_MESSAGE_VIDEO_SET_RESOLUTION_H
#define ROLLER_EYE_MESSAGE_VIDEO_SET_RESOLUTION_H

#include <ros/service_traits.h>


#include <roller_eye/video_set_resolutionRequest.h>
#include <roller_eye/video_set_resolutionResponse.h>


namespace roller_eye
{

struct video_set_resolution
{

typedef video_set_resolutionRequest Request;
typedef video_set_resolutionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct video_set_resolution
} // namespace roller_eye


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roller_eye::video_set_resolution > {
  static const char* value()
  {
    return "4a2f7cfc95568599234b2a56d5a21730";
  }

  static const char* value(const ::roller_eye::video_set_resolution&) { return value(); }
};

template<>
struct DataType< ::roller_eye::video_set_resolution > {
  static const char* value()
  {
    return "roller_eye/video_set_resolution";
  }

  static const char* value(const ::roller_eye::video_set_resolution&) { return value(); }
};


// service_traits::MD5Sum< ::roller_eye::video_set_resolutionRequest> should match
// service_traits::MD5Sum< ::roller_eye::video_set_resolution >
template<>
struct MD5Sum< ::roller_eye::video_set_resolutionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::video_set_resolution >::value();
  }
  static const char* value(const ::roller_eye::video_set_resolutionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::video_set_resolutionRequest> should match
// service_traits::DataType< ::roller_eye::video_set_resolution >
template<>
struct DataType< ::roller_eye::video_set_resolutionRequest>
{
  static const char* value()
  {
    return DataType< ::roller_eye::video_set_resolution >::value();
  }
  static const char* value(const ::roller_eye::video_set_resolutionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roller_eye::video_set_resolutionResponse> should match
// service_traits::MD5Sum< ::roller_eye::video_set_resolution >
template<>
struct MD5Sum< ::roller_eye::video_set_resolutionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::video_set_resolution >::value();
  }
  static const char* value(const ::roller_eye::video_set_resolutionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::video_set_resolutionResponse> should match
// service_traits::DataType< ::roller_eye::video_set_resolution >
template<>
struct DataType< ::roller_eye::video_set_resolutionResponse>
{
  static const char* value()
  {
    return DataType< ::roller_eye::video_set_resolution >::value();
  }
  static const char* value(const ::roller_eye::video_set_resolutionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROLLER_EYE_MESSAGE_VIDEO_SET_RESOLUTION_H