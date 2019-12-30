import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:track/src/models/todo.model.dart';
import 'package:track/src/widgets/todo/todo-add-fab.dart';
import 'package:track/src/widgets/todo/todo-list.dart';

class TodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var todos = Provider.of<List<TodoModel>>(context) ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
      ),
      body: Container(
        child: TodoList(context, todos)
      ),
      floatingActionButton: TodoAddFab(context)
    );
  }

}