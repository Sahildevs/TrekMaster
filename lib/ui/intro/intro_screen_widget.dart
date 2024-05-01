import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trek_master/bloc/intro/intro_bloc.dart';
import 'package:trek_master/ui/intro/intro_screens/intro_screen_one.dart';
import 'package:trek_master/ui/intro/intro_screens/intro_screen_three.dart';
import 'package:trek_master/ui/intro/intro_screens/intro_screen_two.dart';

import '../../res/colors/app_colors.dart';

class IntroScreeWidget extends StatefulWidget {
  const IntroScreeWidget({super.key});

  @override
  State<IntroScreeWidget> createState() => _IntroScreeWidgetState();
}

class _IntroScreeWidgetState extends State<IntroScreeWidget> {
  late IntroBloc _introScreenBloc;

  //controller to keep track of what page we are on
  final PageController _controller = PageController();

  //keep track if we are on last page or not
  bool onLastPage = false;

  @override
  void initState() {
    // Initialize bloc
    _introScreenBloc = BlocProvider.of(context); //Initializes splash screen bloc
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(

          child: Stack(
            children: [

              PageView(
                controller: _controller,
                onPageChanged: (index) { //the index tells what page we are on

                  setState(() {
                    onLastPage = (index == 2);  //if the index is 2 it will return true
                  });

                },
                children: const [
                  IntroScreenOne(),
                  IntroScreenTwo(),
                  IntroScreenThree()
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),

                child: Container(
                  width: double.infinity,
                  alignment: Alignment.bottomCenter,


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [

                        //SKIP
                        GestureDetector(
                            onTap: () {
                              _controller.jumpToPage(2);
                            },
                            child: const Text(
                                'Skip',
                                style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryWhite
                                )
                            )
                        ),

                        SmoothPageIndicator(
                            controller: _controller,
                            count: 3,
                          effect: const WormEffect(
                            dotHeight: 14,
                            dotWidth: 14,
                            dotColor: AppColors.primaryWhite,
                            activeDotColor: AppColors.primaryDarkBlue

                          ),
                        ),

                        //NEXT
                        GestureDetector(
                            onTap: onLastPage? () {

                              //If we are on last page then navigate to home screen
                              _introScreenBloc.add(NavigateToAuth()); //Adds an intro screen event to the intro screen bloc


                            } : () {

                              //If not keep switching the pages
                              _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                            },

                            child: onLastPage?
                            const Text(
                                'DONE',
                                style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primaryWhite
                            )) :
                            const Text(
                                'NEXT',
                                style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryWhite
                                )
                            )
                        )
                      ],


                    )

                ),
              )
            ],
          ),
        )
    );
  }
}
