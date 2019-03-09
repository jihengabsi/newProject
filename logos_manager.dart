import 'package:flutter/material.dart';
import './logos.dart';

class LogosManager extends StatefulWidget{


  final String startingLogo;
  LogosManager({this.startingLogo='Volkswagen'}){
    print('[LogosManager Widget] Constructor');
  }


  @override
  State<StatefulWidget> createState() {
    print('[LogosManager Widget] createState()');
    return _LogosManagerState();
  }
}

class _LogosManagerState extends State<LogosManager> {
  List<String> _logos=[];
  @override
  void initState() {
    print('[LogosManager State] initState()');
    _logos.add(widget.startingLogo);
    super.initState();
  }

  @override
  void didUpdateWidget(LogosManager oldWidget) {
    print('[LogosManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }
 @override
  Widget build(BuildContext context) {
   print('[LogosManager State] build()');
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child:  RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: (){
          setState(() {
            _logos.add('new logo');

          });
        } ,
        child: Text('Add logo'),
      ),
    ),
      Logos(_logos)
    ],);
  }
}