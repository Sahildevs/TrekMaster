import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'intro_event.dart';
part 'intro_state.dart';

class IntroBloc extends Bloc<IntroEvent, IntroState> {
  IntroBloc() : super(IntroInitial()) {
    /// Define all possible events of the screen
    on<NavigateToAuth>(_navigateToAuthEventListener);

  }


  FutureOr<void> _navigateToAuthEventListener(NavigateToAuth event, Emitter<IntroState> emit) {
    emit(IntroLoaded());

  }
}
