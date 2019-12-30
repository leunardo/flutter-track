import 'package:flutter/material.dart';
import 'package:track/src/models/todo.model.dart';
import 'package:track/src/widgets/todo/todo-form.dart';

class TodoAddFab extends FloatingActionButton {
  TodoAddFab(BuildContext context): super(
    child: Icon(Icons.add),
    backgroundColor: Colors.amber[300],
    onPressed: () {
      showTodoFormModalBottomSheet(context);
    }
  );
}

showTodoFormModalBottomSheet(BuildContext context, {TodoModel todo}) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) => TodoForm(todo: todo)
  );
}