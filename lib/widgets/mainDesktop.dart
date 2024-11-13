import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';
class Maindesktop extends StatefulWidget {
  const Maindesktop({super.key});




  @override
  State<Maindesktop> createState() => _MaindesktopState();
}

class _MaindesktopState extends State<Maindesktop> {


  Future<void> _launchUrl(String url) async {
    await launch(url);

  }


  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height/1.2,
      constraints: BoxConstraints(minHeight: 350),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi,\nI am Wajeha Fatima,',style: TextStyle(fontSize: 30,height: 1.5,fontWeight: FontWeight.bold,
                  color: AppColors.whitep),),


              Text('A Flutter Developer',style: TextStyle(fontSize: 24,height: 1.5,fontWeight: FontWeight.bold,
                  color: AppColors.yellowp),),

              SizedBox(height: 15,),
              SizedBox(width: 300,
                child: ElevatedButton(




                    onPressed: (){
                      _launchUrl('https://wa.me/923349297879');
                    },

                    child: Text('Get in Touch',
                      style: TextStyle(color: AppColors.whitep),)),
              ),
     ],
          ),
          CircleAvatar(radius: 120,
            backgroundImage: AssetImage('lib/assets/pp.jpeg'),
          )
        ],
      ) ,);
  }
}







