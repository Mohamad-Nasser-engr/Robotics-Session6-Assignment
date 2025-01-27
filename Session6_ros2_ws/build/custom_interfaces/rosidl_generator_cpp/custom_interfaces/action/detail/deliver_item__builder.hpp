// generated from rosidl_generator_cpp/resource/idl__builder.hpp.em
// with input from custom_interfaces:action/DeliverItem.idl
// generated code does not contain a copyright notice

#ifndef CUSTOM_INTERFACES__ACTION__DETAIL__DELIVER_ITEM__BUILDER_HPP_
#define CUSTOM_INTERFACES__ACTION__DETAIL__DELIVER_ITEM__BUILDER_HPP_

#include <algorithm>
#include <utility>

#include "custom_interfaces/action/detail/deliver_item__struct.hpp"
#include "rosidl_runtime_cpp/message_initialization.hpp"


namespace custom_interfaces
{

namespace action
{

namespace builder
{

class Init_DeliverItem_Goal_quantity
{
public:
  explicit Init_DeliverItem_Goal_quantity(::custom_interfaces::action::DeliverItem_Goal & msg)
  : msg_(msg)
  {}
  ::custom_interfaces::action::DeliverItem_Goal quantity(::custom_interfaces::action::DeliverItem_Goal::_quantity_type arg)
  {
    msg_.quantity = std::move(arg);
    return std::move(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_Goal msg_;
};

class Init_DeliverItem_Goal_item_name
{
public:
  Init_DeliverItem_Goal_item_name()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_DeliverItem_Goal_quantity item_name(::custom_interfaces::action::DeliverItem_Goal::_item_name_type arg)
  {
    msg_.item_name = std::move(arg);
    return Init_DeliverItem_Goal_quantity(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_Goal msg_;
};

}  // namespace builder

}  // namespace action

template<typename MessageType>
auto build();

template<>
inline
auto build<::custom_interfaces::action::DeliverItem_Goal>()
{
  return custom_interfaces::action::builder::Init_DeliverItem_Goal_item_name();
}

}  // namespace custom_interfaces


namespace custom_interfaces
{

namespace action
{

namespace builder
{

class Init_DeliverItem_Result_message
{
public:
  explicit Init_DeliverItem_Result_message(::custom_interfaces::action::DeliverItem_Result & msg)
  : msg_(msg)
  {}
  ::custom_interfaces::action::DeliverItem_Result message(::custom_interfaces::action::DeliverItem_Result::_message_type arg)
  {
    msg_.message = std::move(arg);
    return std::move(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_Result msg_;
};

class Init_DeliverItem_Result_success
{
public:
  Init_DeliverItem_Result_success()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_DeliverItem_Result_message success(::custom_interfaces::action::DeliverItem_Result::_success_type arg)
  {
    msg_.success = std::move(arg);
    return Init_DeliverItem_Result_message(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_Result msg_;
};

}  // namespace builder

}  // namespace action

template<typename MessageType>
auto build();

template<>
inline
auto build<::custom_interfaces::action::DeliverItem_Result>()
{
  return custom_interfaces::action::builder::Init_DeliverItem_Result_success();
}

}  // namespace custom_interfaces


namespace custom_interfaces
{

namespace action
{

namespace builder
{

class Init_DeliverItem_Feedback_status
{
public:
  Init_DeliverItem_Feedback_status()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::custom_interfaces::action::DeliverItem_Feedback status(::custom_interfaces::action::DeliverItem_Feedback::_status_type arg)
  {
    msg_.status = std::move(arg);
    return std::move(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_Feedback msg_;
};

}  // namespace builder

}  // namespace action

template<typename MessageType>
auto build();

template<>
inline
auto build<::custom_interfaces::action::DeliverItem_Feedback>()
{
  return custom_interfaces::action::builder::Init_DeliverItem_Feedback_status();
}

}  // namespace custom_interfaces


namespace custom_interfaces
{

namespace action
{

namespace builder
{

class Init_DeliverItem_SendGoal_Request_goal
{
public:
  explicit Init_DeliverItem_SendGoal_Request_goal(::custom_interfaces::action::DeliverItem_SendGoal_Request & msg)
  : msg_(msg)
  {}
  ::custom_interfaces::action::DeliverItem_SendGoal_Request goal(::custom_interfaces::action::DeliverItem_SendGoal_Request::_goal_type arg)
  {
    msg_.goal = std::move(arg);
    return std::move(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_SendGoal_Request msg_;
};

class Init_DeliverItem_SendGoal_Request_goal_id
{
public:
  Init_DeliverItem_SendGoal_Request_goal_id()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_DeliverItem_SendGoal_Request_goal goal_id(::custom_interfaces::action::DeliverItem_SendGoal_Request::_goal_id_type arg)
  {
    msg_.goal_id = std::move(arg);
    return Init_DeliverItem_SendGoal_Request_goal(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_SendGoal_Request msg_;
};

}  // namespace builder

}  // namespace action

template<typename MessageType>
auto build();

template<>
inline
auto build<::custom_interfaces::action::DeliverItem_SendGoal_Request>()
{
  return custom_interfaces::action::builder::Init_DeliverItem_SendGoal_Request_goal_id();
}

}  // namespace custom_interfaces


namespace custom_interfaces
{

namespace action
{

namespace builder
{

class Init_DeliverItem_SendGoal_Response_stamp
{
public:
  explicit Init_DeliverItem_SendGoal_Response_stamp(::custom_interfaces::action::DeliverItem_SendGoal_Response & msg)
  : msg_(msg)
  {}
  ::custom_interfaces::action::DeliverItem_SendGoal_Response stamp(::custom_interfaces::action::DeliverItem_SendGoal_Response::_stamp_type arg)
  {
    msg_.stamp = std::move(arg);
    return std::move(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_SendGoal_Response msg_;
};

class Init_DeliverItem_SendGoal_Response_accepted
{
public:
  Init_DeliverItem_SendGoal_Response_accepted()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_DeliverItem_SendGoal_Response_stamp accepted(::custom_interfaces::action::DeliverItem_SendGoal_Response::_accepted_type arg)
  {
    msg_.accepted = std::move(arg);
    return Init_DeliverItem_SendGoal_Response_stamp(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_SendGoal_Response msg_;
};

}  // namespace builder

}  // namespace action

template<typename MessageType>
auto build();

template<>
inline
auto build<::custom_interfaces::action::DeliverItem_SendGoal_Response>()
{
  return custom_interfaces::action::builder::Init_DeliverItem_SendGoal_Response_accepted();
}

}  // namespace custom_interfaces


namespace custom_interfaces
{

namespace action
{

namespace builder
{

class Init_DeliverItem_GetResult_Request_goal_id
{
public:
  Init_DeliverItem_GetResult_Request_goal_id()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  ::custom_interfaces::action::DeliverItem_GetResult_Request goal_id(::custom_interfaces::action::DeliverItem_GetResult_Request::_goal_id_type arg)
  {
    msg_.goal_id = std::move(arg);
    return std::move(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_GetResult_Request msg_;
};

}  // namespace builder

}  // namespace action

template<typename MessageType>
auto build();

template<>
inline
auto build<::custom_interfaces::action::DeliverItem_GetResult_Request>()
{
  return custom_interfaces::action::builder::Init_DeliverItem_GetResult_Request_goal_id();
}

}  // namespace custom_interfaces


namespace custom_interfaces
{

namespace action
{

namespace builder
{

class Init_DeliverItem_GetResult_Response_result
{
public:
  explicit Init_DeliverItem_GetResult_Response_result(::custom_interfaces::action::DeliverItem_GetResult_Response & msg)
  : msg_(msg)
  {}
  ::custom_interfaces::action::DeliverItem_GetResult_Response result(::custom_interfaces::action::DeliverItem_GetResult_Response::_result_type arg)
  {
    msg_.result = std::move(arg);
    return std::move(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_GetResult_Response msg_;
};

class Init_DeliverItem_GetResult_Response_status
{
public:
  Init_DeliverItem_GetResult_Response_status()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_DeliverItem_GetResult_Response_result status(::custom_interfaces::action::DeliverItem_GetResult_Response::_status_type arg)
  {
    msg_.status = std::move(arg);
    return Init_DeliverItem_GetResult_Response_result(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_GetResult_Response msg_;
};

}  // namespace builder

}  // namespace action

template<typename MessageType>
auto build();

template<>
inline
auto build<::custom_interfaces::action::DeliverItem_GetResult_Response>()
{
  return custom_interfaces::action::builder::Init_DeliverItem_GetResult_Response_status();
}

}  // namespace custom_interfaces


namespace custom_interfaces
{

namespace action
{

namespace builder
{

class Init_DeliverItem_FeedbackMessage_feedback
{
public:
  explicit Init_DeliverItem_FeedbackMessage_feedback(::custom_interfaces::action::DeliverItem_FeedbackMessage & msg)
  : msg_(msg)
  {}
  ::custom_interfaces::action::DeliverItem_FeedbackMessage feedback(::custom_interfaces::action::DeliverItem_FeedbackMessage::_feedback_type arg)
  {
    msg_.feedback = std::move(arg);
    return std::move(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_FeedbackMessage msg_;
};

class Init_DeliverItem_FeedbackMessage_goal_id
{
public:
  Init_DeliverItem_FeedbackMessage_goal_id()
  : msg_(::rosidl_runtime_cpp::MessageInitialization::SKIP)
  {}
  Init_DeliverItem_FeedbackMessage_feedback goal_id(::custom_interfaces::action::DeliverItem_FeedbackMessage::_goal_id_type arg)
  {
    msg_.goal_id = std::move(arg);
    return Init_DeliverItem_FeedbackMessage_feedback(msg_);
  }

private:
  ::custom_interfaces::action::DeliverItem_FeedbackMessage msg_;
};

}  // namespace builder

}  // namespace action

template<typename MessageType>
auto build();

template<>
inline
auto build<::custom_interfaces::action::DeliverItem_FeedbackMessage>()
{
  return custom_interfaces::action::builder::Init_DeliverItem_FeedbackMessage_goal_id();
}

}  // namespace custom_interfaces

#endif  // CUSTOM_INTERFACES__ACTION__DETAIL__DELIVER_ITEM__BUILDER_HPP_
