import 'package:flutter/material.dart';
import 'package:track/src/models/todo.model.dart';
import 'package:track/src/resources/todo_service.dart';

class TodoForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TodoFormState();
  }

}

class _TodoFormState extends State<TodoForm> {

  final _formKey = GlobalKey<FormState>();
  final _formController = TextEditingController();
  final _service = TodoService();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _formController,
              autofocus: true,
              decoration: const InputDecoration(
                labelText: 'Description',
                labelStyle: TextStyle(color: Colors.amber),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
              ),
              onSubmitted: (value) =>_save(),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text('Save'),
                onPressed: () => _save()
              ),
            )
          ],
        ),
      ),
    );
  }

  _save() {
    _service.saveTodo(TodoModel(
      description: _formController.text,
      done: false
    )).then((value) {
      Navigator.of(context).pop();
    });
  }

}