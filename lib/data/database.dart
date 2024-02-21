import 'package:hive/hive.dart';

class ToDoDatabase {
  //ref hive box
  final _myBox = Hive.box('MyBox');

  List toDoList = [];

  //create initial data for 1st time open app
  void createInitialData() {
    toDoList = [
      ["Make App", false],
      ["Do Work", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
