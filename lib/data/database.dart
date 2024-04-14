import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st ever time opening this app
  void createInitialData() {
    // list of todo tasks
    toDoList = [
      ["Make Tutorial", false],
      ["Do Excercise", false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
