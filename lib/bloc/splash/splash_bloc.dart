import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashScreenBloc extends Bloc<SplashEvent, SplashState> {


  SplashScreenBloc() : super(SplashInitial()) {
    /// Define all possible events of the sceen
    on<NavigateToOnboarding>(_delayedNavigateEvent);
  }

  FutureOr<void> _delayedNavigateEvent(
      NavigateToOnboarding event, Emitter<SplashState> emit) async {
    emit(SplashLoading());

    await Future.delayed(const Duration(seconds: 3));
    emit(SplashLoaded());
  }




}
