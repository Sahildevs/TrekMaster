import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trek_master/res/colors/app_colors.dart';
import 'package:trek_master/ui/dashboard/dashboard_widget_screen.dart';

import '../../bloc/dashboard/dashboard_bloc.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
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



  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      title: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Trek",
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryBlack)),
          Text("Buddy",
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryDarkBlue)),
        ],
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: SvgPicture.asset('assets/icons/ic_notification.svg'),
        )

      ],

    );
  }
}
