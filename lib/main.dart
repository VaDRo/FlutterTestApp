import 'package:flutter/material.dart';
import 'package:flutter_test_app/widgets/colorifier_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      theme: ThemeData(
        textTheme: TextTheme(body1: TextStyle(fontSize: 32), title: TextStyle(fontSize: 20))
      ),
      home: ColorifierWidget(title: 'Flutter Test App'),
    );
  }
}

