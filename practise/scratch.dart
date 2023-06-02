import 'dart:io';
import 'dart:async';

void main() {
  performTasks();
}

Future<void> performTasks() async {
  task1();
  print("lets begin in ...")
  String task3Result = await task2();
  task3(task3Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = const Duration(seconds: 3);
  // instead of using sleep we can use future
  //sleep(threeSeconds);
  late String result;
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
  print("where is this repo");
}
