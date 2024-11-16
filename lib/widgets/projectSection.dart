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
                Projectcards(project: projectutils(image: 'lib/assets/fb22.jpeg',title: 'Facebook Clone', subtitle:'Facebook Clone made with Flutter for mobile App development Skills.\nexploring features and functionality.' ),),
                Projectcards(project:projectutils(image: 'lib/assets/calcu.jpeg', title: 'Calculator', subtitle:'A simple Calculator App built with flutter\n perfotms basic arithmetic operations with ease.'), ),
                Projectcards(project: projectutils(image: 'lib/assets/counte12.jpeg', title: 'Counter App', subtitle: 'A project for learning\nIncrement, decrement and reset with ease function.'), ),
                Projectcards(project:projectutils(image: 'lib/assets/gold.jpeg', title: 'Gold App', subtitle:'An app which calculate gold price with different units accurately'), ),
                Projectcards(project:projectutils(image: 'lib/assets/pr.jpeg', title: 'Project Report ', subtitle:'A detailed report of development process submitted to our organization'), ),

                Projectcards(project:projectutils(image: 'lib/assets/todo12.jpeg', title: 'ToDo App', subtitle:'A simple but efficient Project to create, manage, and conquer your to-do list'), ) ,
                Projectcards(project:projectutils(image: 'lib/assets/cdt.jpeg', title: 'CountDown Timer', subtitle: 'Customized countdown timer built to display real-time remaining time'), ),


              ],
            )

          ],
        )
    );
  }
}
