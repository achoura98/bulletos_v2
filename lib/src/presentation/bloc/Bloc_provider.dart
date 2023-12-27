// ignore_for_file: file_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'onboarding_bloc/onboarding_bloc.dart';

class AppBlocProviders {
  static get allBlocProviders =>
      [BlocProvider(lazy: false, create: (context) => OnboardingBloc())];
}
