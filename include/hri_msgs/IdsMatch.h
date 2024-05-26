// Generated by gencpp from file hri_msgs/IdsMatch.msg
// DO NOT EDIT!


#ifndef HRI_MSGS_MESSAGE_IDSMATCH_H
#define HRI_MSGS_MESSAGE_IDSMATCH_H


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
struct IdsMatch_
{
  typedef IdsMatch_<ContainerAllocator> Type;

  IdsMatch_()
    : id1()
    , id1_type(0)
    , id2()
    , id2_type(0)
    , confidence(0.0)  {
    }
  IdsMatch_(const ContainerAllocator& _alloc)
    : id1(_alloc)
    , id1_type(0)
    , id2(_alloc)
    , id2_type(0)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _id1_type;
  _id1_type id1;

   typedef int8_t _id1_type_type;
  _id1_type_type id1_type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _id2_type;
  _id2_type id2;

   typedef int8_t _id2_type_type;
  _id2_type_type id2_type;

   typedef float _confidence_type;
  _confidence_type confidence;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UNSET)
  #undef UNSET
#endif
#if defined(_WIN32) && defined(PERSON)
  #undef PERSON
#endif
#if defined(_WIN32) && defined(FACE)
  #undef FACE
#endif
#if defined(_WIN32) && defined(BODY)
  #undef BODY
#endif
#if defined(_WIN32) && defined(VOICE)
  #undef VOICE
#endif

  enum {
    UNSET = 0,
    PERSON = 1,
    FACE = 2,
    BODY = 3,
    VOICE = 4,
  };


  typedef boost::shared_ptr< ::hri_msgs::IdsMatch_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hri_msgs::IdsMatch_<ContainerAllocator> const> ConstPtr;

}; // struct IdsMatch_

typedef ::hri_msgs::IdsMatch_<std::allocator<void> > IdsMatch;

typedef boost::shared_ptr< ::hri_msgs::IdsMatch > IdsMatchPtr;
typedef boost::shared_ptr< ::hri_msgs::IdsMatch const> IdsMatchConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hri_msgs::IdsMatch_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hri_msgs::IdsMatch_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hri_msgs::IdsMatch_<ContainerAllocator1> & lhs, const ::hri_msgs::IdsMatch_<ContainerAllocator2> & rhs)
{
  return lhs.id1 == rhs.id1 &&
    lhs.id1_type == rhs.id1_type &&
    lhs.id2 == rhs.id2 &&
    lhs.id2_type == rhs.id2_type &&
    lhs.confidence == rhs.confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hri_msgs::IdsMatch_<ContainerAllocator1> & lhs, const ::hri_msgs::IdsMatch_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hri_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hri_msgs::IdsMatch_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hri_msgs::IdsMatch_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hri_msgs::IdsMatch_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hri_msgs::IdsMatch_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hri_msgs::IdsMatch_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hri_msgs::IdsMatch_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hri_msgs::IdsMatch_<ContainerAllocator> >
{
  static const char* value()
  {
    return "47ee5557c84afd004bec4ac7f5fa56f7";
  }

  static const char* value(const ::hri_msgs::IdsMatch_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x47ee5557c84afd00ULL;
  static const uint64_t static_value2 = 0x4bec4ac7f5fa56f7ULL;
};

template<class ContainerAllocator>
struct DataType< ::hri_msgs::IdsMatch_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hri_msgs/IdsMatch";
  }

  static const char* value(const ::hri_msgs::IdsMatch_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hri_msgs::IdsMatch_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message encodes possible matches between transient IDs (face, body,\n"
"# voice) and permanent IDs (person), with their corresponding confidence level.\n"
"# Such messages should be published on the /humans/candidate_matches topic.\n"
"#\n"
"# confidence == 0.0 has the special meaning of: those two IDs are *not* associated.\n"
"# This can be use for instance if one of the ID (eg, a face id) is not valid anymore\n"
"# (face not tracked anymore)\n"
"#\n"
"# Note that setting only one of `id1` or `id2` is invalid. Likewise, `id1` and\n"
"# `id2` can not be equal.\n"
"#\n"
"# ## Examples\n"
"#\n"
"# For instance, a face recognition module might publish the following message\n"
"# to indicate that face 'a3eb4' has been recognised with 63% confidence as\n"
"# person 'b31ad':\n"
"#\n"
"# {id1: 'a3eb4', id1_type: FACE, id2: 'b31ad', id2_type: PERSON, confidence:\n"
"# 0.63, }\n"
"#\n"
"# Another example: a module that detect both faces and skeleton might publish a\n"
"# 100% confidence match between the two:\n"
"#\n"
"# {id1: 'ff424', id1_type: FACE, id2: '850d1', id2_type: BODY, confidence:\n"
"# 1.0, }\n"
"#\n"
"\n"
"int8 UNSET=0\n"
"int8 PERSON=1\n"
"int8 FACE=2\n"
"int8 BODY=3\n"
"int8 VOICE=4\n"
"\n"
"string id1\n"
"int8 id1_type\n"
"string id2\n"
"int8 id2_type\n"
"\n"
"float32 confidence\n"
;
  }

  static const char* value(const ::hri_msgs::IdsMatch_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hri_msgs::IdsMatch_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id1);
      stream.next(m.id1_type);
      stream.next(m.id2);
      stream.next(m.id2_type);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IdsMatch_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hri_msgs::IdsMatch_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hri_msgs::IdsMatch_<ContainerAllocator>& v)
  {
    s << indent << "id1: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.id1);
    s << indent << "id1_type: ";
    Printer<int8_t>::stream(s, indent + "  ", v.id1_type);
    s << indent << "id2: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.id2);
    s << indent << "id2_type: ";
    Printer<int8_t>::stream(s, indent + "  ", v.id2_type);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HRI_MSGS_MESSAGE_IDSMATCH_H