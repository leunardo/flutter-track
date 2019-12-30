import 'package:flutter/material.dart';
import 'package:track/src/ui/welcome.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          body: WelcomePage(),
        ),
    );
  }
}