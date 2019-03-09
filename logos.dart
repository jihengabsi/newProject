import 'package:flutter/material.dart';

class Logos extends StatelessWidget {
 final List <String> logos;
  Logos([this.logos= const []]){
    print('[logos Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[logos Widget] build()');
    return
      Column(children: logos.map((element) => Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images.jpeg'),
            Text(element)
          ],
        ),
      ),
      )
          .toList(),
      );
  }

}


