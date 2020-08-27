import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String status = await task2();
  task3(status);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  await Future.delayed(threeSeconds ,(){
    String result = 'task 2 data';
  });
  return 'Task 2 complete';
}

void task3(String task2Status) {
  print(task2Status);
  String result = 'task 3 data';
  print('Task 3 complete');
}