
import 'package:flutter/material.dart';

import '../presentation/screens/game_screen.dart';
import 'routes_names.dart';


class AppRoutes{

  static Route? onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case RoutesNames.gameScreenRoute:
        return MaterialPageRoute(builder: (context) => const GameScreen());
    }
    return null;
  }
}