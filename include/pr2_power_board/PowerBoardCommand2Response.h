// Generated by gencpp from file pr2_power_board/PowerBoardCommand2Response.msg
// DO NOT EDIT!


#ifndef PR2_POWER_BOARD_MESSAGE_POWERBOARDCOMMAND2RESPONSE_H
#define PR2_POWER_BOARD_MESSAGE_POWERBOARDCOMMAND2RESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pr2_power_board
{
template <class ContainerAllocator>
struct PowerBoardCommand2Response_
{
  typedef PowerBoardCommand2Response_<ContainerAllocator> Type;

  PowerBoardCommand2Response_()
    : success(false)  {
    }
  PowerBoardCommand2Response_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> const> ConstPtr;

}; // struct PowerBoardCommand2Response_

typedef ::pr2_power_board::PowerBoardCommand2Response_<std::allocator<void> > PowerBoardCommand2Response;

typedef boost::shared_ptr< ::pr2_power_board::PowerBoardCommand2Response > PowerBoardCommand2ResponsePtr;
typedef boost::shared_ptr< ::pr2_power_board::PowerBoardCommand2Response const> PowerBoardCommand2ResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator1> & lhs, const ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator1> & lhs, const ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr2_power_board

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_power_board/PowerBoardCommand2Response";
  }

  static const char* value(const ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# return if the command was successfully sent\n"
"bool success\n"
"\n"
;
  }

  static const char* value(const ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PowerBoardCommand2Response_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_power_board::PowerBoardCommand2Response_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_POWER_BOARD_MESSAGE_POWERBOARDCOMMAND2RESPONSE_H
