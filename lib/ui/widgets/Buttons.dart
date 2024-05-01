import 'package:flutter/material.dart';

import '../../res/colors/app_colors.dart';

class BlueElevatedLabelButton extends StatelessWidget {

  const BlueElevatedLabelButton({
    super.key,
    required this.label,
    required this.onClick,
  });

  final String label;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
          onPressed: onClick,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryDarkBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
          ),
          child: Text(
              label,
              style: const TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white

              )
          )
      ),
    );
  }
}