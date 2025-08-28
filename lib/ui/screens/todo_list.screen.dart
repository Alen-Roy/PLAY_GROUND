import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:play_ground/core/screen_controllers/todo_list.notifier.dart';

class TodoListScreen extends ConsumerWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoListNotifierProvider);
    final stateNotifier = ref.read(todoListNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      floatingActionButton: FloatingActionButton(
        onPressed: stateNotifier.add,
        child: SafeArea(child: Icon(Icons.add)),
      ),
      body: state.todos.isEmpty
          ? Center(child: Text("List is empty"))
          : ListView.builder(
            itemCount: state.todos.length,
            itemBuilder: (context, index) {
              final item=state.todos[index];
              return Dismissible(
                  key: Key(item.title),
                  confirmDismiss: (direction){
                    return Future.value(false);
                  },
                  child: ListTile(title: Text(item.title)),
                );
            }
            ),
    );
  }
}
