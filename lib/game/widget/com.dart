import 'package:flutter/material.dart';
import 'package:flutter_game_1/game/type.dart';


class Computer  extends StatelessWidget {
  final bool isDone;
  final InputType comInput;
  const Computer({
    required this.isDone,
    required this.comInput,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SizedBox.shrink()),
        Expanded(
          child: Card(
            child: getComInput(),
          ),
        ),
        const Expanded(child: SizedBox.shrink()),
      ],
    );
  }

  Widget getComInput() {
    if (isDone) {
      return Image.asset(comInput.path);
    }
    return const SizedBox(
      height: 80,
      child: Center(
        child: Text(
          '?',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}