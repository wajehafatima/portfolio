import 'package:flutter/material.dart';
import 'package:portfolio/utils/projectutils.dart';

import '../constants/colors.dart';
class Projectcards extends StatelessWidget {
  const Projectcards({super.key,required this.project});
  final projectutils project;

  @override
  Widget build(BuildContext context) {
    return Container(height: 280, width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.bg1
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset(project.image,width: 250,
            height: 140,fit: BoxFit.contain,),
        ),


          Padding(
            padding: const EdgeInsets.fromLTRB(12,15,12,12),
            child: Text(project.title,style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16,color: AppColors.whitep),),
          )  ,
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12,0,12,12),
            child: Text(project.subtitle,style: TextStyle(fontSize: 12, color: AppColors.whitesec),),
          )  ,
        ],
      ),);
  }
}
