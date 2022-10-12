
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {

  bool isX = false;
  List xoList = List.generate(9, (index) => -10);
  List xoWinList = List.generate(3, (index) => -1);
  bool isGameFinishBool = false;

  GameCubit() : super(GameInitial());


  clickedBtn({required int index}){
    emit(GameInitial());
    if(isX){xoList[index] = 1;}
    else{xoList[index] = 0;}
    isX  = !isX;
    isGameFinish();
    emit(GameClickedBtn());
  }

  refreshGame(){
    emit(GameInitial());
    isX = false;
    xoList = List.generate(9, (index) => -10);
    xoWinList = List.generate(3, (index) => -1);
    isGameFinishBool = false;
    emit(GameRefresh());
  }

  isGameFinish(){
    emit(GameInitial());
    if(_checkWin([0, 1, 2])){}

    else if(_checkWin([3, 4, 5])){}

    else if(_checkWin([6, 7, 8])){}

    else if(_checkWin([0, 3, 6])){}

    else if(_checkWin([1, 4, 7])){}

    else if(_checkWin([2, 5, 8])){}

    else if(_checkWin([0, 4, 8])){}

    else if(_checkWin([2, 4, 6])){}

    emit(GameCheckIfWin());
  }

  _checkWin<bool>(List list){
    if(xoList[list[0]]+xoList[list[1]]+xoList[list[2]] == 3 ||
        xoList[list[0]]+xoList[list[1]]+xoList[list[2]] == 0){
      xoWinList[0] = list[0];
      xoWinList[1] = list[1];
      xoWinList[2] = list[2];
      isGameFinishBool = true;
      return true;
    }
    return false;
  }


}
