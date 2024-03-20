// Generated by gencpp from file roller_eye/record_delete_fileResponse.msg
// DO NOT EDIT!


#ifndef ROLLER_EYE_MESSAGE_RECORD_DELETE_FILERESPONSE_H
#define ROLLER_EYE_MESSAGE_RECORD_DELETE_FILERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roller_eye
{
template <class ContainerAllocator>
struct record_delete_fileResponse_
{
  typedef record_delete_fileResponse_<ContainerAllocator> Type;

  record_delete_fileResponse_()
    : status(0)  {
    }
  record_delete_fileResponse_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef int8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> const> ConstPtr;

}; // struct record_delete_fileResponse_

typedef ::roller_eye::record_delete_fileResponse_<std::allocator<void> > record_delete_fileResponse;

typedef boost::shared_ptr< ::roller_eye::record_delete_fileResponse > record_delete_fileResponsePtr;
typedef boost::shared_ptr< ::roller_eye::record_delete_fileResponse const> record_delete_fileResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roller_eye::record_delete_fileResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roller_eye::record_delete_fileResponse_<ContainerAllocator1> & lhs, const ::roller_eye::record_delete_fileResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roller_eye::record_delete_fileResponse_<ContainerAllocator1> & lhs, const ::roller_eye::record_delete_fileResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roller_eye

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "581cc55c12abfc219e446416014f6d0e";
  }

  static const char* value(const ::roller_eye::record_delete_fileResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x581cc55c12abfc21ULL;
  static const uint64_t static_value2 = 0x9e446416014f6d0eULL;
};

template<class ContainerAllocator>
struct DataType< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roller_eye/record_delete_fileResponse";
  }

  static const char* value(const ::roller_eye::record_delete_fileResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 status\n"
;
  }

  static const char* value(const ::roller_eye::record_delete_fileResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct record_delete_fileResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roller_eye::record_delete_fileResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roller_eye::record_delete_fileResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROLLER_EYE_MESSAGE_RECORD_DELETE_FILERESPONSE_H
