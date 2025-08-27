import "package:play_ground/core/model/todo_list.model.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
part "todo_list.notifier.g.dart";

@riverpod
class TodoListNotifier extends _$TodoListNotifier {
  @override
  TodoList build()=>TodoList(todos: []);
  void add(String title){
    final newTodo=Todo(title: title);
    state=state.copyWith(todos: [...state.todos,newTodo]);
  }
  void remove(int index){
    state.todos.removeAt(index);
  }
}
