import 'package:flutter/material.dart';
import './app_screen/widgets.dart';

void main() {
  runApp(BasedUI());
}

class BasedUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Profile Information",
        debugShowCheckedModeBanner: false,
        home: MainView());
  }
}
