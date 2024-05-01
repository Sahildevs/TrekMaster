
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../res/colors/app_colors.dart';

class PlainTextFieldWidget extends StatelessWidget {

  const PlainTextFieldWidget({
    super.key,
    required this.label,
    required this.onChanged,
  });

  final String label;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Text(
            label,
            style: const TextStyle(
                fontFamily: 'Manrope',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.black
            )
        ),

        SizedBox(
          height: 50,
          child: TextField(
            onChanged: (value) =>{ onChanged },
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                filled: true,
                fillColor: AppColors.gray
            ),
            cursorColor: AppColors.secondaryBlack,
          ),
        ),
      ],
    );
  }
}