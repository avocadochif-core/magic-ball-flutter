import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, statusBarBrightness: Brightness.light));

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: Text('Magic Ball'),
      ),
      body: MagicBall(),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var ballAnswerNumber = 1;

  void generateBallAnswer() {
    setState(() {
      ballAnswerNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Image.asset('assets/images/ball$ballAnswerNumber.png'),
          onPressed: () {
            generateBallAnswer();
          },
        ),
      ),
    );
  }
}
