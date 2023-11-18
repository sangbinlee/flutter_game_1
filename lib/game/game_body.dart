import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_game_1/game/type.dart';
import 'package:flutter_game_1/game/widget/com.dart';
import 'package:flutter_game_1/game/widget/result.dart';
import 'package:flutter_game_1/game/widget/player.dart';



class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {

  late bool isDone;
  InputType? _playerInput;
  late InputType _comInput;

  @override
  void initState(){
    print('initState');
    print('initState');
    print('initState');
    super.initState();
    isDone = false;
    setComInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Computer(isDone : isDone, comInput: _comInput)),
        Expanded(child: GameResult(isDone : isDone, result: getResult(), callback: reset,)),
        Expanded(child: Player(isDone : isDone, callback: setPlayerInput, playerInput: _playerInput ,)),
      ],
    );
  }

  Result? getResult() {
    if (_playerInput == null) return null;

    switch (_playerInput!) {
      case InputType.rock:
        switch (_comInput) {
          case InputType.rock:
            return Result.draw;
          case InputType.scissors:
            return Result.playerWin;
          case InputType.paper:
            return Result.comWin;
        }
      case InputType.scissors:
        switch (_comInput) {
          case InputType.rock:
            return Result.comWin;
          case InputType.scissors:
            return Result.draw;
          case InputType.paper:
            return Result.playerWin;
        }
      case InputType.paper:
        switch (_comInput) {
          case InputType.rock:
            return Result.playerWin;
          case InputType.scissors:
            return Result.comWin;
          case InputType.paper:
            return Result.draw;
        }
    }
  }

  void setComInput() {
    print('setComInput');
    print('setComInput');
    print('setComInput');
    final random = Random();
    _comInput = InputType.values[random.nextInt(3)];
  }

  void setPlayerInput(InputType playerInput) {
    setState(() {
      isDone = true;
      _playerInput = playerInput;
    });
  }

  void reset() {
    print('reset');
    print('reset');
    print('reset');
    setState(() {
      isDone = false;
      setComInput();

    });
  }
}

