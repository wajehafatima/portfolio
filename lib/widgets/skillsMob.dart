import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skills.dart';
class Skillsmob extends StatelessWidget {
  const Skillsmob({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('What can I do',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: AppColors.whitep,
      )),
        SizedBox(height:20,),

        for(int i=0;i<skillItems.length; i++)

          Container(margin: EdgeInsets.only(bottom: 5),
            width: MediaQuery.of(context).size.width*0.9,
            decoration:BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(5),

            ),
            child: ListTile(contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              leading: Image.asset(skillItems[i]['img'],width: 26,),
              title: Text(skillItems[i]['title']),
            ),
          ),

      ],
    );
  }
}
