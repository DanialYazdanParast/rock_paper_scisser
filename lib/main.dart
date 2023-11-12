import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({Key? key}) : super(key: key);

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 1;
  int bottom = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
          backgroundColor: Colors.deepOrange[600],
          appBar: AppBar(
            title: Text('سنگ گاغذ قیچی'),
            centerTitle: true,
            backgroundColor: Colors.deepOrange,
          ),
          body: SafeArea(
              child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: AssetImage('images/$top.png'),
                height: 100,
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
                  setState(() {
                    top = Random().nextInt(3) + 1;
                    bottom = Random().nextInt(3) + 1;
                  });
                },
                child: Text(
                  'شروع بازی',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Image(
                image: AssetImage('images/$bottom.png'),
                height: 100,
              ),
            ],
          ))),
    );
  }
}
