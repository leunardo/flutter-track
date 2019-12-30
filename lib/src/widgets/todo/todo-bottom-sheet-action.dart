import 'package:flutter/material.dart';
import 'package:track/src/models/todo.model.dart';
import 'package:track/src/widgets/todo/todo-alert-delete.dart';

class TodoBottomSheetAction extends ListTile {

  TodoBottomSheetAction(String title, IconData icon, Function onTap): super(
    title: Text(title),
    leading: Icon(icon),
    onTap: onTap
  );
}

class TodoBottomSheetEditAction extends StatelessWidget {

  final TodoModel item;
  TodoBottomSheetEditAction(this.item);

  @override
  Widget build(BuildContext context) {
    return TodoBottomSheetAction('Edit', Icons.edit, () {

    });
  }

}

class TodoBottomSheetDeleteAction extends StatelessWidget {

  final TodoModel item;
  TodoBottomSheetDeleteAction(this.item);

  @override
  Widget build(BuildContext context) {
    return TodoBottomSheetAction('Delete', Icons.delete, () {
      showDeleteConfirmation(context, item);
    });
  }

}