import 'package:flutter/material.dart';
import 'package:portfolio/widgets/siteLogo.dart';

import '../styles/style.dart';
class Headermob extends StatelessWidget {
  const Headermob({super.key, this.onLogoTap, this.onMenuTap});
final VoidCallback ? onLogoTap;
  final VoidCallback ? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          Sitelogo(onTap: onLogoTap,),
          Spacer(),
          IconButton(onPressed: onMenuTap, icon:Icon(Icons.menu)),
          SizedBox(width: 15,)
        ],
      ),
    );
  }
}
