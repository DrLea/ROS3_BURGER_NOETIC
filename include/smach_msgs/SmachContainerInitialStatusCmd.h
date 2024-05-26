// Generated by gencpp from file smach_msgs/SmachContainerInitialStatusCmd.msg
// DO NOT EDIT!


#ifndef SMACH_MSGS_MESSAGE_SMACHCONTAINERINITIALSTATUSCMD_H
#define SMACH_MSGS_MESSAGE_SMACHCONTAINERINITIALSTATUSCMD_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace smach_msgs
{
template <class ContainerAllocator>
struct SmachContainerInitialStatusCmd_
{
  typedef SmachContainerInitialStatusCmd_<ContainerAllocator> Type;

  SmachContainerInitialStatusCmd_()
    : path()
    , initial_states()
    , local_data()  {
    }
  SmachContainerInitialStatusCmd_(const ContainerAllocator& _alloc)
    : path(_alloc)
    , initial_states(_alloc)
    , local_data(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _path_type;
  _path_type path;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _initial_states_type;
  _initial_states_type initial_states;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _local_data_type;
  _local_data_type local_data;





  typedef boost::shared_ptr< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> const> ConstPtr;

}; // struct SmachContainerInitialStatusCmd_

typedef ::smach_msgs::SmachContainerInitialStatusCmd_<std::allocator<void> > SmachContainerInitialStatusCmd;

typedef boost::shared_ptr< ::smach_msgs::SmachContainerInitialStatusCmd > SmachContainerInitialStatusCmdPtr;
typedef boost::shared_ptr< ::smach_msgs::SmachContainerInitialStatusCmd const> SmachContainerInitialStatusCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator1> & lhs, const ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator2> & rhs)
{
  return lhs.path == rhs.path &&
    lhs.initial_states == rhs.initial_states &&
    lhs.local_data == rhs.local_data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator1> & lhs, const ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace smach_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "45f8cf31fc29b829db77f23001f788d6";
  }

  static const char* value(const ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x45f8cf31fc29b829ULL;
  static const uint64_t static_value2 = 0xdb77f23001f788d6ULL;
};

template<class ContainerAllocator>
struct DataType< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "smach_msgs/SmachContainerInitialStatusCmd";
  }

  static const char* value(const ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The path to the node in the server\n"
"string path\n"
"\n"
"# The desired initial state(s)\n"
"string[] initial_states\n"
"\n"
"# Initial values for the local user data of the state machine\n"
"# A pickled user data structure\n"
"# i.e. the UserData's internal dictionary\n"
"string local_data\n"
;
  }

  static const char* value(const ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
      stream.next(m.initial_states);
      stream.next(m.local_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SmachContainerInitialStatusCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::smach_msgs::SmachContainerInitialStatusCmd_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.path);
    s << indent << "initial_states[]" << std::endl;
    for (size_t i = 0; i < v.initial_states.size(); ++i)
    {
      s << indent << "  initial_states[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.initial_states[i]);
    }
    s << indent << "local_data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.local_data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SMACH_MSGS_MESSAGE_SMACHCONTAINERINITIALSTATUSCMD_H
