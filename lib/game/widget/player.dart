import 'package:flutter/material.dart';
import 'package:flutter_game_1/game/type.dart';
import 'package:flutter_game_1/game/widget/card.dart';

class Player  extends StatelessWidget {
  final bool isDone;
  final InputType? playerInput;
  final Function(InputType) callback;

  const Player({
    this.playerInput,
    required this.isDone,
    required this.callback,
    super.key});

  @override
  Widget build(BuildContext context) {
    if(isDone){
      return Row(
        children: [
          const Expanded(child: SizedBox.shrink()),
          Expanded(child: InputCard(child: Image.asset(playerInput!.path))),
          const Expanded(child: SizedBox.shrink())
        ],
      );
    }

    return Row(
      children: _getInputs(callback),
    );
  }

  List<Widget> _getInputs(Function(InputType) callback){
    return InputType.values
        .map(
          (type) => Expanded(
            child: InkWell(
              onTap: () => callback.call(type),
              child: InputCard(
                child: Image.asset(type.path),
              ),
            ),
          ),
        )
        .toList();
  }
}

