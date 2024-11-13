// import 'package:flutter/material.dart';
//
// import '../constants/colors.dart';
// class Contactsec extends StatelessWidget {
//   const Contactsec({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
//       color: Colors.black12,
//       child: Column(
//         children: [
//           Text(
//             'Get In Touch',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 24,
//               color: AppColors.whitep,
//             ),
//           ),
//
//           SizedBox(height: 40),
//           Center(
//             child: Wrap(
//               alignment: WrapAlignment.center,
//               spacing: 18,               // spacing between icons
//               runSpacing: 18,
//               children: [
//                 InkWell(
//                     onTap:(){
//                     },
//                     child: Image.asset('lib/assets/linkedin.png', width: 30)),
//                 InkWell(onTap: () {
//
//                 },
//                     child: Image.asset('lib/assets/whatsapp.png', width: 30)),
//                 InkWell(onTap: (){
//
//                 },
//                     child: Image.asset('lib/assets/github-logo.png', width: 30)),
//                 InkWell(onTap: (){},
//                     child: Image.asset('lib/assets/facebook.png', width: 30)),
//               ],),
//           ),
//         ],
//       ),
//     )
//     ;
//   }
// }



////-----------------------

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

class Contactsec extends StatelessWidget {
  const Contactsec({super.key});

  Future<void> _launchUrl(String url) async {
    await launch(url);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              spacing: 18,
              runSpacing: 18,
              children: [
                InkWell(
                  onTap: () {
                    _launchUrl('https://www.linkedin.com/checkpoint/challengesV2/AQE81cdxmizs_wAAAZMj96sea4XAn3RVTV_x5SRcofNE9KW2soRx6pPbdLIL2j96U-sS73COSZreIByqtVhW8wJkIBmcVyj5pw?ut=3cqNF7L_h0lHw1');
                  },
                  child: Image.asset('lib/assets/linkedin.png', width: 30),
                ),
                InkWell(
                  onTap: () {
                    _launchUrl('https://wa.me/923349297879');
                  },
                  child: Image.asset('lib/assets/whatsapp.png', width: 30),
                ),
                InkWell(
                  onTap: () {
                    _launchUrl('https://github.com/wajehafatima');
                  },
                  child: Image.asset('lib/assets/github-logo.png', width: 30),
                ),
                InkWell(
                  onTap: () {
                    _launchUrl('https://www.facebook.com//people/Wajeha-Fatima/pfbid02Auo2zuLdDFvNL1NBTeePFHPxhUtLHQc8Evfyd4PNqirpJcgS4111hrbVk7HaV3Apl/?mibextid=ZbWKw');
                  },
                  child: Image.asset('lib/assets/facebook.png', width: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
