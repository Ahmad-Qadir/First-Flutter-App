import 'dart:math';

import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Profile Information"),
            leading: new Icon(Icons.info),
          ),
          body: new Material(child: GradColor()),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.insert_emoticon),
            elevation: 10,
            tooltip: "Add New Messege!",
            onPressed: () {
              showAlertNotification(context);
              showSnackBar(context);
            },
          ),
        ));
  }
}

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150.0,
        margin: EdgeInsets.only(top: 50, bottom: 30),
        height: 150.0,
        child: ClipOval(
          child: Image.asset(
            'images/profile.jpg',
            fit: BoxFit.fill,
          ),
        ));
  }
}

class GradColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(5, 0.0),
          colors: [
            Colors.blueAccent,
            Colors.white,
          ],
        ),
      ),
      child: new Column(
        children: <Widget>[
          ProfileImage(),
          TitleText(),
          Details(),
          MyApp(),
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        child: Text(
          "Ahmed A.Qadir",
          style: TextStyle(
            color: Colors.white,
            fontSize: 29,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Text(
          "Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          textAlign: TextAlign.justify,
        ));
  }
}

class GoodLuckLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assimage = new AssetImage('images/goodluck.png');
    Image image = new Image(
      image: assimage,
    );
    return Container(
      child: image,
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

List<String> _products = [];
int i = 0;

class _MyAppState extends State<MyApp> {
  int luck = 0;
  void getLuckyNumber() {
    Random rand = new Random();
    setState(() {
      luck = rand.nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(" $luck :ژمارەی دەرچوو بریتیە لە",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ))),
        Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(10.0),
                child: FlatButton(
                  color: Colors.greenAccent,
                  child: Text("خۆم و بەختم",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {
                    i++;
                    setState(() {
                      _products
                          .add(luck.toString() + ":ژمارەی دەرچوو بریتیە لە ");
                      getLuckyNumber();
                    });
                  },
                )),
            Container(
                margin: EdgeInsets.all(10.0),
                child: FlatButton(
                  color: Colors.redAccent,
                  child: Text("ڕەشکردنەوە",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {
                    setState(() {
                      deleteItems();
                    });
                  },
                )),
            Container(
                margin: EdgeInsets.all(10.0),
                child: FlatButton(
                  color: Colors.amber,
                  child: Text("ڕەشکردنەوەی كۆتا دانە",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {
                    setState(() {
                      deleteLastItem();
                    });
                  },
                )),
          ],
        ),
        Column(
            children: _products
                .map(
                  (elements) => Card(
                        child: Column(
                          children: <Widget>[Text(elements)],
                        ),
                      ),
                )
                .toList()),
      ],
    );
  }
}

void deleteItems() {
  _products.clear();
  i = 0;
}

void deleteLastItem() {
  if (i != 0) {
    _products.removeAt(--i);
  } else {
    i = 0;
  }
}


//snackbar
void showSnackBar(BuildContext context) {
  var snackBarss = SnackBar(
    content: Text("Nothing"),
  );
  Scaffold.of(context).showSnackBar(snackBarss);
}

//alert dialog
void showAlertNotification(BuildContext context) {
  Random rand = new Random();
  
  int luck = rand.nextInt(100);
  var alertdialog = AlertDialog(
    title: Text("Lucky Number"),
    content: Text("Your Lucky Number is: $luck"),
    elevation: 10,
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertdialog;
      });
}

