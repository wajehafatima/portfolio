import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/skills.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/utils/projectutils.dart';
import 'package:portfolio/widgets/contactSec.dart';
import 'package:portfolio/widgets/drawerMob.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/headerDesk.dart';
import 'package:portfolio/widgets/headerMob.dart';
import 'package:portfolio/widgets/mainDesktop.dart';
import 'package:portfolio/widgets/mainMob.dart';
import 'package:portfolio/widgets/projectCards.dart';
import 'package:portfolio/widgets/projectSection.dart';
import 'package:portfolio/widgets/siteLogo.dart';
import 'package:portfolio/widgets/skillsDesk.dart';
import 'package:portfolio/widgets/skillsMob.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final scaffoldKey= GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(key: scaffoldKey,
            backgroundColor: AppColors.bg,

          endDrawer: constraints.maxWidth>=kMinDeskTopWidth?null: Drawermob(),
          body:ListView(scrollDirection: Axis.vertical,
            children: [ //main
              if(constraints.maxWidth>=kMinDeskTopWidth)
           Headerdesk() else
             Headermob(onMenuTap: (){
               scaffoldKey.currentState?.openEndDrawer();
             },),
              if(constraints.maxWidth>=kMinDeskTopWidth)
        Maindesktop() else

          Mainmob() ,
              if(constraints.maxWidth>=kMinDeskTopWidth)
          //skills.........
         Skillsdesk() else

              Skillsmob(),


           //project sections

SizedBox(height: 20,),



              Projectsection(),
SizedBox(height: 20,),
              //Contacts

             Contactsec(),

              //footer Section

SizedBox(height: 30,),

              Footer(),


          ],)
        );
      }
    );
  }
}
