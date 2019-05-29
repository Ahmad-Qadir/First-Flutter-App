import 'package:flutter/material.dart';
import './functions.dart';
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(title: Text("First Flutter App")),
        body: new Material(
            child: new Column(
          children: <Widget>[
            Text(
              "Hello World my name is Ahmed",
              style: TextStyle(color: Colors.black, fontSize: 29),
              textAlign: TextAlign.center,
            ),
            Text(
              "Your Lucky Number is:" + getLuckyNumber().toString(),
              style: TextStyle(color: Colors.black, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            ImageLogo(),
            ClickMe(),
          ],
          textDirection: TextDirection.ltr,
        )),
      ),
    );
  }
}

