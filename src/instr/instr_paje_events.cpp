/* Copyright (c) 2012-2022. The SimGrid Team. All rights reserved.          */

/* This program is free software; you can redistribute it and/or modify it
 * under the terms of the license (GNU LGPL) which comes with this package. */

#include "src/instr/instr_private.hpp"
#include "src/instr/instr_smpi.hpp"
#include "src/smpi/include/private.hpp"
#include "src/surf/surf_interface.hpp"
#include "xbt/ex.h"
#include <iostream>

XBT_LOG_NEW_DEFAULT_SUBCATEGORY(instr_paje_events, instr, "Paje tracing event system (events)");

namespace simgrid::instr {

PajeEvent::PajeEvent(Container* container, Type* type, double timestamp, PajeEventType eventType)
    : container_(container), type_(type), timestamp_(timestamp), eventType_(eventType)
{
  on_creation(*this);
  insert_into_buffer();
}

PajeEvent::~PajeEvent()
{
  on_destruction(*this);
}

StateEvent::StateEvent(Container* container, Type* type, PajeEventType event_type, EntityValue* value, TIData* extra)
    : PajeEvent::PajeEvent(container, type, simgrid_get_clock(), event_type), value(value), extra_(extra)
{
#if HAVE_SMPI
  if (smpi_cfg_trace_call_location()) {
    const smpi_trace_call_location_t* loc = smpi_trace_get_call_location();
    filename                        = loc->filename;
    linenumber                      = loc->linenumber;
  }
#endif
}

void NewEvent::print()
{
  stream_ << " " << value->get_id();
  std::cout << " " << value->get_id();
}

std::string NewEvent::get_print()
{
  std::string result  = " ";
  result += std::to_string(value->get_id());
  return result;
}

void LinkEvent::print()
{
  stream_ << " " << value_ << " " << endpoint_->get_id() << " " << key_;
  std::cout << " " << value_ << " " << endpoint_->get_id() << " " << key_;

  if (TRACE_display_sizes() && size_ != static_cast<size_t>(-1)) {
    stream_ << " " << size_;
    std::cout << " " << size_;
  }
}

std::string LinkEvent::get_print() {
  std::string result  = " " + value_ + " " + std::to_string(endpoint_->get_id()) + " " + key_;
  if (TRACE_display_sizes() && size_ != static_cast<size_t>(-1)) {
    result += " " + std::to_string(size_);
  }
  return result;
}


void StateEvent::print()
{
  if (trace_format == TraceFormat::Paje) {
    if (value != nullptr) {// PajeEventType::PopState Event does not need to have a value
      stream_ << " " << value->get_id();
      std::cout << " " << value->get_id();
    }
    if (TRACE_display_sizes()) {
      stream_ << " " << ((extra_ != nullptr) ? extra_->display_size() : "");
      std::cout << " " << ((extra_ != nullptr) ? extra_->display_size() : "");
    }

#if HAVE_SMPI
    if (smpi_cfg_trace_call_location()) {
      stream_ << " \"" << filename << "\" " << linenumber;
      std::cout << " \"" << filename << "\" " << linenumber;
    }
  
#endif
  } else if (trace_format == TraceFormat::Ti) {
    if (extra_ == nullptr)
      return;

    /* Unimplemented calls are: WAITANY, SENDRECV, SCAN, EXSCAN, SSEND, and ISSEND. */
    std::string container_name(get_container()->get_name());
    // FIXME: dirty extract "rank-" from the name, as we want the bare process id here
    if (get_container()->get_name().find("rank-") == 0) {
      /* Subtract -1 because this is the process id and we transform it to the rank id */
      container_name=std::to_string(stoi(container_name.erase(0, 5)) - 1);
    }
#if HAVE_SMPI
    if (smpi_cfg_trace_call_location()) {
      stream_ << container_name << " location " << filename << " " << linenumber << '\n';
      std::cout << container_name << " location " << filename << " " << linenumber << '\n';
    }
#endif
    stream_ << container_name << " " << extra_->print();
    std::cout << container_name << " " << extra_->print();
  } else {
    THROW_IMPOSSIBLE;
  }
}


std::string StateEvent::get_print()
{
  std::string result = "";
  if (trace_format == TraceFormat::Paje) {
    if (value != nullptr) {// PajeEventType::PopState Event does not need to have a value
      result += " " + std::to_string(value->get_id());
    }
    if (TRACE_display_sizes()) {
      result += " " + ((extra_ != nullptr) ? extra_->display_size() : "");
    }

#if HAVE_SMPI
    if (smpi_cfg_trace_call_location()) {
      result += " \"" + filename + "\" " + std::to_string(linenumber);    
    }
  
#endif
  } else if (trace_format == TraceFormat::Ti) {
    if (extra_ == nullptr)
      return result;

    /* Unimplemented calls are: WAITANY, SENDRECV, SCAN, EXSCAN, SSEND, and ISSEND. */
    std::string container_name(get_container()->get_name());
    // FIXME: dirty extract "rank-" from the name, as we want the bare process id here
    if (get_container()->get_name().find("rank-") == 0) {
      /* Subtract -1 because this is the process id and we transform it to the rank id */
      container_name=std::to_string(stoi(container_name.erase(0, 5)) - 1);
    }
#if HAVE_SMPI
    if (smpi_cfg_trace_call_location()) {
      result += container_name + " location " + filename + " " + std::to_string(linenumber) + '\n';
    }
#endif
    result += container_name + " " + extra_->print();
  } else {
    THROW_IMPOSSIBLE;
  }
  return result;
}


} // namespace simgrid::instr
