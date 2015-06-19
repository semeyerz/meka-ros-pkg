/* Auto-generated by genmsg_cpp for file /home/meka/mekabot/meka-ros-pkg/m3_client/srv/M3ComponentCmd.srv */
#ifndef M3_CLIENT_SERVICE_M3COMPONENTCMD_H
#define M3_CLIENT_SERVICE_M3COMPONENTCMD_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ros/service_traits.h"




namespace m3_client
{
template <class ContainerAllocator>
struct M3ComponentCmdRequest_ {
  typedef M3ComponentCmdRequest_<ContainerAllocator> Type;

  M3ComponentCmdRequest_()
  : a(0)
  {
  }

  M3ComponentCmdRequest_(const ContainerAllocator& _alloc)
  : a(0)
  {
  }

  typedef int32_t _a_type;
  int32_t a;


  typedef boost::shared_ptr< ::m3_client::M3ComponentCmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::m3_client::M3ComponentCmdRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct M3ComponentCmdRequest
typedef  ::m3_client::M3ComponentCmdRequest_<std::allocator<void> > M3ComponentCmdRequest;

typedef boost::shared_ptr< ::m3_client::M3ComponentCmdRequest> M3ComponentCmdRequestPtr;
typedef boost::shared_ptr< ::m3_client::M3ComponentCmdRequest const> M3ComponentCmdRequestConstPtr;


template <class ContainerAllocator>
struct M3ComponentCmdResponse_ {
  typedef M3ComponentCmdResponse_<ContainerAllocator> Type;

  M3ComponentCmdResponse_()
  : b(0)
  {
  }

  M3ComponentCmdResponse_(const ContainerAllocator& _alloc)
  : b(0)
  {
  }

  typedef int32_t _b_type;
  int32_t b;


  typedef boost::shared_ptr< ::m3_client::M3ComponentCmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::m3_client::M3ComponentCmdResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct M3ComponentCmdResponse
typedef  ::m3_client::M3ComponentCmdResponse_<std::allocator<void> > M3ComponentCmdResponse;

typedef boost::shared_ptr< ::m3_client::M3ComponentCmdResponse> M3ComponentCmdResponsePtr;
typedef boost::shared_ptr< ::m3_client::M3ComponentCmdResponse const> M3ComponentCmdResponseConstPtr;

struct M3ComponentCmd
{

typedef M3ComponentCmdRequest Request;
typedef M3ComponentCmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct M3ComponentCmd
} // namespace m3_client

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::m3_client::M3ComponentCmdRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::m3_client::M3ComponentCmdRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::m3_client::M3ComponentCmdRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "5c9fb1a886e81e3162a5c87bf55c072b";
  }

  static const char* value(const  ::m3_client::M3ComponentCmdRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x5c9fb1a886e81e31ULL;
  static const uint64_t static_value2 = 0x62a5c87bf55c072bULL;
};

template<class ContainerAllocator>
struct DataType< ::m3_client::M3ComponentCmdRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "m3_client/M3ComponentCmdRequest";
  }

  static const char* value(const  ::m3_client::M3ComponentCmdRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::m3_client::M3ComponentCmdRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int32 a\n\
\n\
";
  }

  static const char* value(const  ::m3_client::M3ComponentCmdRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::m3_client::M3ComponentCmdRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::m3_client::M3ComponentCmdResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::m3_client::M3ComponentCmdResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::m3_client::M3ComponentCmdResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "976c440660ac67ad67b35c9dce4f2065";
  }

  static const char* value(const  ::m3_client::M3ComponentCmdResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x976c440660ac67adULL;
  static const uint64_t static_value2 = 0x67b35c9dce4f2065ULL;
};

template<class ContainerAllocator>
struct DataType< ::m3_client::M3ComponentCmdResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "m3_client/M3ComponentCmdResponse";
  }

  static const char* value(const  ::m3_client::M3ComponentCmdResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::m3_client::M3ComponentCmdResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int32 b\n\
\n\
";
  }

  static const char* value(const  ::m3_client::M3ComponentCmdResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::m3_client::M3ComponentCmdResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::m3_client::M3ComponentCmdRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.a);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct M3ComponentCmdRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::m3_client::M3ComponentCmdResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.b);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct M3ComponentCmdResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<m3_client::M3ComponentCmd> {
  static const char* value() 
  {
    return "25ba3fa9d5d930574c4d72dc4151cd60";
  }

  static const char* value(const m3_client::M3ComponentCmd&) { return value(); } 
};

template<>
struct DataType<m3_client::M3ComponentCmd> {
  static const char* value() 
  {
    return "m3_client/M3ComponentCmd";
  }

  static const char* value(const m3_client::M3ComponentCmd&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<m3_client::M3ComponentCmdRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "25ba3fa9d5d930574c4d72dc4151cd60";
  }

  static const char* value(const m3_client::M3ComponentCmdRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<m3_client::M3ComponentCmdRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "m3_client/M3ComponentCmd";
  }

  static const char* value(const m3_client::M3ComponentCmdRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<m3_client::M3ComponentCmdResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "25ba3fa9d5d930574c4d72dc4151cd60";
  }

  static const char* value(const m3_client::M3ComponentCmdResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<m3_client::M3ComponentCmdResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "m3_client/M3ComponentCmd";
  }

  static const char* value(const m3_client::M3ComponentCmdResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // M3_CLIENT_SERVICE_M3COMPONENTCMD_H
