// Generated by gencpp from file hri_msgs/EngagementLevel.msg
// DO NOT EDIT!


#ifndef HRI_MSGS_MESSAGE_ENGAGEMENTLEVEL_H
#define HRI_MSGS_MESSAGE_ENGAGEMENTLEVEL_H


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
struct EngagementLevel_
{
  typedef EngagementLevel_<ContainerAllocator> Type;

  EngagementLevel_()
    : header()
    , level(0)  {
    }
  EngagementLevel_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , level(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _level_type;
  _level_type level;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNKNOWN)
  #undef UNKNOWN
#endif
#if defined(_WIN32) && defined(DISENGAGED)
  #undef DISENGAGED
#endif
#if defined(_WIN32) && defined(ENGAGING)
  #undef ENGAGING
#endif
#if defined(_WIN32) && defined(ENGAGED)
  #undef ENGAGED
#endif
#if defined(_WIN32) && defined(DISENGAGING)
  #undef DISENGAGING
#endif

  enum {
    UNKNOWN = 0u,
    DISENGAGED = 1u,
    ENGAGING = 2u,
    ENGAGED = 3u,
    DISENGAGING = 4u,
  };


  typedef boost::shared_ptr< ::hri_msgs::EngagementLevel_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hri_msgs::EngagementLevel_<ContainerAllocator> const> ConstPtr;

}; // struct EngagementLevel_

typedef ::hri_msgs::EngagementLevel_<std::allocator<void> > EngagementLevel;

typedef boost::shared_ptr< ::hri_msgs::EngagementLevel > EngagementLevelPtr;
typedef boost::shared_ptr< ::hri_msgs::EngagementLevel const> EngagementLevelConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hri_msgs::EngagementLevel_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hri_msgs::EngagementLevel_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hri_msgs::EngagementLevel_<ContainerAllocator1> & lhs, const ::hri_msgs::EngagementLevel_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.level == rhs.level;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hri_msgs::EngagementLevel_<ContainerAllocator1> & lhs, const ::hri_msgs::EngagementLevel_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hri_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hri_msgs::EngagementLevel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hri_msgs::EngagementLevel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hri_msgs::EngagementLevel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hri_msgs::EngagementLevel_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hri_msgs::EngagementLevel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hri_msgs::EngagementLevel_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hri_msgs::EngagementLevel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "98693df082bea7da40fa598b187373d9";
  }

  static const char* value(const ::hri_msgs::EngagementLevel_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x98693df082bea7daULL;
  static const uint64_t static_value2 = 0x40fa598b187373d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::hri_msgs::EngagementLevel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hri_msgs/EngagementLevel";
  }

  static const char* value(const ::hri_msgs::EngagementLevel_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hri_msgs::EngagementLevel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Discrete engagement levels of a person with respect to the robot\n"
"# It is for instance published on /humans/persons/person_id/engagement_status \n"
"# to access to the engagement level of a detected human. \n"
"# It will output one of the five following levels: unknown, disengaged, \n"
"# engaging, engaged and disengaging.\n"
"Header header  \n"
"\n"
"# unknown: no information is provided about the engagement level \n"
"uint8 UNKNOWN=0\n"
"# disengaged: the human has not looked in the direction of the robot\n"
"uint8 DISENGAGED=1\n"
"# engaging: the human has started to look in the direction of the robot\n"
"uint8 ENGAGING=2\n"
"# engaged: the human is fully engaged with the robot\n"
"uint8 ENGAGED=3\n"
"# disengaging: the human has started to look away from the robot\n"
"uint8 DISENGAGING=4\n"
"\n"
"uint8 level\n"
"\n"
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

  static const char* value(const ::hri_msgs::EngagementLevel_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hri_msgs::EngagementLevel_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.level);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EngagementLevel_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hri_msgs::EngagementLevel_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hri_msgs::EngagementLevel_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "level: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.level);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HRI_MSGS_MESSAGE_ENGAGEMENTLEVEL_H
