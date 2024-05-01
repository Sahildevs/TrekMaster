import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trek_master/bloc/splash/splash_bloc.dart';
import 'package:trek_master/res/colors/app_colors.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  late SplashScreenBloc _splashScreenBloc;

  @override
  void initState() {
    _splashScreenBloc = BlocProvider.of(context); //Initializes splash screen bloc
    _splashScreenBloc.add(NavigateToOnboarding()); //Adds an splash screen event to the splashscreen bloc

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [

          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                "Trek",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryBlack
                )
              ),


              Text(
                  "Buddy",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryDarkBlue
                  )
              ),

            ],
          )


        ],
      ),
    );
  }
}


