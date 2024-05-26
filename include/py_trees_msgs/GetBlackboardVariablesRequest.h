// Generated by gencpp from file py_trees_msgs/GetBlackboardVariablesRequest.msg
// DO NOT EDIT!


#ifndef PY_TREES_MSGS_MESSAGE_GETBLACKBOARDVARIABLESREQUEST_H
#define PY_TREES_MSGS_MESSAGE_GETBLACKBOARDVARIABLESREQUEST_H


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
struct GetBlackboardVariablesRequest_
{
  typedef GetBlackboardVariablesRequest_<ContainerAllocator> Type;

  GetBlackboardVariablesRequest_()
    {
    }
  GetBlackboardVariablesRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetBlackboardVariablesRequest_

typedef ::py_trees_msgs::GetBlackboardVariablesRequest_<std::allocator<void> > GetBlackboardVariablesRequest;

typedef boost::shared_ptr< ::py_trees_msgs::GetBlackboardVariablesRequest > GetBlackboardVariablesRequestPtr;
typedef boost::shared_ptr< ::py_trees_msgs::GetBlackboardVariablesRequest const> GetBlackboardVariablesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace py_trees_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "py_trees_msgs/GetBlackboardVariablesRequest";
  }

  static const char* value(const ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Retrieve a list of variables currently available in the blackboard.\n"
"# This is primarily used as a utility for the blackboard watcher (find what\n"
"# variables are available without the entire spam of the blackboard contents\n"
"# before proceeding to watch a subset of these.\n"
"\n"
;
  }

  static const char* value(const ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetBlackboardVariablesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::py_trees_msgs::GetBlackboardVariablesRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // PY_TREES_MSGS_MESSAGE_GETBLACKBOARDVARIABLESREQUEST_H
