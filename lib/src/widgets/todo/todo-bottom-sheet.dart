
import 'package:flutter/material.dart';
import 'package:track/src/models/todo.model.dart';
import 'package:track/src/widgets/todo/todo-bottom-sheet-action.dart';

class TodoBottomSheetContent extends StatelessWidget{

  final TodoModel item;
  TodoBottomSheetContent(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Column(
        children: <Widget>[
          TodoBottomSheetEditAction(item),
          TodoBottomSheetDeleteAction(item)
        ],
      )
    );
  }

}