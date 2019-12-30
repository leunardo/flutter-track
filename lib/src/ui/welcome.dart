import 'package:flutter/material.dart';
import 'package:track/src/widgets/get-started-button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.cyan[400]),

      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Welcome to my app"),
          GetStartedButton(context)
        ],
      ),
      )
    );
  }

}