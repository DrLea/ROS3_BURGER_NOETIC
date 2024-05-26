// Generated by gencpp from file variant_msgs/VariantType.msg
// DO NOT EDIT!


#ifndef VARIANT_MSGS_MESSAGE_VARIANTTYPE_H
#define VARIANT_MSGS_MESSAGE_VARIANTTYPE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace variant_msgs
{
template <class ContainerAllocator>
struct VariantType_
{
  typedef VariantType_<ContainerAllocator> Type;

  VariantType_()
    : md5_sum()
    , data_type()
    , definition()  {
    }
  VariantType_(const ContainerAllocator& _alloc)
    : md5_sum(_alloc)
    , data_type(_alloc)
    , definition(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _md5_sum_type;
  _md5_sum_type md5_sum;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _data_type_type;
  _data_type_type data_type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _definition_type;
  _definition_type definition;





  typedef boost::shared_ptr< ::variant_msgs::VariantType_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::variant_msgs::VariantType_<ContainerAllocator> const> ConstPtr;

}; // struct VariantType_

typedef ::variant_msgs::VariantType_<std::allocator<void> > VariantType;

typedef boost::shared_ptr< ::variant_msgs::VariantType > VariantTypePtr;
typedef boost::shared_ptr< ::variant_msgs::VariantType const> VariantTypeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::variant_msgs::VariantType_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::variant_msgs::VariantType_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::variant_msgs::VariantType_<ContainerAllocator1> & lhs, const ::variant_msgs::VariantType_<ContainerAllocator2> & rhs)
{
  return lhs.md5_sum == rhs.md5_sum &&
    lhs.data_type == rhs.data_type &&
    lhs.definition == rhs.definition;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::variant_msgs::VariantType_<ContainerAllocator1> & lhs, const ::variant_msgs::VariantType_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace variant_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::variant_msgs::VariantType_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::variant_msgs::VariantType_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::variant_msgs::VariantType_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::variant_msgs::VariantType_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::variant_msgs::VariantType_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::variant_msgs::VariantType_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::variant_msgs::VariantType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ea49579a10d85560b62a77e2f2f84caf";
  }

  static const char* value(const ::variant_msgs::VariantType_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xea49579a10d85560ULL;
  static const uint64_t static_value2 = 0xb62a77e2f2f84cafULL;
};

template<class ContainerAllocator>
struct DataType< ::variant_msgs::VariantType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "variant_msgs/VariantType";
  }

  static const char* value(const ::variant_msgs::VariantType_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::variant_msgs::VariantType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string md5_sum                # Message type md5sum\n"
"string data_type              # Message data type\n"
"string definition             # Message definition\n"
;
  }

  static const char* value(const ::variant_msgs::VariantType_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::variant_msgs::VariantType_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.md5_sum);
      stream.next(m.data_type);
      stream.next(m.definition);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VariantType_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::variant_msgs::VariantType_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::variant_msgs::VariantType_<ContainerAllocator>& v)
  {
    s << indent << "md5_sum: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.md5_sum);
    s << indent << "data_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.data_type);
    s << indent << "definition: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.definition);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VARIANT_MSGS_MESSAGE_VARIANTTYPE_H
