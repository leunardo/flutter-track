import 'package:flutter/material.dart';
import 'package:track/src/ui/menu.dart';

class GetStartedButton extends FlatButton {

  GetStartedButton(BuildContext context): super(
    color: Colors.amber[200],
    child: Text('Get Started'),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MenuPage())
      );
    }
  );
}