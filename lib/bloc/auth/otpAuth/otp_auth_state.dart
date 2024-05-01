part of 'otp_auth_bloc.dart';

@immutable
sealed class OtpAuthState {}

final class OtpAuthInitial extends OtpAuthState {}

final class OtpAuthLoading extends OtpAuthState {}

final class OtpAuthLoadedState extends OtpAuthState {}

final class OtpAuthErrorState extends OtpAuthState {}
