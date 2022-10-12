
import 'package:flutter/material.dart';

import 'game_widget_player.dart';

class GameWidgetPlayers extends StatelessWidget {
  const GameWidgetPlayers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [GameWidgetPlayer(isX: false),
          Padding(padding: EdgeInsets.only(right: 20)),
          GameWidgetPlayer(isX: true)],
      ),
    );
  }
}
