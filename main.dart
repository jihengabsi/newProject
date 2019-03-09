import 'package:flutter/material.dart';
import './logos_manager.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.redAccent

      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cars'),
        ),
        body: LogosManager(startingLogo:'first logo'),
      ),
    );
  }
}
