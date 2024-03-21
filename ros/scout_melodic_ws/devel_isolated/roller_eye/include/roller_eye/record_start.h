// Generated by gencpp from file roller_eye/record_start.msg
// DO NOT EDIT!


#ifndef ROLLER_EYE_MESSAGE_RECORD_START_H
#define ROLLER_EYE_MESSAGE_RECORD_START_H

#include <ros/service_traits.h>


#include <roller_eye/record_startRequest.h>
#include <roller_eye/record_startResponse.h>


namespace roller_eye
{

struct record_start
{

typedef record_startRequest Request;
typedef record_startResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct record_start
} // namespace roller_eye


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roller_eye::record_start > {
  static const char* value()
  {
    return "dcee8cdcb7a021562b0a24a30cc43016";
  }

  static const char* value(const ::roller_eye::record_start&) { return value(); }
};

template<>
struct DataType< ::roller_eye::record_start > {
  static const char* value()
  {
    return "roller_eye/record_start";
  }

  static const char* value(const ::roller_eye::record_start&) { return value(); }
};


// service_traits::MD5Sum< ::roller_eye::record_startRequest> should match
// service_traits::MD5Sum< ::roller_eye::record_start >
template<>
struct MD5Sum< ::roller_eye::record_startRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::record_start >::value();
  }
  static const char* value(const ::roller_eye::record_startRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::record_startRequest> should match
// service_traits::DataType< ::roller_eye::record_start >
template<>
struct DataType< ::roller_eye::record_startRequest>
{
  static const char* value()
  {
    return DataType< ::roller_eye::record_start >::value();
  }
  static const char* value(const ::roller_eye::record_startRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roller_eye::record_startResponse> should match
// service_traits::MD5Sum< ::roller_eye::record_start >
template<>
struct MD5Sum< ::roller_eye::record_startResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::record_start >::value();
  }
  static const char* value(const ::roller_eye::record_startResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::record_startResponse> should match
// service_traits::DataType< ::roller_eye::record_start >
template<>
struct DataType< ::roller_eye::record_startResponse>
{
  static const char* value()
  {
    return DataType< ::roller_eye::record_start >::value();
  }
  static const char* value(const ::roller_eye::record_startResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROLLER_EYE_MESSAGE_RECORD_START_H