/* Copyright (c) 2010-2022. The SimGrid Team. All rights reserved.          */

/* This program is free software; you can redistribute it and/or modify it
 * under the terms of the license (GNU LGPL) which comes with this package. */

#include <simgrid/instr.h>
#include <simgrid/s4u.hpp>

XBT_LOG_NEW_DEFAULT_CATEGORY(s4u_trace_masterworker, "Messages specific for this example");
namespace sg4 = simgrid::s4u;

struct Task {
  std::string name;
  std::string category;
  double flops;
};

static void master(std::vector<std::string> args)
{
  xbt_assert(args.size() > 4, "The master function expects at least 3 arguments");

  long tasks_count        = std::stol(args[1]);
  double compute_cost     = std::stod(args[2]);
  long communication_cost = std::stol(args[3]);
  size_t workers_count    = args.size() - 4;
  const auto& my_host     = sg4::this_actor::get_host()->get_name();
  auto mailbox            = sg4::Mailbox::by_name("master_mailbox");

  XBT_DEBUG("Got %zu workers and %ld tasks to process", workers_count, tasks_count);

  // setting the variable "is_master" (previously declared) to value 1
  simgrid::instr::set_host_variable(my_host, "is_master", 1);

  simgrid::instr::mark("msmark", "start_send_tasks");
  for (int i = 0; i < tasks_count; i++) {
    // setting the variable "task_creation" to value i
    simgrid::instr::set_host_variable(my_host, "task_creation", i);

    // setting the category of task to "compute"
    Task task = {"task", "compute", compute_cost};
    mailbox->put(new Task(task), communication_cost);
  }
  simgrid::instr::mark("msmark", "finish_send_tasks");

  XBT_DEBUG("All tasks have been dispatched. Request all workers to stop.");
  for (unsigned int i = 0; i < workers_count; i++) {
    Task finalize = {"finalize", "finalize", 0};
    mailbox->put(new Task(finalize), 0);
  }
}

static void worker(std::vector<std::string> args)
{
  xbt_assert(args.size() == 1, "The worker expects no argument");

  const auto& my_host = sg4::this_actor::get_host()->get_name();
  auto mailbox        = sg4::Mailbox::by_name("master_mailbox");

  simgrid::instr::set_host_variable(my_host, "is_worker", 1);
  simgrid::instr::set_host_variable(my_host, "task_computation", 0);

  while (true) {
    auto task = mailbox->get_unique<Task>();
    if (task->name == "finalize") {
      break;
    }
    // adding the task's cost to the variable "task_computation"
    simgrid::instr::add_host_variable(my_host, "task_computation", task->flops);
    sg4::this_actor::exec_init(task->flops)->set_name(task->name)->set_tracing_category(task->category)->wait();
  }

  XBT_DEBUG("Exiting now.");
}

int main(int argc, char* argv[])
{
  sg4::Engine e(&argc, argv);
  xbt_assert(argc > 2, "Usage: %s platform_file deployment_file\n", argv[0]);

  e.load_platform(argv[1]);

  // declaring user variables
  simgrid::instr::declare_host_variable("is_worker");
  simgrid::instr::declare_host_variable("is_master");
  simgrid::instr::declare_host_variable("task_creation");
  simgrid::instr::declare_host_variable("task_computation");

  // declaring user markers and values
  simgrid::instr::declare_mark("msmark");
  simgrid::instr::declare_mark_value("msmark", "start_send_tasks");
  simgrid::instr::declare_mark_value("msmark", "finish_send_tasks");

  // declaring user categories with RGB colors (values from 0 to 1)
  simgrid::instr::declare_tracing_category("compute", "1 0 0");  // compute is red
  simgrid::instr::declare_tracing_category("finalize", "0 1 0"); // finalize is green
  // categories without user-defined colors receive random colors generated by the tracing system
  simgrid::instr::declare_tracing_category("request");
  simgrid::instr::declare_tracing_category("report");

  e.register_function("master", &master);
  e.register_function("worker", &worker);
  e.load_deployment(argv[2]);

  e.run();

  XBT_DEBUG("Simulation is over");

  if (const auto& categories = simgrid::instr::get_tracing_categories(); not categories.empty()) {
    XBT_INFO("Declared tracing categories:");
    for (const auto& category : categories)
      XBT_INFO("%s", category.c_str());
  }

  if (const auto& marks = simgrid::instr::get_marks(); not marks.empty()) {
    XBT_INFO("Declared marks:");
    for (const auto& mark : marks)
      XBT_INFO("%s", mark.c_str());
  }

  return 0;
}
