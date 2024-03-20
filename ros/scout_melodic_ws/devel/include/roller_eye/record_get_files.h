// Generated by gencpp from file roller_eye/record_get_files.msg
// DO NOT EDIT!


#ifndef ROLLER_EYE_MESSAGE_RECORD_GET_FILES_H
#define ROLLER_EYE_MESSAGE_RECORD_GET_FILES_H

#include <ros/service_traits.h>


#include <roller_eye/record_get_filesRequest.h>
#include <roller_eye/record_get_filesResponse.h>


namespace roller_eye
{

struct record_get_files
{

typedef record_get_filesRequest Request;
typedef record_get_filesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct record_get_files
} // namespace roller_eye


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roller_eye::record_get_files > {
  static const char* value()
  {
    return "75b0c1893df243a157454eb4b9a2c1ea";
  }

  static const char* value(const ::roller_eye::record_get_files&) { return value(); }
};

template<>
struct DataType< ::roller_eye::record_get_files > {
  static const char* value()
  {
    return "roller_eye/record_get_files";
  }

  static const char* value(const ::roller_eye::record_get_files&) { return value(); }
};


// service_traits::MD5Sum< ::roller_eye::record_get_filesRequest> should match
// service_traits::MD5Sum< ::roller_eye::record_get_files >
template<>
struct MD5Sum< ::roller_eye::record_get_filesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::record_get_files >::value();
  }
  static const char* value(const ::roller_eye::record_get_filesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::record_get_filesRequest> should match
// service_traits::DataType< ::roller_eye::record_get_files >
template<>
struct DataType< ::roller_eye::record_get_filesRequest>
{
  static const char* value()
  {
    return DataType< ::roller_eye::record_get_files >::value();
  }
  static const char* value(const ::roller_eye::record_get_filesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roller_eye::record_get_filesResponse> should match
// service_traits::MD5Sum< ::roller_eye::record_get_files >
template<>
struct MD5Sum< ::roller_eye::record_get_filesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roller_eye::record_get_files >::value();
  }
  static const char* value(const ::roller_eye::record_get_filesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roller_eye::record_get_filesResponse> should match
// service_traits::DataType< ::roller_eye::record_get_files >
template<>
struct DataType< ::roller_eye::record_get_filesResponse>
{
  static const char* value()
  {
    return DataType< ::roller_eye::record_get_files >::value();
  }
  static const char* value(const ::roller_eye::record_get_filesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROLLER_EYE_MESSAGE_RECORD_GET_FILES_H
