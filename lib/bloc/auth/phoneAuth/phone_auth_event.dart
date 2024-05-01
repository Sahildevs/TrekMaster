part of 'phone_auth_bloc.dart';

@immutable
sealed class PhoneAuthEvent {}

class NavigateToOtpAuthScreen extends PhoneAuthEvent {}
