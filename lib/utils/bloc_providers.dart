
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/game_cubit/game_cubit.dart';

List<BlocProvider> blocProviders = [
  BlocProvider<GameCubit>(create: (_) => GameCubit()),
];