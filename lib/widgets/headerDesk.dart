import 'package:flutter/material.dart';
import 'package:portfolio/widgets/siteLogo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../styles/style.dart';
class Headerdesk extends StatelessWidget {
  const Headerdesk({super.key,
  required this.onNavMenuTap});
final Function(int) onNavMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(height: 60,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration:kHeaderDecoration,
      child: Row(children: [
        Sitelogo(onTap: (){},),
        Spacer(),
        for(int i=0; i<nav_items.length; i++)
          Padding(
            padding: const EdgeInsets.only(right:20),
            child: TextButton(onPressed: (){
              onNavMenuTap(i);
            }, child:Text(nav_items[i],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: AppColors.whitep),)),
          )
      ],),);
  }
}
