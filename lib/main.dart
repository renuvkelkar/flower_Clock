import 'package:flutter/material.dart';

import 'clock.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.blueAccent,

      title: Text(
        "Flower Clock"

      ),
      ),

      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: <Widget>[

          ImageRotate1(),
          ImageRotate(),
          Clock(),


        ],
      ),
    ),

  ));
}

class ImageRotate extends StatefulWidget {
  @override
  _ImageRotateState createState() => new _ImageRotateState();
}

class _ImageRotateState extends State<ImageRotate>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 9),
    );

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top:00.0),
          alignment: Alignment.center,
          child: new AnimatedBuilder(
            animation: animationController,
            child: new Container(
              height: 300.0,
              width: 300.0,
              child: new Image.asset('images/blue.png'),
            ),
            builder: (BuildContext context, Widget _widget) {
              return new Transform.rotate(
                angle: animationController.value * 6.3,
                child: _widget,
              );
            },
          ),
        ),
      ],
    );
  }
}
class ImageRotate1 extends StatefulWidget {
  @override
  _ImageRotate1State createState() => new _ImageRotate1State();
}

class _ImageRotate1State extends State<ImageRotate1>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 2),
    );

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,

          child: new AnimatedBuilder(
            animation: animationController,
            child: new Container(
              height:700.0,
              width: 700.0,
              child: new Image.asset('images/big.png'),
            ),
            builder: (BuildContext context, Widget _widget) {
              return new Transform.rotate(
                angle: animationController.value * 6.3,
                child: _widget,
              );
            },
          ),
        ),
      ],
    );
  }
}
