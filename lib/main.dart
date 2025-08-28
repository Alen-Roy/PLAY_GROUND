import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:play_ground/home.dart';
import 'package:play_ground/ui/screens/todo_list.screen.dart';
import 'package:play_ground/user.dart';

final userProvider=StateNotifierProvider<userNotifier,User>((ref)=>userNotifier(User(name: "", age: 0)));
void main() {
  print("Hello from Dart 🚀");
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListScreen()
    );
  }
}
