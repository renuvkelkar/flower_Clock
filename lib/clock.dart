import 'dart:async';

import 'package:flutter/material.dart';
class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  double seconds;
  _currentTime() {
    return "${DateTime.now().hour} : ${DateTime.now().minute}";
  }
  _triggerUpdate() {
    Timer.periodic(
        Duration(seconds: 1),
            (Timer timer) => setState(
              () {
            seconds = DateTime.now().second / 60;
          },
        ));
  }
  @override
  void initState() {
    super.initState();
    seconds = DateTime.now().second / 60;
    _triggerUpdate();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 170.0,left: 80.0),
            width: 200.0,
            height: 200.0,
            child: Text(

              _currentTime(),
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,),


            ),
          ),
        ),
      ],
    );
  }
}

