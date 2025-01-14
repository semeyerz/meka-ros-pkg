/* Auto-generated by genmsg_cpp for file /home/meka/mekabot/meka-ros-pkg/m3_client/srv/M3JointArrayCmd.srv */
#ifndef M3_CLIENT_SERVICE_M3JOINTARRAYCMD_H
#define M3_CLIENT_SERVICE_M3JOINTARRAYCMD_H
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
struct M3JointArrayCmdRequest_ {
  typedef M3JointArrayCmdRequest_<ContainerAllocator> Type;

  M3JointArrayCmdRequest_()
  : tq_desired()
  , pwm_desired()
  , q_stiffness()
  , ctrl_mode()
  , q_desired()
  , pos_desired()
  , qdot_desired()
  , q_slew_rate()
  {
  }

  M3JointArrayCmdRequest_(const ContainerAllocator& _alloc)
  : tq_desired(_alloc)
  , pwm_desired(_alloc)
  , q_stiffness(_alloc)
  , ctrl_mode(_alloc)
  , q_desired(_alloc)
  , pos_desired(_alloc)
  , qdot_desired(_alloc)
  , q_slew_rate(_alloc)
  {
  }

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _tq_desired_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  tq_desired;

  typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _pwm_desired_type;
  std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  pwm_desired;

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _q_stiffness_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  q_stiffness;

  typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _ctrl_mode_type;
  std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  ctrl_mode;

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _q_desired_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  q_desired;

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _pos_desired_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  pos_desired;

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _qdot_desired_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  qdot_desired;

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _q_slew_rate_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  q_slew_rate;


  typedef boost::shared_ptr< ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct M3JointArrayCmdRequest
typedef  ::m3_client::M3JointArrayCmdRequest_<std::allocator<void> > M3JointArrayCmdRequest;

typedef boost::shared_ptr< ::m3_client::M3JointArrayCmdRequest> M3JointArrayCmdRequestPtr;
typedef boost::shared_ptr< ::m3_client::M3JointArrayCmdRequest const> M3JointArrayCmdRequestConstPtr;


template <class ContainerAllocator>
struct M3JointArrayCmdResponse_ {
  typedef M3JointArrayCmdResponse_<ContainerAllocator> Type;

  M3JointArrayCmdResponse_()
  : response(0)
  {
  }

  M3JointArrayCmdResponse_(const ContainerAllocator& _alloc)
  : response(0)
  {
  }

  typedef int32_t _response_type;
  int32_t response;


  typedef boost::shared_ptr< ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct M3JointArrayCmdResponse
typedef  ::m3_client::M3JointArrayCmdResponse_<std::allocator<void> > M3JointArrayCmdResponse;

typedef boost::shared_ptr< ::m3_client::M3JointArrayCmdResponse> M3JointArrayCmdResponsePtr;
typedef boost::shared_ptr< ::m3_client::M3JointArrayCmdResponse const> M3JointArrayCmdResponseConstPtr;

struct M3JointArrayCmd
{

typedef M3JointArrayCmdRequest Request;
typedef M3JointArrayCmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct M3JointArrayCmd
} // namespace m3_client

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "5772a6ced2d04d1b8557faf86efbafdb";
  }

  static const char* value(const  ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x5772a6ced2d04d1bULL;
  static const uint64_t static_value2 = 0x8557faf86efbafdbULL;
};

template<class ContainerAllocator>
struct DataType< ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "m3_client/M3JointArrayCmdRequest";
  }

  static const char* value(const  ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float32[] tq_desired\n\
int32[] pwm_desired\n\
float32[] q_stiffness\n\
int32[] ctrl_mode\n\
float32[] q_desired\n\
float32[] pos_desired\n\
float32[] qdot_desired\n\
float32[] q_slew_rate\n\
\n\
";
  }

  static const char* value(const  ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "f45f68e2feefb1307598e828e260b7d7";
  }

  static const char* value(const  ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xf45f68e2feefb130ULL;
  static const uint64_t static_value2 = 0x7598e828e260b7d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "m3_client/M3JointArrayCmdResponse";
  }

  static const char* value(const  ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int32 response\n\
\n\
\n\
\n\
";
  }

  static const char* value(const  ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::m3_client::M3JointArrayCmdRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.tq_desired);
    stream.next(m.pwm_desired);
    stream.next(m.q_stiffness);
    stream.next(m.ctrl_mode);
    stream.next(m.q_desired);
    stream.next(m.pos_desired);
    stream.next(m.qdot_desired);
    stream.next(m.q_slew_rate);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct M3JointArrayCmdRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::m3_client::M3JointArrayCmdResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.response);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct M3JointArrayCmdResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<m3_client::M3JointArrayCmd> {
  static const char* value() 
  {
    return "4432a41b7a22c858d4c20d1bddbf0718";
  }

  static const char* value(const m3_client::M3JointArrayCmd&) { return value(); } 
};

template<>
struct DataType<m3_client::M3JointArrayCmd> {
  static const char* value() 
  {
    return "m3_client/M3JointArrayCmd";
  }

  static const char* value(const m3_client::M3JointArrayCmd&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<m3_client::M3JointArrayCmdRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4432a41b7a22c858d4c20d1bddbf0718";
  }

  static const char* value(const m3_client::M3JointArrayCmdRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<m3_client::M3JointArrayCmdRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "m3_client/M3JointArrayCmd";
  }

  static const char* value(const m3_client::M3JointArrayCmdRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<m3_client::M3JointArrayCmdResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4432a41b7a22c858d4c20d1bddbf0718";
  }

  static const char* value(const m3_client::M3JointArrayCmdResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<m3_client::M3JointArrayCmdResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "m3_client/M3JointArrayCmd";
  }

  static const char* value(const m3_client::M3JointArrayCmdResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // M3_CLIENT_SERVICE_M3JOINTARRAYCMD_H

