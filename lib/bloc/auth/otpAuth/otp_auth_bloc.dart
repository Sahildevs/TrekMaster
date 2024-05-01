import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'otp_auth_event.dart';
part 'otp_auth_state.dart';

class OtpAuthBloc extends Bloc<OtpAuthEvent, OtpAuthState> {
  OtpAuthBloc() : super(OtpAuthInitial()) {
    /// Define all possible events of the screen

    on<NavigateToProfileSetup>(_navigateToProfileSetupEventListener);
  }

  FutureOr<void> _navigateToProfileSetupEventListener(NavigateToProfileSetup event, Emitter<OtpAuthState> emit) {
    emit(OtpAuthSuccess());
  }
}
