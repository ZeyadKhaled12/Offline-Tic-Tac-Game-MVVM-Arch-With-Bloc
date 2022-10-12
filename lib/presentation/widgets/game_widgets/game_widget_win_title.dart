
import 'package:flutter/material.dart';

//widget for who is win title

class GameWidgetWinTitle extends StatelessWidget {
  const GameWidgetWinTitle({Key? key, required this.isXWin}) : super(key: key);
  final bool isXWin;

  @override
  Widget build(BuildContext context) {
    return  Text(isXWin?'X win the game':'O win the game', style: TextStyle(
        color: Theme.of(context).hintColor, fontWeight: FontWeight.bold,
        fontSize: 22
    ));
  }
}
