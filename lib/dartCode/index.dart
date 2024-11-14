import 'todo/todo.dart';

void main() {
  var a = 12;
  int b = 13;
  late int c;
  c = 14;
  print('index start $a $b $c');
  UserServe userServe = UserServe();
  userServe.createUser("test");
  TodoChecker.printTodos();
}

@Todo("this is TOD ")
class UserServe {
  UserServe() {
    TodoChecker.register("UserServe", "$Todo");
  }
  @Todo("需要添加参数验证")
  void createUser(String name) {
    TodoChecker.register("UserServe.createUser", name);
  }
}
