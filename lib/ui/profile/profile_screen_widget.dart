import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trek_master/bloc/profile/profile_bloc.dart';
import 'package:trek_master/ui/widgets/Buttons.dart';
import 'package:trek_master/ui/widgets/TextFields.dart';

import '../../res/colors/app_colors.dart';

class ProfileScreenWidget extends StatefulWidget {
  const ProfileScreenWidget({super.key});

  @override
  State<ProfileScreenWidget> createState() => _ProfileScreenWidgetState();
}

class _ProfileScreenWidgetState extends State<ProfileScreenWidget> {
  late ProfileBloc _profileBloc;

  @override
  void initState() {
    // Initialize bloc
    _profileBloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Padding(
            padding: const EdgeInsets.all(16.0),

            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                const Text(
                    "Enter Your Basic",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryBlack
                    )
                ),

                const Text(
                    "Information",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryBlack
                    )
                ),

                const SizedBox(height: 12,),

                const Text(
                    "Your basic information is necessary to proceed.",
                    style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black
                    )
                ),

                const SizedBox(height: 30,),

                GrayLabeledTextField(
                    label: 'Enter Full Name',
                    onChanged: (value) {}
                 ),

                const SizedBox(height: 15,),

                GrayLabeledTextField(
                    label: 'Enter Email ID',
                    onChanged: (value) {}
                ),

                const SizedBox(height: 15,),

                GrayLabeledTextField(
                    label: 'Enter Mobile Number',
                    onChanged: (value) {}
                ),

                const SizedBox(height: 30,),

                BlueElevatedLabelButton(
                    label: 'Save & Proceed',
                    onClick: () {
                      _profileBloc.add(NavigateToDashboard());
                    }
                )


              ],
            ),
          ),
        )
    );
  }
}
