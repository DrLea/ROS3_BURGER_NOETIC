// Generated by gencpp from file py_trees_msgs/GetBlackboardVariablesResponse.msg
// DO NOT EDIT!


#ifndef PY_TREES_MSGS_MESSAGE_GETBLACKBOARDVARIABLESRESPONSE_H
#define PY_TREES_MSGS_MESSAGE_GETBLACKBOARDVARIABLESRESPONSE_H


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
struct GetBlackboardVariablesResponse_
{
  typedef GetBlackboardVariablesResponse_<ContainerAllocator> Type;

  GetBlackboardVariablesResponse_()
    : variables()  {
    }
  GetBlackboardVariablesResponse_(const ContainerAllocator& _alloc)
    : variables(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _variables_type;
  _variables_type variables;





  typedef boost::shared_ptr< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetBlackboardVariablesResponse_

typedef ::py_trees_msgs::GetBlackboardVariablesResponse_<std::allocator<void> > GetBlackboardVariablesResponse;

typedef boost::shared_ptr< ::py_trees_msgs::GetBlackboardVariablesResponse > GetBlackboardVariablesResponsePtr;
typedef boost::shared_ptr< ::py_trees_msgs::GetBlackboardVariablesResponse const> GetBlackboardVariablesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator1> & lhs, const ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator2> & rhs)
{
  return lhs.variables == rhs.variables;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator1> & lhs, const ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace py_trees_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f184382c36d538fab610317191b119e";
  }

  static const char* value(const ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f184382c36d538fULL;
  static const uint64_t static_value2 = 0xab610317191b119eULL;
};

template<class ContainerAllocator>
struct DataType< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "py_trees_msgs/GetBlackboardVariablesResponse";
  }

  static const char* value(const ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] variables\n"
"\n"
;
  }

  static const char* value(const ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.variables);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetBlackboardVariablesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::py_trees_msgs::GetBlackboardVariablesResponse_<ContainerAllocator>& v)
  {
    s << indent << "variables[]" << std::endl;
    for (size_t i = 0; i < v.variables.size(); ++i)
    {
      s << indent << "  variables[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.variables[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PY_TREES_MSGS_MESSAGE_GETBLACKBOARDVARIABLESRESPONSE_H
