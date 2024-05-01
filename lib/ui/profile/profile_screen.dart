import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trek_master/bloc/profile/profile_bloc.dart';
import 'package:trek_master/routes/app_routes_constants.dart';
import 'package:trek_master/ui/profile/profile_screen_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<ProfileBloc> _buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(),
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {

          switch (state) {

            case ProfileInitial():
              // TODO: Handle this case.
            case ProfileLoading():
              // TODO: Handle this case.
            case ProfileSuccess():
              navigateToDashboard(context);
            case ProfileError():
              // TODO: Handle this case.
          }

        },
        child: const ProfileScreenWidget(),
      ),
    );
  }

  navigateToDashboard(BuildContext context) {
    context.goNamed(AppRouteConstants.dashboardScreenRoute);
  }
}
