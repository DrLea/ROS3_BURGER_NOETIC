// Generated by gencpp from file hri_msgs/NormalizedPointOfInterest2D.msg
// DO NOT EDIT!


#ifndef HRI_MSGS_MESSAGE_NORMALIZEDPOINTOFINTEREST2D_H
#define HRI_MSGS_MESSAGE_NORMALIZEDPOINTOFINTEREST2D_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hri_msgs
{
template <class ContainerAllocator>
struct NormalizedPointOfInterest2D_
{
  typedef NormalizedPointOfInterest2D_<ContainerAllocator> Type;

  NormalizedPointOfInterest2D_()
    : x(0.0)
    , y(0.0)
    , c(0.0)  {
    }
  NormalizedPointOfInterest2D_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , c(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _c_type;
  _c_type c;





  typedef boost::shared_ptr< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> const> ConstPtr;

}; // struct NormalizedPointOfInterest2D_

typedef ::hri_msgs::NormalizedPointOfInterest2D_<std::allocator<void> > NormalizedPointOfInterest2D;

typedef boost::shared_ptr< ::hri_msgs::NormalizedPointOfInterest2D > NormalizedPointOfInterest2DPtr;
typedef boost::shared_ptr< ::hri_msgs::NormalizedPointOfInterest2D const> NormalizedPointOfInterest2DConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator1> & lhs, const ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.c == rhs.c;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator1> & lhs, const ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hri_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb224da30b2d872f41cf40e039cdb0d6";
  }

  static const char* value(const ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb224da30b2d872fULL;
  static const uint64_t static_value2 = 0x41cf40e039cdb0d6ULL;
};

template<class ContainerAllocator>
struct DataType< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hri_msgs/NormalizedPointOfInterest2D";
  }

  static const char* value(const ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This contains the position of a point of interest (typically in an image)\n"
"# the coordinates are always normalized and must belong to [0.,1.].\n"
"# c is a confidence level (between 0. and 1.) associated to that POI\n"
"float32 x\n"
"float32 y\n"
"float32 c\n"
;
  }

  static const char* value(const ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.c);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NormalizedPointOfInterest2D_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hri_msgs::NormalizedPointOfInterest2D_<ContainerAllocator>& v)
  {
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

#endif // HRI_MSGS_MESSAGE_NORMALIZEDPOINTOFINTEREST2D_H