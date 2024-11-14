import 'dart:ffi';

class Todo {
  final String message;
  const Todo(this.message);
}

class TodoChecker {
  static final Map<String, String> todos = {};
  static void register(String locations, String message) {
    todos[locations] = message;
  }

  static void printTodos() {
    if (todos.isEmpty) {
      print("no todos");
      return;
    }
    print("todos is found ");
    todos.forEach((key, value) {
      print("--位置$key : --nei'rong$value");
    });
  }
}
