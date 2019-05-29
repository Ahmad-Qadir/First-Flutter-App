import 'dart:math';

import 'package:flutter/material.dart';

class ImageLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assimage = new AssetImage('images/images.png');
    Image image = new Image(
      image: assimage,
    );
    return Container(
      child: image,
    );
  }
}

class ClickMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
            color: Colors.red,
            textTheme: ButtonTextTheme.primary,
            elevation: 6,
            onPressed: () {},
            child: Text("Click Me")));
  }
}

int getLuckyNumber() {
  Random rand = new Random();
  return rand.nextInt(100);
}
