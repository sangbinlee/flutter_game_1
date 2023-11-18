import 'package:flutter/material.dart';


import 'package:flutter_game_1/game/game_body.dart';

void main() {
  runApp(const RspApp());
}

class RspApp extends StatelessWidget {
  const RspApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('가위 바위 보!')
        ),
        body: const GameBody(),
      ),
    );
  }
}
