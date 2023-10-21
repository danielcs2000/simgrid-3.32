from flask import Flask, request
from time import sleep
from pydantic import BaseModel
from typing import Optional, List
from enum import Enum
import math
import threading
import numpy as np
from decimal import Decimal
import requests

import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation


PREDICTION_API_URL = "https://polite-gently-koala.ngrok-free.app/predict"

def do_prediction(array: List[float], output_len: int=1):
    assert len(array)
    body = {
        "output_len": output_len,
        "data": array
    }
    response = requests.post(PREDICTION_API_URL, json=body)
    content = response.json()
    return content["prediction"]

app = Flask(__name__)
app.debug = False

LAST_TIME_UPDATED = 0 # seconds

LAST_START_LINK_TIME = {}
LAST_END_LINK_TIME = {}

START_LINK_TIMESTAMP_TIMES = {}
START_LINK_CUMULATIVE_VALUE = {}

# Prediction cache
LAST_PREDICTION_INPUT = {}
LAST_PREDICTION_VALUE = {}

# Configs

PREDICTION_OUTPUT_LEN = 3
STEP = 0.2 # in seconds
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


class Segment(BaseModel):
    start_timestamp: float
    end_timestamp: float
    value: float

def aggregated_value(start, end, segments: List[Segment]) -> float:
    overlapping_segments = []
    for segment in segments:
        if not (end < segment.start_timestamp or start > segment.end_timestamp):
            overlapping_segments.append(segment)
    
    value = 0.0
    for segment in overlapping_segments:
        max_from = max(segment.start_timestamp, start)
        min_to = min(segment.end_timestamp, end)
        
        value += (min_to - max_from) * segment.value

    return value


def build_data_from_events(events: List[Event]):
    """
    Build x_list amd y_list from events, its assumed that all events are from only 1 link
    """
    
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
        start_timestamp=-1.0,
        end_timestamp=-1.0,
        value=-1.0
    )
    
    for event in events:

        if event.type == EventType.START_LINK:
            segment.start_timestamp = event.timestamp
            segment.value = event.value
        
        if event.type == EventType.END_LINK:
            segment.end_timestamp = event.timestamp
            segments.append(segment)

            segment = Segment(
                start_timestamp=-1.0,
                end_timestamp=-1.0,
                value=-1.0
            )

    if segment.start_timestamp != -1.0:
        last_event = events[-1]
        timestamp = last_event.timestamp
        segment.end_timestamp = timestamp
        segments.append(segment)

    for i in range(total_bars):
        start = Decimal(str(i)) * Decimal(str(STEP))
        end = Decimal(str(i +1)) * Decimal(str(STEP))
        value = aggregated_value(float(start),float(end), segments)
        y_list[i] = value
        

    # for segment in segments:
    #     from_idx = segment.from_idx
    #     to_idx = segment.to_idx

    #     for i in range(from_idx, to_idx + 1):
    #         y_list[i] = segment.value

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
        print("-"*50)
        x_list, y_list = build_data_from_events(events=events)
        print("-"*50)
        # print(link_name)
        # print(x_list)
        # print(y_list)
        

# def build_plot(i):
#     # Clear the existing plot
#     plt.clf()
#     # fig, axs = plt.subplots(N_LINKS, 1, figsize=(8, 6))

#     bar_width = 0.15
#     link_idx = 0
#     for link_name in LINK_DATA:
#         # if link_name != "link0":
#         #     continue

#         events = LINK_DATA[link_name]
#         x_list, y_list = build_data_from_events(events=events)
#         plt.bar(np.array(x_list) + link_idx * bar_width, y_list, width=bar_width, label=f"{link_name} througput with step of {STEP} seconds")
#         plt.xlabel("X-Axis")
#         plt.ylabel("Y-Axis")
#         plt.legend()
#         plt.xticks(rotation=45)

#         link_idx += 1


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
    fig, axs = plt.subplots(N_LINKS)

    def init():
        link_name = "link name"
        fig.suptitle('Througplot over time')
        for ax in axs:
            ax.bar([], [], label=f"{link_name} througput with step of {STEP} seconds", color='blue')
            ax.bar([], [], label=f"{link_name} througput with step of {STEP} seconds", color='orange')
            ax.set_xlabel("X-Axis")
            ax.set_ylabel("Y-Axis")
    
    def make_prediction(x_list, y_list, link_name):
        if len(x_list) < 20:
            return [], []
        input_data = y_list[-20:]
        last_prediction_input = LAST_PREDICTION_INPUT.get(link_name, [])

        if last_prediction_input == input_data:
            y_prediction = LAST_PREDICTION_VALUE.get(link_name, [])
        else:
            y_prediction = do_prediction(input_data, output_len=PREDICTION_OUTPUT_LEN)

        last_x_value = x_list[-1]
        x_prediction = [last_x_value + (i + 1)*STEP for i in range(len(y_prediction))]

        LAST_PREDICTION_INPUT[link_name] = input_data
        LAST_PREDICTION_VALUE[link_name] = y_prediction

        return x_prediction, y_prediction

    def build_plot(i):
        # Clear the existing plot
        # plt.clf()
        print("Building plot")
        bar_width = STEP
        link_idx = 0
        for link_name in LINK_DATA:
            # if link_name != "link0":
            #     continue
            ax = axs[link_idx]
            events = LINK_DATA[link_name]
            x_list, y_list = build_data_from_events(events=events)
            x_predict, y_predict = make_prediction(x_list, y_list, link_name)
            # print(x_list, y_list)
            # x_list = np.array(range(10))
            # y_list = np.sin(x_list ** 2)
            ax.clear()
            ax.set_xlabel("Time ")
            ax.set_ylabel("Througplot")

            x_list = np.array(x_list)
            y_list = np.array(y_list)
            x_predict = np.array(x_predict)
            y_predict = np.array(y_predict)


            ax.bar(x_list + STEP/2, y_list, width=bar_width, label=f"{link_name} througput with step of {STEP} seconds", color='blue')
            ax.bar(x_predict + STEP/2, y_predict, width=bar_width, label=f"{link_name} througput prediction with step of {STEP} seconds", color='orange')
            ax.legend()
            # ax.set_xticks(rotation=45)

            link_idx += 1

    _ = FuncAnimation(fig, build_plot, interval=2000, init_func=init)
    # Show the plot
    plt.tight_layout()
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
    input_data = [0.3]* 20
    plot_thread = threading.Thread(target=plot_in_thread)
    plot_thread.start()
    app.run(debug=True)

