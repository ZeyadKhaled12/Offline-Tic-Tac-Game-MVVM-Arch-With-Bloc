
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/game_cubit/game_cubit.dart';
import '../../../utils/assets_manager.dart';

//This is a button when you click on x or o

class GameWidgetBtn extends StatelessWidget {
  const GameWidgetBtn({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: (index + 1) > 6 ? 0 : 9, right: (index + 1) % 3 == 0 ? 0 : 9),
      child: BlocBuilder<GameCubit, GameState>(
        builder: (_, ctx) {
          return ElevatedButton(
            onPressed: () {
              //check if the button clicked before or not, if so the function don't work,

              if (BlocProvider.of<GameCubit>(context).xoList[index] == -10 &&
                  !BlocProvider.of<GameCubit>(context).isGameFinishBool) {
                BlocProvider.of<GameCubit>(context).clickedBtn(index: index);
              }
            },
            child: Center(
                child: BlocProvider.of<GameCubit>(context).xoList[index] == -10
                    ? null
                    : Image(
                        //check which type of the button if he is 1 this means X
                        //0 means O, and i check this to return his image(image for X /
                        // image for O)

                        image:
                            BlocProvider.of<GameCubit>(context).xoList[index] == 1
                            //check if X OR O win to return another image when someone win

                                ? AssetImage(BlocProvider.of<GameCubit>(context)
                                        .xoWinList
                                        .contains(index)
                                    ? ImgAssets.xWinPath
                                    : ImgAssets.xPath)
                                : AssetImage(BlocProvider.of<GameCubit>(context)
                                        .xoWinList
                                        .contains(index)
                                    ? ImgAssets.oWinPath
                                    : ImgAssets.oPath))),

            style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromHeight(80),
                primary: BlocProvider.of<GameCubit>(context)
                        .xoWinList
                        .contains(index)
                    ? Theme.of(context).hintColor
                    : Theme.of(context).colorScheme.secondary,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          );
        },
      ),
    );
  }
}
