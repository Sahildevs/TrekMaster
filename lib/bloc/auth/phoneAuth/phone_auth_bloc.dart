import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'phone_auth_event.dart';
part 'phone_auth_state.dart';

class PhoneAuthBloc extends Bloc<PhoneAuthEvent, PhoneAuthState> {
  PhoneAuthBloc() : super(PhoneAuthInitial()) {
    /// Define all possible events of the screen

    on<NavigateToOtpAuthScreen>(_navigateToOtpAuthEventListner);
  }

  FutureOr<void> _navigateToOtpAuthEventListner(NavigateToOtpAuthScreen event, Emitter<PhoneAuthState> emit) {
    emit(PhoneAuthSuccess());
  }
}
