part of 'otp_auth_bloc.dart';

@immutable
sealed class OtpAuthState {}

final class OtpAuthInitial extends OtpAuthState {}

final class OtpAuthLoading extends OtpAuthState {}

final class OtpAuthSuccess extends OtpAuthState {}

final class OtpAuthError extends OtpAuthState {}
