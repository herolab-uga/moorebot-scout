// Generated by gencpp from file roller_eye/record_get_statusRequest.msg
// DO NOT EDIT!


#ifndef ROLLER_EYE_MESSAGE_RECORD_GET_STATUSREQUEST_H
#define ROLLER_EYE_MESSAGE_RECORD_GET_STATUSREQUEST_H


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
struct record_get_statusRequest_
{
  typedef record_get_statusRequest_<ContainerAllocator> Type;

  record_get_statusRequest_()
    : type(0)  {
    }
  record_get_statusRequest_(const ContainerAllocator& _alloc)
    : type(0)  {
  (void)_alloc;
    }



   typedef int8_t _type_type;
  _type_type type;





  typedef boost::shared_ptr< ::roller_eye::record_get_statusRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roller_eye::record_get_statusRequest_<ContainerAllocator> const> ConstPtr;

}; // struct record_get_statusRequest_

typedef ::roller_eye::record_get_statusRequest_<std::allocator<void> > record_get_statusRequest;

typedef boost::shared_ptr< ::roller_eye::record_get_statusRequest > record_get_statusRequestPtr;
typedef boost::shared_ptr< ::roller_eye::record_get_statusRequest const> record_get_statusRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roller_eye::record_get_statusRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roller_eye::record_get_statusRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roller_eye::record_get_statusRequest_<ContainerAllocator1> & lhs, const ::roller_eye::record_get_statusRequest_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roller_eye::record_get_statusRequest_<ContainerAllocator1> & lhs, const ::roller_eye::record_get_statusRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roller_eye

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::roller_eye::record_get_statusRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roller_eye::record_get_statusRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roller_eye::record_get_statusRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roller_eye::record_get_statusRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roller_eye::record_get_statusRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roller_eye::record_get_statusRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roller_eye::record_get_statusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e3ab5b4c6da3cf583c5328078958d9fe";
  }

  static const char* value(const ::roller_eye::record_get_statusRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe3ab5b4c6da3cf58ULL;
  static const uint64_t static_value2 = 0x3c5328078958d9feULL;
};

template<class ContainerAllocator>
struct DataType< ::roller_eye::record_get_statusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roller_eye/record_get_statusRequest";
  }

  static const char* value(const ::roller_eye::record_get_statusRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roller_eye::record_get_statusRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# snapshot or record\n"
"int8 type\n"
;
  }

  static const char* value(const ::roller_eye::record_get_statusRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roller_eye::record_get_statusRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct record_get_statusRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roller_eye::record_get_statusRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roller_eye::record_get_statusRequest_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<int8_t>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROLLER_EYE_MESSAGE_RECORD_GET_STATUSREQUEST_H
