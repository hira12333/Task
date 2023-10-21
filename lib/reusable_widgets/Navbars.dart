import 'package:flutter/material.dart';
import 'package:frontent_task/Theme/app_utils.dart';
import 'package:frontent_task/Theme/apptheme.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../SideMenu/drawerScreen.dart';
Container NavigationContainer(BuildContext context  , VoidCallback? onTapMenu){
  AppUtils utils= AppUtils(context);
  final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();
  return Container(
    height: utils.mqh*0.11,
decoration: BoxDecoration(
  color: AppTheme.primaryColor.withOpacity(0.8),
  border: Border(bottom: BorderSide(
    color: Colors.grey,
    width: 1.0,
    
  ))
),
    child: Row(

      children: [

        SizedBox(width: utils.mqw*0.03,),
    GestureDetector(
      onTap: onTapMenu,
      child: Container(
        alignment: Alignment.centerLeft,
        child: Image.asset('assets/images/Menu.png'),
      ),
    ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Image.asset('assets/images/Search.png'),
                ),
                SizedBox(width: utils.mqw*0.03,),
                Container(
                  child: Image.asset('assets/images/Setting.png'),
                ),
                SizedBox(width: utils.mqw*0.03,),
                Container(
                  child: Image.asset('assets/images/Notification.png'),
                ),
                SizedBox(width: utils.mqw*0.03,),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: VerticalDivider(
                    width: 1,  // You can adjust the width of the divider as needed
                    color: Colors.grey,  // You can set the color of the divider
                  ),
                ),
                SizedBox(width: utils.mqw*0.03,),
                Container(
                  child: Image.asset('assets/images/#5.png'),

                ),
                SizedBox(width: utils.mqw*0.03,),
              ],
            ),
          ),
        )
      ],
    ),
  );

}