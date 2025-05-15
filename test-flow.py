from prefect import flow, task
from prefect.task_runners import ThreadPoolTaskRunner
import time

@task(task_run_name="Stop at {floor}")
def stop_at_floor(floor):
    print(f"elevator moving to floor {floor}")
    time.sleep(floor)
    print(f"elevator stops on floor {floor}")

@flow(task_runner=ThreadPoolTaskRunner(max_workers=10))
def elevator():
    floors = []

    for floor in range(5, 0, -1):
        floors.append(stop_at_floor.submit(floor))

    results = [floor.result() for floor in floors]

if __name__ == "__main__":
    elevator()