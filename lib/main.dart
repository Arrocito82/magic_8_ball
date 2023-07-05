import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(77, 101, 241, 0.65),
        appBar: AppBar(
          leading: Image.asset("images/logo.png"),
          title: Text(
            "Ask Me Anything",
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: "Belanosima",
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(77, 101, 241, 1),
        ),
        body: const Magic8BallPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Magic8BallPage extends StatefulWidget {
  const Magic8BallPage({super.key});

  @override
  State<Magic8BallPage> createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  int ballNumber = 1;

  void getAnwser() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              print("I got clicked");
              getAnwser();
            },
            child: Image.asset("images/ball$ballNumber.png"),
          ),
        ),
      ),
    );
  }
}
