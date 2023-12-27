import 'package:bloc/bloc.dart';
import 'package:bulletos_v2/src/presentation/bloc/onboarding_bloc/onboarding_event.dart';
import 'package:bulletos_v2/src/presentation/bloc/onboarding_bloc/onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState()) {
    on<OnboardingEvent>((event, emit) {
      emit(OnboardingState(page: state.page));
    });
  }
}
