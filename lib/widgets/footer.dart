import 'package:flutter/material.dart';

import '../constants/colors.dart';
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      color: AppColors.bg,
      alignment: Alignment.center,
      child: Text('Developed by Wajeha Fatima with Flutter',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: AppColors.whitesec,
        ),
      ),);
  }
}
