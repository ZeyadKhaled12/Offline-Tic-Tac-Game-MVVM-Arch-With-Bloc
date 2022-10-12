
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_game_online/utils/bloc_providers.dart';

import 'routes/app_routes.dart';
import 'utils/app_colors.dart';

void main() {
  runApp(MultiBlocProvider(providers: blocProviders, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        backgroundColor: AppColors.backGround,
        colorScheme: ThemeData().colorScheme.copyWith(
            secondary: AppColors.secondary),
        hintColor: AppColors.win
      ),
    );
  }
}
