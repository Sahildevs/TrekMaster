import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trek_master/bloc/splash/splash_bloc.dart';
import 'package:trek_master/routes/app_routes_constants.dart';
import 'package:trek_master/ui/splash/splash_screen_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<SplashScreenBloc> _buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashScreenBloc(),
      child: BlocListener<SplashScreenBloc, SplashState>(
        listener: (context, state) {

          switch (state) {

            case SplashInitial():
              const SplashScreenWidget();


            case SplashLoading():
              const SplashScreenWidget();


            case SplashLoaded():
              navigate(context);

          }

        },
        child: const SplashScreenWidget(),
      ),
    );
  }


  /// Navigate to the intro screen after a delay
  navigate(BuildContext context) async {
    var duration = const Duration(seconds: 0);
    return Timer(
        duration,
            () => context.goNamed(AppRouteConstants.introScreenRoute)
    );
  }
}
