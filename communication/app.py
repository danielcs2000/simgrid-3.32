from flask import Flask, request
from time import sleep
from pydantic import BaseModel
from typing import Optional, List
from enum import Enum
import math
import threading
import numpy as np

import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

app = Flask(__name__)
app.debug = False

LAST_TIME_UPDATED = 0 # seconds

LAST_START_LINK_TIME = {}
LAST_END_LINK_TIME = {}

START_LINK_TIMESTAMP_TIMES = {}
START_LINK_CUMULATIVE_VALUE = {}

# Configs

STEP = 0.2
N_LINKS = 4

LINK_DATA = {}


class EventType(Enum):
    SYNC = "sync"
    START_LINK = "start_link"
    END_LINK = "end_link"

class Event(BaseModel):
    link_name: str
    timestamp: float
    type: EventType
    value: Optional[float] = None


def build_data_from_events(events: List[Event]):
    """
    Build x_list amd y_list from events, its assumed that all events are from only 1 link
    """
    class Segment(BaseModel):
        from_idx: int
        to_idx: int
        value: float
    
    global STEP
    if len(events) == 0:
        return [], []
    x_list, y_list = [], []

    link_name = events[0].link_name
    assert all(event.link_name == link_name for event in events), f"Not all events are from {link_name}"

    last_event_timestamp = events[-1].timestamp
    total_bars = int(math.ceil(last_event_timestamp / STEP))
    
    x_list = [i * STEP for i in range(total_bars)]
    y_list = [0] * total_bars

    value = None
    segments = []
    segment = Segment(
        from_idx=-1,
        to_idx=-1,
        value=-1.0
    )
    for event in events:
        timestamp = event.timestamp
        idx = int(math.ceil(timestamp / STEP)) - 1
        value = event.value

        if event.type == EventType.START_LINK:
            segment.from_idx = idx
            segment.value = value
        
        if event.type == EventType.END_LINK:
            segment.to_idx = idx
            segments.append(segment)

            segment = Segment(
                from_idx=-1,
                to_idx=-1,
                value=-1.0
            )
    
    if segment.from_idx != -1:
        last_event = events[-1]
        timestamp = last_event.timestamp
        idx = int(math.ceil(timestamp / STEP)) - 1
        segment.to_idx = idx
        segments.append(segment)

    for segment in segments:
        from_idx = segment.from_idx
        to_idx = segment.to_idx

        for i in range(from_idx, to_idx + 1):
            y_list[i] = segment.value

    assert len(x_list), len(y_list)
    return x_list, y_list

"""
LINK DATA
Sync
Start
Sync
End
Sync
Sync
Start
Sync
End

"""
def setup():
    global N_LINKS
    global LINK_DATA

    for i in range(N_LINKS):
        link_name = f"link{i}"
        LINK_DATA[link_name] = []

def build_link_data():
    global LINK_DATA
    for link_name in LINK_DATA:
        events = LINK_DATA[link_name]
        x_list, y_list = build_data_from_events(events=events)
        print("-"*50)
        print(link_name)
        print(x_list)
        print(y_list)
        print("-"*50)

def build_plot(i):
    # Clear the existing plot
    plt.clf()

    bar_width = 0.15
    link_idx = 0
    for link_name in LINK_DATA:
        # if link_name != "link0":
        #     continue

        events = LINK_DATA[link_name]
        x_list, y_list = build_data_from_events(events=events)
        plt.bar(np.array(x_list) + link_idx * bar_width, y_list, width=bar_width, label=f"{link_name} througput with step of {STEP} seconds")
        plt.xlabel("X-Axis")
        plt.ylabel("Y-Axis")
        plt.legend()
        plt.xticks(rotation=45)

        link_idx += 1

def handle_sync_event(timestamp_seconds:float):
    print("Handling [SYNC] event")
    global LINK_DATA
    global LAST_TIME_UPDATED


    for link_name in LINK_DATA:
        last_event_time = 0
        if len(LINK_DATA[link_name]) > 0:
            last_event_time = LINK_DATA[link_name][-1].timestamp
        
        if last_event_time >= timestamp_seconds:
            continue
        
        event = Event(
            link_name=link_name,
            timestamp=timestamp_seconds,
            type=EventType.SYNC,
            value=None
        )
        LINK_DATA[link_name].append(event)

    LAST_TIME_UPDATED = timestamp_seconds


def plot_in_thread():
    ani = FuncAnimation(plt.gcf(), build_plot, interval=1000)  # Update every 1 second (adjust as needed)
    # Show the plot
    plt.show()

def find_start_link_event_idx(
    link_name: str,
    timestamp_seconds: float
):
    global LINK_DATA
    result = -1
    for idx, event in enumerate(LINK_DATA[link_name]):
        if event.link_name == link_name and event.timestamp == timestamp_seconds and event.type == EventType.START_LINK:
            return idx
    return result


def handle_start_link_event(
    link_name: str,
    value: float,
    timestamp_seconds: float
):
    print("Handling [START LINK] event")
    global LAST_END_LINK_TIME
    global LAST_START_LINK_TIME
    global LINK_DATA
    global START_LINK_TIMESTAMP_TIMES
    global START_LINK_CUMULATIVE_VALUE

    key = (link_name, timestamp_seconds)
    START_LINK_TIMESTAMP_TIMES[key] = START_LINK_TIMESTAMP_TIMES.get(key, 0) + 1

    last_start_time_updated = LAST_START_LINK_TIME.get(link_name, 0)
    if last_start_time_updated == timestamp_seconds:
        times = START_LINK_TIMESTAMP_TIMES[key]
        if times > 2 and times % 2 == 0:
            event_idx = find_start_link_event_idx(link_name=link_name, timestamp_seconds=timestamp_seconds)
            if event_idx == -1:
                print("Couldn't find event")
                return

            event = LINK_DATA[link_name][event_idx]
            event.value += value
            LINK_DATA[link_name][event_idx] = event
            return
        return
    
    last_end_time_updated = LAST_END_LINK_TIME.get(link_name, 0)
    if last_end_time_updated < last_start_time_updated:
        print(f"[START LINK] link with name {link_name} doest finish already at {timestamp_seconds}, the last end time was {last_end_time_updated}")
        return

    event = Event(
        link_name=link_name,
        timestamp=timestamp_seconds,
        type=EventType.START_LINK,
        value=value
    )

    LINK_DATA[link_name].append(event)
    LAST_START_LINK_TIME[link_name] = timestamp_seconds

def handle_end_link_event(
    link_name: str,
    value: float,
    timestamp_seconds: float
):
    print("Handling [END LINK] event")
    global LAST_END_LINK_TIME
    global LAST_START_LINK_TIME
    global LINK_DATA
    
    last_end_time_updated = LAST_END_LINK_TIME.get(link_name, 0)
    if last_end_time_updated == timestamp_seconds:
        print("Already processed")
        return
    
    last_start_time_updated = LAST_START_LINK_TIME.get(link_name, 0)
    if last_start_time_updated < last_end_time_updated:
        print(f"[END LINK] link with name {link_name} doenst start already at {timestamp_seconds} compared with the last end event")

    event = Event(
        link_name=link_name,
        timestamp=timestamp_seconds,
        type=EventType.END_LINK,
        value=value
    )
    LINK_DATA[link_name].append(event)
    LAST_END_LINK_TIME[link_name] = timestamp_seconds


@app.route('/', methods=['POST'])
def handle_simgrid_events():
    global LAST_TIME_UPDATED
    global LINK_DATA

    print(request.form)
    event_type = request.form["event_type"]
    timestamp = float(request.form["timestamp"])
    
    assert timestamp >= LAST_TIME_UPDATED, "An event in the past has come"
    
    if event_type == "sync":
        handle_sync_event(timestamp_seconds=float(timestamp))
    elif event_type == "start_link":
        link_name = request.form["link_name"]
        value = float(request.form["value"])
        handle_start_link_event(link_name=link_name, value=value, timestamp_seconds=timestamp)
        with open("traces.log", "+a") as file:
            file.write(f"[START LINK] link_name={link_name} value={value} timestamp={timestamp} \n")

    elif event_type == "end_link":
        link_name = request.form["link_name"]
        value = float(request.form["value"])
        handle_end_link_event(link_name=link_name, value=value, timestamp_seconds=timestamp)
        with open("traces.log", "+a") as file:
            file.write(f"[END LINK] link_name={link_name} value={value} timestamp={timestamp} \n")
    else:
        raise NotImplementedError
    
    LAST_TIME_UPDATED = timestamp
    build_link_data()
    sleep(0.5)
    return 'Ok'




if __name__ == '__main__':
    setup()
    plot_thread = threading.Thread(target=plot_in_thread)
    plot_thread.start()
    app.run(debug=True)