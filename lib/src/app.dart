import 'package:flutter/material.dart';
import 'package:track/src/models/todo.model.dart';
import 'package:track/src/resources/todo_service.dart';
import 'package:track/src/ui/welcome.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<List<TodoModel>>.value(value: TodoService().streamTodo())
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          body: WelcomePage(),
        ),
      ),
    );
  }
}