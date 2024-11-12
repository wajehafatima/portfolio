import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skills.dart';
class Skillsdesk extends StatelessWidget {
  const Skillsdesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(25, 20, 25,60),
      color: Colors.black12,


      child: Column(mainAxisSize: MainAxisSize.min,
        children: [
          Text('What can I do',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: AppColors.whitep),),
          SizedBox(height: 40,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //skills
              ConstrainedBox(constraints:BoxConstraints(maxWidth: 600,),
                child: Wrap(spacing: 10,
                  runSpacing: 10,
                  children: [for (int i=0; i<skillItems.length; i++)
                    Container(
                      width: 250,
                      decoration: BoxDecoration(

                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        leading: Image.asset(skillItems[i]['img'],width: 26,),
                        title: (Text(skillItems[i]['title'])
                        ),
                      ),
                    )
                  ],),
              )
            ],)
        ],
      ),);
  }
}
