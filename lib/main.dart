import 'package:flutter/material.dart';
import './app_screen/display.dart';

void main() {
  runApp(BasedUI());
}

class BasedUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "First Flutter App",
        debugShowCheckedModeBanner: false,
        home: FirstScreen());
  }
}
