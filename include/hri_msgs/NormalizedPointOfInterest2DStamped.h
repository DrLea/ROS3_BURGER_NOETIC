// Generated by gencpp from file hri_msgs/NormalizedPointOfInterest2DStamped.msg
// DO NOT EDIT!


#ifndef HRI_MSGS_MESSAGE_NORMALIZEDPOINTOFINTEREST2DSTAMPED_H
#define HRI_MSGS_MESSAGE_NORMALIZEDPOINTOFINTEREST2DSTAMPED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace hri_msgs
{
template <class ContainerAllocator>
struct NormalizedPointOfInterest2DStamped_
{
  typedef NormalizedPointOfInterest2DStamped_<ContainerAllocator> Type;

  NormalizedPointOfInterest2DStamped_()
    : header()
    , x(0.0)
    , y(0.0)
    , c(0.0)  {
    }
  NormalizedPointOfInterest2DStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , x(0.0)
    , y(0.0)
    , c(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _c_type;
  _c_type c;





  typedef boost::shared_ptr< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> const> ConstPtr;

}; // struct NormalizedPointOfInterest2DStamped_

typedef ::hri_msgs::NormalizedPointOfInterest2DStamped_<std::allocator<void> > NormalizedPointOfInterest2DStamped;

typedef boost::shared_ptr< ::hri_msgs::NormalizedPointOfInterest2DStamped > NormalizedPointOfInterest2DStampedPtr;
typedef boost::shared_ptr< ::hri_msgs::NormalizedPointOfInterest2DStamped const> NormalizedPointOfInterest2DStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator1> & lhs, const ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.c == rhs.c;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator1> & lhs, const ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hri_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f00d620d5791659f1cba63fdcb50f444";
  }

  static const char* value(const ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf00d620d5791659fULL;
  static const uint64_t static_value2 = 0x1cba63fdcb50f444ULL;
};

template<class ContainerAllocator>
struct DataType< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hri_msgs/NormalizedPointOfInterest2DStamped";
  }

  static const char* value(const ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This contains the position of a point of interest (typically in an image)\n"
"# the coordinates are always normalized and must belong to [0.,1.].\n"
"# c is a confidence level (between 0. and 1.) associated to that POI\n"
"Header header # Header timestamp should be acquisition time of the original image\n"
"float32 x\n"
"float32 y\n"
"float32 c\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.c);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NormalizedPointOfInterest2DStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hri_msgs::NormalizedPointOfInterest2DStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "c: ";
    Printer<float>::stream(s, indent + "  ", v.c);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HRI_MSGS_MESSAGE_NORMALIZEDPOINTOFINTEREST2DSTAMPED_H
