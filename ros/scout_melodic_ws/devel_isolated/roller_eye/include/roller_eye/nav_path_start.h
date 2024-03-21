// Generated by gencpp from file roller_eye/nav_path_start.msg
// DO NOT EDIT!


#ifndef ROLLER_EYE_MESSAGE_NAV_PATH_START_H
#define ROLLER_EYE_MESSAGE_NAV_PATH_START_H

#include <ros/service_traits.h>


#include <roller_eye/nav_path_startRequest.h>
#include <roller_eye/nav_path_startResponse.h>


namespace roller_eye
{

struct nav_path_start
{

typedef nav_path_startRequest Request;
typedef nav_path_startResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct nav_path_start
} // namespace roller_eye


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roller_eye::nav_path_start > {
  static const char* value()
  {
    return "3c9f7c0536edb947c8a33193074afe9e";
  }

  static const char* value(const ::roller_eye::nav_path_start&) { return value(); }
};

template<>
struct DataType< ::roller_eye::nav_path_start > {
  static const char* value()
  {
    return "roller_eye/nav_path_start";
  }

  static const char* value(const ::roller_eye::nav_path_start&) { return value(); }
};


// service_traits::MD5Sum< ::roller_eye::nav_path_startRequest> should match
// service_traits::MD5Sum< ::roller_eye::nav_path_start >
template<>
struct MD5Sum< ::roller_eye::nav_path_startRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::nav_path_start >::value();
  }
  static const char* value(const ::roller_eye::nav_path_startRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::nav_path_startRequest> should match
// service_traits::DataType< ::roller_eye::nav_path_start >
template<>
struct DataType< ::roller_eye::nav_path_startRequest>
{
  static const char* value()
  {
    return DataType< ::roller_eye::nav_path_start >::value();
  }
  static const char* value(const ::roller_eye::nav_path_startRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roller_eye::nav_path_startResponse> should match
// service_traits::MD5Sum< ::roller_eye::nav_path_start >
template<>
struct MD5Sum< ::roller_eye::nav_path_startResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::nav_path_start >::value();
  }
  static const char* value(const ::roller_eye::nav_path_startResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::nav_path_startResponse> should match
// service_traits::DataType< ::roller_eye::nav_path_start >
template<>
struct DataType< ::roller_eye::nav_path_startResponse>
{
  static const char* value()
  {
    return DataType< ::roller_eye::nav_path_start >::value();
  }
  static const char* value(const ::roller_eye::nav_path_startResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROLLER_EYE_MESSAGE_NAV_PATH_START_H