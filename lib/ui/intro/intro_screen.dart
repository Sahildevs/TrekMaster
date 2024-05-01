import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trek_master/bloc/intro/intro_bloc.dart';
import 'package:trek_master/routes/app_routes_constants.dart';
import 'package:trek_master/ui/intro/intro_screen_widget.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<IntroBloc> _buildBody(BuildContext context) {
    return BlocProvider(
        create: (context) => IntroBloc(),
      child: BlocListener<IntroBloc, IntroState>(
        listener: (context, state) {

          switch (state) {

            case IntroInitial():
              // TODO: Handle this case.
            case IntroLoading():
              // TODO: Handle this case.
            case IntroLoaded():
              navigateToAuthScreen(context);
          }
        },
        child: const IntroScreeWidget(),
      ),
    );
  }

  /// Navigate to the phone auth screen
  navigateToAuthScreen(BuildContext context) {
    context.goNamed(AppRouteConstants.phoneAuthScreenRoute);
  }
}
