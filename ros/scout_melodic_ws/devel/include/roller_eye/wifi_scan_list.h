// Generated by gencpp from file roller_eye/wifi_scan_list.msg
// DO NOT EDIT!


#ifndef ROLLER_EYE_MESSAGE_WIFI_SCAN_LIST_H
#define ROLLER_EYE_MESSAGE_WIFI_SCAN_LIST_H

#include <ros/service_traits.h>


#include <roller_eye/wifi_scan_listRequest.h>
#include <roller_eye/wifi_scan_listResponse.h>


namespace roller_eye
{

struct wifi_scan_list
{

typedef wifi_scan_listRequest Request;
typedef wifi_scan_listResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct wifi_scan_list
} // namespace roller_eye


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roller_eye::wifi_scan_list > {
  static const char* value()
  {
    return "fd54a28d4e6325d269f60a72dc202a7b";
  }

  static const char* value(const ::roller_eye::wifi_scan_list&) { return value(); }
};

template<>
struct DataType< ::roller_eye::wifi_scan_list > {
  static const char* value()
  {
    return "roller_eye/wifi_scan_list";
  }

  static const char* value(const ::roller_eye::wifi_scan_list&) { return value(); }
};


// service_traits::MD5Sum< ::roller_eye::wifi_scan_listRequest> should match
// service_traits::MD5Sum< ::roller_eye::wifi_scan_list >
template<>
struct MD5Sum< ::roller_eye::wifi_scan_listRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::wifi_scan_list >::value();
  }
  static const char* value(const ::roller_eye::wifi_scan_listRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::wifi_scan_listRequest> should match
// service_traits::DataType< ::roller_eye::wifi_scan_list >
template<>
struct DataType< ::roller_eye::wifi_scan_listRequest>
{
  static const char* value()
  {
    return DataType< ::roller_eye::wifi_scan_list >::value();
  }
  static const char* value(const ::roller_eye::wifi_scan_listRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roller_eye::wifi_scan_listResponse> should match
// service_traits::MD5Sum< ::roller_eye::wifi_scan_list >
template<>
struct MD5Sum< ::roller_eye::wifi_scan_listResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::wifi_scan_list >::value();
  }
  static const char* value(const ::roller_eye::wifi_scan_listResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::wifi_scan_listResponse> should match
// service_traits::DataType< ::roller_eye::wifi_scan_list >
template<>
struct DataType< ::roller_eye::wifi_scan_listResponse>
{
  static const char* value()
  {
    return DataType< ::roller_eye::wifi_scan_list >::value();
  }
  static const char* value(const ::roller_eye::wifi_scan_listResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROLLER_EYE_MESSAGE_WIFI_SCAN_LIST_H