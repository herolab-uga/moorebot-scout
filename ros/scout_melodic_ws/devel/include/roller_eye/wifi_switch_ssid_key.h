// Generated by gencpp from file roller_eye/wifi_switch_ssid_key.msg
// DO NOT EDIT!


#ifndef ROLLER_EYE_MESSAGE_WIFI_SWITCH_SSID_KEY_H
#define ROLLER_EYE_MESSAGE_WIFI_SWITCH_SSID_KEY_H

#include <ros/service_traits.h>


#include <roller_eye/wifi_switch_ssid_keyRequest.h>
#include <roller_eye/wifi_switch_ssid_keyResponse.h>


namespace roller_eye
{

struct wifi_switch_ssid_key
{

typedef wifi_switch_ssid_keyRequest Request;
typedef wifi_switch_ssid_keyResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct wifi_switch_ssid_key
} // namespace roller_eye


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roller_eye::wifi_switch_ssid_key > {
  static const char* value()
  {
    return "879dd501d4c8e7d6703c458f6fc7737c";
  }

  static const char* value(const ::roller_eye::wifi_switch_ssid_key&) { return value(); }
};

template<>
struct DataType< ::roller_eye::wifi_switch_ssid_key > {
  static const char* value()
  {
    return "roller_eye/wifi_switch_ssid_key";
  }

  static const char* value(const ::roller_eye::wifi_switch_ssid_key&) { return value(); }
};


// service_traits::MD5Sum< ::roller_eye::wifi_switch_ssid_keyRequest> should match
// service_traits::MD5Sum< ::roller_eye::wifi_switch_ssid_key >
template<>
struct MD5Sum< ::roller_eye::wifi_switch_ssid_keyRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::wifi_switch_ssid_key >::value();
  }
  static const char* value(const ::roller_eye::wifi_switch_ssid_keyRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::wifi_switch_ssid_keyRequest> should match
// service_traits::DataType< ::roller_eye::wifi_switch_ssid_key >
template<>
struct DataType< ::roller_eye::wifi_switch_ssid_keyRequest>
{
  static const char* value()
  {
    return DataType< ::roller_eye::wifi_switch_ssid_key >::value();
  }
  static const char* value(const ::roller_eye::wifi_switch_ssid_keyRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roller_eye::wifi_switch_ssid_keyResponse> should match
// service_traits::MD5Sum< ::roller_eye::wifi_switch_ssid_key >
template<>
struct MD5Sum< ::roller_eye::wifi_switch_ssid_keyResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::wifi_switch_ssid_key >::value();
  }
  static const char* value(const ::roller_eye::wifi_switch_ssid_keyResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::wifi_switch_ssid_keyResponse> should match
// service_traits::DataType< ::roller_eye::wifi_switch_ssid_key >
template<>
struct DataType< ::roller_eye::wifi_switch_ssid_keyResponse>
{
  static const char* value()
  {
    return DataType< ::roller_eye::wifi_switch_ssid_key >::value();
  }
  static const char* value(const ::roller_eye::wifi_switch_ssid_keyResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROLLER_EYE_MESSAGE_WIFI_SWITCH_SSID_KEY_H