
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../business_logic/game_cubit/game_cubit.dart';
import '../../../../utils/assets_manager.dart';

//this is widget to the turn of every player X OR O

class GameWidgetPlayer extends StatelessWidget {
  const GameWidgetPlayer({Key? key, required this.isX}) : super(key: key);
  final bool isX;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (_, ctx) {
        return Container(
          width: MediaQuery.of(context).size.width / 3.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0XFF27175D),
              border: BlocProvider.of<GameCubit>(context).isX && isX ||
                      !BlocProvider.of<GameCubit>(context).isX && !isX
                  ? Border.all(color: Colors.white, width: 1)
                  : null),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Image(
              width: 22,
              image: AssetImage(isX ? ImgAssets.xPath : ImgAssets.oPath),
            ),
          ),
        );
      },
    );
  }
}
