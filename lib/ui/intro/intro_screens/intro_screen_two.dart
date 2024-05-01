import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/colors/app_colors.dart';

class IntroScreenTwo extends StatelessWidget {
  const IntroScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [


      Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'assets/images/bg_img_intro2.png',
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
                    color: AppColors.white
                )
            ),



            Text(
                "Explore the places you’ve",
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white
                )
            ),

            Text(
                "never been",
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white
                )
            ),

            Spacer(flex: 1,)


          ],
        ),
      )

    ]);
  }
}
