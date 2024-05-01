part of 'otp_auth_bloc.dart';

@immutable
sealed class OtpAuthEvent {}

class NavigateToProfileSetup extends OtpAuthEvent {}
