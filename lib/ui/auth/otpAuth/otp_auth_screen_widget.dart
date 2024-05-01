import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trek_master/bloc/auth/otpAuth/otp_auth_bloc.dart';
import 'package:trek_master/ui/widgets/Buttons.dart';

import '../../../res/colors/app_colors.dart';
import '../../widgets/TextFields.dart';

class OtpAuthScreenWidget extends StatefulWidget {
  const OtpAuthScreenWidget({super.key});

  @override
  State<OtpAuthScreenWidget> createState() => _OtpAuthScreenWidgetState();
}

class _OtpAuthScreenWidgetState extends State<OtpAuthScreenWidget> {
  late OtpAuthBloc _otpAuthBloc;
  @override
  void initState() {
    //Initialize bloc
    _otpAuthBloc = BlocProvider.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Padding(
          padding: EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [

              const SizedBox(height: 56,),

              const Text(
                  "Enter Your Verification",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryBlack
                  )
              ),

              const Text(
                  "Code",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryBlack
                  )
              ),

              const SizedBox(height: 12,),

              const Text(
                  "Please Enter the Verification code which we sent you on your mobile.",
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black
                  )
              ),

              const SizedBox(height: 30,),



              GrayLabeledTextField(
                label: 'Enter Your OTP',
                onChanged: (String) {  },
              ),

              const SizedBox(height: 24,),

              BlueElevatedLabelButton(
                  label: 'Verify & Proceed',
                  onClick: () {
                    _otpAuthBloc.add(NavigateToProfileSetup());
                  }
              ),

              const SizedBox(height: 30,),

              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                      "Didn’t receive OTP? ",
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryGray
                      )
                  ),

                  Text(
                      "RESEND OTP",
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryDarkBlue
                      )
                  ),

                ],
              )




            ],
          ),
        ),
      ),
    );
  }
}
