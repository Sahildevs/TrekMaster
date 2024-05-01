import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trek_master/bloc/auth/phoneAuth/phone_auth_bloc.dart';
import 'package:trek_master/routes/app_routes_constants.dart';
import 'package:trek_master/ui/auth/phoneAuth/phone_auth_screen_widget.dart';


class PhoneAuthScreen extends StatelessWidget {
  const PhoneAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }


  BlocProvider<PhoneAuthBloc> _buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => PhoneAuthBloc(),
      child: BlocListener<PhoneAuthBloc, PhoneAuthState>(
        listener: (context, state) {

          switch (state) {

            case PhoneAuthInitial():
              // TODO: Handle this case.
            case PhoneAuthLoading():
              // TODO: Handle this case.
            case PhoneAuthSuccess():
              navigateToOtpAuthScreen(context);
            case PhoneAuthError():
              // TODO: Handle this case.

          }
        },
        child: const PhoneAuthScreenWidget(),
      ),
    );
  }

  navigateToOtpAuthScreen(BuildContext context) {
    context.goNamed(AppRouteConstants.otpAuthScreenRoute);
  }

}
