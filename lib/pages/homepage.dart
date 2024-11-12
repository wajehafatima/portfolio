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
  final scrollcontroller = ScrollController();
  final List<GlobalKey> navBarKeys=List.generate(4,(index)=>GlobalKey());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(key: scaffoldKey,
            backgroundColor: AppColors.bg,

          endDrawer: constraints.maxWidth>=kMinDeskTopWidth?null: Drawermob(onNavItemTap: (int navIndex) {
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          },),
          body:SingleChildScrollView(
            controller: scrollcontroller,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [ //main
                SizedBox(key: navBarKeys.first,),
                if(constraints.maxWidth>=kMinDeskTopWidth)
             Headerdesk(onNavMenuTap: (int navIndex) {
               scrollToSection(navIndex);

             },) else
               Headermob(onMenuTap: (){
                 scaffoldKey.currentState?.openEndDrawer();
               },),
                if(constraints.maxWidth>=kMinDeskTopWidth)
                    Maindesktop() else

            Mainmob() ,
                if(constraints.maxWidth>=kMinDeskTopWidth)



            //skills.........

                     Skillsdesk(
                       key: navBarKeys[1],
                     ) else

                Skillsmob(
                  key: navBarKeys[1],
                ),


             //project sections

            SizedBox(height: 20,),



                Projectsection(
                  key: navBarKeys[2],
                ),
            SizedBox(height: 20,),
                //Contacts

               Contactsec(
                 key: navBarKeys[3],
               ),

                //footer Section

            SizedBox(height: 30,),

                Footer(),


            ],),
          )
        );
      }
    );
  }
  void scrollToSection(int navIndex){
    if(navIndex==4){
      return;
    }
    final key= navBarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,duration:Duration(microseconds: 500),curve: Curves.easeInOut);
  }

}
