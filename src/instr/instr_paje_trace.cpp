/* Copyright (c) 2010-2022. The SimGrid Team.
 * All rights reserved.                                                     */

/* This program is free software; you can redistribute it and/or modify it
 * under the terms of the license (GNU LGPL) which comes with this package. */

#include "simgrid/Exception.hpp"
#include <simgrid/s4u/Engine.hpp>
#include "simgrid/sg_config.hpp"
#include "src/instr/instr_private.hpp"
#include "src/instr/instr_smpi.hpp"
#include "src/smpi/include/private.hpp"
#include <fstream>
#include <thread>
#include <chrono>
#include <iostream>
#include <curl/curl.h>

XBT_LOG_NEW_DEFAULT_SUBCATEGORY(instr_paje_trace, instr, "tracing event system");

namespace simgrid::instr {
static std::vector<PajeEvent*> buffer;

double last_timestamp_to_dump = 0;
// dumps the trace file until the last_timestamp_to_dump

void send_link_data() {
  XBT_INFO("[TIME ADVANCE] timestamp=%f", simgrid_get_clock());
  CURL *curl;
  CURLcode res;
  curl = curl_easy_init();
  if (!curl) {
      std::cerr << "Curl initialization failed." << std::endl;
      return;
  }
  const char *url = api_url(); // Replace with your target URL
  curl_easy_setopt(curl, CURLOPT_URL, url);

  std::string simgrid_timestamp = std::to_string(simgrid_get_clock());
  simgrid_timestamp = curl_easy_escape(curl, simgrid_timestamp.c_str(), simgrid_timestamp.length());
  std::string encoded_data = "timestamp=" + simgrid_timestamp + "&" + "event_type=sync";
  
  curl_easy_setopt(curl, CURLOPT_POSTFIELDS, encoded_data.c_str());
  res = curl_easy_perform(curl);
  // Check for errors
  if (res != CURLE_OK) {
      std::cerr << "Curl request failed: " << curl_easy_strerror(res) << std::endl;
  } else {
      std::cout << "HTTP POST request sent successfully." << std::endl;
  }
  curl_easy_cleanup(curl);

}

void dump_buffer(bool force)
{ 
  send_link_data();
  // Initialize libcurl
  XBT_INFO("[BUFFER] timestamp=%f", simgrid_get_clock());

  if (not TRACE_is_enabled())
    return;
  
  std::string events_str = "";
  XBT_DEBUG("%s: dump until %f. starts", __func__, last_timestamp_to_dump);
  if (force || (trace_format == TraceFormat::Ti)){
    for (auto const& event : buffer) {
      event->print();
      events_str += event->get_print();
      delete event;
    }
    buffer.clear();
  } else {
    auto i = buffer.begin();
    for (auto const& event : buffer) {
      if (event->timestamp_ > last_timestamp_to_dump)
        break;
      event->print();
      events_str += event->get_print();
      delete event;
      ++i;
    }
    buffer.erase(buffer.begin(), i);
  }

  std::cout << events_str << std::endl;
  // Send to the API

  XBT_DEBUG("%s: ends", __func__);
}

/* internal do the instrumentation module */
void PajeEvent::insert_into_buffer()
{
  XBT_DEBUG("%s: insert event_type=%u, timestamp=%f, buffersize=%zu)", __func__, static_cast<unsigned>(eventType_),
            timestamp_, buffer.size());
  XBT_INFO("%s: insert event_type=%u, timestamp=%f, buffersize=%zu)", __func__, static_cast<unsigned>(eventType_),
            timestamp_, buffer.size());            
  std::vector<PajeEvent*>::reverse_iterator i;
  for (i = buffer.rbegin(); i != buffer.rend(); ++i) {
    PajeEvent* e1 = *i;
    XBT_DEBUG("compare to %p is of type %u; timestamp:%f", e1, static_cast<unsigned>(e1->eventType_), e1->timestamp_);
    if (e1->timestamp_ <= timestamp_)
      break;
  }
  if (i == buffer.rend())
    XBT_DEBUG("%s: inserted at beginning", __func__);
  else if (i == buffer.rbegin())
    XBT_DEBUG("%s: inserted at end", __func__);
  else
    XBT_DEBUG("%s: inserted at pos= %zd from its end", __func__, std::distance(buffer.rbegin(), i));
  buffer.insert(i.base(), this);
}

} // namespace simgrid::instr
