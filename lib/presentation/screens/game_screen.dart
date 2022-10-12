
import 'package:flutter/material.dart';

import '../../utils/assets_manager.dart';
import '../widgets/game_widgets/game_players_widgets/game_widget_players.dart';
import '../widgets/game_widgets/game_widget_xo_body.dart';


class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              ImgAssets.background
            )
          )
        ),
        //color: Theme.of(context).backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            GameWidgetPlayers(),
            GameWidgetXOBody(),

          ],
        ),
      ),
    );
  }
}
