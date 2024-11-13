import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';
class Mainmob extends StatelessWidget {
  const Mainmob({super.key});

  Future<void> _launchUrl(String url) async {
    await launch(url);

  }

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
      height: MediaQuery.of(context).size.height,
      constraints:BoxConstraints(minHeight: 560,),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(radius: 80,
             backgroundImage: AssetImage('lib/assets/pp.jpeg'),
                ),

          ),
          SizedBox(height: 30,),

          Text('Hi,\nI am Wajeha Fatima,',style: TextStyle(fontSize: 22,height: 1.5,fontWeight: FontWeight.bold,
              color: AppColors.whitep),),

          Text('A Flutter Developer',style: TextStyle(fontSize: 18,height: 1.5,fontWeight: FontWeight.bold,
              color: AppColors.yellowp),),
          SizedBox(height: 15,),
          SizedBox(width: 190,
            child: ElevatedButton(
                onPressed: (){
                  _launchUrl('https://wa.me/923349297879');
                },
                child: Text('Get in Touch',
                  style: TextStyle(color: AppColors.whitep),)),
          ),

        ],
      ),
    );
  }
}
