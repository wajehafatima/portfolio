import 'package:flutter/material.dart';
import 'package:portfolio/widgets/projectCards.dart';

import '../constants/colors.dart';
import '../utils/projectutils.dart';
class Projectsection extends StatelessWidget {
  const Projectsection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(padding: EdgeInsets.fromLTRB(25, 20, 25,60),
        width: MediaQuery.of(context).size.width,
        color: Colors.black12,
        child: Column(
          children: [
            Text('Work Projects',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,
                color: AppColors.whitep),),
            SizedBox(height: 40,),



            Wrap(spacing: 25,
              runSpacing: 25,
              children: [
                Projectcards(project: projectutils(image: 'lib/assets/Files.jpg',title: 'FaceBook Clone', subtitle:'Facebook Clone made with Flutter for mobile App development Skills.\nexploring features and functionality.' ),),
                Projectcards(project:projectutils(image: 'lib/assets/pro.jpg', title: 'Calculator', subtitle:'A simple Calculator App built with flutter\n perfotms basic arithmetic operations with ease.'), ),
                Projectcards(project: projectutils(image: 'lib/assets/counter.png', title: 'Counter App', subtitle: 'A project for learning\nIncrement, decrement and reset with ease function.'), ),
                Projectcards(project:projectutils(image: 'lib/assets/pro.jpg', title: 'Gold App', subtitle:'An app which calculate gold price with different units accurately'), ),
                Projectcards(project:projectutils(image: 'lib/assets/pro.jpg', title: 'Currency Converter', subtitle: 'For instant and accurate conversion of currencies globally'), ),

                Projectcards(project:projectutils(image: 'lib/assets/pro.jpg', title: 'ToDo App', subtitle:'A simple but efficient Project to create, manage, and conquer your to-do list'), ) ,
                Projectcards(project:projectutils(image: 'lib/assets/pro.jpg', title: 'Weather App', subtitle: ' An application created for Real-time updates and weather alerts'), ),


              ],
            )

          ],
        )
    );
  }
}
