import 'package:get/get.dart';
import 'package:todo_app/components/todos_model.dart';

class TodoListController extends GetxController {
  final List<TodoModel> _tasks = [
    TodoModel(task: 'Initialise GETX'),
    TodoModel(task: 'Blah blah blah'),
    TodoModel( task: 'Test App'),
    TodoModel(task: 'Play muziki'),
  ];
  List<TodoModel> get tasks => _tasks;

  int get taskCount => tasks.length;

  TodoModel getTasks(int index) {
    return tasks[index];
  }

  void toggleCheckbox(int index, bool? value) {
    _tasks[index].isDone = value!;
    update();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    update();
  }
  
  void addTask(String task) {
    _tasks.add(TodoModel(task: task));
    print(taskCount);
    update();
  }
}