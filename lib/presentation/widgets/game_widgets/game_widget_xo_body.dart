
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/game_cubit/game_cubit.dart';
import 'game_widget_btn.dart';
import 'game_widget_reload_btn.dart';
import 'game_widget_win_title.dart';

//Matrix(Grid) of xo game
//. . .
//. . .
//. . .

class GameWidgetXOBody extends StatelessWidget {
  const GameWidgetXOBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              children:
                  List.generate(9, (index) => GameWidgetBtn(index: index)),
            ),
          ),
        ),

        //check if the game win and then reload the game when the game finish

        BlocBuilder<GameCubit, GameState>(builder: (_, ctx) {
          return BlocProvider.of<GameCubit>(context).isGameFinishBool
              ? Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    GameWidgetWinTitle(
                      isXWin: !BlocProvider.of<GameCubit>(context).isX,
                    ),
                    GameWidgetReloadBtn(
                      fun: BlocProvider.of<GameCubit>(context).refreshGame,
                    )
                  ],
                )
              : const Text('');
        })
      ],
    );
  }
}
