import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/colors/app_colors.dart';

class IntroScreenThree extends StatelessWidget {
  const IntroScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [


      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'assets/images/bg_img_intro3.png',
          fit: BoxFit.cover,
        ),
      ),

      const Padding(
        padding: EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Spacer(flex: 3,),

            Text(
                "Discover The World",
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryWhite
                )
            ),


            Text(
                "Explore the places you’ve",
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryWhite
                )
            ),

            Text(
                "never been",
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryWhite
                )
            ),

            Spacer(flex: 1,)


          ],
        ),
      )

    ]);
  }
}
