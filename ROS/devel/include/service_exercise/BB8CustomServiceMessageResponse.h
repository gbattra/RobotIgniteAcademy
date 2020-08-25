// Generated by gencpp from file service_exercise/BB8CustomServiceMessageResponse.msg
// DO NOT EDIT!


#ifndef SERVICE_EXERCISE_MESSAGE_BB8CUSTOMSERVICEMESSAGERESPONSE_H
#define SERVICE_EXERCISE_MESSAGE_BB8CUSTOMSERVICEMESSAGERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace service_exercise
{
template <class ContainerAllocator>
struct BB8CustomServiceMessageResponse_
{
  typedef BB8CustomServiceMessageResponse_<ContainerAllocator> Type;

  BB8CustomServiceMessageResponse_()
    : success(false)  {
    }
  BB8CustomServiceMessageResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> const> ConstPtr;

}; // struct BB8CustomServiceMessageResponse_

typedef ::service_exercise::BB8CustomServiceMessageResponse_<std::allocator<void> > BB8CustomServiceMessageResponse;

typedef boost::shared_ptr< ::service_exercise::BB8CustomServiceMessageResponse > BB8CustomServiceMessageResponsePtr;
typedef boost::shared_ptr< ::service_exercise::BB8CustomServiceMessageResponse const> BB8CustomServiceMessageResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace service_exercise

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "service_exercise/BB8CustomServiceMessageResponse";
  }

  static const char* value(const ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
\n\
";
  }

  static const char* value(const ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BB8CustomServiceMessageResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::service_exercise::BB8CustomServiceMessageResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SERVICE_EXERCISE_MESSAGE_BB8CUSTOMSERVICEMESSAGERESPONSE_H