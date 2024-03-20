// Generated by gencpp from file roller_eye/wifi_switch_modeRequest.msg
// DO NOT EDIT!


#ifndef ROLLER_EYE_MESSAGE_WIFI_SWITCH_MODEREQUEST_H
#define ROLLER_EYE_MESSAGE_WIFI_SWITCH_MODEREQUEST_H


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
struct wifi_switch_modeRequest_
{
  typedef wifi_switch_modeRequest_<ContainerAllocator> Type;

  wifi_switch_modeRequest_()
    : mode(0)
    , kill(0)  {
    }
  wifi_switch_modeRequest_(const ContainerAllocator& _alloc)
    : mode(0)
    , kill(0)  {
  (void)_alloc;
    }



   typedef int8_t _mode_type;
  _mode_type mode;

   typedef int8_t _kill_type;
  _kill_type kill;





  typedef boost::shared_ptr< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct wifi_switch_modeRequest_

typedef ::roller_eye::wifi_switch_modeRequest_<std::allocator<void> > wifi_switch_modeRequest;

typedef boost::shared_ptr< ::roller_eye::wifi_switch_modeRequest > wifi_switch_modeRequestPtr;
typedef boost::shared_ptr< ::roller_eye::wifi_switch_modeRequest const> wifi_switch_modeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator1> & lhs, const ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.mode == rhs.mode &&
    lhs.kill == rhs.kill;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator1> & lhs, const ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roller_eye

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "737d8b71a06308636512985c8e5af86e";
  }

  static const char* value(const ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x737d8b71a0630863ULL;
  static const uint64_t static_value2 = 0x6512985c8e5af86eULL;
};

template<class ContainerAllocator>
struct DataType< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roller_eye/wifi_switch_modeRequest";
  }

  static const char* value(const ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 mode\n"
"#0-don't 1-kill wifi_start_sta.sh 2-kill wifi_start_ap.sh\n"
"int8 kill\n"
;
  }

  static const char* value(const ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mode);
      stream.next(m.kill);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct wifi_switch_modeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roller_eye::wifi_switch_modeRequest_<ContainerAllocator>& v)
  {
    s << indent << "mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.mode);
    s << indent << "kill: ";
    Printer<int8_t>::stream(s, indent + "  ", v.kill);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROLLER_EYE_MESSAGE_WIFI_SWITCH_MODEREQUEST_H
