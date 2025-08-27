import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:play_ground/main.dart';
import 'package:play_ground/user.dart';

class Home extends ConsumerWidget {
  const Home({super.key});
  void onSubmit(String value, WidgetRef ref){
  // ref.read(nameProvider.notifier).update((state)=>value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref ) {
    final user=ref.watch(userProvider) as User;
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Column(
        children: [ 
          TextField(
            onSubmitted:(value) => onSubmit(value, ref) ,
          ),
          Center(
            child: Text(user.name),
          ),
        ],
      ),
    );
  }
}