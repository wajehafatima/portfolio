import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';
class Contactsec extends StatelessWidget {
  const Contactsec({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Colors.black12,
      child: Column(
        children: [
          Text(
            'Get In Touch',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColors.whitep,
            ),
          ),

          SizedBox(height: 40),
          Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 18,               // spacing between icons
              runSpacing: 18,
              children: [
                InkWell(
                    onTap:(){
                    },
                    child: Image.asset('lib/assets/linkedin.png', width: 30)),
                InkWell(onTap: () async{ final url= '(https://www.linkedin.com/in/wajeha-fatima-b4ba4330a)';
                  await launchUrl(Uri.parse(url));

                },
                    child: Image.asset('lib/assets/whatsapp.png', width: 30)),
                InkWell(onTap: (){

                },
                    child: Image.asset('lib/assets/github-logo.png', width: 30)),
                InkWell(onTap: (){},
                    child: Image.asset('lib/assets/facebook.png', width: 30)),
              ],),
          ),
        ],
      ),
    )
    ;
  }
}
