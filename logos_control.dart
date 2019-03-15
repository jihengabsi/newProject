import 'package:flutter/material.dart';

class LogosControl extends StatelessWidget{
  final Function addLogo;

  LogosControl(this.addLogo);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        color: Theme
        .of(context)
        .primaryColor,
    onPressed: () {
          addLogo('cars');
    },
    child: Text('Add logo'),
    );
  }
}

