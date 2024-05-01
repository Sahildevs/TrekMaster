import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trek_master/ui/dashboard/dashboard_widget_screen.dart';

import '../../bloc/dashboard/dashboard_bloc.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<DashboardBloc> _buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardBloc(),
      child: BlocListener<DashboardBloc, DashboardState>(
        listener: (context, state) {

          switch (state) {

            case DashboardInitial():
              // TODO: Handle this case.
            case DashboardLoading():
              // TODO: Handle this case.
            case DashboardFetchDataSuccess():
              // TODO: Handle this case.
            case DashboardFetchDataError():
              // TODO: Handle this case.

          }
        },
        child: const DashboardScreenWidget(),
      ),
    );
  }
}
