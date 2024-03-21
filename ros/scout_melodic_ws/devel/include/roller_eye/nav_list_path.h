// Generated by gencpp from file roller_eye/nav_list_path.msg
// DO NOT EDIT!


#ifndef ROLLER_EYE_MESSAGE_NAV_LIST_PATH_H
#define ROLLER_EYE_MESSAGE_NAV_LIST_PATH_H

#include <ros/service_traits.h>


#include <roller_eye/nav_list_pathRequest.h>
#include <roller_eye/nav_list_pathResponse.h>


namespace roller_eye
{

struct nav_list_path
{

typedef nav_list_pathRequest Request;
typedef nav_list_pathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct nav_list_path
} // namespace roller_eye


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roller_eye::nav_list_path > {
  static const char* value()
  {
    return "09857f8ab43e3dd303b36715eecbde30";
  }

  static const char* value(const ::roller_eye::nav_list_path&) { return value(); }
};

template<>
struct DataType< ::roller_eye::nav_list_path > {
  static const char* value()
  {
    return "roller_eye/nav_list_path";
  }

  static const char* value(const ::roller_eye::nav_list_path&) { return value(); }
};


// service_traits::MD5Sum< ::roller_eye::nav_list_pathRequest> should match
// service_traits::MD5Sum< ::roller_eye::nav_list_path >
template<>
struct MD5Sum< ::roller_eye::nav_list_pathRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::nav_list_path >::value();
  }
  static const char* value(const ::roller_eye::nav_list_pathRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::nav_list_pathRequest> should match
// service_traits::DataType< ::roller_eye::nav_list_path >
template<>
struct DataType< ::roller_eye::nav_list_pathRequest>
{
  static const char* value()
  {
    return DataType< ::roller_eye::nav_list_path >::value();
  }
  static const char* value(const ::roller_eye::nav_list_pathRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roller_eye::nav_list_pathResponse> should match
// service_traits::MD5Sum< ::roller_eye::nav_list_path >
template<>
struct MD5Sum< ::roller_eye::nav_list_pathResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::nav_list_path >::value();
  }
  static const char* value(const ::roller_eye::nav_list_pathResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::nav_list_pathResponse> should match
// service_traits::DataType< ::roller_eye::nav_list_path >
template<>
struct DataType< ::roller_eye::nav_list_pathResponse>
{
  static const char* value()
  {
    return DataType< ::roller_eye::nav_list_path >::value();
  }
  static const char* value(const ::roller_eye::nav_list_pathResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROLLER_EYE_MESSAGE_NAV_LIST_PATH_H