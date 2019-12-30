import 'package:flutter/material.dart';
import 'package:track/src/models/todo.model.dart';
import 'package:track/src/resources/todo_service.dart';
import 'package:track/src/widgets/todo/todo-bottom-sheet.dart';

class TodoList extends ListView {
  static final todoService = TodoService();

  static _getCheckBox(item) {
    return Checkbox(
      value: item.done,
      activeColor: Colors.amber[300],
      checkColor: Colors.black,
      onChanged: (bool newValue) {
        item.done = newValue;
        updateTodo(item);
      },
    );
  }

  static _onLongPress(BuildContext context, TodoModel item) {
    return () {
      showModalBottomSheet(
        context: context,
        builder: (context) => TodoBottomSheetContent(item)
      );
    };
  }

  TodoList(BuildContext context, List<TodoModel> items): super(
    children: items.map(
      (item) => Card(
        child: ListTile(
          title: Text(item.description),
          trailing: _getCheckBox(item),
          onLongPress: _onLongPress(context, item),
        )
      )
    ).toList()
  );

  static updateTodo(TodoModel item) {
    todoService.updateTodo(item);
  }
}