import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
class Drawermob extends StatelessWidget {
  const Drawermob({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.bg,
      child: ListView(
        children: [
          Align(alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
              child: IconButton(onPressed:(){
                Navigator.of(context).pop();
              }, icon:Icon(Icons.close)),
            ),
          ),
          for(int i=0; i<nav_Icons.length;i++)
            ListTile(contentPadding: EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: TextStyle(
                color: AppColors.whitep,fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              leading: Icon(nav_Icons[i]),
              title:Text(nav_items[i]),
              onTap: (){
             
              },

            )
        ],
      ),
    );
  }
}
