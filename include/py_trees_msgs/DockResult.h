// Generated by gencpp from file py_trees_msgs/DockResult.msg
// DO NOT EDIT!


#ifndef PY_TREES_MSGS_MESSAGE_DOCKRESULT_H
#define PY_TREES_MSGS_MESSAGE_DOCKRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace py_trees_msgs
{
template <class ContainerAllocator>
struct DockResult_
{
  typedef DockResult_<ContainerAllocator> Type;

  DockResult_()
    : value(0)
    , message()  {
    }
  DockResult_(const ContainerAllocator& _alloc)
    : value(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef int8_t _value_type;
  _value_type value;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(SUCCESS)
  #undef SUCCESS
#endif
#if defined(_WIN32) && defined(ERROR)
  #undef ERROR
#endif

  enum {
    SUCCESS = 0,
    ERROR = 1,
  };


  typedef boost::shared_ptr< ::py_trees_msgs::DockResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::py_trees_msgs::DockResult_<ContainerAllocator> const> ConstPtr;

}; // struct DockResult_

typedef ::py_trees_msgs::DockResult_<std::allocator<void> > DockResult;

typedef boost::shared_ptr< ::py_trees_msgs::DockResult > DockResultPtr;
typedef boost::shared_ptr< ::py_trees_msgs::DockResult const> DockResultConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::py_trees_msgs::DockResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::py_trees_msgs::DockResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::py_trees_msgs::DockResult_<ContainerAllocator1> & lhs, const ::py_trees_msgs::DockResult_<ContainerAllocator2> & rhs)
{
  return lhs.value == rhs.value &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::py_trees_msgs::DockResult_<ContainerAllocator1> & lhs, const ::py_trees_msgs::DockResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace py_trees_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::py_trees_msgs::DockResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::py_trees_msgs::DockResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::py_trees_msgs::DockResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::py_trees_msgs::DockResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::py_trees_msgs::DockResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::py_trees_msgs::DockResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::py_trees_msgs::DockResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7e3448b3518ac363f90f534593733372";
  }

  static const char* value(const ::py_trees_msgs::DockResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7e3448b3518ac363ULL;
  static const uint64_t static_value2 = 0xf90f534593733372ULL;
};

template<class ContainerAllocator>
struct DataType< ::py_trees_msgs::DockResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "py_trees_msgs/DockResult";
  }

  static const char* value(const ::py_trees_msgs::DockResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::py_trees_msgs::DockResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"####################\n"
"# Result\n"
"####################\n"
"\n"
"int8 value\n"
"string message\n"
"\n"
"\n"
"int8 SUCCESS = 0\n"
"int8 ERROR = 1\n"
"\n"
;
  }

  static const char* value(const ::py_trees_msgs::DockResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::py_trees_msgs::DockResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DockResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::py_trees_msgs::DockResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::py_trees_msgs::DockResult_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<int8_t>::stream(s, indent + "  ", v.value);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PY_TREES_MSGS_MESSAGE_DOCKRESULT_H