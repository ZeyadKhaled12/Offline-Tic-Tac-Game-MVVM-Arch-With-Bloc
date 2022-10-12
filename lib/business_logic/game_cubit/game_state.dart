part of 'game_cubit.dart';

@immutable
abstract class GameState {}

class GameInitial extends GameState {}

class GameClickedBtn extends GameState {}

class GameCheckIfWin extends GameState {}

class GameRefresh extends GameState{}
