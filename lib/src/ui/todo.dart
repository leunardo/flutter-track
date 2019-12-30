import 'package:flutter/material.dart';
import 'package:track/src/models/todo.model.dart';
import 'package:track/src/resources/todo_service.dart';
import 'package:track/src/widgets/todo/todo-add-fab.dart';
import 'package:track/src/widgets/todo/todo-list.dart';

class TodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
      ),
      body: StreamBuilder(
        stream: TodoService().streamTodo(),
        builder: (BuildContext context, AsyncSnapshot<List<TodoModel>> snapshot) {
          if (snapshot.hasData) {
            return TodoList(context, snapshot.data);
          } else if (snapshot.hasError) {
            return Text('Error !');
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: TodoAddFab(context)
    );
  }

}