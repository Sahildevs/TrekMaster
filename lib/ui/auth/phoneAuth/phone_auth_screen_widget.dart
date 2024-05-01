import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trek_master/bloc/auth/phoneAuth/phone_auth_bloc.dart';
import 'package:trek_master/ui/widgets/Buttons.dart';

import '../../../res/colors/app_colors.dart';
import '../../widgets/PlainTextFieldWidget.dart';

class PhoneAuthScreenWidget extends StatefulWidget {
  const PhoneAuthScreenWidget({super.key});

  @override
  State<PhoneAuthScreenWidget> createState() => _PhoneAuthScreenWidgetState();
}

class _PhoneAuthScreenWidgetState extends State<PhoneAuthScreenWidget> {
  late PhoneAuthBloc _phoneAuthBloc;
  
  
  @override
  void initState() {
    _phoneAuthBloc = BlocProvider.of(context);
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
                  "Enter Your Phone",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryBlack
                  )
              ),

              const Text(
                  "Number",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryBlack
                  )
              ),

              const SizedBox(height: 12,),

              const Text(
                  "To receive your OTP security code, please enter your phone number.",
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black
                  )
              ),

              const SizedBox(height: 30,),


              PlainTextFieldWidget(
                label: 'Enter Phone Number',
                onChanged: (val) { },
              ),

              const SizedBox(height: 24,),

              // BlueElevatedTextButton(phoneAuthBloc: _phoneAuthBloc),

              BlueElevatedLabelButton(
                  label: 'Generate OTP',
                  onClick: () {
                    _phoneAuthBloc.add(NavigateToOtpAuthScreen());
                  }
              )




            ],
          ),
        ),
      ),
    );
  }
}

// class BlueElevatedTextButton extends StatelessWidget {
//   const BlueElevatedTextButton({
//     super.key,
//     required PhoneAuthBloc phoneAuthBloc,
//   }) : _phoneAuthBloc = phoneAuthBloc;
//
//   final PhoneAuthBloc _phoneAuthBloc;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       child: ElevatedButton(
//           onPressed: () {
//             _phoneAuthBloc.add(NavigateToOtpAuthScreen());
//           },
//           style: ElevatedButton.styleFrom(
//             backgroundColor: AppColors.primaryDarkBlue,
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
//           ),
//           child: const Text(
//               'Generate OTP',
//               style: TextStyle(
//                   fontFamily: 'Manrope',
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                   color: AppColors.primaryWhite
//
//               )
//           )
//       ),
//     );
//   }
// }


