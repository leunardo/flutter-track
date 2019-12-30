import 'package:flutter/material.dart';
import 'package:track/src/models/todo.model.dart';
import 'package:track/src/resources/todo_service.dart';

showDeleteConfirmation(BuildContext context, TodoModel todo) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        title: Text('Delete To Do?'),
        content: Text('Are you sure you want to delete? This is irreversible'),
        actions: <Widget>[
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('Delete'),
            color: Colors.amber[300],
            textColor: Colors.black,
            onPressed: () {
              TodoService()
                .deleteTodo(todo)
                .then((value) {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                });
            },
          )
        ],
      );
    }
  );
}