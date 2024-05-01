part of 'splash_bloc.dart';

@immutable
sealed class SplashEvent {}

class NavigateToOnboarding extends SplashEvent {}
class NavigateToDashboard extends SplashEvent {}