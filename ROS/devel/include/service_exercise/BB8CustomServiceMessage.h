// Generated by gencpp from file service_exercise/BB8CustomServiceMessage.msg
// DO NOT EDIT!


#ifndef SERVICE_EXERCISE_MESSAGE_BB8CUSTOMSERVICEMESSAGE_H
#define SERVICE_EXERCISE_MESSAGE_BB8CUSTOMSERVICEMESSAGE_H

#include <ros/service_traits.h>


#include <service_exercise/BB8CustomServiceMessageRequest.h>
#include <service_exercise/BB8CustomServiceMessageResponse.h>


namespace service_exercise
{

struct BB8CustomServiceMessage
{

typedef BB8CustomServiceMessageRequest Request;
typedef BB8CustomServiceMessageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct BB8CustomServiceMessage
} // namespace service_exercise


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::service_exercise::BB8CustomServiceMessage > {
  static const char* value()
  {
    return "b78c0d1a37ffcec6adef7714dda05daa";
  }

  static const char* value(const ::service_exercise::BB8CustomServiceMessage&) { return value(); }
};

template<>
struct DataType< ::service_exercise::BB8CustomServiceMessage > {
  static const char* value()
  {
    return "service_exercise/BB8CustomServiceMessage";
  }

  static const char* value(const ::service_exercise::BB8CustomServiceMessage&) { return value(); }
};


// service_traits::MD5Sum< ::service_exercise::BB8CustomServiceMessageRequest> should match 
// service_traits::MD5Sum< ::service_exercise::BB8CustomServiceMessage > 
template<>
struct MD5Sum< ::service_exercise::BB8CustomServiceMessageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::service_exercise::BB8CustomServiceMessage >::value();
  }
  static const char* value(const ::service_exercise::BB8CustomServiceMessageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::service_exercise::BB8CustomServiceMessageRequest> should match 
// service_traits::DataType< ::service_exercise::BB8CustomServiceMessage > 
template<>
struct DataType< ::service_exercise::BB8CustomServiceMessageRequest>
{
  static const char* value()
  {
    return DataType< ::service_exercise::BB8CustomServiceMessage >::value();
  }
  static const char* value(const ::service_exercise::BB8CustomServiceMessageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::service_exercise::BB8CustomServiceMessageResponse> should match 
// service_traits::MD5Sum< ::service_exercise::BB8CustomServiceMessage > 
template<>
struct MD5Sum< ::service_exercise::BB8CustomServiceMessageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::service_exercise::BB8CustomServiceMessage >::value();
  }
  static const char* value(const ::service_exercise::BB8CustomServiceMessageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::service_exercise::BB8CustomServiceMessageResponse> should match 
// service_traits::DataType< ::service_exercise::BB8CustomServiceMessage > 
template<>
struct DataType< ::service_exercise::BB8CustomServiceMessageResponse>
{
  static const char* value()
  {
    return DataType< ::service_exercise::BB8CustomServiceMessage >::value();
  }
  static const char* value(const ::service_exercise::BB8CustomServiceMessageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SERVICE_EXERCISE_MESSAGE_BB8CUSTOMSERVICEMESSAGE_H
