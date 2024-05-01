import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trek_master/bloc/auth/otpAuth/otp_auth_bloc.dart';
import 'package:trek_master/routes/app_routes_constants.dart';
import 'package:trek_master/ui/auth/otpAuth/otp_auth_screen_widget.dart';

class OtpAuthScreen extends StatelessWidget {
  const OtpAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<OtpAuthBloc> _buildBody(BuildContext context) {
    return BlocProvider(
        create: (context) => OtpAuthBloc(),
      child: BlocListener<OtpAuthBloc, OtpAuthState>(
        listener: (context, state) {

          switch(state) {

            case OtpAuthInitial():
              // TODO: Handle this case.
            case OtpAuthLoading():
              // TODO: Handle this case.
            case OtpAuthSuccess():
              navigateToProfileSetupScreen(context);
            case OtpAuthError():
              // TODO: Handle this case.
          }
        },

        child: const OtpAuthScreenWidget(),

      ),
    );
  }

  // navigate to profile setup screen
  navigateToProfileSetupScreen(BuildContext context) {
    context.goNamed(AppRouteConstants.profileSetupScreenRoute);
  }
}
