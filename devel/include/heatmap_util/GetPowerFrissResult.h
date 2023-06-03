// Generated by gencpp from file heatmap_util/GetPowerFrissResult.msg
// DO NOT EDIT!


#ifndef HEATMAP_UTIL_MESSAGE_GETPOWERFRISSRESULT_H
#define HEATMAP_UTIL_MESSAGE_GETPOWERFRISSRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace heatmap_util
{
template <class ContainerAllocator>
struct GetPowerFrissResult_
{
  typedef GetPowerFrissResult_<ContainerAllocator> Type;

  GetPowerFrissResult_()
    : data(0.0)
    , size(0)  {
    }
  GetPowerFrissResult_(const ContainerAllocator& _alloc)
    : data(0.0)
    , size(0)  {
  (void)_alloc;
    }



   typedef double _data_type;
  _data_type data;

   typedef int16_t _size_type;
  _size_type size;





  typedef boost::shared_ptr< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> const> ConstPtr;

}; // struct GetPowerFrissResult_

typedef ::heatmap_util::GetPowerFrissResult_<std::allocator<void> > GetPowerFrissResult;

typedef boost::shared_ptr< ::heatmap_util::GetPowerFrissResult > GetPowerFrissResultPtr;
typedef boost::shared_ptr< ::heatmap_util::GetPowerFrissResult const> GetPowerFrissResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::heatmap_util::GetPowerFrissResult_<ContainerAllocator1> & lhs, const ::heatmap_util::GetPowerFrissResult_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data &&
    lhs.size == rhs.size;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::heatmap_util::GetPowerFrissResult_<ContainerAllocator1> & lhs, const ::heatmap_util::GetPowerFrissResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace heatmap_util

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a2b6c651bd70b319337c3636ae332d8a";
  }

  static const char* value(const ::heatmap_util::GetPowerFrissResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa2b6c651bd70b319ULL;
  static const uint64_t static_value2 = 0x337c3636ae332d8aULL;
};

template<class ContainerAllocator>
struct DataType< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "heatmap_util/GetPowerFrissResult";
  }

  static const char* value(const ::heatmap_util::GetPowerFrissResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"float64 data\n"
"int16 size\n"
;
  }

  static const char* value(const ::heatmap_util::GetPowerFrissResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
      stream.next(m.size);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPowerFrissResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::heatmap_util::GetPowerFrissResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::heatmap_util::GetPowerFrissResult_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<double>::stream(s, indent + "  ", v.data);
    s << indent << "size: ";
    Printer<int16_t>::stream(s, indent + "  ", v.size);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HEATMAP_UTIL_MESSAGE_GETPOWERFRISSRESULT_H
